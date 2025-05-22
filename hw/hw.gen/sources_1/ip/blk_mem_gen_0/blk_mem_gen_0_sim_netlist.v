// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu May 22 14:45:33 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode funcsim
//               /home/bzhao30/ENGS128/Lab4/hw/hw.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [0:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [0:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]doutb;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [0:0]NLW_U0_douta_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.0694 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "1" *) 
  (* C_READ_WIDTH_B = "1" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(1'b0),
        .douta(NLW_U0_douta_UNCONNECTED[0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19168)
`pragma protect data_block
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
WO9/4dwxy077KHmC19Qpwg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
