# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "LUT_FILE" -parent ${Page_0}


}

proc update_PARAM_VALUE.LUT_FILE { PARAM_VALUE.LUT_FILE } {
	# Procedure called to update LUT_FILE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LUT_FILE { PARAM_VALUE.LUT_FILE } {
	# Procedure called to validate LUT_FILE
	return true
}


proc update_MODELPARAM_VALUE.LUT_FILE { MODELPARAM_VALUE.LUT_FILE PARAM_VALUE.LUT_FILE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LUT_FILE}] ${MODELPARAM_VALUE.LUT_FILE}
}

