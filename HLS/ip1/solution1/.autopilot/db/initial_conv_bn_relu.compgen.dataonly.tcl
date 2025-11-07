# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
C_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
W_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
K { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
padding { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
pool_stride { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
H_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
C_out { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
stride { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
pool_kernel { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
pool_padding { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
feature_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 96
	offset_end 107
}
conv_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 108
	offset_end 119
}
bn_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 120
	offset_end 131
}
bn_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 132
	offset_end 143
}
bn_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 144
	offset_end 155
}
bn_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 156
	offset_end 167
}
feature_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 168
	offset_end 179
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


