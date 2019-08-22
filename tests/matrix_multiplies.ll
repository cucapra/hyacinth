; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Context = type {}
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@arg_0 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_1 = global { i64, i1, i32 } zeroinitializer
@arg_2 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_3 = global { i64, i1, i32 } zeroinitializer
@comms_4 = global { double*, i1, i32 } zeroinitializer
@arg_5 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_6 = global { i64, i1, i32 } zeroinitializer
@comms_7 = global { double*, i1, i32 } zeroinitializer
@arg_8 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_9 = global { i64, i1, i32 } zeroinitializer
@comms_10 = global { i64, i1, i32 } zeroinitializer
@comms_11 = global { double*, i1, i32 } zeroinitializer
@arg_12 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_13 = global { i64, i1, i32 } zeroinitializer
@comms_14 = global { double, i1, i32 } zeroinitializer
@comms_15 = global { double, i1, i32 } zeroinitializer
@comms_16 = global { double, i1, i32 } zeroinitializer
@comms_17 = global { double, i1, i32 } zeroinitializer
@comms_18 = global { double*, i1, i32 } zeroinitializer
@comms_19 = global { double, i1, i32 } zeroinitializer
@comms_20 = global { double, i1, i32 } zeroinitializer
@comms_21 = global { double*, i1, i32 } zeroinitializer
@comms_22 = global { double, i1, i32 } zeroinitializer
@comms_23 = global { double, i1, i32 } zeroinitializer
@comms_24 = global { double*, i1, i32 } zeroinitializer
@comms_25 = global { double*, i1, i32 } zeroinitializer
@comms_26 = global { double, i1, i32 } zeroinitializer
@comms_27 = global { double, i1, i32 } zeroinitializer
@comms_28 = global { double*, i1, i32 } zeroinitializer
@comms_29 = global { double, i1, i32 } zeroinitializer
@comms_30 = global { double*, i1, i32 } zeroinitializer
@comms_31 = global { i64, i1, i32 } zeroinitializer
@comms_32 = global { i64, i1, i32 } zeroinitializer
@comms_33 = global { i64, i1, i32 } zeroinitializer
@comms_34 = global { i64, i1, i32 } zeroinitializer
@arg_35 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_36 = global { i64, i1, i32 } zeroinitializer
@comms_37 = global { double*, i1, i32 } zeroinitializer
@comms_38 = global { i64, i1, i32 } zeroinitializer
@comms_39 = global { double*, i1, i32 } zeroinitializer
@comms_40 = global { double, i1, i32 } zeroinitializer
@comms_41 = global { double, i1, i32 } zeroinitializer
@arg_42 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_43 = global { i64, i1, i32 } zeroinitializer
@comms_44 = global { double, i1, i32 } zeroinitializer
@arg_45 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_46 = global { i64, i1, i32 } zeroinitializer
@comms_47 = global { double, i1, i32 } zeroinitializer
@comms_48 = global { i64, i1, i32 } zeroinitializer
@comms_49 = global { i64, i1, i32 } zeroinitializer
@comms_50 = global { i64, i1, i32 } zeroinitializer
@comms_51 = global { i1, i1, i32 } zeroinitializer
@comms_52 = global { i1, i1, i32 } zeroinitializer
@comms_53 = global { i1, i1, i32 } zeroinitializer
@comms_54 = global { i1, i1, i32 } zeroinitializer
@comms_55 = global { i1, i1, i32 } zeroinitializer
@return_struct = global { i1, i1, i32 } zeroinitializer
@__const.main.a = dso_local constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b = dso_local constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str = dso_local constant [4 x i8] c"%f \00", align 1
@funs = global [2 x void (i8*)*] [void (i8*)* @_p_multiply_0, void (i8*)* @_p_multiply_1]

; Function Attrs: nounwind ssp uwtable
define void @_p_multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture) local_unnamed_addr #0 {
  br label %7

; <label>:7:                                      ; preds = %41, %6
  %8 = phi i64 [ 0, %6 ], [ %42, %41 ], !partition !3, !start !3, !end !3
  br label %9

; <label>:9:                                      ; preds = %38, %7
  %10 = phi i64 [ 0, %7 ], [ %39, %38 ], !partition !4, !start !3, !end !3
  %11 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %10, !partition !3, !start !4, !end !5
  store double 0.000000e+00, double* %11, align 8, !tbaa !6, !partition !3, !start !5, !end !10
  %12 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %10, !partition !4, !start !4, !end !5
  store double 0.000000e+00, double* %12, align 8, !tbaa !6, !partition !3, !start !10, !end !11
  %13 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %10, !partition !4, !start !5, !end !12
  store double 0.000000e+00, double* %13, align 8, !tbaa !6, !partition !3, !start !3, !end !4
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %14 ], !partition !3, !start !3, !end !3
  %16 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %15, !partition !4, !start !13, !end !14
  %17 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !3, !end !4
  %18 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %15, i64 %10, !partition !3, !start !4, !end !5
  %19 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !11, !end !12
  %20 = fmul double %17, %19, !partition !4, !start !15, !end !16
  %21 = tail call double @llvm.sqrt.f64(double %20), !partition !4, !start !14, !end !15
  %22 = load double, double* %11, align 8, !tbaa !6, !partition !3, !start !16, !end !17
  %23 = fadd double %22, %21, !partition !4, !start !3, !end !18
  store double %23, double* %11, align 8, !tbaa !6, !partition !3, !start !5, !end !10
  %24 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !10, !end !11
  %25 = tail call double @llvm.sqrt.f64(double %24), !partition !4, !start !18, !end !10
  %26 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !19, !end !16
  %27 = fmul double %25, %26, !partition !4, !start !20, !end !21
  %28 = load double, double* %12, align 8, !tbaa !6, !partition !3, !start !22, !end !13
  %29 = fadd double %28, %27, !partition !4, !start !23, !end !20
  store double %29, double* %12, align 8, !tbaa !6, !partition !3, !start !20, !end !24
  %30 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !24, !end !21
  %31 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !21, !end !22
  %32 = tail call double @llvm.sqrt.f64(double %31), !partition !3, !start !25, !end !19
  %33 = fmul double %30, %32, !partition !4, !start !21, !end !13
  %34 = load double, double* %13, align 8, !tbaa !6, !partition !3, !start !13, !end !26
  %35 = fadd double %34, %33, !partition !3, !start !26, !end !14
  store double %35, double* %13, align 8, !tbaa !6, !partition !3, !start !14, !end !25
  %36 = add nuw nsw i64 %15, 1, !partition !3, !start !12, !end !20
  %37 = icmp eq i64 %36, 3, !partition !4, !start !10, !end !23
  br i1 %37, label %38, label %14

