# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
in_features { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
out_features { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
input_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 32
	offset_end 43
}
weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 44
	offset_end 55
}
biases { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 56
	offset_end 67
}
output_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 68
	offset_end 79
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


