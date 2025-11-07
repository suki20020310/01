; ModuleID = 'C:/Users/11400/Desktop/shuffletest/HLS/ip5/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
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
define void @apatb_channel_shuffle_ir(%"struct.ap_uint<16>"* nocapture readonly %c_in, %"struct.ap_uint<16>"* nocapture readonly %h_w, %"struct.ap_uint<8>"* nocapture readonly %groups, float* noalias nocapture nonnull readonly %in, float* noalias nocapture nonnull %out) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 262144)
  %in_copy = bitcast i8* %malloccall to [65536 x float]*
  %malloccall1 = tail call i8* @malloc(i64 262144)
  %out_copy = bitcast i8* %malloccall1 to [65536 x float]*
  %0 = bitcast float* %in to [65536 x float]*
  %1 = bitcast float* %out to [65536 x float]*
  call fastcc void @copy_in([65536 x float]* nonnull %0, [65536 x float]* %in_copy, [65536 x float]* nonnull %1, [65536 x float]* %out_copy)
  %2 = getelementptr inbounds [65536 x float], [65536 x float]* %in_copy, i32 0, i32 0
  %3 = getelementptr inbounds [65536 x float], [65536 x float]* %out_copy, i32 0, i32 0
  call void @apatb_channel_shuffle_hw(%"struct.ap_uint<16>"* %c_in, %"struct.ap_uint<16>"* %h_w, %"struct.ap_uint<8>"* %groups, float* %2, float* %3)
  call void @copy_back([65536 x float]* %0, [65536 x float]* %in_copy, [65536 x float]* %1, [65536 x float]* %out_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([65536 x float]* noalias readonly, [65536 x float]* noalias, [65536 x float]* noalias readonly, [65536 x float]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a65536f32([65536 x float]* %1, [65536 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0a65536f32([65536 x float]* %3, [65536 x float]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a65536f32([65536 x float]* noalias, [65536 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [65536 x float]* %0, null
  %3 = icmp eq [65536 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [65536 x float], [65536 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [65536 x float], [65536 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 65536
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([65536 x float]* noalias, [65536 x float]* noalias readonly, [65536 x float]* noalias, [65536 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a65536f32([65536 x float]* %0, [65536 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0a65536f32([65536 x float]* %2, [65536 x float]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_channel_shuffle_hw(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, float*, float*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([65536 x float]* noalias, [65536 x float]* noalias readonly, [65536 x float]* noalias, [65536 x float]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a65536f32([65536 x float]* %2, [65536 x float]* %3)
  ret void
}

define void @channel_shuffle_hw_stub_wrapper(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, float*, float*) #4 {
entry:
  %5 = bitcast float* %3 to [65536 x float]*
  %6 = bitcast float* %4 to [65536 x float]*
  call void @copy_out([65536 x float]* null, [65536 x float]* %5, [65536 x float]* null, [65536 x float]* %6)
  %7 = bitcast [65536 x float]* %5 to float*
  %8 = bitcast [65536 x float]* %6 to float*
  call void @channel_shuffle_hw_stub(%"struct.ap_uint<16>"* %0, %"struct.ap_uint<16>"* %1, %"struct.ap_uint<8>"* %2, float* %7, float* %8)
  call void @copy_in([65536 x float]* null, [65536 x float]* %5, [65536 x float]* null, [65536 x float]* %6)
  ret void
}

declare void @channel_shuffle_hw_stub(%"struct.ap_uint<16>"*, %"struct.ap_uint<16>"*, %"struct.ap_uint<8>"*, float*, float*)

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
