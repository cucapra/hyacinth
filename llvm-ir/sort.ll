; ModuleID = '../MachSuite/sort/merge/sort.c'
source_filename = "../MachSuite/sort/merge/sort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

; Function Attrs: nounwind ssp uwtable
define void @merge(i32* nocapture, i32, i32, i32) local_unnamed_addr #0 {
  %5 = alloca [2048 x i32], align 16
  %6 = bitcast [2048 x i32]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8192, i8* nonnull %6) #2
  %7 = icmp sgt i32 %1, %2
  br i1 %7, label %20, label %8

; <label>:8:                                      ; preds = %4
  %9 = sext i32 %1 to i64
  %10 = getelementptr [2048 x i32], [2048 x i32]* %5, i64 0, i64 %9
  %11 = bitcast i32* %10 to i8*
  %12 = getelementptr i32, i32* %0, i64 %9
  %13 = bitcast i32* %12 to i8*
  %14 = icmp sgt i32 %2, %1
  %15 = select i1 %14, i32 %2, i32 %1
  %16 = sub i32 %15, %1
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %19 = add nuw nsw i64 %18, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %13, i64 %19, i1 false)
  br label %20

; <label>:20:                                     ; preds = %8, %4
  %21 = icmp slt i32 %2, %3
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %20
  %23 = add nsw i32 %2, 1
  %24 = add nsw i32 %23, %3
  %25 = sext i32 %2 to i64
  %26 = sext i32 %3 to i64
  br label %32

; <label>:27:                                     ; preds = %32, %20
  %28 = icmp sgt i32 %1, %3
  br i1 %28, label %63, label %29

; <label>:29:                                     ; preds = %27
  %30 = sext i32 %1 to i64
  %31 = sext i32 %3 to i64
  br label %42

; <label>:32:                                     ; preds = %32, %22
  %33 = phi i64 [ %34, %32 ], [ %25, %22 ]
  %34 = add i64 %33, 1
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !3
  %37 = trunc i64 %34 to i32
  %38 = sub i32 %24, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2048 x i32], [2048 x i32]* %5, i64 0, i64 %39
  store i32 %36, i32* %40, align 4, !tbaa !3
  %41 = icmp slt i64 %34, %26
  br i1 %41, label %32, label %27

; <label>:42:                                     ; preds = %29, %58
  %43 = phi i64 [ %30, %29 ], [ %61, %58 ]
  %44 = phi i32 [ %1, %29 ], [ %60, %58 ]
  %45 = phi i32 [ %3, %29 ], [ %59, %58 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2048 x i32], [2048 x i32]* %5, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !3
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds [2048 x i32], [2048 x i32]* %5, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4, !tbaa !3
  %52 = icmp slt i32 %48, %51
  %53 = getelementptr inbounds i32, i32* %0, i64 %43
  br i1 %52, label %54, label %56

; <label>:54:                                     ; preds = %42
  store i32 %48, i32* %53, align 4, !tbaa !3
  %55 = add nsw i32 %45, -1
  br label %58

; <label>:56:                                     ; preds = %42
  store i32 %51, i32* %53, align 4, !tbaa !3
  %57 = add nsw i32 %44, 1
  br label %58

; <label>:58:                                     ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %45, %56 ]
  %60 = phi i32 [ %44, %54 ], [ %57, %56 ]
  %61 = add nsw i64 %43, 1
  %62 = icmp slt i64 %43, %31
  br i1 %62, label %42, label %63

; <label>:63:                                     ; preds = %58, %27
  call void @llvm.lifetime.end.p0i8(i64 8192, i8* nonnull %6) #2
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define void @ms_mergesort(i32* nocapture) local_unnamed_addr #0 {
  br label %2

; <label>:2:                                      ; preds = %1, %17
  %3 = phi i32 [ 1, %1 ], [ %18, %17 ]
  %4 = shl i32 %3, 1
  br label %5

; <label>:5:                                      ; preds = %2, %14
  %6 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %7 = add nsw i32 %6, %3
  %8 = add nsw i32 %7, -1
  %9 = add nsw i32 %7, %3
  %10 = icmp slt i32 %9, 2049
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %5
  %12 = add nsw i32 %9, -1
  tail call void @merge(i32* %0, i32 %6, i32 %8, i32 %12)
  br label %14

; <label>:13:                                     ; preds = %5
  tail call void @merge(i32* %0, i32 %6, i32 %8, i32 2048)
  br label %14

; <label>:14:                                     ; preds = %11, %13
  %15 = add nsw i32 %6, %4
  %16 = icmp slt i32 %15, 2048
  br i1 %16, label %5, label %17

; <label>:17:                                     ; preds = %14
  %18 = shl nsw i32 %3, 1
  %19 = icmp slt i32 %3, 1024
  br i1 %19, label %2, label %20

; <label>:20:                                     ; preds = %17
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
