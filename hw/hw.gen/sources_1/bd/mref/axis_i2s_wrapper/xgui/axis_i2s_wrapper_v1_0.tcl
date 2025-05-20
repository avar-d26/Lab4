# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AC_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_AXI_STREAM_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDS_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DDS_PHASE_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.AC_DATA_WIDTH { PARAM_VALUE.AC_DATA_WIDTH } {
	# Procedure called to update AC_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AC_DATA_WIDTH { PARAM_VALUE.AC_DATA_WIDTH } {
	# Procedure called to validate AC_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_AXI_STREAM_DATA_WIDTH { PARAM_VALUE.C_AXI_STREAM_DATA_WIDTH } {
	# Procedure called to update C_AXI_STREAM_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_AXI_STREAM_DATA_WIDTH { PARAM_VALUE.C_AXI_STREAM_DATA_WIDTH } {
	# Procedure called to validate C_AXI_STREAM_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DDS_DATA_WIDTH { PARAM_VALUE.DDS_DATA_WIDTH } {
	# Procedure called to update DDS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDS_DATA_WIDTH { PARAM_VALUE.DDS_DATA_WIDTH } {
	# Procedure called to validate DDS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.DDS_PHASE_DATA_WIDTH { PARAM_VALUE.DDS_PHASE_DATA_WIDTH } {
	# Procedure called to update DDS_PHASE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DDS_PHASE_DATA_WIDTH { PARAM_VALUE.DDS_PHASE_DATA_WIDTH } {
	# Procedure called to validate DDS_PHASE_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_AXI_STREAM_DATA_WIDTH { MODELPARAM_VALUE.C_AXI_STREAM_DATA_WIDTH PARAM_VALUE.C_AXI_STREAM_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_AXI_STREAM_DATA_WIDTH}] ${MODELPARAM_VALUE.C_AXI_STREAM_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AC_DATA_WIDTH { MODELPARAM_VALUE.AC_DATA_WIDTH PARAM_VALUE.AC_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AC_DATA_WIDTH}] ${MODELPARAM_VALUE.AC_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DDS_DATA_WIDTH { MODELPARAM_VALUE.DDS_DATA_WIDTH PARAM_VALUE.DDS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDS_DATA_WIDTH}] ${MODELPARAM_VALUE.DDS_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.DDS_PHASE_DATA_WIDTH { MODELPARAM_VALUE.DDS_PHASE_DATA_WIDTH PARAM_VALUE.DDS_PHASE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DDS_PHASE_DATA_WIDTH}] ${MODELPARAM_VALUE.DDS_PHASE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

