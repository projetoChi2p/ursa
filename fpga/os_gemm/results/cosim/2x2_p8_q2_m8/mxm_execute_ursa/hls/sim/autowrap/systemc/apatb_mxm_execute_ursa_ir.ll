; ModuleID = '/home/ulisses/Projects/ursa/exp/output-stationary/vitis/hls_ursa_vanilla/mxm_execute_ursa/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define i8 @apatb_mxm_execute_ursa_ir(i8* noalias nocapture nonnull readonly %addr_a0, i16 zeroext %a0_p, i8* noalias nocapture nonnull readonly %addr_b0, i16 zeroext %b0_q, i32* noalias nocapture nonnull %addr_c0, i16 zeroext %m) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %addr_a0_copy = bitcast i8* %malloccall to [4096 x i8]*
  %malloccall1 = tail call i8* @malloc(i64 4096)
  %addr_b0_copy = bitcast i8* %malloccall1 to [4096 x i8]*
  %malloccall2 = tail call i8* @malloc(i64 16384)
  %addr_c0_copy = bitcast i8* %malloccall2 to [4096 x i32]*
  %0 = bitcast i8* %addr_a0 to [4096 x i8]*
  %1 = bitcast i8* %addr_b0 to [4096 x i8]*
  %2 = bitcast i32* %addr_c0 to [4096 x i32]*
  call fastcc void @copy_in([4096 x i8]* nonnull %0, [4096 x i8]* %addr_a0_copy, [4096 x i8]* nonnull %1, [4096 x i8]* %addr_b0_copy, [4096 x i32]* nonnull %2, [4096 x i32]* %addr_c0_copy)
  %3 = call i8 @apatb_mxm_execute_ursa_hw([4096 x i8]* %addr_a0_copy, i16 %a0_p, [4096 x i8]* %addr_b0_copy, i16 %b0_q, [4096 x i32]* %addr_c0_copy, i16 %m)
  call void @copy_back([4096 x i8]* %0, [4096 x i8]* %addr_a0_copy, [4096 x i8]* %1, [4096 x i8]* %addr_b0_copy, [4096 x i32]* %2, [4096 x i32]* %addr_c0_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  ret i8 %3
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([4096 x i8]* noalias readonly, [4096 x i8]* noalias, [4096 x i8]* noalias readonly, [4096 x i8]* noalias, [4096 x i32]* noalias readonly, [4096 x i32]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4096i8([4096 x i8]* %1, [4096 x i8]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096i8([4096 x i8]* %3, [4096 x i8]* %2)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %5, [4096 x i32]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a4096i8([4096 x i8]* noalias %dst, [4096 x i8]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x i8]* %dst, null
  %1 = icmp eq [4096 x i8]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4096i8([4096 x i8]* nonnull %dst, [4096 x i8]* nonnull %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4096i8([4096 x i8]* %dst, [4096 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4096 x i8]* %src, null
  %1 = icmp eq [4096 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4096 x i8], [4096 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4096 x i8], [4096 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* noalias %dst, [4096 x i32]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x i32]* %dst, null
  %1 = icmp eq [4096 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4096i32([4096 x i32]* nonnull %dst, [4096 x i32]* nonnull %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4096i32([4096 x i32]* %dst, [4096 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4096 x i32]* %src, null
  %1 = icmp eq [4096 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4096 x i32], [4096 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4096 x i32], [4096 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([4096 x i8]* noalias, [4096 x i8]* noalias readonly, [4096 x i8]* noalias, [4096 x i8]* noalias readonly, [4096 x i32]* noalias, [4096 x i32]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4096i8([4096 x i8]* %0, [4096 x i8]* %1)
  call fastcc void @onebyonecpy_hls.p0a4096i8([4096 x i8]* %2, [4096 x i8]* %3)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %4, [4096 x i32]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare i8 @apatb_mxm_execute_ursa_hw([4096 x i8]*, i16, [4096 x i8]*, i16, [4096 x i32]*, i16)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([4096 x i8]* noalias, [4096 x i8]* noalias readonly, [4096 x i8]* noalias, [4096 x i8]* noalias readonly, [4096 x i32]* noalias, [4096 x i32]* noalias readonly) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %4, [4096 x i32]* %5)
  ret void
}

define i8 @mxm_execute_ursa_hw_stub_wrapper([4096 x i8]*, i16, [4096 x i8]*, i16, [4096 x i32]*, i16) #5 {
entry:
  call void @copy_out([4096 x i8]* null, [4096 x i8]* %0, [4096 x i8]* null, [4096 x i8]* %2, [4096 x i32]* null, [4096 x i32]* %4)
  %6 = bitcast [4096 x i8]* %0 to i8*
  %7 = bitcast [4096 x i8]* %2 to i8*
  %8 = bitcast [4096 x i32]* %4 to i32*
  %9 = call i8 @mxm_execute_ursa_hw_stub(i8* %6, i16 %1, i8* %7, i16 %3, i32* %8, i16 %5)
  call void @copy_in([4096 x i8]* null, [4096 x i8]* %0, [4096 x i8]* null, [4096 x i8]* %2, [4096 x i32]* null, [4096 x i32]* %4)
  ret i8 %9
}

declare i8 @mxm_execute_ursa_hw_stub(i8*, i16, i8*, i16, i32*, i16)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
