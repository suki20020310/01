# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
conv_type { 
	dir I
	width 2
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
H_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
C_out { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
stride { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
C_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
W_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
kernel_size { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
padding { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
feature_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 80
	offset_end 91
}
conv_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 92
	offset_end 103
}
bn_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 104
	offset_end 115
}
bn_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 116
	offset_end 127
}
bn_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 128
	offset_end 139
}
bn_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 140
	offset_end 151
}
feature_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 152
	offset_end 163
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


