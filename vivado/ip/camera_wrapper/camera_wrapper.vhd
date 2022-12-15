--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Wed Dec 14 10:24:35 2022
--Host        : DESKTOP-GNIHBM1 running 64-bit major release  (build 9200)
--Command     : generate_target camera_wrapper.bd
--Design      : camera_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity camera_wrapper is
  port (
    In0_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_0_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_0_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_0_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_0_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI1_0_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI1_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI1_0_arready : out STD_LOGIC;
    S00_AXI1_0_arvalid : in STD_LOGIC;
    S00_AXI1_0_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI1_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI1_0_awready : out STD_LOGIC;
    S00_AXI1_0_awvalid : in STD_LOGIC;
    S00_AXI1_0_bready : in STD_LOGIC;
    S00_AXI1_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI1_0_bvalid : out STD_LOGIC;
    S00_AXI1_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_0_rready : in STD_LOGIC;
    S00_AXI1_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI1_0_rvalid : out STD_LOGIC;
    S00_AXI1_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_0_wready : out STD_LOGIC;
    S00_AXI1_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI1_0_wvalid : in STD_LOGIC;
    S00_AXI2_0_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI2_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI2_0_arready : out STD_LOGIC;
    S00_AXI2_0_arvalid : in STD_LOGIC;
    S00_AXI2_0_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI2_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI2_0_awready : out STD_LOGIC;
    S00_AXI2_0_awvalid : in STD_LOGIC;
    S00_AXI2_0_bready : in STD_LOGIC;
    S00_AXI2_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI2_0_bvalid : out STD_LOGIC;
    S00_AXI2_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI2_0_rready : in STD_LOGIC;
    S00_AXI2_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI2_0_rvalid : out STD_LOGIC;
    S00_AXI2_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI2_0_wready : out STD_LOGIC;
    S00_AXI2_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI2_0_wvalid : in STD_LOGIC;
    S00_AXI_0_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_0_arready : out STD_LOGIC;
    S00_AXI_0_arvalid : in STD_LOGIC;
    S00_AXI_0_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_0_awready : out STD_LOGIC;
    S00_AXI_0_awvalid : in STD_LOGIC;
    S00_AXI_0_bready : in STD_LOGIC;
    S00_AXI_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_0_bvalid : out STD_LOGIC;
    S00_AXI_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_0_rready : in STD_LOGIC;
    S00_AXI_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_0_rvalid : out STD_LOGIC;
    S00_AXI_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_0_wready : out STD_LOGIC;
    S00_AXI_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_0_wvalid : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_d1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_href : in STD_LOGIC;
    cam_href1 : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_pclk1 : in STD_LOGIC;
    cam_pdwn : out STD_LOGIC;
    cam_rst : out STD_LOGIC;
    cam_trigger : out STD_LOGIC;
    cam_trigger1 : out STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_vsync1 : in STD_LOGIC;
    frame_num1_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    frame_num_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    irq_0 : out STD_LOGIC;
    m_axis2_video_0_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis2_video_0_tlast : in STD_LOGIC;
    m_axis2_video_0_tready : out STD_LOGIC;
    m_axis2_video_0_tuser : in STD_LOGIC;
    m_axis2_video_0_tvalid : in STD_LOGIC;
    resetn_0 : in STD_LOGIC;
    s_axi_0_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_0_arready : out STD_LOGIC;
    s_axi_0_arvalid : in STD_LOGIC;
    s_axi_0_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_0_awready : out STD_LOGIC;
    s_axi_0_awvalid : in STD_LOGIC;
    s_axi_0_bready : in STD_LOGIC;
    s_axi_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_0_bvalid : out STD_LOGIC;
    s_axi_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_0_rready : in STD_LOGIC;
    s_axi_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_0_rvalid : out STD_LOGIC;
    s_axi_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_0_wready : out STD_LOGIC;
    s_axi_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_0_wvalid : in STD_LOGIC;
    s_axi_CTRL1_0_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL1_0_arready : out STD_LOGIC;
    s_axi_CTRL1_0_arvalid : in STD_LOGIC;
    s_axi_CTRL1_0_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL1_0_awready : out STD_LOGIC;
    s_axi_CTRL1_0_awvalid : in STD_LOGIC;
    s_axi_CTRL1_0_bready : in STD_LOGIC;
    s_axi_CTRL1_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL1_0_bvalid : out STD_LOGIC;
    s_axi_CTRL1_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL1_0_rready : in STD_LOGIC;
    s_axi_CTRL1_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL1_0_rvalid : out STD_LOGIC;
    s_axi_CTRL1_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL1_0_wready : out STD_LOGIC;
    s_axi_CTRL1_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL1_0_wvalid : in STD_LOGIC;
    s_axi_CTRL_0_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_0_arready : out STD_LOGIC;
    s_axi_CTRL_0_arvalid : in STD_LOGIC;
    s_axi_CTRL_0_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_0_awready : out STD_LOGIC;
    s_axi_CTRL_0_awvalid : in STD_LOGIC;
    s_axi_CTRL_0_bready : in STD_LOGIC;
    s_axi_CTRL_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_0_bvalid : out STD_LOGIC;
    s_axi_CTRL_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_0_rready : in STD_LOGIC;
    s_axi_CTRL_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_0_rvalid : out STD_LOGIC;
    s_axi_CTRL_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_0_wready : out STD_LOGIC;
    s_axi_CTRL_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_0_wvalid : in STD_LOGIC;
    s_axi_aclk_0 : in STD_LOGIC;
    s_axi_aresetn_0 : in STD_LOGIC;
    s_axis_video_0_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_video_0_tlast : out STD_LOGIC;
    s_axis_video_0_tready : in STD_LOGIC;
    s_axis_video_0_tuser : out STD_LOGIC;
    s_axis_video_0_tvalid : out STD_LOGIC;
    trigger_0 : out STD_LOGIC
  );