; <label>:38:                                     ; preds = %14
  %39 = add nuw nsw i64 %10, 1, !partition !3, !start !4, !end !5
  %40 = icmp eq i64 %39, 3, !partition !4, !start !3, !end !27
  br i1 %40, label %41, label %9

; <label>:41:                                     ; preds = %38
  %42 = add nuw nsw i64 %8, 1, !partition !3, !start !4, !end !5
  %43 = icmp eq i64 %42, 3, !partition !4, !start !3, !end !27
  br i1 %43, label %44, label %7

; <label>:44:                                     ; preds = %59, %41
  %45 = phi i64 [ %60, %59 ], [ 0, %41 ], !partition !3, !start !3, !end !3
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %57, %46 ], !partition !4, !start !27, !end !27
  %48 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %47, !partition !4, !start !23, !end !24
  %49 = load double, double* %48, align 8, !tbaa !6, !partition !3, !start !4, !end !18
  %50 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %47, !partition !4, !start !10, !end !23
  %51 = load double, double* %50, align 8, !tbaa !6, !partition !3, !start !21, !end !22
  %52 = fadd double %49, %51, !partition !4, !start !24, !end !22
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %47, !partition !3, !start !10, !end !23
  %54 = load double, double* %53, align 8, !tbaa !6, !partition !3, !start !3, !end !4
  %55 = fadd double %52, %54, !partition !4, !start !27, !end !10
  %56 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %47, !partition !3, !start !23, !end !24
  store double %55, double* %56, align 8, !tbaa !6, !partition !3, !start !24, !end !21
  %57 = add nuw nsw i64 %47, 1, !partition !4, !start !3, !end !27
  %58 = icmp eq i64 %57, 3, !partition !3, !start !18, !end !10
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %46
  %60 = add nuw nsw i64 %45, 1, !partition !3, !start !4, !end !5
  %61 = icmp eq i64 %60, 3, !partition !4, !start !3, !end !27
  br i1 %61, label %62, label %44

; <label>:62:                                     ; preds = %59
  ret void, !partition !3, !start !3, !end !4
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x double]], align 16
  %4 = alloca [3 x [3 x double]], align 16
  %5 = alloca [3 x [3 x double]], align 16
  %6 = alloca [3 x [3 x double]], align 16
  %7 = alloca [3 x [3 x double]], align 16
  %8 = alloca [3 x [3 x double]], align 16
  %9 = bitcast [3 x [3 x double]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a to i8*), i64 72, i1 false)
  %10 = bitcast [3 x [3 x double]]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b to i8*), i64 72, i1 false)
  %11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %12 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %8, i64 0, i64 0
  %13 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 0
  %14 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %5, i64 0, i64 0
  %16 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %6, i64 0, i64 0
  call void @replace__p_multiply([3 x double]* nonnull %11, [3 x double]* nonnull %12, [3 x double]* nonnull %13, [3 x double]* nonnull %14, [3 x double]* nonnull %15, [3 x double]* nonnull %16)
  br label %17

; <label>:17:                                     ; preds = %26, %2
  %18 = phi i64 [ 0, %2 ], [ %28, %26 ]
  br label %19

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %24, %19 ]
  %21 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %6, i64 0, i64 %18, i64 %20
  %22 = load double, double* %21, align 8, !tbaa !6
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %22)
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %19

; <label>:26:                                     ; preds = %19
  %27 = tail call i32 @putchar(i32 10)
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, 3
  br i1 %29, label %30, label %17

; <label>:30:                                     ; preds = %26
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

define void @replace__p_multiply([3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %send_alloca13 = alloca [3 x double]*, !reason !28
  %send_alloca11 = alloca [3 x double]*, !reason !28
  %send_alloca9 = alloca [3 x double]*, !reason !28
  %send_alloca7 = alloca [3 x double]*, !reason !28
  %send_alloca5 = alloca [3 x double]*, !reason !28
  %send_alloca3 = alloca [3 x double]*, !reason !28
  %send_alloca1 = alloca [3 x double]*, !reason !28
  %send_alloca = alloca [3 x double]*, !reason !28
  %6 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %6)
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !28
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %6), !reason !28
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !28
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i8* %6), !reason !28
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !28
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_5 to i64), i8* %6), !reason !28
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !28
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_8 to i64), i8* %6), !reason !28
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !28
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_12 to i64), i8* %6), !reason !28
  store [3 x double]* %2, [3 x double]** %send_alloca9, !reason !28
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_35 to i64), i8* %6), !reason !28
  store [3 x double]* %4, [3 x double]** %send_alloca11, !reason !28
  %send_cast12 = bitcast [3 x double]** %send_alloca11 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_42 to i64), i8* %6), !reason !28
  store [3 x double]* %5, [3 x double]** %send_alloca13, !reason !28
  %send_cast14 = bitcast [3 x double]** %send_alloca13 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast14, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_45 to i64), i8* %6), !reason !28
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

