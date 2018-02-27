simv:
	vcs \
+vpi \
-P jtag_vpi.tab \
+incdir+bench/include \
./bench/ram/ram_wb_b3.v \
./bench/include/tap_defines.v \
./bench/include/adbg_wb_defines.v \
./bench/include/adbg_defines.v \
./bench/include/adbg_or1k_defines.v \
./bench/jtag_vpi_tb.v \
./bench/jtag_tap/jtag_tap.v \
./bench/adv_debugsys/adbg_wb_module.v \
./bench/adv_debugsys/adbg_or1k_status_reg.v \
./bench/adv_debugsys/adbg_or1k_module.v \
./bench/adv_debugsys/adbg_wb_biu.v \
./bench/adv_debugsys/bytefifo.v \
./bench/adv_debugsys/adbg_jsp_module.v \
./bench/adv_debugsys/adbg_jsp_biu.v \
./bench/adv_debugsys/syncflop.v \
./bench/adv_debugsys/syncreg.v \
./bench/adv_debugsys/adbg_crc32.v \
./bench/adv_debugsys/adbg_or1k_biu.v \
./bench/adv_debugsys/adv_dbg_if.v \
./jtag_vpi.v \
./jtag_vpi.c \


clean:
	rm -rf csrc simv.daidir simv
