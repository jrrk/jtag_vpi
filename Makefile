V = ./bench/jtag_vpi_tb.v \
./bench/include/tap_defines.v \
./bench/jtag_tap/jtag_tap.v \
./jtag_vpi.v \
./jtag_vpi.c \
../../util/cluster_clock_gating.sv \
../../util/generic_fifo.sv \
../../axi_slice/axi_w_buffer.sv \
../../axi_slice/axi_r_buffer.sv \
../../axi_slice/axi_b_buffer.sv \
../../axi_slice/axi_aw_buffer.sv \
../../axi_slice/axi_ar_buffer.sv \
../../soc/sd_crc_7.v \
../../soc/sd_crc_16.v \
../../soc/eth_lfsr.v \
../../socip/nasti/channel.sv \
../../socip/util/arbiter.sv \
../../jtag_xilinx/jtag_rom.v \
../../jtag_xilinx/jtag_addr.v \
../HDL_sources/Synthesis_Sources/AXI_WRITE_DATA_RESPONSE_CHANNEL_edited.sv \
../HDL_sources/Synthesis_Sources/AXI_WRITE_DATA_CHANNEL_edited.sv \
../HDL_sources/Synthesis_Sources/AXI_READ_DATA_CHANNEL_edited.sv \
../HDL_sources/Synthesis_Sources/AXI_ADDRESS_CONTROL_CHANNEL_edited.sv \
../../axi_mem_if/axi_mem_if.sv \
../../soc/sd_data_serial_host.sv \
../../soc/sd_cmd_serial_host.v \
../../soc/ps2_translation_table.v \
../../soc/ps2_keyboard.v \
../../soc/dualmem.v \
../../soc/axis_gmii_tx.v \
../../soc/axis_gmii_rx.v \
../../socip/nasti/nasti_combiner.sv \
../../socip/nasti/nasti_mux.sv \
../../socip/nasti/nasti_slicer.sv \
../../socip/nasti/nasti_demux.sv \
../../socip/nasti/nasti_buf.sv \
../../axi_if/axi_if.sv \
../../util/slave_adapter.sv \
../HDL_sources/axi_master/axi_master.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_clk_wiz.v \
../HDL_sources/axi_master/axi_master.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.v \
../../jtag_xilinx/jtag_dummy.v \
../HDL_sources/Synthesis_Sources/AXI_master_edited.sv \
../../util/axi_bram_ctrl_ariane.sv \
../../util/sevensegment.v \
../../util/nexys4ddr_display.v \
../../soc/uart.v \
../../soc/sd_top.sv \
../../soc/rx_delay.v \
../../soc/ps2.v \
../../soc/my_fifo.v \
../../soc/fstore2.v \
../../soc/framing_top.sv \
../../socip/nasti/nasti_crossbar.sv \
../../util/nasti_converter.sv \
../../util/if_converter.sv \
../HDL_sources/axi_master/axi_master.srcs/sources_1/ip/clk_wiz_ariane/clk_wiz_ariane_clk_wiz.v \
../HDL_sources/axi_master/axi_master.srcs/sources_1/ip/clk_wiz_ariane/clk_wiz_ariane.v \
../HDL_sources/Synthesis_Sources/dbg_wrap.sv \
../../util/axi_ram_wrap.sv \
../../util/crossbar_socip_test.sv \
../../util/display_top.sv \
../../soc/periph_soc.sv \
../../axi_mem_if/axi2mem.sv \
../HDL_sources/Synthesis_Sources/wrap_top.sv \
../../soc/sd_verilator_model.sv \
../../soc/ddr2_model.v \
glbl.v \

simv: $V
	vcs -gui -sverilog +vpi +libext+.v -P jtag_vpi.tab -debug_access+all \
+incdir+bench/include \
+incdir+../../soc \
-y /opt/Xilinx/Vivado/2015.4/data/verilog/src/retarget \
-y /opt/Xilinx/Vivado/2015.4/data/verilog/src/unisims \
/opt/Xilinx/Vivado/2015.4/data/verilog/src/unisims/RAMB18E1.v \
/opt/Xilinx/Vivado/2015.4/data/verilog/src/unisims/RAMB36E1.v \
$V

clean:
	rm -rf csrc simv.daidir simv