define void @_p_multiply_0(i8*) {
entry:
  %send_alloca132 = alloca i1, !reason !29
  %send_alloca122 = alloca i64, !reason !30
  %send_alloca120 = alloca i64, !reason !31
  %argument108 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_45 to i64), i8* %0), !reason !28
  %bitcast109 = bitcast i8* %argument108 to [3 x double]**, !reason !28
  %receive_load110 = load [3 x double]*, [3 x double]** %bitcast109, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_45 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %send_alloca106 = alloca double, !reason !31
  %argument100 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_42 to i64), i8* %0), !reason !28
  %bitcast101 = bitcast i8* %argument100 to [3 x double]**, !reason !28
  %receive_load102 = load [3 x double]*, [3 x double]** %bitcast101, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_42 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %send_alloca98 = alloca double, !reason !31
  %send_alloca96 = alloca double, !reason !31
  %send_alloca91 = alloca i64, !reason !31
  %send_alloca86 = alloca i64, !reason !31
  %send_alloca83 = alloca i64, !reason !31
  %send_alloca81 = alloca i64, !reason !31
  %send_alloca76 = alloca i64, !reason !31
  %send_alloca65 = alloca double, !reason !31
  %send_alloca63 = alloca double, !reason !31
  %send_alloca52 = alloca double, !reason !31
  %send_alloca47 = alloca double, !reason !31
  %send_alloca45 = alloca double, !reason !31
  %send_alloca37 = alloca double, !reason !31
  %send_alloca35 = alloca double, !reason !31
  %send_alloca33 = alloca double, !reason !31
  %argument27 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_12 to i64), i8* %0), !reason !28
  %bitcast28 = bitcast i8* %argument27 to [3 x double]**, !reason !28
  %receive_load29 = load [3 x double]*, [3 x double]** %bitcast28, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_12 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %send_alloca22 = alloca i64, !reason !31
  %send_alloca20 = alloca i64, !reason !31
  %send_alloca14 = alloca i64, !reason !31
  %send_alloca = alloca i64, !reason !31
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %0), !reason !28
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !28
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %16, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i8* %0), !reason !31
  %bitcast9 = bitcast i8* %receive to i64*, !reason !31
  %receive_load10 = load i64, i64* %bitcast9, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %receive_load10, !partition !3, !start !4, !end !5
  store double 0.000000e+00, double* %1, align 8, !tbaa !6, !partition !3, !start !5, !end !10
  store i64 %new_phi, i64* %send_alloca, !reason !31
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !31
  %receive11 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_4 to i64), i8* %0), !reason !31
  %bitcast12 = bitcast i8* %receive11 to double**, !reason !31
  %receive_load13 = load double*, double** %bitcast12, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  store double 0.000000e+00, double* %receive_load13, align 8, !tbaa !6, !partition !3, !start !10, !end !11
  store i64 %new_phi, i64* %send_alloca14, !reason !31
  %send_cast15 = bitcast i64* %send_alloca14 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast15, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i8* %0), !reason !31
  %receive16 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_7 to i64), i8* %0), !reason !31
  %bitcast17 = bitcast i8* %receive16 to double**, !reason !31
  %receive_load18 = load double*, double** %bitcast17, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  store double 0.000000e+00, double* %receive_load18, align 8, !tbaa !6, !partition !3, !start !3, !end !4
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi19 = phi i64 [ 0, %l1 ], [ %14, %l2 ]
  store i64 %new_phi, i64* %send_alloca20, !reason !31
  %send_cast21 = bitcast i64* %send_alloca20 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast21, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i8* %0), !reason !31
  store i64 %new_phi19, i64* %send_alloca22, !reason !31
  %send_cast23 = bitcast i64* %send_alloca22 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast23, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !31
  %receive24 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_11 to i64), i8* %0), !reason !31
  %bitcast25 = bitcast i8* %receive24 to double**, !reason !31
  %receive_load26 = load double*, double** %bitcast25, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_11 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %2 = load double, double* %receive_load26, align 8, !tbaa !6, !partition !3, !start !3, !end !4
  %receive30 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_13 to i64), i8* %0), !reason !31
  %bitcast31 = bitcast i8* %receive30 to i64*, !reason !31
  %receive_load32 = load i64, i64* %bitcast31, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_13 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load29, i64 %new_phi19, i64 %receive_load32, !partition !3, !start !4, !end !5
  %4 = load double, double* %3, align 8, !tbaa !6, !partition !3, !start !11, !end !12
  store double %2, double* %send_alloca33, !reason !31
  %send_cast34 = bitcast double* %send_alloca33 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast34, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !31
  store double %4, double* %send_alloca35, !reason !31
  %send_cast36 = bitcast double* %send_alloca35 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast36, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i8* %0), !reason !31
  %5 = load double, double* %1, align 8, !tbaa !6, !partition !3, !start !16, !end !17
  store double %5, double* %send_alloca37, !reason !31
  %send_cast38 = bitcast double* %send_alloca37 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast38, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !31
  %receive39 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i8* %0), !reason !31
  %bitcast40 = bitcast i8* %receive39 to double*, !reason !31
  %receive_load41 = load double, double* %bitcast40, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  store double %receive_load41, double* %1, align 8, !tbaa !6, !partition !3, !start !5, !end !10
  %receive42 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_18 to i64), i8* %0), !reason !31
  %bitcast43 = bitcast i8* %receive42 to double**, !reason !31
  %receive_load44 = load double*, double** %bitcast43, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_18 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %6 = load double, double* %receive_load44, align 8, !tbaa !6, !partition !3, !start !10, !end !11
  store double %6, double* %send_alloca45, !reason !31
  %send_cast46 = bitcast double* %send_alloca45 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast46, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i8* %0), !reason !31
  %7 = load double, double* %3, align 8, !tbaa !6, !partition !3, !start !19, !end !16
  store double %7, double* %send_alloca47, !reason !31
  %send_cast48 = bitcast double* %send_alloca47 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast48, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i8* %0), !reason !31
  %receive49 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_21 to i64), i8* %0), !reason !31
  %bitcast50 = bitcast i8* %receive49 to double**, !reason !31
  %receive_load51 = load double*, double** %bitcast50, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_21 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %8 = load double, double* %receive_load51, align 8, !tbaa !6, !partition !3, !start !22, !end !13
  store double %8, double* %send_alloca52, !reason !31
  %send_cast53 = bitcast double* %send_alloca52 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast53, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_22 to i64), i8* %0), !reason !31
  %receive54 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i8* %0), !reason !31
  %bitcast55 = bitcast i8* %receive54 to double*, !reason !31
  %receive_load56 = load double, double* %bitcast55, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %receive57 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_24 to i64), i8* %0), !reason !31
  %bitcast58 = bitcast i8* %receive57 to double**, !reason !31
  %receive_load59 = load double*, double** %bitcast58, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_24 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  store double %receive_load56, double* %receive_load59, align 8, !tbaa !6, !partition !3, !start !20, !end !24
  %receive60 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_25 to i64), i8* %0), !reason !31
  %bitcast61 = bitcast i8* %receive60 to double**, !reason !31
  %receive_load62 = load double*, double** %bitcast61, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_25 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %9 = load double, double* %receive_load62, align 8, !tbaa !6, !partition !3, !start !24, !end !21
  %10 = load double, double* %3, align 8, !tbaa !6, !partition !3, !start !21, !end !22
  %11 = tail call double @llvm.sqrt.f64(double %10), !partition !3, !start !25, !end !19
  store double %9, double* %send_alloca63, !reason !31
  %send_cast64 = bitcast double* %send_alloca63 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast64, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_26 to i64), i8* %0), !reason !31
  store double %11, double* %send_alloca65, !reason !31
  %send_cast66 = bitcast double* %send_alloca65 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast66, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_27 to i64), i8* %0), !reason !31
  %receive67 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_28 to i64), i8* %0), !reason !31
  %bitcast68 = bitcast i8* %receive67 to double**, !reason !31
  %receive_load69 = load double*, double** %bitcast68, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_28 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %12 = load double, double* %receive_load69, align 8, !tbaa !6, !partition !3, !start !13, !end !26
  %receive70 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_29 to i64), i8* %0), !reason !31
  %bitcast71 = bitcast i8* %receive70 to double*, !reason !31
  %receive_load72 = load double, double* %bitcast71, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_29 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %13 = fadd double %12, %receive_load72, !partition !3, !start !26, !end !14
  %receive73 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i8* %0), !reason !31
  %bitcast74 = bitcast i8* %receive73 to double**, !reason !31
  %receive_load75 = load double*, double** %bitcast74, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  store double %13, double* %receive_load75, align 8, !tbaa !6, !partition !3, !start !14, !end !25
  %14 = add nuw nsw i64 %new_phi19, 1, !partition !3, !start !12, !end !20
  store i64 %14, i64* %send_alloca76, !reason !31
  %send_cast77 = bitcast i64* %send_alloca76 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast77, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i8* %0), !reason !31
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i8* %0), !reason !32
  %bitcast124 = bitcast i8* %broadcast to i1*, !reason !32
  %receive_load125 = load i1, i1* %bitcast124, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !32
  br i1 %receive_load125, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive78 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i8* %0), !reason !31
  %bitcast79 = bitcast i8* %receive78 to i64*, !reason !31
  %receive_load80 = load i64, i64* %bitcast79, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %15 = add nuw nsw i64 %receive_load80, 1, !partition !3, !start !4, !end !5
  store i64 %15, i64* %send_alloca81, !reason !31
  %send_cast82 = bitcast i64* %send_alloca81 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast82, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i8* %0), !reason !31
  store i64 %15, i64* %send_alloca122, !reason !30
  %send_cast123 = bitcast i64* %send_alloca122 to i8*, !reason !30
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast123, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_50 to i64), i8* %0), !reason !30
  %broadcast126 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i8* %0), !reason !32
  %bitcast127 = bitcast i8* %broadcast126 to i1*, !reason !32
  %receive_load128 = load i1, i1* %bitcast127, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !32
  br i1 %receive_load128, label %l4, label %l1

