# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
c_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
h_w { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
in_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 32
	offset_end 43
}
conv_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 44
	offset_end 55
}
bn_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
bn_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
bn_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 80
	offset_end 91
}
bn_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 92
	offset_end 103
}
fc_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 104
	offset_end 115
}
fc_biases { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 116
	offset_end 127
}
out_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 128
	offset_end 139
}
c_out { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 140
	offset_end 147
}
num_classes { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 148
	offset_end 155
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


