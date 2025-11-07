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
stride { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
in_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
conv1_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
dw_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
conv2_kernel { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
bn1_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
bn1_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
bn1_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
bn1_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
bn2_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
bn2_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
bn2_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
bn2_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 172
	offset_end 183
}
bn3_mean { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 184
	offset_end 195
}
bn3_var { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 196
	offset_end 207
}
bn3_gamma { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 208
	offset_end 219
}
bn3_beta { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 220
	offset_end 231
}
out_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 232
	offset_end 243
}
c_out { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 244
	offset_end 251
}
c_reduce { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 252
	offset_end 259
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


