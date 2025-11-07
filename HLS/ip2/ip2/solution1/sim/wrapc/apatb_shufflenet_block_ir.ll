; ModuleID = 'C:/Users/11400/Desktop/shuffle/HLS/ip2/ip2/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }

; Function Attrs: noinline
define void @apatb_shufflenet_block_ir(%"struct.ap_int<8>"* noalias nocapture nonnull readonly %in, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %conv1_kernel, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %dw_kernel, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %conv2_kernel, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn1_mean, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn1_var, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn1_gamma, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn1_beta, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn2_mean, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn2_var, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn2_gamma, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn2_beta, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn3_mean, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn3_var, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn3_gamma, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn3_beta, %"struct.ap_int<8>"* noalias nocapture nonnull %out, %"struct.ap_uint<16>"* nocapture readonly %c_in, %"struct.ap_uint<16>"* nocapture readonly %c_out, %"struct.ap_uint<16>"* nocapture readonly %h_w, %"struct.ap_uint<16>"* nocapture readonly %c_reduce, %"struct.ap_int<8>"* nocapture readonly %stride) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 1073741824)
  %in_copy = bitcast i8* %malloccall to [1073741824 x i8]*
  %malloccall1 = call i8* @malloc(i64 1073741824)
  %conv1_kernel_copy = bitcast i8* %malloccall1 to [1073741824 x i8]*
  %malloccall2 = call i8* @malloc(i64 1073741824)
  %dw_kernel_copy = bitcast i8* %malloccall2 to [1073741824 x i8]*
  %malloccall3 = call i8* @malloc(i64 1073741824)
  %conv2_kernel_copy = bitcast i8* %malloccall3 to [1073741824 x i8]*
  %malloccall4 = call i8* @malloc(i64 1048576)
  %bn1_mean_copy = bitcast i8* %malloccall4 to [1048576 x i8]*
  %malloccall5 = call i8* @malloc(i64 1048576)
  %bn1_var_copy = bitcast i8* %malloccall5 to [1048576 x i8]*
  %malloccall6 = call i8* @malloc(i64 1048576)
  %bn1_gamma_copy = bitcast i8* %malloccall6 to [1048576 x i8]*
  %malloccall7 = call i8* @malloc(i64 1048576)
  %bn1_beta_copy = bitcast i8* %malloccall7 to [1048576 x i8]*
  %malloccall8 = call i8* @malloc(i64 1048576)
  %bn2_mean_copy = bitcast i8* %malloccall8 to [1048576 x i8]*
  %malloccall9 = call i8* @malloc(i64 1048576)
  %bn2_var_copy = bitcast i8* %malloccall9 to [1048576 x i8]*
  %malloccall10 = call i8* @malloc(i64 1048576)
  %bn2_gamma_copy = bitcast i8* %malloccall10 to [1048576 x i8]*
  %malloccall11 = call i8* @malloc(i64 1048576)
  %bn2_beta_copy = bitcast i8* %malloccall11 to [1048576 x i8]*
  %malloccall12 = call i8* @malloc(i64 1048576)
  %bn3_mean_copy = bitcast i8* %malloccall12 to [1048576 x i8]*
  %malloccall13 = call i8* @malloc(i64 1048576)
  %bn3_var_copy = bitcast i8* %malloccall13 to [1048576 x i8]*
  %malloccall14 = call i8* @malloc(i64 1048576)
  %bn3_gamma_copy = bitcast i8* %malloccall14 to [1048576 x i8]*
  %malloccall15 = call i8* @malloc(i64 1048576)
  %bn3_beta_copy = bitcast i8* %malloccall15 to [1048576 x i8]*
  %malloccall16 = call i8* @malloc(i64 1073741824)
  %out_copy = bitcast i8* %malloccall16 to [1073741824 x i8]*
  %0 = bitcast %"struct.ap_int<8>"* %in to [1073741824 x %"struct.ap_int<8>"]*
  %1 = bitcast %"struct.ap_int<8>"* %conv1_kernel to [1073741824 x %"struct.ap_int<8>"]*
  %2 = bitcast %"struct.ap_int<8>"* %dw_kernel to [1073741824 x %"struct.ap_int<8>"]*
  %3 = bitcast %"struct.ap_int<8>"* %conv2_kernel to [1073741824 x %"struct.ap_int<8>"]*
  %4 = bitcast %"struct.ap_int<8>"* %bn1_mean to [1048576 x %"struct.ap_int<8>"]*
  %5 = bitcast %"struct.ap_int<8>"* %bn1_var to [1048576 x %"struct.ap_int<8>"]*
  %6 = bitcast %"struct.ap_int<8>"* %bn1_gamma to [1048576 x %"struct.ap_int<8>"]*
  %7 = bitcast %"struct.ap_int<8>"* %bn1_beta to [1048576 x %"struct.ap_int<8>"]*
  %8 = bitcast %"struct.ap_int<8>"* %bn2_mean to [1048576 x %"struct.ap_int<8>"]*
  %9 = bitcast %"struct.ap_int<8>"* %bn2_var to [1048576 x %"struct.ap_int<8>"]*
  %10 = bitcast %"struct.ap_int<8>"* %bn2_gamma to [1048576 x %"struct.ap_int<8>"]*
  %11 = bitcast %"struct.ap_int<8>"* %bn2_beta to [1048576 x %"struct.ap_int<8>"]*
  %12 = bitcast %"struct.ap_int<8>"* %bn3_mean to [1048576 x %"struct.ap_int<8>"]*
  %13 = bitcast %"struct.ap_int<8>"* %bn3_var to [1048576 x %"struct.ap_int<8>"]*
  %14 = bitcast %"struct.ap_int<8>"* %bn3_gamma to [1048576 x %"struct.ap_int<8>"]*
  %15 = bitcast %"struct.ap_int<8>"* %bn3_beta to [1048576 x %"struct.ap_int<8>"]*
  %16 = bitcast %"struct.ap_int<8>"* %out to [1073741824 x %"struct.ap_int<8>"]*
  call fastcc void @copy_in([1073741824 x %"struct.ap_int<8>"]* nonnull %0, [1073741824 x i8]* %in_copy, [1073741824 x %"struct.ap_int<8>"]* nonnull %1, [1073741824 x i8]* %conv1_kernel_copy, [1073741824 x %"struct.ap_int<8>"]* nonnull %2, [1073741824 x i8]* %dw_kernel_copy, [1073741824 x %"struct.ap_int<8>"]* nonnull %3, [1073741824 x i8]* %conv2_kernel_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %4, [1048576 x i8]* %bn1_mean_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %5, [1048576 x i8]* %bn1_var_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %6, [1048576 x i8]* %bn1_gamma_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %7, [1048576 x i8]* %bn1_beta_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %8, [1048576 x i8]* %bn2_mean_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %9, [1048576 x i8]* %bn2_var_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %10, [1048576 x i8]* %bn2_gamma_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %11, [1048576 x i8]* %bn2_beta_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %12, [1048576 x i8]* %bn3_mean_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %13, [1048576 x i8]* %bn3_var_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %14, [1048576 x i8]* %bn3_gamma_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %15, [1048576 x i8]* %bn3_beta_copy, [1073741824 x %"struct.ap_int<8>"]* nonnull %16, [1073741824 x i8]* %out_copy)
  call void @apatb_shufflenet_block_hw(i8* %malloccall, i8* %malloccall1, i8* %malloccall2, i8* %malloccall3, i8* %malloccall4, i8* %malloccall5, i8* %malloccall6, i8* %malloccall7, i8* %malloccall8, i8* %malloccall9, i8* %malloccall10, i8* %malloccall11, i8* %malloccall12, i8* %malloccall13, i8* %malloccall14, i8* %malloccall15, i8* %malloccall16, %"struct.ap_uint<16>"* %c_in, %"struct.ap_uint<16>"* %c_out, %"struct.ap_uint<16>"* %h_w, %"struct.ap_uint<16>"* %c_reduce, %"struct.ap_int<8>"* %stride)
  call void @copy_back([1073741824 x %"struct.ap_int<8>"]* %0, [1073741824 x i8]* %in_copy, [1073741824 x %"struct.ap_int<8>"]* %1, [1073741824 x i8]* %conv1_kernel_copy, [1073741824 x %"struct.ap_int<8>"]* %2, [1073741824 x i8]* %dw_kernel_copy, [1073741824 x %"struct.ap_int<8>"]* %3, [1073741824 x i8]* %conv2_kernel_copy, [1048576 x %"struct.ap_int<8>"]* %4, [1048576 x i8]* %bn1_mean_copy, [1048576 x %"struct.ap_int<8>"]* %5, [1048576 x i8]* %bn1_var_copy, [1048576 x %"struct.ap_int<8>"]* %6, [1048576 x i8]* %bn1_gamma_copy, [1048576 x %"struct.ap_int<8>"]* %7, [1048576 x i8]* %bn1_beta_copy, [1048576 x %"struct.ap_int<8>"]* %8, [1048576 x i8]* %bn2_mean_copy, [1048576 x %"struct.ap_int<8>"]* %9, [1048576 x i8]* %bn2_var_copy, [1048576 x %"struct.ap_int<8>"]* %10, [1048576 x i8]* %bn2_gamma_copy, [1048576 x %"struct.ap_int<8>"]* %11, [1048576 x i8]* %bn2_beta_copy, [1048576 x %"struct.ap_int<8>"]* %12, [1048576 x i8]* %bn3_mean_copy, [1048576 x %"struct.ap_int<8>"]* %13, [1048576 x i8]* %bn3_var_copy, [1048576 x %"struct.ap_int<8>"]* %14, [1048576 x i8]* %bn3_gamma_copy, [1048576 x %"struct.ap_int<8>"]* %15, [1048576 x i8]* %bn3_beta_copy, [1073741824 x %"struct.ap_int<8>"]* %16, [1073741824 x i8]* %out_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  call void @free(i8* %malloccall4)
  call void @free(i8* %malloccall5)
  call void @free(i8* %malloccall6)
  call void @free(i8* %malloccall7)
  call void @free(i8* %malloccall8)
  call void @free(i8* %malloccall9)
  call void @free(i8* %malloccall10)
  call void @free(i8* %malloccall11)
  call void @free(i8* %malloccall12)
  call void @free(i8* %malloccall13)
  call void @free(i8* %malloccall14)
  call void @free(i8* %malloccall15)
  call void @free(i8* %malloccall16)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1073741824 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="0", [1073741824 x i8]* noalias nocapture "unpacked"="1.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="2", [1073741824 x i8]* noalias nocapture "unpacked"="3.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="4", [1073741824 x i8]* noalias nocapture "unpacked"="5.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="6", [1073741824 x i8]* noalias nocapture "unpacked"="7.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="8", [1048576 x i8]* noalias nocapture "unpacked"="9.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="10", [1048576 x i8]* noalias nocapture "unpacked"="11.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="12", [1048576 x i8]* noalias nocapture "unpacked"="13.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="14", [1048576 x i8]* noalias nocapture "unpacked"="15.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="16", [1048576 x i8]* noalias nocapture "unpacked"="17.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="18", [1048576 x i8]* noalias nocapture "unpacked"="19.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="20", [1048576 x i8]* noalias nocapture "unpacked"="21.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="22", [1048576 x i8]* noalias nocapture "unpacked"="23.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="24", [1048576 x i8]* noalias nocapture "unpacked"="25.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="26", [1048576 x i8]* noalias nocapture "unpacked"="27.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="28", [1048576 x i8]* noalias nocapture "unpacked"="29.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="30", [1048576 x i8]* noalias nocapture "unpacked"="31.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="32", [1073741824 x i8]* noalias nocapture "unpacked"="33.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>"([1073741824 x i8]* %1, [1073741824 x %"struct.ap_int<8>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>"([1073741824 x i8]* %3, [1073741824 x %"struct.ap_int<8>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>"([1073741824 x i8]* %5, [1073741824 x %"struct.ap_int<8>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>"([1073741824 x i8]* %7, [1073741824 x %"struct.ap_int<8>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %9, [1048576 x %"struct.ap_int<8>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %11, [1048576 x %"struct.ap_int<8>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %13, [1048576 x %"struct.ap_int<8>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %15, [1048576 x %"struct.ap_int<8>"]* %14)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %17, [1048576 x %"struct.ap_int<8>"]* %16)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %19, [1048576 x %"struct.ap_int<8>"]* %18)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %21, [1048576 x %"struct.ap_int<8>"]* %20)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %23, [1048576 x %"struct.ap_int<8>"]* %22)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %25, [1048576 x %"struct.ap_int<8>"]* %24)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %27, [1048576 x %"struct.ap_int<8>"]* %26)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %29, [1048576 x %"struct.ap_int<8>"]* %28)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %31, [1048576 x %"struct.ap_int<8>"]* %30)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>"([1073741824 x i8]* %33, [1073741824 x %"struct.ap_int<8>"]* %32)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [1073741824 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="2", [1073741824 x i8]* noalias nocapture readonly "unpacked"="3.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="4", [1073741824 x i8]* noalias nocapture readonly "unpacked"="5.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="6", [1073741824 x i8]* noalias nocapture readonly "unpacked"="7.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="8", [1048576 x i8]* noalias nocapture readonly "unpacked"="9.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="10", [1048576 x i8]* noalias nocapture readonly "unpacked"="11.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="12", [1048576 x i8]* noalias nocapture readonly "unpacked"="13.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="14", [1048576 x i8]* noalias nocapture readonly "unpacked"="15.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="16", [1048576 x i8]* noalias nocapture readonly "unpacked"="17.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="18", [1048576 x i8]* noalias nocapture readonly "unpacked"="19.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="20", [1048576 x i8]* noalias nocapture readonly "unpacked"="21.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="22", [1048576 x i8]* noalias nocapture readonly "unpacked"="23.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="24", [1048576 x i8]* noalias nocapture readonly "unpacked"="25.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="26", [1048576 x i8]* noalias nocapture readonly "unpacked"="27.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="28", [1048576 x i8]* noalias nocapture readonly "unpacked"="29.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="30", [1048576 x i8]* noalias nocapture readonly "unpacked"="31.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="32", [1073741824 x i8]* noalias nocapture readonly "unpacked"="33.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.5.17.204.219.230"([1073741824 x %"struct.ap_int<8>"]* %0, [1073741824 x i8]* %1)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.5.17.204.219.230"([1073741824 x %"struct.ap_int<8>"]* %2, [1073741824 x i8]* %3)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.5.17.204.219.230"([1073741824 x %"struct.ap_int<8>"]* %4, [1073741824 x i8]* %5)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.5.17.204.219.230"([1073741824 x %"struct.ap_int<8>"]* %6, [1073741824 x i8]* %7)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %8, [1048576 x i8]* %9)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %10, [1048576 x i8]* %11)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %12, [1048576 x i8]* %13)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %14, [1048576 x i8]* %15)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %16, [1048576 x i8]* %17)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %18, [1048576 x i8]* %19)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %20, [1048576 x i8]* %21)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %22, [1048576 x i8]* %23)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %24, [1048576 x i8]* %25)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %26, [1048576 x i8]* %27)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %28, [1048576 x i8]* %29)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* %30, [1048576 x i8]* %31)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.5.17.204.219.230"([1073741824 x %"struct.ap_int<8>"]* %32, [1073741824 x i8]* %33)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.5.17.204.219.230"([1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [1073741824 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [1073741824 x %"struct.ap_int<8>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1073741824 x i8], [1073741824 x i8]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [1073741824 x %"struct.ap_int<8>"], [1073741824 x %"struct.ap_int<8>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1073741824
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>"([1073741824 x i8]* noalias nocapture "unpacked"="0.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [1073741824 x %"struct.ap_int<8>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1073741824 x %"struct.ap_int<8>"], [1073741824 x %"struct.ap_int<8>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1073741824 x i8], [1073741824 x i8]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1073741824
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* noalias nocapture "unpacked"="0.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [1048576 x %"struct.ap_int<8>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1048576 x %"struct.ap_int<8>"], [1048576 x %"struct.ap_int<8>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1048576 x i8], [1048576 x i8]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1048576
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.35.41.62.73.88.99.114.125.140.151.166.177"([1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [1048576 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [1048576 x %"struct.ap_int<8>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1048576 x i8], [1048576 x i8]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [1048576 x %"struct.ap_int<8>"], [1048576 x %"struct.ap_int<8>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1048576
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_shufflenet_block_hw(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_int<8>"*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [1073741824 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="2", [1073741824 x i8]* noalias nocapture readonly "unpacked"="3.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="4", [1073741824 x i8]* noalias nocapture readonly "unpacked"="5.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="6", [1073741824 x i8]* noalias nocapture readonly "unpacked"="7.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="8", [1048576 x i8]* noalias nocapture readonly "unpacked"="9.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="10", [1048576 x i8]* noalias nocapture readonly "unpacked"="11.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="12", [1048576 x i8]* noalias nocapture readonly "unpacked"="13.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="14", [1048576 x i8]* noalias nocapture readonly "unpacked"="15.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="16", [1048576 x i8]* noalias nocapture readonly "unpacked"="17.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="18", [1048576 x i8]* noalias nocapture readonly "unpacked"="19.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="20", [1048576 x i8]* noalias nocapture readonly "unpacked"="21.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="22", [1048576 x i8]* noalias nocapture readonly "unpacked"="23.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="24", [1048576 x i8]* noalias nocapture readonly "unpacked"="25.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="26", [1048576 x i8]* noalias nocapture readonly "unpacked"="27.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="28", [1048576 x i8]* noalias nocapture readonly "unpacked"="29.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="30", [1048576 x i8]* noalias nocapture readonly "unpacked"="31.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="32", [1073741824 x i8]* noalias nocapture readonly "unpacked"="33.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.5.17.204.219.230"([1073741824 x %"struct.ap_int<8>"]* %32, [1073741824 x i8]* %33)
  ret void
}

define void @shufflenet_block_hw_stub_wrapper(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_int<8>"*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 1073741824)
  %22 = bitcast i8* %malloccall to [1073741824 x %"struct.ap_int<8>"]*
  %malloccall1 = tail call i8* @malloc(i64 1073741824)
  %23 = bitcast i8* %malloccall1 to [1073741824 x %"struct.ap_int<8>"]*
  %malloccall2 = tail call i8* @malloc(i64 1073741824)
  %24 = bitcast i8* %malloccall2 to [1073741824 x %"struct.ap_int<8>"]*
  %malloccall3 = tail call i8* @malloc(i64 1073741824)
  %25 = bitcast i8* %malloccall3 to [1073741824 x %"struct.ap_int<8>"]*
  %malloccall4 = tail call i8* @malloc(i64 1048576)
  %26 = bitcast i8* %malloccall4 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall5 = tail call i8* @malloc(i64 1048576)
  %27 = bitcast i8* %malloccall5 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall6 = tail call i8* @malloc(i64 1048576)
  %28 = bitcast i8* %malloccall6 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall7 = tail call i8* @malloc(i64 1048576)
  %29 = bitcast i8* %malloccall7 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall8 = tail call i8* @malloc(i64 1048576)
  %30 = bitcast i8* %malloccall8 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall9 = tail call i8* @malloc(i64 1048576)
  %31 = bitcast i8* %malloccall9 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall10 = tail call i8* @malloc(i64 1048576)
  %32 = bitcast i8* %malloccall10 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall11 = tail call i8* @malloc(i64 1048576)
  %33 = bitcast i8* %malloccall11 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall12 = tail call i8* @malloc(i64 1048576)
  %34 = bitcast i8* %malloccall12 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall13 = tail call i8* @malloc(i64 1048576)
  %35 = bitcast i8* %malloccall13 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall14 = tail call i8* @malloc(i64 1048576)
  %36 = bitcast i8* %malloccall14 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall15 = tail call i8* @malloc(i64 1048576)
  %37 = bitcast i8* %malloccall15 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall16 = tail call i8* @malloc(i64 1073741824)
  %38 = bitcast i8* %malloccall16 to [1073741824 x %"struct.ap_int<8>"]*
  %39 = bitcast i8* %0 to [1073741824 x i8]*
  %40 = bitcast i8* %1 to [1073741824 x i8]*
  %41 = bitcast i8* %2 to [1073741824 x i8]*
  %42 = bitcast i8* %3 to [1073741824 x i8]*
  %43 = bitcast i8* %4 to [1048576 x i8]*
  %44 = bitcast i8* %5 to [1048576 x i8]*
  %45 = bitcast i8* %6 to [1048576 x i8]*
  %46 = bitcast i8* %7 to [1048576 x i8]*
  %47 = bitcast i8* %8 to [1048576 x i8]*
  %48 = bitcast i8* %9 to [1048576 x i8]*
  %49 = bitcast i8* %10 to [1048576 x i8]*
  %50 = bitcast i8* %11 to [1048576 x i8]*
  %51 = bitcast i8* %12 to [1048576 x i8]*
  %52 = bitcast i8* %13 to [1048576 x i8]*
  %53 = bitcast i8* %14 to [1048576 x i8]*
  %54 = bitcast i8* %15 to [1048576 x i8]*
  %55 = bitcast i8* %16 to [1073741824 x i8]*
  call void @copy_out([1073741824 x %"struct.ap_int<8>"]* %22, [1073741824 x i8]* %39, [1073741824 x %"struct.ap_int<8>"]* %23, [1073741824 x i8]* %40, [1073741824 x %"struct.ap_int<8>"]* %24, [1073741824 x i8]* %41, [1073741824 x %"struct.ap_int<8>"]* %25, [1073741824 x i8]* %42, [1048576 x %"struct.ap_int<8>"]* %26, [1048576 x i8]* %43, [1048576 x %"struct.ap_int<8>"]* %27, [1048576 x i8]* %44, [1048576 x %"struct.ap_int<8>"]* %28, [1048576 x i8]* %45, [1048576 x %"struct.ap_int<8>"]* %29, [1048576 x i8]* %46, [1048576 x %"struct.ap_int<8>"]* %30, [1048576 x i8]* %47, [1048576 x %"struct.ap_int<8>"]* %31, [1048576 x i8]* %48, [1048576 x %"struct.ap_int<8>"]* %32, [1048576 x i8]* %49, [1048576 x %"struct.ap_int<8>"]* %33, [1048576 x i8]* %50, [1048576 x %"struct.ap_int<8>"]* %34, [1048576 x i8]* %51, [1048576 x %"struct.ap_int<8>"]* %35, [1048576 x i8]* %52, [1048576 x %"struct.ap_int<8>"]* %36, [1048576 x i8]* %53, [1048576 x %"struct.ap_int<8>"]* %37, [1048576 x i8]* %54, [1073741824 x %"struct.ap_int<8>"]* %38, [1073741824 x i8]* %55)
  %56 = bitcast [1073741824 x %"struct.ap_int<8>"]* %22 to %"struct.ap_int<8>"*
  %57 = bitcast [1073741824 x %"struct.ap_int<8>"]* %23 to %"struct.ap_int<8>"*
  %58 = bitcast [1073741824 x %"struct.ap_int<8>"]* %24 to %"struct.ap_int<8>"*
  %59 = bitcast [1073741824 x %"struct.ap_int<8>"]* %25 to %"struct.ap_int<8>"*
  %60 = bitcast [1048576 x %"struct.ap_int<8>"]* %26 to %"struct.ap_int<8>"*
  %61 = bitcast [1048576 x %"struct.ap_int<8>"]* %27 to %"struct.ap_int<8>"*
  %62 = bitcast [1048576 x %"struct.ap_int<8>"]* %28 to %"struct.ap_int<8>"*
  %63 = bitcast [1048576 x %"struct.ap_int<8>"]* %29 to %"struct.ap_int<8>"*
  %64 = bitcast [1048576 x %"struct.ap_int<8>"]* %30 to %"struct.ap_int<8>"*
  %65 = bitcast [1048576 x %"struct.ap_int<8>"]* %31 to %"struct.ap_int<8>"*
  %66 = bitcast [1048576 x %"struct.ap_int<8>"]* %32 to %"struct.ap_int<8>"*
  %67 = bitcast [1048576 x %"struct.ap_int<8>"]* %33 to %"struct.ap_int<8>"*
  %68 = bitcast [1048576 x %"struct.ap_int<8>"]* %34 to %"struct.ap_int<8>"*
  %69 = bitcast [1048576 x %"struct.ap_int<8>"]* %35 to %"struct.ap_int<8>"*
  %70 = bitcast [1048576 x %"struct.ap_int<8>"]* %36 to %"struct.ap_int<8>"*
  %71 = bitcast [1048576 x %"struct.ap_int<8>"]* %37 to %"struct.ap_int<8>"*
  %72 = bitcast [1073741824 x %"struct.ap_int<8>"]* %38 to %"struct.ap_int<8>"*
  call void @shufflenet_block_hw_stub(%"struct.ap_int<8>"* %56, %"struct.ap_int<8>"* %57, %"struct.ap_int<8>"* %58, %"struct.ap_int<8>"* %59, %"struct.ap_int<8>"* %60, %"struct.ap_int<8>"* %61, %"struct.ap_int<8>"* %62, %"struct.ap_int<8>"* %63, %"struct.ap_int<8>"* %64, %"struct.ap_int<8>"* %65, %"struct.ap_int<8>"* %66, %"struct.ap_int<8>"* %67, %"struct.ap_int<8>"* %68, %"struct.ap_int<8>"* %69, %"struct.ap_int<8>"* %70, %"struct.ap_int<8>"* %71, %"struct.ap_int<8>"* %72, %"struct.ap_uint<16>"* %17, %"struct.ap_uint<16>"* %18, %"struct.ap_uint<16>"* %19, %"struct.ap_uint<16>"* %20, %"struct.ap_int<8>"* %21)
  call void @copy_in([1073741824 x %"struct.ap_int<8>"]* %22, [1073741824 x i8]* %39, [1073741824 x %"struct.ap_int<8>"]* %23, [1073741824 x i8]* %40, [1073741824 x %"struct.ap_int<8>"]* %24, [1073741824 x i8]* %41, [1073741824 x %"struct.ap_int<8>"]* %25, [1073741824 x i8]* %42, [1048576 x %"struct.ap_int<8>"]* %26, [1048576 x i8]* %43, [1048576 x %"struct.ap_int<8>"]* %27, [1048576 x i8]* %44, [1048576 x %"struct.ap_int<8>"]* %28, [1048576 x i8]* %45, [1048576 x %"struct.ap_int<8>"]* %29, [1048576 x i8]* %46, [1048576 x %"struct.ap_int<8>"]* %30, [1048576 x i8]* %47, [1048576 x %"struct.ap_int<8>"]* %31, [1048576 x i8]* %48, [1048576 x %"struct.ap_int<8>"]* %32, [1048576 x i8]* %49, [1048576 x %"struct.ap_int<8>"]* %33, [1048576 x i8]* %50, [1048576 x %"struct.ap_int<8>"]* %34, [1048576 x i8]* %51, [1048576 x %"struct.ap_int<8>"]* %35, [1048576 x i8]* %52, [1048576 x %"struct.ap_int<8>"]* %36, [1048576 x i8]* %53, [1048576 x %"struct.ap_int<8>"]* %37, [1048576 x i8]* %54, [1073741824 x %"struct.ap_int<8>"]* %38, [1073741824 x i8]* %55)
  ret void
}

declare void @shufflenet_block_hw_stub(%"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_int<8>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