l4:                                               ; preds = %l3
  %16 = add nuw nsw i64 %new_phi, 1, !partition !3, !start !4, !end !5
  store i64 %16, i64* %send_alloca83, !reason !31
  %send_cast84 = bitcast i64* %send_alloca83 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast84, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_34 to i64), i8* %0), !reason !31
  %broadcast129 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i8* %0), !reason !32
  %bitcast130 = bitcast i8* %broadcast129 to i1*, !reason !32
  %receive_load131 = load i1, i1* %bitcast130, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !32
  br i1 %receive_load131, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  %new_phi85 = phi i64 [ %23, %l7 ], [ 0, %l4 ]
  br label %l6

l6:                                               ; preds = %l6, %l5
  store i64 %new_phi85, i64* %send_alloca86, !reason !31
  %send_cast87 = bitcast i64* %send_alloca86 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast87, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i8* %0), !reason !31
  %receive88 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_37 to i64), i8* %0), !reason !31
  %bitcast89 = bitcast i8* %receive88 to double**, !reason !31
  %receive_load90 = load double*, double** %bitcast89, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_37 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %17 = load double, double* %receive_load90, align 8, !tbaa !6, !partition !3, !start !4, !end !18
  store i64 %new_phi85, i64* %send_alloca91, !reason !31
  %send_cast92 = bitcast i64* %send_alloca91 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast92, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i8* %0), !reason !31
  %receive93 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_39 to i64), i8* %0), !reason !31
  %bitcast94 = bitcast i8* %receive93 to double**, !reason !31
  %receive_load95 = load double*, double** %bitcast94, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_39 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %18 = load double, double* %receive_load95, align 8, !tbaa !6, !partition !3, !start !21, !end !22
  store double %17, double* %send_alloca96, !reason !31
  %send_cast97 = bitcast double* %send_alloca96 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast97, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_40 to i64), i8* %0), !reason !31
  store double %18, double* %send_alloca98, !reason !31
  %send_cast99 = bitcast double* %send_alloca98 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast99, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_41 to i64), i8* %0), !reason !31
  %receive103 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i8* %0), !reason !31
  %bitcast104 = bitcast i8* %receive103 to i64*, !reason !31
  %receive_load105 = load i64, i64* %bitcast104, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %19 = getelementptr inbounds [3 x double], [3 x double]* %receive_load102, i64 %new_phi85, i64 %receive_load105, !partition !3, !start !10, !end !23
  %20 = load double, double* %19, align 8, !tbaa !6, !partition !3, !start !3, !end !4
  store double %20, double* %send_alloca106, !reason !31
  %send_cast107 = bitcast double* %send_alloca106 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast107, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_44 to i64), i8* %0), !reason !31
  %receive111 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i8* %0), !reason !31
  %bitcast112 = bitcast i8* %receive111 to i64*, !reason !31
  %receive_load113 = load i64, i64* %bitcast112, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %21 = getelementptr inbounds [3 x double], [3 x double]* %receive_load110, i64 %new_phi85, i64 %receive_load113, !partition !3, !start !23, !end !24
  %receive114 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_47 to i64), i8* %0), !reason !31
  %bitcast115 = bitcast i8* %receive114 to double*, !reason !31
  %receive_load116 = load double, double* %bitcast115, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_47 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  store double %receive_load116, double* %21, align 8, !tbaa !6, !partition !3, !start !24, !end !21
  %receive117 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i8* %0), !reason !31
  %bitcast118 = bitcast i8* %receive117 to i64*, !reason !31
  %receive_load119 = load i64, i64* %bitcast118, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %22 = icmp eq i64 %receive_load119, 3, !partition !3, !start !18, !end !10
  store i1 %22, i1* %send_alloca132, !reason !29
  %send_cast133 = bitcast i1* %send_alloca132 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast133, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_54 to i64), i8* %0), !reason !29
  br i1 %22, label %l7, label %l6

