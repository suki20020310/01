; ModuleID = 'C:/Users/11400/Desktop/shuffletest/HLS/ip8/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<16>" = type { %"struct.ap_int_base<16, false>" }
%"struct.ap_int_base<16, false>" = type { %"struct.ssdm_int<16, false>" }
%"struct.ssdm_int<16, false>" = type { i16 }
%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }

; Function Attrs: noinline
define void @apatb_pooling_ir(%"struct.ap_uint<16>"* nocapture readonly %C_in, %"struct.ap_uint<16>"* nocapture readonly %H_in, %"struct.ap_uint<16>"* nocapture readonly %W_in, %"struct.ap_uint<8>"* nocapture readonly %kernel_size, %"struct.ap_uint<8>"* nocapture readonly %stride, %"struct.ap_uint<8>"* nocapture readonly %padding, %"struct.ap_uint<1>"* nocapture readonly %pool_type, float* noalias nocapture nonnull readonly %feature_in, float* noalias nocapture nonnull %feature_out) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4294967296)
  %feature_in_copy = bitcast i8* %malloccall to [1073741824 x float]*
  %malloccall1 = tail call i8* @malloc(i64 4294967296)
  %feature_out_copy = bitcast i8* %malloccall1 to [1073741824 x float]*
  %0 = bitcast float* %feature_in to [1073741824 x float]*
  %1 = bitcast float* %feature_out to [1073741824 x float]*
  call fastcc void @copy_in([1073741824 x float]* nonnull %0, [1073741824 x float]* %feature_in_copy, [1073741824 x float]* nonnull %1, [1073741824 x float]* %feature_out_copy)
  %2 = getelementptr inbounds [1073741824 x float], [1073741824 x float]* %feature_in_copy, i32 0, i32 0
  %3 = getelementptr inbounds [1073741824 x float], [1073741824 x float]* %feature_out_copy, i32 0, i32 0
  call void @apatb_pooling_hw(%"struct.ap_uint<16>"* %C_in, %"struct.ap_uint<16>"* %H_in, %"struct.ap_uint<16>"* %W_in, %"struct.ap_uint<8>"* %kernel_size, %"struct.ap_uint<8>"* %stride, %"struct.ap_uint<8>"* %padding, %"struct.ap_uint<1>"* %pool_type, float* %2, float* %3)
  call void @copy_back([1073741824 x float]* %0, [1073741824 x float]* %feature_in_copy, [1073741824 x float]* %1, [1073741824 x float]* %feature_out_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1073741824 x float]* noalias readonly, [1073741824 x float]* noalias, [1073741824 x float]* noalias readonly, [1073741824 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %1, [1073741824 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %3, [1073741824 x float]* %2)
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
define internal fastcc void @copy_out([1073741824 x float]* noalias, [1073741824 x float]* noalias readonly, [1073741824 x float]* noalias, [1073741824 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %0, [1073741824 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %2, [1073741824 x float]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_pooling_hw(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<1>"*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1073741824 x float]* noalias, [1073741824 x float]* noalias readonly, [1073741824 x float]* noalias, [1073741824 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1073741824f32([1073741824 x float]* %2, [1073741824 x float]* %3)
  ret void
}

define void @pooling_hw_stub_wrapper(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<1>"*, float*, float*) #4 {
entry:
  %9 = bitcast float* %7 to [1073741824 x float]*
  %10 = bitcast float* %8 to [1073741824 x float]*
  call void @copy_out([1073741824 x float]* null, [1073741824 x float]* %9, [1073741824 x float]* null, [1073741824 x float]* %10)
  %11 = bitcast [1073741824 x float]* %9 to float*
  %12 = bitcast [1073741824 x float]* %10 to float*
  call void @pooling_hw_stub(%"struct.ap_uint<16>"* %0, %"struct.ap_uint<16>"* %1, %"struct.ap_uint<16>"* %2, %"struct.ap_uint<8>"* %3, %"struct.ap_uint<8>"* %4, %"struct.ap_uint<8>"* %5, %"struct.ap_uint<1>"* %6, float* %11, float* %12)
  call void @copy_in([1073741824 x float]* null, [1073741824 x float]* %9, [1073741824 x float]* null, [1073741824 x float]* %10)
  ret void
}

declare void @pooling_hw_stub(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<8>"*, %"struct.ap_uint<1>"*, float*, float*)

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