end camera_wrapper;

architecture STRUCTURE of camera_wrapper is
  component camera is
  port (
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_d1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_href : in STD_LOGIC;
    cam_href1 : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_pclk1 : in STD_LOGIC;
    cam_pdwn : out STD_LOGIC;
    cam_rst : out STD_LOGIC;
    cam_trigger : out STD_LOGIC;
    cam_trigger1 : out STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_vsync1 : in STD_LOGIC;
    In0_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_0 : in STD_LOGIC;
    frame_num_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    frame_num1_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    irq_0 : out STD_LOGIC;
    resetn_0 : in STD_LOGIC;
    s_axi_aclk_0 : in STD_LOGIC;
    s_axi_aresetn_0 : in STD_LOGIC;
    trigger_0 : out STD_LOGIC;
    s_axi_CTRL1_0_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL1_0_arready : out STD_LOGIC;
    s_axi_CTRL1_0_arvalid : in STD_LOGIC;
    s_axi_CTRL1_0_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL1_0_awready : out STD_LOGIC;
    s_axi_CTRL1_0_awvalid : in STD_LOGIC;
    s_axi_CTRL1_0_bready : in STD_LOGIC;
    s_axi_CTRL1_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL1_0_bvalid : out STD_LOGIC;
    s_axi_CTRL1_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL1_0_rready : in STD_LOGIC;
    s_axi_CTRL1_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL1_0_rvalid : out STD_LOGIC;
    s_axi_CTRL1_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL1_0_wready : out STD_LOGIC;
    s_axi_CTRL1_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL1_0_wvalid : in STD_LOGIC;
    s_axi_CTRL_0_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_0_arready : out STD_LOGIC;
    s_axi_CTRL_0_arvalid : in STD_LOGIC;
    s_axi_CTRL_0_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_0_awready : out STD_LOGIC;
    s_axi_CTRL_0_awvalid : in STD_LOGIC;
    s_axi_CTRL_0_bready : in STD_LOGIC;
    s_axi_CTRL_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_0_bvalid : out STD_LOGIC;
    s_axi_CTRL_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_0_rready : in STD_LOGIC;
    s_axi_CTRL_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_0_rvalid : out STD_LOGIC;
    s_axi_CTRL_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_0_wready : out STD_LOGIC;
    s_axi_CTRL_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_0_wvalid : in STD_LOGIC;
    S00_AXI1_0_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI1_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI1_0_awvalid : in STD_LOGIC;
    S00_AXI1_0_awready : out STD_LOGIC;
    S00_AXI1_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI1_0_wvalid : in STD_LOGIC;
    S00_AXI1_0_wready : out STD_LOGIC;
    S00_AXI1_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI1_0_bvalid : out STD_LOGIC;
    S00_AXI1_0_bready : in STD_LOGIC;
    S00_AXI1_0_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI1_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI1_0_arvalid : in STD_LOGIC;
    S00_AXI1_0_arready : out STD_LOGIC;
    S00_AXI1_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI1_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI1_0_rvalid : out STD_LOGIC;
    S00_AXI1_0_rready : in STD_LOGIC;
    m_axis2_video_0_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis2_video_0_tlast : in STD_LOGIC;
    m_axis2_video_0_tuser : in STD_LOGIC;
    m_axis2_video_0_tvalid : in STD_LOGIC;
    m_axis2_video_0_tready : out STD_LOGIC;
    s_axi_0_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_0_arready : out STD_LOGIC;
    s_axi_0_arvalid : in STD_LOGIC;
    s_axi_0_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_0_awready : out STD_LOGIC;
    s_axi_0_awvalid : in STD_LOGIC;
    s_axi_0_bready : in STD_LOGIC;
    s_axi_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_0_bvalid : out STD_LOGIC;
    s_axi_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_0_rready : in STD_LOGIC;
    s_axi_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_0_rvalid : out STD_LOGIC;
    s_axi_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_0_wready : out STD_LOGIC;
    s_axi_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_0_wvalid : in STD_LOGIC;
    S00_AXI2_0_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI2_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI2_0_awvalid : in STD_LOGIC;
    S00_AXI2_0_awready : out STD_LOGIC;
    S00_AXI2_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI2_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI2_0_wvalid : in STD_LOGIC;
    S00_AXI2_0_wready : out STD_LOGIC;
    S00_AXI2_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI2_0_bvalid : out STD_LOGIC;
    S00_AXI2_0_bready : in STD_LOGIC;
    S00_AXI2_0_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI2_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI2_0_arvalid : in STD_LOGIC;
    S00_AXI2_0_arready : out STD_LOGIC;
    S00_AXI2_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI2_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI2_0_rvalid : out STD_LOGIC;
    S00_AXI2_0_rready : in STD_LOGIC;
    S00_AXI_0_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_0_awvalid : in STD_LOGIC;
    S00_AXI_0_awready : out STD_LOGIC;
    S00_AXI_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_0_wvalid : in STD_LOGIC;
    S00_AXI_0_wready : out STD_LOGIC;
    S00_AXI_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_0_bvalid : out STD_LOGIC;
    S00_AXI_0_bready : in STD_LOGIC;
    S00_AXI_0_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_0_arvalid : in STD_LOGIC;
    S00_AXI_0_arready : out STD_LOGIC;
    S00_AXI_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_0_rvalid : out STD_LOGIC;
    S00_AXI_0_rready : in STD_LOGIC;
    M00_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXIS_0_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_0_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_0_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXIS_0_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_video_0_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_video_0_tlast : out STD_LOGIC;
    s_axis_video_0_tuser : out STD_LOGIC;
    s_axis_video_0_tvalid : out STD_LOGIC;
    s_axis_video_0_tready : in STD_LOGIC
  );
  end component camera;