l7:                                               ; preds = %l6
  %23 = add nuw nsw i64 %new_phi85, 1, !partition !3, !start !4, !end !5
  store i64 %23, i64* %send_alloca120, !reason !31
  %send_cast121 = bitcast i64* %send_alloca120 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast121, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_49 to i64), i8* %0), !reason !31
  %broadcast134 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_55 to i64), i8* %0), !reason !32
  %bitcast135 = bitcast i8* %broadcast134 to i1*, !reason !32
  %receive_load136 = load i1, i1* %bitcast135, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_55 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !32
  br i1 %receive_load136, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

define void @_p_multiply_1(i8*) {
entry:
  %send_alloca131 = alloca i1, !reason !29
  %send_alloca127 = alloca i1, !reason !29
  %send_alloca125 = alloca i1, !reason !29
  %send_alloca123 = alloca i1, !reason !29
  %send_alloca116 = alloca i64, !reason !31
  %send_alloca114 = alloca double, !reason !31
  %send_alloca112 = alloca i64, !reason !31
  %send_alloca107 = alloca i64, !reason !31
  %send_alloca99 = alloca double*, !reason !31
  %send_alloca94 = alloca double*, !reason !31
  %argument88 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_35 to i64), i8* %0), !reason !28
  %bitcast89 = bitcast i8* %argument88 to [3 x double]**, !reason !28
  %receive_load90 = load [3 x double]*, [3 x double]** %bitcast89, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_35 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %send_alloca79 = alloca i64, !reason !31
  %send_alloca74 = alloca double*, !reason !31
  %send_alloca72 = alloca double, !reason !31
  %send_alloca70 = alloca double*, !reason !31
  %send_alloca62 = alloca double*, !reason !31
  %send_alloca60 = alloca double*, !reason !31
  %send_alloca58 = alloca double, !reason !31
  %send_alloca53 = alloca double*, !reason !31
  %send_alloca45 = alloca double*, !reason !31
  %send_alloca43 = alloca double, !reason !31
  %send_alloca32 = alloca i64, !reason !31
  %send_alloca30 = alloca double*, !reason !31
  %argument21 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_8 to i64), i8* %0), !reason !28
  %bitcast22 = bitcast i8* %argument21 to [3 x double]**, !reason !28
  %receive_load23 = load [3 x double]*, [3 x double]** %bitcast22, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_8 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %send_alloca19 = alloca double*, !reason !31
  %argument13 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_5 to i64), i8* %0), !reason !28
  %bitcast14 = bitcast i8* %argument13 to [3 x double]**, !reason !28
  %receive_load15 = load [3 x double]*, [3 x double]** %bitcast14, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_5 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %send_alloca11 = alloca double*, !reason !31
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i8* %0), !reason !28
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !28
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %send_alloca = alloca i64, !reason !31
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi = phi i64 [ 0, %l ], [ %receive_load122, %l3 ]
  store i64 %new_phi, i64* %send_alloca, !reason !31
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i8* %0), !reason !31
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !31
  %bitcast9 = bitcast i8* %receive to i64*, !reason !31
  %receive_load10 = load i64, i64* %bitcast9, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load10, i64 %new_phi, !partition !4, !start !4, !end !5
  store double* %1, double** %send_alloca11, !reason !31
  %send_cast12 = bitcast double** %send_alloca11 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_4 to i64), i8* %0), !reason !31
  %receive16 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i8* %0), !reason !31
  %bitcast17 = bitcast i8* %receive16 to i64*, !reason !31
  %receive_load18 = load i64, i64* %bitcast17, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load15, i64 %receive_load18, i64 %new_phi, !partition !4, !start !5, !end !12
  store double* %2, double** %send_alloca19, !reason !31
  %send_cast20 = bitcast double** %send_alloca19 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast20, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_7 to i64), i8* %0), !reason !31
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive24 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i8* %0), !reason !31
  %bitcast25 = bitcast i8* %receive24 to i64*, !reason !31
  %receive_load26 = load i64, i64* %bitcast25, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %receive27 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !31
  %bitcast28 = bitcast i8* %receive27 to i64*, !reason !31
  %receive_load29 = load i64, i64* %bitcast28, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load23, i64 %receive_load26, i64 %receive_load29, !partition !4, !start !13, !end !14
  store double* %3, double** %send_alloca30, !reason !31
  %send_cast31 = bitcast double** %send_alloca30 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast31, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_11 to i64), i8* %0), !reason !31
  store i64 %new_phi, i64* %send_alloca32, !reason !31
  %send_cast33 = bitcast i64* %send_alloca32 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast33, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_13 to i64), i8* %0), !reason !31
  %receive34 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !31
  %bitcast35 = bitcast i8* %receive34 to double*, !reason !31
  %receive_load36 = load double, double* %bitcast35, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %receive37 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i8* %0), !reason !31
  %bitcast38 = bitcast i8* %receive37 to double*, !reason !31
  %receive_load39 = load double, double* %bitcast38, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %4 = fmul double %receive_load36, %receive_load39, !partition !4, !start !15, !end !16
  %5 = tail call double @llvm.sqrt.f64(double %4), !partition !4, !start !14, !end !15
  %receive40 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !31
  %bitcast41 = bitcast i8* %receive40 to double*, !reason !31
  %receive_load42 = load double, double* %bitcast41, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %6 = fadd double %receive_load42, %5, !partition !4, !start !3, !end !18
  store double %6, double* %send_alloca43, !reason !31
  %send_cast44 = bitcast double* %send_alloca43 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast44, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i8* %0), !reason !31
  store double* %3, double** %send_alloca45, !reason !31
  %send_cast46 = bitcast double** %send_alloca45 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast46, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_18 to i64), i8* %0), !reason !31
  %receive47 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i8* %0), !reason !31
  %bitcast48 = bitcast i8* %receive47 to double*, !reason !31
  %receive_load49 = load double, double* %bitcast48, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %7 = tail call double @llvm.sqrt.f64(double %receive_load49), !partition !4, !start !18, !end !10
  %receive50 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i8* %0), !reason !31
  %bitcast51 = bitcast i8* %receive50 to double*, !reason !31
  %receive_load52 = load double, double* %bitcast51, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %8 = fmul double %7, %receive_load52, !partition !4, !start !20, !end !21
  store double* %1, double** %send_alloca53, !reason !31
  %send_cast54 = bitcast double** %send_alloca53 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast54, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_21 to i64), i8* %0), !reason !31
  %receive55 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_22 to i64), i8* %0), !reason !31
  %bitcast56 = bitcast i8* %receive55 to double*, !reason !31
  %receive_load57 = load double, double* %bitcast56, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_22 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %9 = fadd double %receive_load57, %8, !partition !4, !start !23, !end !20
  store double %9, double* %send_alloca58, !reason !31
  %send_cast59 = bitcast double* %send_alloca58 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast59, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i8* %0), !reason !31
  store double* %1, double** %send_alloca60, !reason !31
  %send_cast61 = bitcast double** %send_alloca60 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast61, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_24 to i64), i8* %0), !reason !31
  store double* %3, double** %send_alloca62, !reason !31
  %send_cast63 = bitcast double** %send_alloca62 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast63, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_25 to i64), i8* %0), !reason !31
  %receive64 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_26 to i64), i8* %0), !reason !31
  %bitcast65 = bitcast i8* %receive64 to double*, !reason !31
  %receive_load66 = load double, double* %bitcast65, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_26 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %receive67 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_27 to i64), i8* %0), !reason !31
  %bitcast68 = bitcast i8* %receive67 to double*, !reason !31
  %receive_load69 = load double, double* %bitcast68, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_27 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %10 = fmul double %receive_load66, %receive_load69, !partition !4, !start !21, !end !13
  store double* %2, double** %send_alloca70, !reason !31
  %send_cast71 = bitcast double** %send_alloca70 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast71, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_28 to i64), i8* %0), !reason !31
  store double %10, double* %send_alloca72, !reason !31
  %send_cast73 = bitcast double* %send_alloca72 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast73, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_29 to i64), i8* %0), !reason !31
  store double* %2, double** %send_alloca74, !reason !31
  %send_cast75 = bitcast double** %send_alloca74 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast75, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i8* %0), !reason !31
  %receive76 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i8* %0), !reason !31
  %bitcast77 = bitcast i8* %receive76 to i64*, !reason !31
  %receive_load78 = load i64, i64* %bitcast77, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %11 = icmp eq i64 %receive_load78, 3, !partition !4, !start !10, !end !23
  store i1 %11, i1* %send_alloca123, !reason !29
  %send_cast124 = bitcast i1* %send_alloca123 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast124, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i8* %0), !reason !29
  br i1 %11, label %l3, label %l2

