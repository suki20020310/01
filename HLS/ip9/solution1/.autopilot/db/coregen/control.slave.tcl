dict set slaves control {ports {conv_type {type i_ap_none width 2} H_in {type i_ap_none width 16} C_out {type i_ap_none width 16} stride {type i_ap_none width 8} C_in {type i_ap_none width 16} W_in {type i_ap_none width 16} kernel_size {type i_ap_none width 8} padding {type i_ap_none width 8} feature_in {type i_ap_none width 64} conv_kernel {type i_ap_none width 64} bn_mean {type i_ap_none width 64} bn_var {type i_ap_none width 64} bn_gamma {type i_ap_none width 64} bn_beta {type i_ap_none width 64} feature_out {type i_ap_none width 64} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
