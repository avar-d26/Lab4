// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu May 22 14:45:31 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19184)
`pragma protect data_block
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
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
