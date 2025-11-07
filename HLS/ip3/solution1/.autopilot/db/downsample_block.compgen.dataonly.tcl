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
h_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
h_out { 
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
in_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 48
	offset_end 59
}
dw_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 60
	offset_end 71
}
conv1_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 72
	offset_end 83
}
conv2_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 84
	offset_end 95
}
bn1_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 96
	offset_end 107
}
bn1_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 108
	offset_end 119
}
bn1_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 120
	offset_end 131
}
bn1_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 132
	offset_end 143
}
bn2_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 144
	offset_end 155
}
bn2_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 156
	offset_end 167
}
bn2_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 168
	offset_end 179
}
bn2_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 180
	offset_end 191
}
bn3_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 192
	offset_end 203
}
bn3_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 204
	offset_end 215
}
bn3_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 216
	offset_end 227
}
bn3_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 228
	offset_end 239
}
out_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 240
	offset_end 251
}
c_out { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 252
	offset_end 259
}
w_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 260
	offset_end 267
}
w_out { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 268
	offset_end 275
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