l3:                                               ; preds = %l2
  store i64 %new_phi, i64* %send_alloca79, !reason !31
  %send_cast80 = bitcast i64* %send_alloca79 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast80, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i8* %0), !reason !31
  %receive81 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i8* %0), !reason !31
  %bitcast82 = bitcast i8* %receive81 to i64*, !reason !31
  %receive_load83 = load i64, i64* %bitcast82, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %12 = icmp eq i64 %receive_load83, 3, !partition !4, !start !3, !end !27
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_50 to i64), i8* %0), !reason !32
  %bitcast121 = bitcast i8* %repair_phi to i64*, !reason !32
  %receive_load122 = load i64, i64* %bitcast121, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_50 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  store i1 %12, i1* %send_alloca125, !reason !29
  %send_cast126 = bitcast i1* %send_alloca125 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast126, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i8* %0), !reason !29
  br i1 %12, label %l4, label %l1

l4:                                               ; preds = %l3
  %receive84 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_34 to i64), i8* %0), !reason !31
  %bitcast85 = bitcast i8* %receive84 to i64*, !reason !31
  %receive_load86 = load i64, i64* %bitcast85, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_34 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %13 = icmp eq i64 %receive_load86, 3, !partition !4, !start !3, !end !27
  store i1 %13, i1* %send_alloca127, !reason !29
  %send_cast128 = bitcast i1* %send_alloca127 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast128, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i8* %0), !reason !29
  br i1 %13, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %new_phi87 = phi i64 [ 0, %l5 ], [ %18, %l6 ]
  %receive91 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i8* %0), !reason !31
  %bitcast92 = bitcast i8* %receive91 to i64*, !reason !31
  %receive_load93 = load i64, i64* %bitcast92, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %14 = getelementptr inbounds [3 x double], [3 x double]* %receive_load90, i64 %receive_load93, i64 %new_phi87, !partition !4, !start !23, !end !24
  store double* %14, double** %send_alloca94, !reason !31
  %send_cast95 = bitcast double** %send_alloca94 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast95, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_37 to i64), i8* %0), !reason !31
  %receive96 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i8* %0), !reason !31
  %bitcast97 = bitcast i8* %receive96 to i64*, !reason !31
  %receive_load98 = load i64, i64* %bitcast97, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %15 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load98, i64 %new_phi87, !partition !4, !start !10, !end !23
  store double* %15, double** %send_alloca99, !reason !31
  %send_cast100 = bitcast double** %send_alloca99 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast100, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_39 to i64), i8* %0), !reason !31
  %receive101 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_40 to i64), i8* %0), !reason !31
  %bitcast102 = bitcast i8* %receive101 to double*, !reason !31
  %receive_load103 = load double, double* %bitcast102, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_40 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %receive104 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_41 to i64), i8* %0), !reason !31
  %bitcast105 = bitcast i8* %receive104 to double*, !reason !31
  %receive_load106 = load double, double* %bitcast105, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_41 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %16 = fadd double %receive_load103, %receive_load106, !partition !4, !start !24, !end !22
  store i64 %new_phi87, i64* %send_alloca107, !reason !31
  %send_cast108 = bitcast i64* %send_alloca107 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast108, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i8* %0), !reason !31
  %receive109 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_44 to i64), i8* %0), !reason !31
  %bitcast110 = bitcast i8* %receive109 to double*, !reason !31
  %receive_load111 = load double, double* %bitcast110, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_44 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !31
  %17 = fadd double %16, %receive_load111, !partition !4, !start !27, !end !10
  store i64 %new_phi87, i64* %send_alloca112, !reason !31
  %send_cast113 = bitcast i64* %send_alloca112 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast113, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i8* %0), !reason !31
  store double %17, double* %send_alloca114, !reason !31
  %send_cast115 = bitcast double* %send_alloca114 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast115, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_47 to i64), i8* %0), !reason !31
  %18 = add nuw nsw i64 %new_phi87, 1, !partition !4, !start !3, !end !27
  store i64 %18, i64* %send_alloca116, !reason !31
  %send_cast117 = bitcast i64* %send_alloca116 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast117, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i8* %0), !reason !31
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_54 to i64), i8* %0), !reason !32
  %bitcast129 = bitcast i8* %broadcast to i1*, !reason !32
  %receive_load130 = load i1, i1* %bitcast129, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_54 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !32
  br i1 %receive_load130, label %l7, label %l6

