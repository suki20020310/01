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
groups { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
h_w { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
data_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
data_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


