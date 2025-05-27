// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue May 27 14:54:57 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18896)
`pragma protect data_block
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
Y0GzjmlnXkgFoAigtZmLz6gSeJeDnwdz8Fln/K4=
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