l7:                                               ; preds = %l6
  %receive118 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_49 to i64), i8* %0), !reason !31
  %bitcast119 = bitcast i8* %receive118 to i64*, !reason !31
  %receive_load120 = load i64, i64* %bitcast119, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_49 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !31
  %19 = icmp eq i64 %receive_load120, 3, !partition !4, !start !3, !end !27
  store i1 %19, i1* %send_alloca131, !reason !29
  %send_cast132 = bitcast i1* %send_alloca131 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast132, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_55 to i64), i8* %0), !reason !29
  br i1 %19, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @volatile_copy(i8*, i8*, i32) local_unnamed_addr #5 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

; <label>:5:                                      ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ %2, %3 ]
  %7 = phi i8* [ %11, %5 ], [ %1, %3 ]
  %8 = phi i8* [ %10, %5 ], [ %0, %3 ]
  %9 = load volatile i8, i8* %7, align 1, !tbaa !33
  store volatile i8 %9, i8* %8, align 1, !tbaa !33
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = add i32 %6, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

; <label>:14:                                     ; preds = %5, %3
  ret void
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define noalias i8* @init() #6 {
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #0 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !34
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !37
  tail call void %3(%struct.Context* %6) #4
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #0 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #9
  %7 = bitcast i8* %6 to %struct._opaque_pthread_t**
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %11

