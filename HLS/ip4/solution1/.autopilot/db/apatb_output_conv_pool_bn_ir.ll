; ModuleID = 'C:/Users/11400/Desktop/shuffle/HLS/ip4/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<8>" = type { %"struct.ap_int_base<8, true>" }
%"struct.ap_int_base<8, true>" = type { %"struct.ssdm_int<8, true>" }
%"struct.ssdm_int<8, true>" = type { i8 }
%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }

; Function Attrs: noinline
define void @apatb_output_conv_pool_bn_ir(%"struct.ap_int<8>"* noalias nocapture nonnull readonly %in, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %conv_kernel, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn_mean, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn_var, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn_gamma, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %bn_beta, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %fc_weights, %"struct.ap_int<8>"* noalias nocapture nonnull readonly %fc_biases, %"struct.ap_int<8>"* noalias nocapture nonnull %out, %"struct.ap_uint<16>"* nocapture readonly %c_in, %"struct.ap_uint<16>"* nocapture readonly %c_out, %"struct.ap_uint<16>"* nocapture readonly %h_w, %"struct.ap_uint<16>"* nocapture readonly %num_classes) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 1073741824)
  %in_copy = bitcast i8* %malloccall to [1073741824 x i8]*
  %malloccall1 = call i8* @malloc(i64 1073741824)
  %conv_kernel_copy = bitcast i8* %malloccall1 to [1073741824 x i8]*
  %malloccall2 = call i8* @malloc(i64 1048576)
  %bn_mean_copy = bitcast i8* %malloccall2 to [1048576 x i8]*
  %malloccall3 = call i8* @malloc(i64 1048576)
  %bn_var_copy = bitcast i8* %malloccall3 to [1048576 x i8]*
  %malloccall4 = call i8* @malloc(i64 1048576)
  %bn_gamma_copy = bitcast i8* %malloccall4 to [1048576 x i8]*
  %malloccall5 = call i8* @malloc(i64 1048576)
  %bn_beta_copy = bitcast i8* %malloccall5 to [1048576 x i8]*
  %malloccall6 = call i8* @malloc(i64 1048576)
  %fc_weights_copy = bitcast i8* %malloccall6 to [1048576 x i8]*
  %malloccall7 = call i8* @malloc(i64 1048576)
  %fc_biases_copy = bitcast i8* %malloccall7 to [1048576 x i8]*
  %malloccall8 = call i8* @malloc(i64 1048576)
  %out_copy = bitcast i8* %malloccall8 to [1048576 x i8]*
  %0 = bitcast %"struct.ap_int<8>"* %in to [1073741824 x %"struct.ap_int<8>"]*
  %1 = bitcast %"struct.ap_int<8>"* %conv_kernel to [1073741824 x %"struct.ap_int<8>"]*
  %2 = bitcast %"struct.ap_int<8>"* %bn_mean to [1048576 x %"struct.ap_int<8>"]*
  %3 = bitcast %"struct.ap_int<8>"* %bn_var to [1048576 x %"struct.ap_int<8>"]*
  %4 = bitcast %"struct.ap_int<8>"* %bn_gamma to [1048576 x %"struct.ap_int<8>"]*
  %5 = bitcast %"struct.ap_int<8>"* %bn_beta to [1048576 x %"struct.ap_int<8>"]*
  %6 = bitcast %"struct.ap_int<8>"* %fc_weights to [1048576 x %"struct.ap_int<8>"]*
  %7 = bitcast %"struct.ap_int<8>"* %fc_biases to [1048576 x %"struct.ap_int<8>"]*
  %8 = bitcast %"struct.ap_int<8>"* %out to [1048576 x %"struct.ap_int<8>"]*
  call fastcc void @copy_in([1073741824 x %"struct.ap_int<8>"]* nonnull %0, [1073741824 x i8]* %in_copy, [1073741824 x %"struct.ap_int<8>"]* nonnull %1, [1073741824 x i8]* %conv_kernel_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %2, [1048576 x i8]* %bn_mean_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %3, [1048576 x i8]* %bn_var_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %4, [1048576 x i8]* %bn_gamma_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %5, [1048576 x i8]* %bn_beta_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %6, [1048576 x i8]* %fc_weights_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %7, [1048576 x i8]* %fc_biases_copy, [1048576 x %"struct.ap_int<8>"]* nonnull %8, [1048576 x i8]* %out_copy)
  call void @apatb_output_conv_pool_bn_hw(i8* %malloccall, i8* %malloccall1, i8* %malloccall2, i8* %malloccall3, i8* %malloccall4, i8* %malloccall5, i8* %malloccall6, i8* %malloccall7, i8* %malloccall8, %"struct.ap_uint<16>"* %c_in, %"struct.ap_uint<16>"* %c_out, %"struct.ap_uint<16>"* %h_w, %"struct.ap_uint<16>"* %num_classes)
  call void @copy_back([1073741824 x %"struct.ap_int<8>"]* %0, [1073741824 x i8]* %in_copy, [1073741824 x %"struct.ap_int<8>"]* %1, [1073741824 x i8]* %conv_kernel_copy, [1048576 x %"struct.ap_int<8>"]* %2, [1048576 x i8]* %bn_mean_copy, [1048576 x %"struct.ap_int<8>"]* %3, [1048576 x i8]* %bn_var_copy, [1048576 x %"struct.ap_int<8>"]* %4, [1048576 x i8]* %bn_gamma_copy, [1048576 x %"struct.ap_int<8>"]* %5, [1048576 x i8]* %bn_beta_copy, [1048576 x %"struct.ap_int<8>"]* %6, [1048576 x i8]* %fc_weights_copy, [1048576 x %"struct.ap_int<8>"]* %7, [1048576 x i8]* %fc_biases_copy, [1048576 x %"struct.ap_int<8>"]* %8, [1048576 x i8]* %out_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  call void @free(i8* %malloccall4)
  call void @free(i8* %malloccall5)
  call void @free(i8* %malloccall6)
  call void @free(i8* %malloccall7)
  call void @free(i8* %malloccall8)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1073741824 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="0", [1073741824 x i8]* noalias nocapture "unpacked"="1.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="2", [1073741824 x i8]* noalias nocapture "unpacked"="3.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="4", [1048576 x i8]* noalias nocapture "unpacked"="5.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="6", [1048576 x i8]* noalias nocapture "unpacked"="7.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="8", [1048576 x i8]* noalias nocapture "unpacked"="9.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="10", [1048576 x i8]* noalias nocapture "unpacked"="11.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="12", [1048576 x i8]* noalias nocapture "unpacked"="13.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="14", [1048576 x i8]* noalias nocapture "unpacked"="15.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias readonly "unpacked"="16", [1048576 x i8]* noalias nocapture "unpacked"="17.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>"([1073741824 x i8]* %1, [1073741824 x %"struct.ap_int<8>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>"([1073741824 x i8]* %3, [1073741824 x %"struct.ap_int<8>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %5, [1048576 x %"struct.ap_int<8>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %7, [1048576 x %"struct.ap_int<8>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %9, [1048576 x %"struct.ap_int<8>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %11, [1048576 x %"struct.ap_int<8>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %13, [1048576 x %"struct.ap_int<8>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %15, [1048576 x %"struct.ap_int<8>"]* %14)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>"([1048576 x i8]* %17, [1048576 x %"struct.ap_int<8>"]* %16)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [1073741824 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="2", [1073741824 x i8]* noalias nocapture readonly "unpacked"="3.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="4", [1048576 x i8]* noalias nocapture readonly "unpacked"="5.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="6", [1048576 x i8]* noalias nocapture readonly "unpacked"="7.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="8", [1048576 x i8]* noalias nocapture readonly "unpacked"="9.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="10", [1048576 x i8]* noalias nocapture readonly "unpacked"="11.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="12", [1048576 x i8]* noalias nocapture readonly "unpacked"="13.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="14", [1048576 x i8]* noalias nocapture readonly "unpacked"="15.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="16", [1048576 x i8]* noalias nocapture readonly "unpacked"="17.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.150.156"([1073741824 x %"struct.ap_int<8>"]* %0, [1073741824 x i8]* %1)
  call fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.150.156"([1073741824 x %"struct.ap_int<8>"]* %2, [1073741824 x i8]* %3)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* %4, [1048576 x i8]* %5)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* %6, [1048576 x i8]* %7)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* %8, [1048576 x i8]* %9)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* %10, [1048576 x i8]* %11)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* %12, [1048576 x i8]* %13)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* %14, [1048576 x i8]* %15)
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* %16, [1048576 x i8]* %17)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [1048576 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
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
define internal fastcc void @"onebyonecpy_hls.p0a1073741824struct.ap_int<8>.150.156"([1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [1073741824 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
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

declare void @apatb_output_conv_pool_bn_hw(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="0", [1073741824 x i8]* noalias nocapture readonly "unpacked"="1.0.0.0", [1073741824 x %"struct.ap_int<8>"]* noalias "unpacked"="2", [1073741824 x i8]* noalias nocapture readonly "unpacked"="3.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="4", [1048576 x i8]* noalias nocapture readonly "unpacked"="5.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="6", [1048576 x i8]* noalias nocapture readonly "unpacked"="7.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="8", [1048576 x i8]* noalias nocapture readonly "unpacked"="9.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="10", [1048576 x i8]* noalias nocapture readonly "unpacked"="11.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="12", [1048576 x i8]* noalias nocapture readonly "unpacked"="13.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="14", [1048576 x i8]* noalias nocapture readonly "unpacked"="15.0.0.0", [1048576 x %"struct.ap_int<8>"]* noalias "unpacked"="16", [1048576 x i8]* noalias nocapture readonly "unpacked"="17.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1048576struct.ap_int<8>.41.53.69.84.95.110.121"([1048576 x %"struct.ap_int<8>"]* %16, [1048576 x i8]* %17)
  ret void
}

define void @output_conv_pool_bn_hw_stub_wrapper(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 1073741824)
  %13 = bitcast i8* %malloccall to [1073741824 x %"struct.ap_int<8>"]*
  %malloccall1 = tail call i8* @malloc(i64 1073741824)
  %14 = bitcast i8* %malloccall1 to [1073741824 x %"struct.ap_int<8>"]*
  %malloccall2 = tail call i8* @malloc(i64 1048576)
  %15 = bitcast i8* %malloccall2 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall3 = tail call i8* @malloc(i64 1048576)
  %16 = bitcast i8* %malloccall3 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall4 = tail call i8* @malloc(i64 1048576)
  %17 = bitcast i8* %malloccall4 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall5 = tail call i8* @malloc(i64 1048576)
  %18 = bitcast i8* %malloccall5 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall6 = tail call i8* @malloc(i64 1048576)
  %19 = bitcast i8* %malloccall6 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall7 = tail call i8* @malloc(i64 1048576)
  %20 = bitcast i8* %malloccall7 to [1048576 x %"struct.ap_int<8>"]*
  %malloccall8 = tail call i8* @malloc(i64 1048576)
  %21 = bitcast i8* %malloccall8 to [1048576 x %"struct.ap_int<8>"]*
  %22 = bitcast i8* %0 to [1073741824 x i8]*
  %23 = bitcast i8* %1 to [1073741824 x i8]*
  %24 = bitcast i8* %2 to [1048576 x i8]*
  %25 = bitcast i8* %3 to [1048576 x i8]*
  %26 = bitcast i8* %4 to [1048576 x i8]*
  %27 = bitcast i8* %5 to [1048576 x i8]*
  %28 = bitcast i8* %6 to [1048576 x i8]*
  %29 = bitcast i8* %7 to [1048576 x i8]*
  %30 = bitcast i8* %8 to [1048576 x i8]*
  call void @copy_out([1073741824 x %"struct.ap_int<8>"]* %13, [1073741824 x i8]* %22, [1073741824 x %"struct.ap_int<8>"]* %14, [1073741824 x i8]* %23, [1048576 x %"struct.ap_int<8>"]* %15, [1048576 x i8]* %24, [1048576 x %"struct.ap_int<8>"]* %16, [1048576 x i8]* %25, [1048576 x %"struct.ap_int<8>"]* %17, [1048576 x i8]* %26, [1048576 x %"struct.ap_int<8>"]* %18, [1048576 x i8]* %27, [1048576 x %"struct.ap_int<8>"]* %19, [1048576 x i8]* %28, [1048576 x %"struct.ap_int<8>"]* %20, [1048576 x i8]* %29, [1048576 x %"struct.ap_int<8>"]* %21, [1048576 x i8]* %30)
  %31 = bitcast [1073741824 x %"struct.ap_int<8>"]* %13 to %"struct.ap_int<8>"*
  %32 = bitcast [1073741824 x %"struct.ap_int<8>"]* %14 to %"struct.ap_int<8>"*
  %33 = bitcast [1048576 x %"struct.ap_int<8>"]* %15 to %"struct.ap_int<8>"*
  %34 = bitcast [1048576 x %"struct.ap_int<8>"]* %16 to %"struct.ap_int<8>"*
  %35 = bitcast [1048576 x %"struct.ap_int<8>"]* %17 to %"struct.ap_int<8>"*
  %36 = bitcast [1048576 x %"struct.ap_int<8>"]* %18 to %"struct.ap_int<8>"*
  %37 = bitcast [1048576 x %"struct.ap_int<8>"]* %19 to %"struct.ap_int<8>"*
  %38 = bitcast [1048576 x %"struct.ap_int<8>"]* %20 to %"struct.ap_int<8>"*
  %39 = bitcast [1048576 x %"struct.ap_int<8>"]* %21 to %"struct.ap_int<8>"*
  call void @output_conv_pool_bn_hw_stub(%"struct.ap_int<8>"* %31, %"struct.ap_int<8>"* %32, %"struct.ap_int<8>"* %33, %"struct.ap_int<8>"* %34, %"struct.ap_int<8>"* %35, %"struct.ap_int<8>"* %36, %"struct.ap_int<8>"* %37, %"struct.ap_int<8>"* %38, %"struct.ap_int<8>"* %39, %"struct.ap_uint<16>"* %9, %"struct.ap_uint<16>"* %10, %"struct.ap_uint<16>"* %11, %"struct.ap_uint<16>"* %12)
  call void @copy_in([1073741824 x %"struct.ap_int<8>"]* %13, [1073741824 x i8]* %22, [1073741824 x %"struct.ap_int<8>"]* %14, [1073741824 x i8]* %23, [1048576 x %"struct.ap_int<8>"]* %15, [1048576 x i8]* %24, [1048576 x %"struct.ap_int<8>"]* %16, [1048576 x i8]* %25, [1048576 x %"struct.ap_int<8>"]* %17, [1048576 x i8]* %26, [1048576 x %"struct.ap_int<8>"]* %18, [1048576 x i8]* %27, [1048576 x %"struct.ap_int<8>"]* %19, [1048576 x i8]* %28, [1048576 x %"struct.ap_int<8>"]* %20, [1048576 x i8]* %29, [1048576 x %"struct.ap_int<8>"]* %21, [1048576 x i8]* %30)
  ret void
}

declare void @output_conv_pool_bn_hw_stub(%"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_int<8>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*)

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
