; ModuleID = 'C:/Users/11400/Desktop/shuffle/HLS/ip1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }

; Function Attrs: noinline
define void @apatb_initial_conv_bn_relu_ir(%"struct.ap_uint<16>"* nocapture readonly %C_in, %"struct.ap_uint<16>"* nocapture readonly %H_in, %"struct.ap_uint<16>"* nocapture readonly %W_in, %"struct.ap_uint<16>"* nocapture readonly %C_out, %"struct.ap_uint<8>"* nocapture readonly %K, %"struct.ap_uint<8>"* nocapture readonly %stride, %"struct.ap_uint<8>"* nocapture readonly %padding, %"struct.ap_uint<8>"* nocapture readonly %pool_kernel, %"struct.ap_uint<8>"* nocapture readonly %pool_stride, %"struct.ap_uint<8>"* nocapture readonly %pool_padding, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly %feature_in, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly %conv_kernel, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly %bn_mean, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly %bn_var, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly %bn_gamma, %"struct.ap_uint<8>"* noalias nocapture nonnull readonly %bn_beta, %"struct.ap_uint<8>"* noalias nocapture nonnull %feature_out) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 2147483647)
  %feature_in_copy = bitcast i8* %malloccall to [2147483647 x i8]*
  %malloccall1 = call i8* @malloc(i64 2147483647)
  %conv_kernel_copy = bitcast i8* %malloccall1 to [2147483647 x i8]*
  %malloccall2 = call i8* @malloc(i64 2147483647)
  %bn_mean_copy = bitcast i8* %malloccall2 to [2147483647 x i8]*
  %malloccall3 = call i8* @malloc(i64 2147483647)
  %bn_var_copy = bitcast i8* %malloccall3 to [2147483647 x i8]*
  %malloccall4 = call i8* @malloc(i64 2147483647)
  %bn_gamma_copy = bitcast i8* %malloccall4 to [2147483647 x i8]*
  %malloccall5 = call i8* @malloc(i64 2147483647)
  %bn_beta_copy = bitcast i8* %malloccall5 to [2147483647 x i8]*
  %malloccall6 = call i8* @malloc(i64 2147483647)
  %feature_out_copy = bitcast i8* %malloccall6 to [2147483647 x i8]*
  %0 = bitcast %"struct.ap_uint<8>"* %feature_in to [2147483647 x %"struct.ap_uint<8>"]*
  %1 = bitcast %"struct.ap_uint<8>"* %conv_kernel to [2147483647 x %"struct.ap_uint<8>"]*
  %2 = bitcast %"struct.ap_uint<8>"* %bn_mean to [2147483647 x %"struct.ap_uint<8>"]*
  %3 = bitcast %"struct.ap_uint<8>"* %bn_var to [2147483647 x %"struct.ap_uint<8>"]*
  %4 = bitcast %"struct.ap_uint<8>"* %bn_gamma to [2147483647 x %"struct.ap_uint<8>"]*
  %5 = bitcast %"struct.ap_uint<8>"* %bn_beta to [2147483647 x %"struct.ap_uint<8>"]*
  %6 = bitcast %"struct.ap_uint<8>"* %feature_out to [2147483647 x %"struct.ap_uint<8>"]*
  call fastcc void @copy_in([2147483647 x %"struct.ap_uint<8>"]* nonnull %0, [2147483647 x i8]* %feature_in_copy, [2147483647 x %"struct.ap_uint<8>"]* nonnull %1, [2147483647 x i8]* %conv_kernel_copy, [2147483647 x %"struct.ap_uint<8>"]* nonnull %2, [2147483647 x i8]* %bn_mean_copy, [2147483647 x %"struct.ap_uint<8>"]* nonnull %3, [2147483647 x i8]* %bn_var_copy, [2147483647 x %"struct.ap_uint<8>"]* nonnull %4, [2147483647 x i8]* %bn_gamma_copy, [2147483647 x %"struct.ap_uint<8>"]* nonnull %5, [2147483647 x i8]* %bn_beta_copy, [2147483647 x %"struct.ap_uint<8>"]* nonnull %6, [2147483647 x i8]* %feature_out_copy)
  call void @apatb_initial_conv_bn_relu_hw(%"struct.ap_uint<16>"* %C_in, %"struct.ap_uint<16>"* %H_in, %"struct.ap_uint<16>"* %W_in, %"struct.ap_uint<16>"* %C_out, %"struct.ap_uint<8>"* %K, %"struct.ap_uint<8>"* %stride, %"struct.ap_uint<8>"* %padding, %"struct.ap_uint<8>"* %pool_kernel, %"struct.ap_uint<8>"* %pool_stride, %"struct.ap_uint<8>"* %pool_padding, i8* %malloccall, i8* %malloccall1, i8* %malloccall2, i8* %malloccall3, i8* %malloccall4, i8* %malloccall5, i8* %malloccall6)
  call void @copy_back([2147483647 x %"struct.ap_uint<8>"]* %0, [2147483647 x i8]* %feature_in_copy, [2147483647 x %"struct.ap_uint<8>"]* %1, [2147483647 x i8]* %conv_kernel_copy, [2147483647 x %"struct.ap_uint<8>"]* %2, [2147483647 x i8]* %bn_mean_copy, [2147483647 x %"struct.ap_uint<8>"]* %3, [2147483647 x i8]* %bn_var_copy, [2147483647 x %"struct.ap_uint<8>"]* %4, [2147483647 x i8]* %bn_gamma_copy, [2147483647 x %"struct.ap_uint<8>"]* %5, [2147483647 x i8]* %bn_beta_copy, [2147483647 x %"struct.ap_uint<8>"]* %6, [2147483647 x i8]* %feature_out_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  call void @free(i8* %malloccall4)
  call void @free(i8* %malloccall5)
  call void @free(i8* %malloccall6)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([2147483647 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="0", [2147483647 x i8]* noalias nocapture "unpacked"="1.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="2", [2147483647 x i8]* noalias nocapture "unpacked"="3.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="4", [2147483647 x i8]* noalias nocapture "unpacked"="5.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="6", [2147483647 x i8]* noalias nocapture "unpacked"="7.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="8", [2147483647 x i8]* noalias nocapture "unpacked"="9.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="10", [2147483647 x i8]* noalias nocapture "unpacked"="11.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="12", [2147483647 x i8]* noalias nocapture "unpacked"="13.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>"([2147483647 x i8]* %1, [2147483647 x %"struct.ap_uint<8>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>"([2147483647 x i8]* %3, [2147483647 x %"struct.ap_uint<8>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>"([2147483647 x i8]* %5, [2147483647 x %"struct.ap_uint<8>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>"([2147483647 x i8]* %7, [2147483647 x %"struct.ap_uint<8>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>"([2147483647 x i8]* %9, [2147483647 x %"struct.ap_uint<8>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>"([2147483647 x i8]* %11, [2147483647 x %"struct.ap_uint<8>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>"([2147483647 x i8]* %13, [2147483647 x %"struct.ap_uint<8>"]* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="0", [2147483647 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="2", [2147483647 x i8]* noalias nocapture readonly "unpacked"="3.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="4", [2147483647 x i8]* noalias nocapture readonly "unpacked"="5.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="6", [2147483647 x i8]* noalias nocapture readonly "unpacked"="7.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="8", [2147483647 x i8]* noalias nocapture readonly "unpacked"="9.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="10", [2147483647 x i8]* noalias nocapture readonly "unpacked"="11.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="12", [2147483647 x i8]* noalias nocapture readonly "unpacked"="13.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* %0, [2147483647 x i8]* %1)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* %2, [2147483647 x i8]* %3)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* %4, [2147483647 x i8]* %5)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* %6, [2147483647 x i8]* %7)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* %8, [2147483647 x i8]* %9)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* %10, [2147483647 x i8]* %11)
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* %12, [2147483647 x i8]* %13)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="0", [2147483647 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [2147483647 x %"struct.ap_uint<8>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2147483647 x i8], [2147483647 x i8]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [2147483647 x %"struct.ap_uint<8>"], [2147483647 x %"struct.ap_uint<8>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2147483647
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>"([2147483647 x i8]* noalias nocapture "unpacked"="0.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [2147483647 x %"struct.ap_uint<8>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [2147483647 x %"struct.ap_uint<8>"], [2147483647 x %"struct.ap_uint<8>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [2147483647 x i8], [2147483647 x i8]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2147483647
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_initial_conv_bn_relu_hw(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="0", [2147483647 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="2", [2147483647 x i8]* noalias nocapture readonly "unpacked"="3.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="4", [2147483647 x i8]* noalias nocapture readonly "unpacked"="5.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="6", [2147483647 x i8]* noalias nocapture readonly "unpacked"="7.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="8", [2147483647 x i8]* noalias nocapture readonly "unpacked"="9.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="10", [2147483647 x i8]* noalias nocapture readonly "unpacked"="11.0.0.0", [2147483647 x %"struct.ap_uint<8>"]* noalias "unpacked"="12", [2147483647 x i8]* noalias nocapture readonly "unpacked"="13.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a2147483647struct.ap_uint<8>.5.17.33.48.59.74.85"([2147483647 x %"struct.ap_uint<8>"]* %12, [2147483647 x i8]* %13)
  ret void
}

define void @initial_conv_bn_relu_hw_stub_wrapper(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 2147483647)
  %17 = bitcast i8* %malloccall to [2147483647 x %"struct.ap_uint<8>"]*
  %malloccall1 = tail call i8* @malloc(i64 2147483647)
  %18 = bitcast i8* %malloccall1 to [2147483647 x %"struct.ap_uint<8>"]*
  %malloccall2 = tail call i8* @malloc(i64 2147483647)
  %19 = bitcast i8* %malloccall2 to [2147483647 x %"struct.ap_uint<8>"]*
  %malloccall3 = tail call i8* @malloc(i64 2147483647)
  %20 = bitcast i8* %malloccall3 to [2147483647 x %"struct.ap_uint<8>"]*
  %malloccall4 = tail call i8* @malloc(i64 2147483647)
  %21 = bitcast i8* %malloccall4 to [2147483647 x %"struct.ap_uint<8>"]*
  %malloccall5 = tail call i8* @malloc(i64 2147483647)
  %22 = bitcast i8* %malloccall5 to [2147483647 x %"struct.ap_uint<8>"]*
  %malloccall6 = tail call i8* @malloc(i64 2147483647)
  %23 = bitcast i8* %malloccall6 to [2147483647 x %"struct.ap_uint<8>"]*
  %24 = bitcast i8* %10 to [2147483647 x i8]*
  %25 = bitcast i8* %11 to [2147483647 x i8]*
  %26 = bitcast i8* %12 to [2147483647 x i8]*
  %27 = bitcast i8* %13 to [2147483647 x i8]*
  %28 = bitcast i8* %14 to [2147483647 x i8]*
  %29 = bitcast i8* %15 to [2147483647 x i8]*
  %30 = bitcast i8* %16 to [2147483647 x i8]*
  call void @copy_out([2147483647 x %"struct.ap_uint<8>"]* %17, [2147483647 x i8]* %24, [2147483647 x %"struct.ap_uint<8>"]* %18, [2147483647 x i8]* %25, [2147483647 x %"struct.ap_uint<8>"]* %19, [2147483647 x i8]* %26, [2147483647 x %"struct.ap_uint<8>"]* %20, [2147483647 x i8]* %27, [2147483647 x %"struct.ap_uint<8>"]* %21, [2147483647 x i8]* %28, [2147483647 x %"struct.ap_uint<8>"]* %22, [2147483647 x i8]* %29, [2147483647 x %"struct.ap_uint<8>"]* %23, [2147483647 x i8]* %30)
  %31 = bitcast [2147483647 x %"struct.ap_uint<8>"]* %17 to %"struct.ap_uint<8>"*
  %32 = bitcast [2147483647 x %"struct.ap_uint<8>"]* %18 to %"struct.ap_uint<8>"*
  %33 = bitcast [2147483647 x %"struct.ap_uint<8>"]* %19 to %"struct.ap_uint<8>"*
  %34 = bitcast [2147483647 x %"struct.ap_uint<8>"]* %20 to %"struct.ap_uint<8>"*
  %35 = bitcast [2147483647 x %"struct.ap_uint<8>"]* %21 to %"struct.ap_uint<8>"*
  %36 = bitcast [2147483647 x %"struct.ap_uint<8>"]* %22 to %"struct.ap_uint<8>"*
  %37 = bitcast [2147483647 x %"struct.ap_uint<8>"]* %23 to %"struct.ap_uint<8>"*
  call void @initial_conv_bn_relu_hw_stub(%"struct.ap_uint<16>"* %0, %"struct.ap_uint<16>"* %1, %"struct.ap_uint<16>"* %2, %"struct.ap_uint<16>"* %3, %"struct.ap_uint<8>"* %4, %"struct.ap_uint<8>"* %5, %"struct.ap_uint<8>"* %6, %"struct.ap_uint<8>"* %7, %"struct.ap_uint<8>"* %8, %"struct.ap_uint<8>"* %9, %"struct.ap_uint<8>"* %31, %"struct.ap_uint<8>"* %32, %"struct.ap_uint<8>"* %33, %"struct.ap_uint<8>"* %34, %"struct.ap_uint<8>"* %35, %"struct.ap_uint<8>"* %36, %"struct.ap_uint<8>"* %37)
  call void @copy_in([2147483647 x %"struct.ap_uint<8>"]* %17, [2147483647 x i8]* %24, [2147483647 x %"struct.ap_uint<8>"]* %18, [2147483647 x i8]* %25, [2147483647 x %"struct.ap_uint<8>"]* %19, [2147483647 x i8]* %26, [2147483647 x %"struct.ap_uint<8>"]* %20, [2147483647 x i8]* %27, [2147483647 x %"struct.ap_uint<8>"]* %21, [2147483647 x i8]* %28, [2147483647 x %"struct.ap_uint<8>"]* %22, [2147483647 x i8]* %29, [2147483647 x %"struct.ap_uint<8>"]* %23, [2147483647 x i8]* %30)
  ret void
}

declare void @initial_conv_bn_relu_hw_stub(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*)

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