; <label>:11:                                     ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %22, %11 ]
  %13 = tail call i8* @malloc(i64 16) #9
  %14 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %12
  %15 = bitcast void (i8*)** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !34
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !37
  %20 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %12
  %21 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %20, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #4
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #7

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #8

; Function Attrs: nounwind ssp uwtable
define void @join_partitioned_functions(i32, i8* nocapture readonly) #0 {
  %3 = bitcast i8* %1 to %struct._opaque_pthread_t**
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = zext i32 %0 to i64
  br label %7

; <label>:7:                                      ; preds = %7, %5
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %3, i64 %8
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !38
  %11 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %10, i8** null) #4
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #8

; Function Attrs: norecurse nounwind ssp uwtable
define void @send(i8*, i32, i32, i64, i8* nocapture readnone) #5 {
  %6 = inttoptr i64 %3 to i8*
  %7 = sext i32 %1 to i64
  %8 = getelementptr i8, i8* %6, i64 %7
  br label %9

; <label>:9:                                      ; preds = %9, %5
  %10 = load volatile i8, i8* %8, align 1, !tbaa !33
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !33
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !33
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %7, label %10

; <label>:10:                                     ; preds = %7
  %11 = inttoptr i64 %1 to i8*
  ret i8* %11
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive(i32, i32, i64, i8* nocapture readnone) #5 {
  %5 = tail call i8* @_receive(i32 %0, i64 %2, i8* undef)
  ret i8* %5
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @free_comms(i64, i32, i8* nocapture readnone) #5 {
  %4 = inttoptr i64 %0 to i8*
  %5 = sext i32 %1 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  store volatile i8 0, i8* %6, align 1, !tbaa !33
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_argument(i8*, i32, i32, i64, i8* nocapture readnone) #5 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 %3, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_argument(i32, i64, i8* nocapture readnone) #5 {
  %4 = tail call i8* @_receive(i32 %0, i64 %1, i8* undef)
  ret i8* %4
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_return(i8*, i32, i8* nocapture readnone) local_unnamed_addr #5 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 ptrtoint ({ i1, i1, i32 }* @return_struct to i64), i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_return(i32, i8* nocapture readnone) local_unnamed_addr #5 {
  %3 = tail call i8* @_receive(i32 %0, i64 ptrtoint ({ i1, i1, i32 }* @return_struct to i64), i8* undef)
  ret i8* %3
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_token(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  tail call void @send(i8* null, i32 0, i32 undef, i64 %1, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @receive_token(i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %3 = tail call i8* @_receive(i32 0, i64 %0, i8* undef)
  ret void
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"0"}
!4 = !{!"1"}
!5 = !{!"4"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"5"}
!11 = !{!"6"}
!12 = !{!"7"}
!13 = !{!"14"}
!14 = !{!"17"}
!15 = !{!"20"}
!16 = !{!"22"}
!17 = !{!"23"}
!18 = !{!"2"}
!19 = !{!"21"}
!20 = !{!"10"}
!21 = !{!"12"}
!22 = !{!"13"}
!23 = !{!"8"}
!24 = !{!"11"}
!25 = !{!"18"}
!26 = !{!"15"}
!27 = !{!"3"}
!28 = !{!"replace argument"}
!29 = !{!"broadcast"}
!30 = !{!"repair_phi"}
!31 = !{!"replace mapped op"}
!32 = !{!"receive"}
!33 = !{!8, !8, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"Closure", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !8, i64 0}
!37 = !{!35, !36, i64 8}
!38 = !{!36, !36, i64 0}
