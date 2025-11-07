; ModuleID = 'C:/Users/11400/Desktop/shuffletest/HLS/ip6/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }

; Function Attrs: noinline
define void @apatb_fully_connected_ir(%"struct.ap_uint<16>"* nocapture readonly %in_features, %"struct.ap_uint<16>"* nocapture readonly %out_features, float* noalias nocapture nonnull readonly %input, float* noalias nocapture nonnull readonly %weights, float* noalias nocapture nonnull readonly %biases, float* noalias nocapture nonnull %output) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4294967296)
  %input_copy = bitcast i8* %malloccall to [1073741824 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4294967296)
  %weights_copy = bitcast i8* %malloccall1 to [1073741824 x float]*
  %malloccall2 = tail call i8* @malloc(i64 4194304)
  %biases_copy = bitcast i8* %malloccall2 to [1048576 x float]*
  %malloccall3 = tail call i8* @malloc(i64 4194304)
  %output_copy = bitcast i8* %malloccall3 to [1048576 x float]*
  %0 = bitcast float* %input to [1073741824 x float]*
  %1 = bitcast float* %weights to [1073741824 x float]*
  %2 = bitcast float* %biases to [1048576 x float]*
  %3 = bitcast float* %output to [1048576 x float]*
  call fastcc void @copy_in([1073741824 x float]* nonnull %0, [1073741824 x float]* %input_copy, [1073741824 x float]* nonnull %1, [1073741824 x float]* %weights_copy, [1048576 x float]* nonnull %2, [1048576 x float]* %biases_copy, [1048576 x float]* nonnull %3, [1048576 x float]* %output_copy)
  %4 = getelementptr inbounds [1073741824 x float], [1073741824 x float]* %input_copy, i32 0, i32 0
  %5 = getelementptr inbounds [1073741824 x float], [1073741824 x float]* %weights_copy, i32 0, i32 0
  %6 = getelementptr inbounds [1048576 x float], [1048576 x float]* %biases_copy, i32 0, i32 0
  %7 = getelementptr inbounds [1048576 x float], [1048576 x float]* %output_copy, i32 0, i32 0
  call void @apatb_fully_connected_hw(%"struct.ap_uint<16>"* %in_features, %"struct.ap_uint<16>"* %out_features, float* %4, float* %5, float* %6, float* %7)
  call void @copy_back([1073741824 x float]* %0, [1073741824 x float]* %input_copy, [1073741824 x float]* %1, [1073741824 x float]* %weights_copy, [1048576 x float]* %2, [1048576 x float]* %biases_copy, [1048576 x float]* %3, [1048576 x float]* %output_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1073741824 x float]* noalias readonly, [1073741824 x float]* noalias, [1073741824 x float]* noalias readonly, [1073741824 x float]* noalias, [1048576 x float]* noalias readonly, [1048576 x float]* noalias, [1048576 x float]* noalias readonly, [1048576 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %1, [1073741824 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %3, [1073741824 x float]* %2)
  call fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* %5, [1048576 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* %7, [1048576 x float]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* noalias, [1073741824 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1073741824 x float]* %0, null
  %3 = icmp eq [1073741824 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1073741824 x float], [1073741824 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1073741824 x float], [1073741824 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1073741824
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* noalias, [1048576 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1048576 x float]* %0, null
  %3 = icmp eq [1048576 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1048576 x float], [1048576 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1048576 x float], [1048576 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1048576
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1073741824 x float]* noalias, [1073741824 x float]* noalias readonly, [1073741824 x float]* noalias, [1073741824 x float]* noalias readonly, [1048576 x float]* noalias, [1048576 x float]* noalias readonly, [1048576 x float]* noalias, [1048576 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %0, [1073741824 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %2, [1073741824 x float]* %3)
  call fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* %4, [1048576 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* %6, [1048576 x float]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_fully_connected_hw(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, float*, float*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1073741824 x float]* noalias, [1073741824 x float]* noalias readonly, [1073741824 x float]* noalias, [1073741824 x float]* noalias readonly, [1048576 x float]* noalias, [1048576 x float]* noalias readonly, [1048576 x float]* noalias, [1048576 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1048576f32([1048576 x float]* %6, [1048576 x float]* %7)
  ret void
}

define void @fully_connected_hw_stub_wrapper(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, float*, float*, float*, float*) #4 {
entry:
  %6 = bitcast float* %2 to [1073741824 x float]*
  %7 = bitcast float* %3 to [1073741824 x float]*
  %8 = bitcast float* %4 to [1048576 x float]*
  %9 = bitcast float* %5 to [1048576 x float]*
  call void @copy_out([1073741824 x float]* null, [1073741824 x float]* %6, [1073741824 x float]* null, [1073741824 x float]* %7, [1048576 x float]* null, [1048576 x float]* %8, [1048576 x float]* null, [1048576 x float]* %9)
  %10 = bitcast [1073741824 x float]* %6 to float*
  %11 = bitcast [1073741824 x float]* %7 to float*
  %12 = bitcast [1048576 x float]* %8 to float*
  %13 = bitcast [1048576 x float]* %9 to float*
  call void @fully_connected_hw_stub(%"struct.ap_uint<16>"* %0, %"struct.ap_uint<16>"* %1, float* %10, float* %11, float* %12, float* %13)
  call void @copy_in([1073741824 x float]* null, [1073741824 x float]* %6, [1073741824 x float]* null, [1073741824 x float]* %7, [1048576 x float]* null, [1048576 x float]* %8, [1048576 x float]* null, [1048576 x float]* %9)
  ret void
}

declare void @fully_connected_hw_stub(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, float*, float*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
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
