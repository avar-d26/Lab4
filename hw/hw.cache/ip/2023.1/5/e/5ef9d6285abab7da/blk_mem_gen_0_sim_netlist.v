// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:54:56 2025
// Host        : brad69 running 64-bit Linux Mint 21.3
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.2129 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
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
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "1" *) 
  (* C_WRITE_WIDTH_B = "1" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
        .ena(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18928)
`pragma protect data_block
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
16KK5w==
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
