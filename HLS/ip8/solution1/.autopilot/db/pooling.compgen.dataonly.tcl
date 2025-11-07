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
stride { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
pool_type { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
H_in { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
kernel_size { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
padding { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
feature_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 72
	offset_end 83
}
feature_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 84
	offset_end 95
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


