import math
import matplotlib.pyplot as plt
import numpy as np
from matplotlib.ticker import MultipleLocator

# Constants
FS = 48000                   # Sample rate (Hz)
FFT_SIZE = 8192              # FFT points
BIN_WIDTH = FS / FFT_SIZE    # 5.859375 Hz/bin

def piano_freq(n):
    """Calculate frequency for piano key n (1-88) using equal temperament tuning"""
    return 440.0 * (2 ** ((n - 49) / 12))

def generate_key_map():
    """Generate bin ranges and error data"""
    key_freqs = [piano_freq(n) for n in range(1, 89)]
    min_bin = max(0, math.floor(20.0 / BIN_WIDTH))
    max_bin = min(4095, math.ceil(4500.0 / BIN_WIDTH))
    
    key_map = {}
    error_data = []
    
    for bin_num in range(min_bin, max_bin + 1):
        freq = bin_num * BIN_WIDTH
        closest_key = min(range(88), key=lambda k: abs(math.log2(freq) - math.log2(key_freqs[k]))) + 1
        closest_freq = piano_freq(closest_key)
        cents_error = 1200 * math.log2(freq/closest_freq) if freq > 0 else 0
        
        error_data.append({
            'bin': bin_num,
            'freq': freq,
            'key': closest_key,
            'ideal_freq': closest_freq,
            'cents_error': cents_error
        })
        
        if closest_key not in key_map:
            key_map[closest_key] = []
        key_map[closest_key].append(bin_num)
    
    # Convert to contiguous ranges
    final_map = []
    for key in sorted(key_map.keys()):
        bins = sorted(key_map[key])
        ranges = []
        start = bins[0]
        prev = bins[0]
        for bin_num in bins[1:]:
            if bin_num != prev + 1:
                ranges.append((start, prev))
                start = bin_num
            prev = bin_num
        ranges.append((start, prev))
        for r in ranges:
            final_map.append((key, r[0], r[1]))
    
    return sorted(final_map, key=lambda x: x[1]), error_data

def plot_analysis(key_map, error_data):
    """Combined visualization with error analysis and bin mapping"""
    plt.figure(figsize=(14, 12))
    
    # Error Analysis Plot
    ax1 = plt.subplot(211)
    cents_errors = [d['cents_error'] for d in error_data]
    bins = [d['bin'] for d in error_data]
    
    scatter = ax1.scatter(bins, cents_errors, c=cents_errors, 
                        cmap='coolwarm', vmin=-100, vmax=100,
                        s=10, alpha=0.7)
    ax1.axhline(0, color='black', linewidth=1)
    ax1.axhline(50, color='green', linestyle='--', linewidth=1)
    ax1.axhline(-50, color='green', linestyle='--', linewidth=1)
    ax1.set_title('Frequency Deviation Analysis (Cents Error)', pad=15)
    ax1.set_ylabel('Deviation from Ideal Frequency (Cents)')
    ax1.grid(True, alpha=0.5)
    
    cbar = plt.colorbar(scatter, ax=ax1)
    cbar.set_label('Cents Deviation', rotation=270, labelpad=15)
    
    # Bin Number Mapping Plot
    ax2 = plt.subplot(212)
    bin_numbers = []
    assigned_keys = []
    for key, start, end in key_map:
        for bin_num in range(start, end+1):
            bin_numbers.append(bin_num)
            assigned_keys.append(key)
    
    norm = plt.Normalize(min(bin_numbers), max(bin_numbers))
    scatter2 = ax2.scatter(assigned_keys, bin_numbers, c=bin_numbers,
                         cmap='viridis', s=10, alpha=0.7)
    ax2.set_title('FFT Bin to Piano Key Mapping', pad=15)
    ax2.set_xlabel('Piano Key Number')
    ax2.set_ylabel('FFT Bin Number')
    ax2.grid(True, alpha=0.5)
    
    cbar2 = plt.colorbar(scatter2, ax=ax2)
    cbar2.set_label('FFT Bin Number', rotation=270, labelpad=15)
    
    # Add piano key markers
    for ax in [ax1, ax2]:
        for octave in range(0, 8):
            key = 1 + 12*octave
            ax.axvline(key, color='gray', linestyle=':', linewidth=0.5, alpha=0.7)
    
    plt.tight_layout()
    plt.show()

def generate_vhdl_or_gating(key_map):
    """Generate VHDL code for OR-gating 4096-bit input to 88-bit piano key vector"""
    print("-- Auto-generated piano key to FFT bin mapping")
    print("-- FFT_SIZE = 8192, FS = 48000 Hz")
    print("-- Bin width: {:.6f} Hz".format(BIN_WIDTH))
    print("")
    print("-- Input: 4096-bit std_logic_vector (fft_bins)")
    print("-- Output: 88-bit std_logic_vector (piano)")
    print("process(fft_bins)")
    print("begin")
    print("    -- Initialize output vector")
    print("    piano <= (others => '0');")
    print("")
    print("    -- OR-reduce relevant bins for each piano key")
    
    # Group bins by key
    key_bins = {}
    for key, start, end in key_map:
        if key not in key_bins:
            key_bins[key] = []
        key_bins[key].extend(range(start, end+1))
    
    # Generate OR statements for each key
    for key in sorted(key_bins.keys()):
        bins = sorted(key_bins[key])
        note_names = ["A","A#","B","C","C#","D","D#","E","F","F#","G","G#"]
        note = note_names[(key-1) % 12]
        octave = (key + 8) // 12
        freq = piano_freq(key)
        
        print(f"    -- Key {key:2} ({note}{octave} {freq:.1f}Hz)")
        if len(bins) == 1:
            print(f"    piano({key-1}) <= fft_bins({bins[0]});")
        else:
            # Split into chunks to avoid too long lines
            chunk_size = 8
            chunks = [bins[i:i+chunk_size] for i in range(0, len(bins), chunk_size)]
            
            for i, chunk in enumerate(chunks):
                or_terms = " or ".join([f"fft_bins({b})" for b in chunk])
                if i == 0:
                    print(f"    piano({key-1}) <= {or_terms}")
                else:
                    print(f"                 or {or_terms}")
            print("                 or piano({0});".format(key-1))
        print("")
    
    print("end process;")

if __name__ == "__main__":
    print("Generating piano key mapping...")
    key_map, error_data = generate_key_map()
    
    print("\nGenerating VHDL code:")
    generate_vhdl_or_gating(key_map)
    
    print("\nVisualizing analysis:")
    plot_analysis(key_map, error_data)