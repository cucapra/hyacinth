; ModuleID = '<stdin>'
source_filename = "examples/c-examples/matrix_multiply.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@__const.main.a = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@funs = global [4 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1, void (i8*)* @multiply_2, void (i8*)* @multiply_3]

; Function Attrs: norecurse nounwind ssp uwtable
define void @multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %7, %3
  %5 = phi i64 [ 0, %3 ], [ %8, %7 ]
  br label %10

; <label>:6:                                      ; preds = %7
  ret void

; <label>:7:                                      ; preds = %13
  %8 = add nuw nsw i64 %5, 1
  %9 = icmp eq i64 %8, 3
  br i1 %9, label %6, label %4

; <label>:10:                                     ; preds = %13, %4
  %11 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %12 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %5, i64 %11
  store double 0.000000e+00, double* %12, align 8, !tbaa !3
  br label %16

; <label>:13:                                     ; preds = %16
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %7, label %10

; <label>:16:                                     ; preds = %16, %10
  %17 = phi i64 [ 0, %10 ], [ %25, %16 ]
  %18 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %5, i64 %17
  %19 = load double, double* %18, align 8, !tbaa !3
  %20 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %17, i64 %11
  %21 = load double, double* %20, align 8, !tbaa !3
  %22 = fmul double %19, %21
  %23 = load double, double* %12, align 8, !tbaa !3
  %24 = fadd double %23, %22
  store double %24, double* %12, align 8, !tbaa !3
  %25 = add nuw nsw i64 %17, 1
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %13, label %16
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #2 {
  %3 = alloca [3 x [3 x double]], align 16
  %4 = alloca [3 x [3 x double]], align 16
  %5 = alloca [3 x [3 x double]], align 16
  %6 = bitcast [3 x [3 x double]]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %6) #4
  %7 = bitcast [3 x [3 x double]]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %7) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %7, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a to i8*), i64 72, i1 false)
  %8 = bitcast [3 x [3 x double]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %8) #4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %8, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b to i8*), i64 72, i1 false)
  %9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %5, i64 0, i64 0
  %11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 0
  call void @replace_multiply([3 x double]* nonnull %9, [3 x double]* nonnull %10, [3 x double]* nonnull %11)
  br label %12

; <label>:12:                                     ; preds = %15, %2
  %13 = phi i64 [ 0, %2 ], [ %17, %15 ]
  br label %19

; <label>:14:                                     ; preds = %15
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %6) #4
  ret i32 0

; <label>:15:                                     ; preds = %19
  %16 = tail call i32 @putchar(i32 10)
  %17 = add nuw nsw i64 %13, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %14, label %12

; <label>:19:                                     ; preds = %19, %12
  %20 = phi i64 [ 0, %12 ], [ %24, %19 ]
  %21 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 %13, i64 %20
  %22 = load double, double* %21, align 8, !tbaa !3
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %22)
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %15, label %19
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #4

declare void @send(i8*, i64, i32, i32, i8*)

declare i8* @receive(i32, i32, i8*)

declare i8* @init()

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare void @join_partitioned_functions(i32, i8*)

declare void @multiply_0(i8*)

declare void @multiply_1(i8*)

declare void @multiply_2(i8*)

declare void @multiply_3(i8*)

define void @replace_multiply([3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %3 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 4, void (i8*)** getelementptr inbounds ([4 x void (i8*)*], [4 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  %send_alloca = alloca [3 x double]*
  store [3 x double]* %2, [3 x double]** %send_alloca
  %send_cast = bitcast [3 x double]** %send_alloca to i8*
  call void @send(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 4, i8* %3)
  %send_alloca1 = alloca [3 x double]*
  store [3 x double]* %0, [3 x double]** %send_alloca1
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*
  call void @send(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 9, i8* %3)
  %send_alloca3 = alloca [3 x double]*
  store [3 x double]* %1, [3 x double]** %send_alloca3
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*
  call void @send(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 12, i8* %3)
  call void @join_partitioned_functions(i32 4, i8* %threads)
  ret void
}

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