begin
camera_i: component camera
     port map (
      In0_0(0) => In0_0(0),
      In1_0(0) => In1_0(0),
      M00_AXIS_0_tdata(63 downto 0) => M00_AXIS_0_tdata(63 downto 0),
      M00_AXIS_0_tlast(0) => M00_AXIS_0_tlast(0),
      M00_AXIS_0_tready(0) => M00_AXIS_0_tready(0),
      M00_AXIS_0_tuser(0) => M00_AXIS_0_tuser(0),
      M00_AXIS_0_tvalid(0) => M00_AXIS_0_tvalid(0),
      S00_AXI1_0_araddr(3 downto 0) => S00_AXI1_0_araddr(3 downto 0),
      S00_AXI1_0_arprot(2 downto 0) => S00_AXI1_0_arprot(2 downto 0),
      S00_AXI1_0_arready => S00_AXI1_0_arready,
      S00_AXI1_0_arvalid => S00_AXI1_0_arvalid,
      S00_AXI1_0_awaddr(3 downto 0) => S00_AXI1_0_awaddr(3 downto 0),
      S00_AXI1_0_awprot(2 downto 0) => S00_AXI1_0_awprot(2 downto 0),
      S00_AXI1_0_awready => S00_AXI1_0_awready,
      S00_AXI1_0_awvalid => S00_AXI1_0_awvalid,
      S00_AXI1_0_bready => S00_AXI1_0_bready,
      S00_AXI1_0_bresp(1 downto 0) => S00_AXI1_0_bresp(1 downto 0),
      S00_AXI1_0_bvalid => S00_AXI1_0_bvalid,
      S00_AXI1_0_rdata(31 downto 0) => S00_AXI1_0_rdata(31 downto 0),
      S00_AXI1_0_rready => S00_AXI1_0_rready,
      S00_AXI1_0_rresp(1 downto 0) => S00_AXI1_0_rresp(1 downto 0),
      S00_AXI1_0_rvalid => S00_AXI1_0_rvalid,
      S00_AXI1_0_wdata(31 downto 0) => S00_AXI1_0_wdata(31 downto 0),
      S00_AXI1_0_wready => S00_AXI1_0_wready,
      S00_AXI1_0_wstrb(3 downto 0) => S00_AXI1_0_wstrb(3 downto 0),
      S00_AXI1_0_wvalid => S00_AXI1_0_wvalid,
      S00_AXI2_0_araddr(3 downto 0) => S00_AXI2_0_araddr(3 downto 0),
      S00_AXI2_0_arprot(2 downto 0) => S00_AXI2_0_arprot(2 downto 0),
      S00_AXI2_0_arready => S00_AXI2_0_arready,
      S00_AXI2_0_arvalid => S00_AXI2_0_arvalid,
      S00_AXI2_0_awaddr(3 downto 0) => S00_AXI2_0_awaddr(3 downto 0),
      S00_AXI2_0_awprot(2 downto 0) => S00_AXI2_0_awprot(2 downto 0),
      S00_AXI2_0_awready => S00_AXI2_0_awready,
      S00_AXI2_0_awvalid => S00_AXI2_0_awvalid,
      S00_AXI2_0_bready => S00_AXI2_0_bready,
      S00_AXI2_0_bresp(1 downto 0) => S00_AXI2_0_bresp(1 downto 0),
      S00_AXI2_0_bvalid => S00_AXI2_0_bvalid,
      S00_AXI2_0_rdata(31 downto 0) => S00_AXI2_0_rdata(31 downto 0),
      S00_AXI2_0_rready => S00_AXI2_0_rready,
      S00_AXI2_0_rresp(1 downto 0) => S00_AXI2_0_rresp(1 downto 0),
      S00_AXI2_0_rvalid => S00_AXI2_0_rvalid,
      S00_AXI2_0_wdata(31 downto 0) => S00_AXI2_0_wdata(31 downto 0),
      S00_AXI2_0_wready => S00_AXI2_0_wready,
      S00_AXI2_0_wstrb(3 downto 0) => S00_AXI2_0_wstrb(3 downto 0),
      S00_AXI2_0_wvalid => S00_AXI2_0_wvalid,
      S00_AXI_0_araddr(3 downto 0) => S00_AXI_0_araddr(3 downto 0),
      S00_AXI_0_arprot(2 downto 0) => S00_AXI_0_arprot(2 downto 0),
      S00_AXI_0_arready => S00_AXI_0_arready,
      S00_AXI_0_arvalid => S00_AXI_0_arvalid,
      S00_AXI_0_awaddr(3 downto 0) => S00_AXI_0_awaddr(3 downto 0),
      S00_AXI_0_awprot(2 downto 0) => S00_AXI_0_awprot(2 downto 0),
      S00_AXI_0_awready => S00_AXI_0_awready,
      S00_AXI_0_awvalid => S00_AXI_0_awvalid,
      S00_AXI_0_bready => S00_AXI_0_bready,
      S00_AXI_0_bresp(1 downto 0) => S00_AXI_0_bresp(1 downto 0),
      S00_AXI_0_bvalid => S00_AXI_0_bvalid,
      S00_AXI_0_rdata(31 downto 0) => S00_AXI_0_rdata(31 downto 0),
      S00_AXI_0_rready => S00_AXI_0_rready,
      S00_AXI_0_rresp(1 downto 0) => S00_AXI_0_rresp(1 downto 0),
      S00_AXI_0_rvalid => S00_AXI_0_rvalid,
      S00_AXI_0_wdata(31 downto 0) => S00_AXI_0_wdata(31 downto 0),
      S00_AXI_0_wready => S00_AXI_0_wready,
      S00_AXI_0_wstrb(3 downto 0) => S00_AXI_0_wstrb(3 downto 0),
      S00_AXI_0_wvalid => S00_AXI_0_wvalid,
      aresetn_0 => aresetn_0,
      cam_d(7 downto 0) => cam_d(7 downto 0),
      cam_d1(7 downto 0) => cam_d1(7 downto 0),
      cam_href => cam_href,
      cam_href1 => cam_href1,
      cam_pclk => cam_pclk,
      cam_pclk1 => cam_pclk1,
      cam_pdwn => cam_pdwn,
      cam_rst => cam_rst,
      cam_trigger => cam_trigger,
      cam_trigger1 => cam_trigger1,
      cam_vsync => cam_vsync,
      cam_vsync1 => cam_vsync1,
      frame_num1_0(5 downto 0) => frame_num1_0(5 downto 0),
      frame_num_0(5 downto 0) => frame_num_0(5 downto 0),
      irq_0 => irq_0,
      m_axis2_video_0_tdata(63 downto 0) => m_axis2_video_0_tdata(63 downto 0),
      m_axis2_video_0_tlast => m_axis2_video_0_tlast,
      m_axis2_video_0_tready => m_axis2_video_0_tready,
      m_axis2_video_0_tuser => m_axis2_video_0_tuser,
      m_axis2_video_0_tvalid => m_axis2_video_0_tvalid,
      resetn_0 => resetn_0,
      s_axi_0_araddr(8 downto 0) => s_axi_0_araddr(8 downto 0),
      s_axi_0_arready => s_axi_0_arready,
      s_axi_0_arvalid => s_axi_0_arvalid,
      s_axi_0_awaddr(8 downto 0) => s_axi_0_awaddr(8 downto 0),
      s_axi_0_awready => s_axi_0_awready,
      s_axi_0_awvalid => s_axi_0_awvalid,
      s_axi_0_bready => s_axi_0_bready,
      s_axi_0_bresp(1 downto 0) => s_axi_0_bresp(1 downto 0),
      s_axi_0_bvalid => s_axi_0_bvalid,
      s_axi_0_rdata(31 downto 0) => s_axi_0_rdata(31 downto 0),
      s_axi_0_rready => s_axi_0_rready,
      s_axi_0_rresp(1 downto 0) => s_axi_0_rresp(1 downto 0),
      s_axi_0_rvalid => s_axi_0_rvalid,
      s_axi_0_wdata(31 downto 0) => s_axi_0_wdata(31 downto 0),
      s_axi_0_wready => s_axi_0_wready,
      s_axi_0_wstrb(3 downto 0) => s_axi_0_wstrb(3 downto 0),
      s_axi_0_wvalid => s_axi_0_wvalid,
      s_axi_CTRL1_0_araddr(5 downto 0) => s_axi_CTRL1_0_araddr(5 downto 0),
      s_axi_CTRL1_0_arready => s_axi_CTRL1_0_arready,
      s_axi_CTRL1_0_arvalid => s_axi_CTRL1_0_arvalid,
      s_axi_CTRL1_0_awaddr(5 downto 0) => s_axi_CTRL1_0_awaddr(5 downto 0),
      s_axi_CTRL1_0_awready => s_axi_CTRL1_0_awready,
      s_axi_CTRL1_0_awvalid => s_axi_CTRL1_0_awvalid,
      s_axi_CTRL1_0_bready => s_axi_CTRL1_0_bready,
      s_axi_CTRL1_0_bresp(1 downto 0) => s_axi_CTRL1_0_bresp(1 downto 0),
      s_axi_CTRL1_0_bvalid => s_axi_CTRL1_0_bvalid,
      s_axi_CTRL1_0_rdata(31 downto 0) => s_axi_CTRL1_0_rdata(31 downto 0),
      s_axi_CTRL1_0_rready => s_axi_CTRL1_0_rready,
      s_axi_CTRL1_0_rresp(1 downto 0) => s_axi_CTRL1_0_rresp(1 downto 0),
      s_axi_CTRL1_0_rvalid => s_axi_CTRL1_0_rvalid,
      s_axi_CTRL1_0_wdata(31 downto 0) => s_axi_CTRL1_0_wdata(31 downto 0),
      s_axi_CTRL1_0_wready => s_axi_CTRL1_0_wready,
      s_axi_CTRL1_0_wstrb(3 downto 0) => s_axi_CTRL1_0_wstrb(3 downto 0),
      s_axi_CTRL1_0_wvalid => s_axi_CTRL1_0_wvalid,
      s_axi_CTRL_0_araddr(5 downto 0) => s_axi_CTRL_0_araddr(5 downto 0),
      s_axi_CTRL_0_arready => s_axi_CTRL_0_arready,
      s_axi_CTRL_0_arvalid => s_axi_CTRL_0_arvalid,
      s_axi_CTRL_0_awaddr(5 downto 0) => s_axi_CTRL_0_awaddr(5 downto 0),
      s_axi_CTRL_0_awready => s_axi_CTRL_0_awready,
      s_axi_CTRL_0_awvalid => s_axi_CTRL_0_awvalid,
      s_axi_CTRL_0_bready => s_axi_CTRL_0_bready,
      s_axi_CTRL_0_bresp(1 downto 0) => s_axi_CTRL_0_bresp(1 downto 0),
      s_axi_CTRL_0_bvalid => s_axi_CTRL_0_bvalid,
      s_axi_CTRL_0_rdata(31 downto 0) => s_axi_CTRL_0_rdata(31 downto 0),
      s_axi_CTRL_0_rready => s_axi_CTRL_0_rready,
      s_axi_CTRL_0_rresp(1 downto 0) => s_axi_CTRL_0_rresp(1 downto 0),
      s_axi_CTRL_0_rvalid => s_axi_CTRL_0_rvalid,
      s_axi_CTRL_0_wdata(31 downto 0) => s_axi_CTRL_0_wdata(31 downto 0),
      s_axi_CTRL_0_wready => s_axi_CTRL_0_wready,
      s_axi_CTRL_0_wstrb(3 downto 0) => s_axi_CTRL_0_wstrb(3 downto 0),
      s_axi_CTRL_0_wvalid => s_axi_CTRL_0_wvalid,
      s_axi_aclk_0 => s_axi_aclk_0,
      s_axi_aresetn_0 => s_axi_aresetn_0,
      s_axis_video_0_tdata(63 downto 0) => s_axis_video_0_tdata(63 downto 0),
      s_axis_video_0_tlast => s_axis_video_0_tlast,
      s_axis_video_0_tready => s_axis_video_0_tready,
      s_axis_video_0_tuser => s_axis_video_0_tuser,
      s_axis_video_0_tvalid => s_axis_video_0_tvalid,
      trigger_0 => trigger_0
    );
end STRUCTURE;
