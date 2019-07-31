; ModuleID = '<stdin>'
source_filename = "tests/matrix_multiply.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__const.main.a = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1

; Function Attrs: norecurse nounwind ssp uwtable
define void @multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %23, %3
  %5 = phi i64 [ 0, %3 ], [ %24, %23 ], !partition !3
  br label %6

; <label>:6:                                      ; preds = %20, %4
  %7 = phi i64 [ 0, %4 ], [ %21, %20 ], !partition !3
  %8 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %5, i64 %7, !partition !3
  store double 0.000000e+00, double* %8, align 8, !tbaa !4, !partition !3
  br label %9

; <label>:9:                                      ; preds = %9, %6
  %10 = phi i64 [ 0, %6 ], [ %18, %9 ], !partition !3
  %11 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %5, i64 %10, !partition !3
  %12 = load double, double* %11, align 8, !tbaa !4, !partition !3
  %13 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %10, i64 %7, !partition !3
  %14 = load double, double* %13, align 8, !tbaa !4, !partition !3
  %15 = fmul double %12, %14, !partition !3
  %16 = load double, double* %8, align 8, !tbaa !4, !partition !3
  %17 = fadd double %16, %15, !partition !3
  store double %17, double* %8, align 8, !tbaa !4, !partition !3
  %18 = add nuw nsw i64 %10, 1, !partition !3
  %19 = icmp eq i64 %18, 3, !partition !3
  br i1 %19, label %20, label %9

; <label>:20:                                     ; preds = %9
  %21 = add nuw nsw i64 %7, 1, !partition !3
  %22 = icmp eq i64 %21, 3, !partition !3
  br i1 %22, label %23, label %6

; <label>:23:                                     ; preds = %20
  %24 = add nuw nsw i64 %5, 1, !partition !3
  %25 = icmp eq i64 %24, 3, !partition !3
  br i1 %25, label %26, label %4

; <label>:26:                                     ; preds = %23
  ret void, !partition !3
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = alloca [3 x [3 x double]], align 16
  %4 = alloca [3 x [3 x double]], align 16
  %5 = alloca [3 x [3 x double]], align 16
  %6 = bitcast [3 x [3 x double]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %6, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a to i8*), i64 72, i1 false)
  %7 = bitcast [3 x [3 x double]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %7, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b to i8*), i64 72, i1 false)
  %8 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %5, i64 0, i64 0
  %10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 0
  call void @multiply([3 x double]* nonnull %8, [3 x double]* nonnull %9, [3 x double]* nonnull %10)
  br label %11

; <label>:11:                                     ; preds = %20, %2
  %12 = phi i64 [ 0, %2 ], [ %22, %20 ]
  br label %13

; <label>:13:                                     ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %18, %13 ]
  %15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 %12, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !4
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %16)
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %13

; <label>:20:                                     ; preds = %13
  %21 = tail call i32 @putchar(i32 10)
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %20
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #4

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!3 = !{!"0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
