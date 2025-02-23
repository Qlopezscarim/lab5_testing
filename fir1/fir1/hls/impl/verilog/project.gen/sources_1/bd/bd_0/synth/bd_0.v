//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sun Feb 23 14:54:20 2025
//Host        : ece-lnx-4511c running 64-bit Red Hat Enterprise Linux Server release 7.9 (Maipo)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
   (ap_clk,
    ap_rst_n,
    interrupt,
    m_axi_gmem_araddr,
    m_axi_gmem_arburst,
    m_axi_gmem_arcache,
    m_axi_gmem_arid,
    m_axi_gmem_arlen,
    m_axi_gmem_arlock,
    m_axi_gmem_arprot,
    m_axi_gmem_arqos,
    m_axi_gmem_arready,
    m_axi_gmem_arregion,
    m_axi_gmem_arsize,
    m_axi_gmem_arvalid,
    m_axi_gmem_awaddr,
    m_axi_gmem_awburst,
    m_axi_gmem_awcache,
    m_axi_gmem_awid,
    m_axi_gmem_awlen,
    m_axi_gmem_awlock,
    m_axi_gmem_awprot,
    m_axi_gmem_awqos,
    m_axi_gmem_awready,
    m_axi_gmem_awregion,
    m_axi_gmem_awsize,
    m_axi_gmem_awvalid,
    m_axi_gmem_bid,
    m_axi_gmem_bready,
    m_axi_gmem_bresp,
    m_axi_gmem_bvalid,
    m_axi_gmem_rdata,
    m_axi_gmem_rid,
    m_axi_gmem_rlast,
    m_axi_gmem_rready,
    m_axi_gmem_rresp,
    m_axi_gmem_rvalid,
    m_axi_gmem_wdata,
    m_axi_gmem_wid,
    m_axi_gmem_wlast,
    m_axi_gmem_wready,
    m_axi_gmem_wstrb,
    m_axi_gmem_wvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF m_axi_gmem:s_axi_control, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_gmem, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 256, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]m_axi_gmem_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARBURST" *) output [1:0]m_axi_gmem_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARCACHE" *) output [3:0]m_axi_gmem_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARID" *) output [0:0]m_axi_gmem_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLEN" *) output [7:0]m_axi_gmem_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARLOCK" *) output [1:0]m_axi_gmem_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARPROT" *) output [2:0]m_axi_gmem_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARQOS" *) output [3:0]m_axi_gmem_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREADY" *) input m_axi_gmem_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARREGION" *) output [3:0]m_axi_gmem_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARSIZE" *) output [2:0]m_axi_gmem_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem ARVALID" *) output m_axi_gmem_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWADDR" *) output [63:0]m_axi_gmem_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWBURST" *) output [1:0]m_axi_gmem_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWCACHE" *) output [3:0]m_axi_gmem_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWID" *) output [0:0]m_axi_gmem_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLEN" *) output [7:0]m_axi_gmem_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWLOCK" *) output [1:0]m_axi_gmem_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWPROT" *) output [2:0]m_axi_gmem_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWQOS" *) output [3:0]m_axi_gmem_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREADY" *) input m_axi_gmem_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWREGION" *) output [3:0]m_axi_gmem_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWSIZE" *) output [2:0]m_axi_gmem_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem AWVALID" *) output m_axi_gmem_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BID" *) input [0:0]m_axi_gmem_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BREADY" *) output m_axi_gmem_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BRESP" *) input [1:0]m_axi_gmem_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem BVALID" *) input m_axi_gmem_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RDATA" *) input [255:0]m_axi_gmem_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RID" *) input [0:0]m_axi_gmem_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RLAST" *) input m_axi_gmem_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RREADY" *) output m_axi_gmem_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RRESP" *) input [1:0]m_axi_gmem_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem RVALID" *) input m_axi_gmem_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WDATA" *) output [255:0]m_axi_gmem_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WID" *) output [0:0]m_axi_gmem_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WLAST" *) output m_axi_gmem_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WREADY" *) input m_axi_gmem_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WSTRB" *) output [31:0]m_axi_gmem_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_gmem WVALID" *) output m_axi_gmem_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "Slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_0_ap_clk_0, DATA_WIDTH 32, FREQ_HZ 200000000.0, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [5:0]s_axi_control_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [5:0]s_axi_control_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_wvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [63:0]m_axi_gmem_araddr;
  wire [1:0]m_axi_gmem_arburst;
  wire [3:0]m_axi_gmem_arcache;
  wire [0:0]m_axi_gmem_arid;
  wire [7:0]m_axi_gmem_arlen;
  wire [1:0]m_axi_gmem_arlock;
  wire [2:0]m_axi_gmem_arprot;
  wire [3:0]m_axi_gmem_arqos;
  wire m_axi_gmem_arready;
  wire [3:0]m_axi_gmem_arregion;
  wire [2:0]m_axi_gmem_arsize;
  wire m_axi_gmem_arvalid;
  wire [63:0]m_axi_gmem_awaddr;
  wire [1:0]m_axi_gmem_awburst;
  wire [3:0]m_axi_gmem_awcache;
  wire [0:0]m_axi_gmem_awid;
  wire [7:0]m_axi_gmem_awlen;
  wire [1:0]m_axi_gmem_awlock;
  wire [2:0]m_axi_gmem_awprot;
  wire [3:0]m_axi_gmem_awqos;
  wire m_axi_gmem_awready;
  wire [3:0]m_axi_gmem_awregion;
  wire [2:0]m_axi_gmem_awsize;
  wire m_axi_gmem_awvalid;
  wire [0:0]m_axi_gmem_bid;
  wire m_axi_gmem_bready;
  wire [1:0]m_axi_gmem_bresp;
  wire m_axi_gmem_bvalid;
  wire [255:0]m_axi_gmem_rdata;
  wire [0:0]m_axi_gmem_rid;
  wire m_axi_gmem_rlast;
  wire m_axi_gmem_rready;
  wire [1:0]m_axi_gmem_rresp;
  wire m_axi_gmem_rvalid;
  wire [255:0]m_axi_gmem_wdata;
  wire [0:0]m_axi_gmem_wid;
  wire m_axi_gmem_wlast;
  wire m_axi_gmem_wready;
  wire [31:0]m_axi_gmem_wstrb;
  wire m_axi_gmem_wvalid;
  wire [5:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [5:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;

  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .m_axi_gmem_ARADDR(m_axi_gmem_araddr),
        .m_axi_gmem_ARBURST(m_axi_gmem_arburst),
        .m_axi_gmem_ARCACHE(m_axi_gmem_arcache),
        .m_axi_gmem_ARID(m_axi_gmem_arid),
        .m_axi_gmem_ARLEN(m_axi_gmem_arlen),
        .m_axi_gmem_ARLOCK(m_axi_gmem_arlock),
        .m_axi_gmem_ARPROT(m_axi_gmem_arprot),
        .m_axi_gmem_ARQOS(m_axi_gmem_arqos),
        .m_axi_gmem_ARREADY(m_axi_gmem_arready),
        .m_axi_gmem_ARREGION(m_axi_gmem_arregion),
        .m_axi_gmem_ARSIZE(m_axi_gmem_arsize),
        .m_axi_gmem_ARVALID(m_axi_gmem_arvalid),
        .m_axi_gmem_AWADDR(m_axi_gmem_awaddr),
        .m_axi_gmem_AWBURST(m_axi_gmem_awburst),
        .m_axi_gmem_AWCACHE(m_axi_gmem_awcache),
        .m_axi_gmem_AWID(m_axi_gmem_awid),
        .m_axi_gmem_AWLEN(m_axi_gmem_awlen),
        .m_axi_gmem_AWLOCK(m_axi_gmem_awlock),
        .m_axi_gmem_AWPROT(m_axi_gmem_awprot),
        .m_axi_gmem_AWQOS(m_axi_gmem_awqos),
        .m_axi_gmem_AWREADY(m_axi_gmem_awready),
        .m_axi_gmem_AWREGION(m_axi_gmem_awregion),
        .m_axi_gmem_AWSIZE(m_axi_gmem_awsize),
        .m_axi_gmem_AWVALID(m_axi_gmem_awvalid),
        .m_axi_gmem_BID(m_axi_gmem_bid),
        .m_axi_gmem_BREADY(m_axi_gmem_bready),
        .m_axi_gmem_BRESP(m_axi_gmem_bresp),
        .m_axi_gmem_BVALID(m_axi_gmem_bvalid),
        .m_axi_gmem_RDATA(m_axi_gmem_rdata),
        .m_axi_gmem_RID(m_axi_gmem_rid),
        .m_axi_gmem_RLAST(m_axi_gmem_rlast),
        .m_axi_gmem_RREADY(m_axi_gmem_rready),
        .m_axi_gmem_RRESP(m_axi_gmem_rresp),
        .m_axi_gmem_RVALID(m_axi_gmem_rvalid),
        .m_axi_gmem_WDATA(m_axi_gmem_wdata),
        .m_axi_gmem_WID(m_axi_gmem_wid),
        .m_axi_gmem_WLAST(m_axi_gmem_wlast),
        .m_axi_gmem_WREADY(m_axi_gmem_wready),
        .m_axi_gmem_WSTRB(m_axi_gmem_wstrb),
        .m_axi_gmem_WVALID(m_axi_gmem_wvalid),
        .s_axi_control_ARADDR(s_axi_control_araddr),
        .s_axi_control_ARREADY(s_axi_control_arready),
        .s_axi_control_ARVALID(s_axi_control_arvalid),
        .s_axi_control_AWADDR(s_axi_control_awaddr),
        .s_axi_control_AWREADY(s_axi_control_awready),
        .s_axi_control_AWVALID(s_axi_control_awvalid),
        .s_axi_control_BREADY(s_axi_control_bready),
        .s_axi_control_BRESP(s_axi_control_bresp),
        .s_axi_control_BVALID(s_axi_control_bvalid),
        .s_axi_control_RDATA(s_axi_control_rdata),
        .s_axi_control_RREADY(s_axi_control_rready),
        .s_axi_control_RRESP(s_axi_control_rresp),
        .s_axi_control_RVALID(s_axi_control_rvalid),
        .s_axi_control_WDATA(s_axi_control_wdata),
        .s_axi_control_WREADY(s_axi_control_wready),
        .s_axi_control_WSTRB(s_axi_control_wstrb),
        .s_axi_control_WVALID(s_axi_control_wvalid));
endmodule
