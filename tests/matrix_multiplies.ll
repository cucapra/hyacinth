; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Context = type {}
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@arg_0 = global { [3 x double]*, i1, i32 } zeroinitializer
@arg_1 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_2 = global { i64, i1, i32 } zeroinitializer
@comms_3 = global { i64, i1, i32 } zeroinitializer
@comms_4 = global { double*, i1, i32 } zeroinitializer
@arg_5 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_6 = global { i64, i1, i32 } zeroinitializer
@comms_7 = global { i64, i1, i32 } zeroinitializer
@comms_8 = global { double*, i1, i32 } zeroinitializer
@arg_9 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_10 = global { i64, i1, i32 } zeroinitializer
@comms_11 = global { i64, i1, i32 } zeroinitializer
@comms_12 = global { double*, i1, i32 } zeroinitializer
@arg_13 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_14 = global { double, i1, i32 } zeroinitializer
@comms_15 = global { double, i1, i32 } zeroinitializer
@comms_16 = global { double*, i1, i32 } zeroinitializer
@comms_17 = global { double, i1, i32 } zeroinitializer
@comms_18 = global { double, i1, i32 } zeroinitializer
@comms_19 = global { double*, i1, i32 } zeroinitializer
@comms_20 = global { double, i1, i32 } zeroinitializer
@comms_21 = global { double, i1, i32 } zeroinitializer
@comms_22 = global { double*, i1, i32 } zeroinitializer
@comms_23 = global { double*, i1, i32 } zeroinitializer
@comms_24 = global { double, i1, i32 } zeroinitializer
@comms_25 = global { double, i1, i32 } zeroinitializer
@comms_26 = global { double*, i1, i32 } zeroinitializer
@comms_27 = global { double, i1, i32 } zeroinitializer
@comms_28 = global { double, i1, i32 } zeroinitializer
@comms_29 = global { double*, i1, i32 } zeroinitializer
@comms_30 = global { i64, i1, i32 } zeroinitializer
@comms_31 = global { i64, i1, i32 } zeroinitializer
@comms_32 = global { i64, i1, i32 } zeroinitializer
@arg_33 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_34 = global { double, i1, i32 } zeroinitializer
@comms_35 = global { double, i1, i32 } zeroinitializer
@comms_36 = global { i64, i1, i32 } zeroinitializer
@comms_37 = global { i64, i1, i32 } zeroinitializer
@comms_38 = global { double*, i1, i32 } zeroinitializer
@comms_39 = global { double, i1, i32 } zeroinitializer
@arg_40 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_41 = global { i64, i1, i32 } zeroinitializer
@comms_42 = global { i64, i1, i32 } zeroinitializer
@comms_43 = global { double, i1, i32 } zeroinitializer
@comms_44 = global { double*, i1, i32 } zeroinitializer
@comms_45 = global { i64, i1, i32 } zeroinitializer
@comms_46 = global { i64, i1, i32 } zeroinitializer
@comms_47 = global { i64, i1, i32 } zeroinitializer
@comms_48 = global { i64, i1, i32 } zeroinitializer
@comms_49 = global { i1, i1, i32 } zeroinitializer
@comms_50 = global { i1, i1, i32 } zeroinitializer
@comms_51 = global { i1, i1, i32 } zeroinitializer
@comms_52 = global { i1, i1, i32 } zeroinitializer
@comms_53 = global { i1, i1, i32 } zeroinitializer
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
  %10 = phi i64 [ 0, %7 ], [ %39, %38 ], !partition !3, !start !4, !end !4
  %11 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %10, !partition !3, !start !5, !end !4
  store double 0.000000e+00, double* %11, align 8, !tbaa !6, !partition !3, !start !3, !end !10
  %12 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %10, !partition !10, !start !10, !end !11
  store double 0.000000e+00, double* %12, align 8, !tbaa !6, !partition !3, !start !10, !end !5
  %13 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %10, !partition !10, !start !11, !end !12
  store double 0.000000e+00, double* %13, align 8, !tbaa !6, !partition !3, !start !4, !end !13
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %14 ], !partition !3, !start !14, !end !14
  %16 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %15, !partition !10, !start !15, !end !16
  %17 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !15, !end !17
  %18 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %15, i64 %10, !partition !3, !start !3, !end !18
  %19 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !14, !end !19
  %20 = fmul double %17, %19, !partition !3, !start !20, !end !21
  %21 = tail call double @llvm.sqrt.f64(double %20), !partition !10, !start !19, !end !22
  %22 = load double, double* %11, align 8, !tbaa !6, !partition !3, !start !19, !end !23
  %23 = fadd double %22, %21, !partition !3, !start !24, !end !14
  store double %23, double* %11, align 8, !tbaa !6, !partition !3, !start !17, !end !25
  %24 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !11, !end !4
  %25 = tail call double @llvm.sqrt.f64(double %24), !partition !10, !start !5, !end !4
  %26 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !26, !end !24
  %27 = fmul double %25, %26, !partition !10, !start !26, !end !27
  %28 = load double, double* %12, align 8, !tbaa !6, !partition !3, !start !25, !end !16
  %29 = fadd double %28, %27, !partition !10, !start !27, !end !19
  store double %29, double* %12, align 8, !tbaa !6, !partition !3, !start !13, !end !12
  %30 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !12, !end !15
  %31 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !4, !end !13
  %32 = tail call double @llvm.sqrt.f64(double %31), !partition !10, !start !16, !end !26
  %33 = fmul double %30, %32, !partition !10, !start !22, !end !28
  %34 = load double, double* %13, align 8, !tbaa !6, !partition !3, !start !18, !end !11
  %35 = fadd double %34, %33, !partition !10, !start !3, !end !5
  store double %35, double* %13, align 8, !tbaa !6, !partition !3, !start !23, !end !20
  %36 = add nuw nsw i64 %15, 1, !partition !3, !start !16, !end !26
  %37 = icmp eq i64 %36, 3, !partition !10, !start !4, !end !15
  br i1 %37, label %38, label %14

; <label>:38:                                     ; preds = %14
  %39 = add nuw nsw i64 %10, 1, !partition !3, !start !3, !end !18
  %40 = icmp eq i64 %39, 3, !partition !10, !start !3, !end !18
  br i1 %40, label %41, label %9

; <label>:41:                                     ; preds = %38
  %42 = add nuw nsw i64 %8, 1, !partition !3, !start !10, !end !11
  %43 = icmp eq i64 %42, 3, !partition !10, !start !3, !end !18
  br i1 %43, label %44, label %7

; <label>:44:                                     ; preds = %59, %41
  %45 = phi i64 [ %60, %59 ], [ 0, %41 ], !partition !3, !start !3, !end !3
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %57, %46 ], !partition !3, !start !29, !end !29
  %48 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %47, !partition !3, !start !13, !end !17
  %49 = load double, double* %48, align 8, !tbaa !6, !partition !3, !start !16, !end !29
  %50 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %47, !partition !3, !start !18, !end !13
  %51 = load double, double* %50, align 8, !tbaa !6, !partition !3, !start !17, !end !25
  %52 = fadd double %49, %51, !partition !10, !start !3, !end !5
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %47, !partition !10, !start !5, !end !4
  %54 = load double, double* %53, align 8, !tbaa !6, !partition !3, !start !25, !end !16
  %55 = fadd double %52, %54, !partition !10, !start !16, !end !30
  %56 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %47, !partition !10, !start !15, !end !16
  store double %55, double* %56, align 8, !tbaa !6, !partition !3, !start !29, !end !30
  %57 = add nuw nsw i64 %47, 1, !partition !10, !start !4, !end !15
  %58 = icmp eq i64 %57, 3, !partition !3, !start !3, !end !18
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %46
  %60 = add nuw nsw i64 %45, 1, !partition !3, !start !10, !end !11
  %61 = icmp eq i64 %60, 3, !partition !10, !start !3, !end !18
  br i1 %61, label %62, label %44

; <label>:62:                                     ; preds = %59
  ret void, !partition !3, !start !3, !end !10
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
  %6 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %6)
  %send_alloca = alloca [3 x double]*, !reason !31
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !31
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %6), !reason !31
  %send_alloca1 = alloca [3 x double]*, !reason !31
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !31
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_1 to i64), i8* %6), !reason !31
  %send_alloca3 = alloca [3 x double]*, !reason !31
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !31
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_5 to i64), i8* %6), !reason !31
  %send_alloca5 = alloca [3 x double]*, !reason !31
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !31
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i8* %6), !reason !31
  %send_alloca7 = alloca [3 x double]*, !reason !31
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !31
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_13 to i64), i8* %6), !reason !31
  %send_alloca9 = alloca [3 x double]*, !reason !31
  store [3 x double]* %3, [3 x double]** %send_alloca9, !reason !31
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_33 to i64), i8* %6), !reason !31
  %send_alloca11 = alloca [3 x double]*, !reason !31
  store [3 x double]* %5, [3 x double]** %send_alloca11, !reason !31
  %send_cast12 = bitcast [3 x double]** %send_alloca11 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_40 to i64), i8* %6), !reason !31
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

define void @_p_multiply_0(i8*) {
entry:
  %argument81 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_33 to i64), i8* %0), !reason !31
  %bitcast82 = bitcast i8* %argument81 to [3 x double]**, !reason !31
  %receive_load83 = load [3 x double]*, [3 x double]** %bitcast82, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_33 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %argument29 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_13 to i64), i8* %0), !reason !31
  %bitcast30 = bitcast i8* %argument29 to [3 x double]**, !reason !31
  %receive_load31 = load [3 x double]*, [3 x double]** %bitcast30, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_13 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %0), !reason !31
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !31
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %16, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi9 = phi i64 [ 0, %l ], [ %15, %l3 ]
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %new_phi9, !partition !3, !start !5, !end !4
  store double 0.000000e+00, double* %1, align 8, !tbaa !6, !partition !3, !start !3, !end !10
  %send_alloca = alloca i64, !reason !32
  store i64 %new_phi, i64* %send_alloca, !reason !32
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_2 to i64), i8* %0), !reason !32
  %send_alloca10 = alloca i64, !reason !32
  store i64 %new_phi9, i64* %send_alloca10, !reason !32
  %send_cast11 = bitcast i64* %send_alloca10 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast11, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !32
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_4 to i64), i8* %0), !reason !32
  %bitcast12 = bitcast i8* %receive to double**, !reason !32
  %receive_load13 = load double*, double** %bitcast12, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  store double 0.000000e+00, double* %receive_load13, align 8, !tbaa !6, !partition !3, !start !10, !end !5
  %send_alloca14 = alloca i64, !reason !32
  store i64 %new_phi, i64* %send_alloca14, !reason !32
  %send_cast15 = bitcast i64* %send_alloca14 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast15, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i8* %0), !reason !32
  %send_alloca16 = alloca i64, !reason !32
  store i64 %new_phi9, i64* %send_alloca16, !reason !32
  %send_cast17 = bitcast i64* %send_alloca16 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast17, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !32
  %receive18 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i8* %0), !reason !32
  %bitcast19 = bitcast i8* %receive18 to double**, !reason !32
  %receive_load20 = load double*, double** %bitcast19, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  store double 0.000000e+00, double* %receive_load20, align 8, !tbaa !6, !partition !3, !start !4, !end !13
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi21 = phi i64 [ 0, %l1 ], [ %14, %l2 ]
  %send_alloca22 = alloca i64, !reason !32
  store i64 %new_phi, i64* %send_alloca22, !reason !32
  %send_cast23 = bitcast i64* %send_alloca22 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast23, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !32
  %send_alloca24 = alloca i64, !reason !32
  store i64 %new_phi21, i64* %send_alloca24, !reason !32
  %send_cast25 = bitcast i64* %send_alloca24 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast25, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_11 to i64), i8* %0), !reason !32
  %receive26 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_12 to i64), i8* %0), !reason !32
  %bitcast27 = bitcast i8* %receive26 to double**, !reason !32
  %receive_load28 = load double*, double** %bitcast27, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_12 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  %2 = load double, double* %receive_load28, align 8, !tbaa !6, !partition !3, !start !15, !end !17
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load31, i64 %new_phi21, i64 %new_phi9, !partition !3, !start !3, !end !18
  %4 = load double, double* %3, align 8, !tbaa !6, !partition !3, !start !14, !end !19
  %5 = fmul double %2, %4, !partition !3, !start !20, !end !21
  %send_alloca32 = alloca double, !reason !32
  store double %5, double* %send_alloca32, !reason !32
  %send_cast33 = bitcast double* %send_alloca32 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast33, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !32
  %6 = load double, double* %1, align 8, !tbaa !6, !partition !3, !start !19, !end !23
  %receive34 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i8* %0), !reason !32
  %bitcast35 = bitcast i8* %receive34 to double*, !reason !32
  %receive_load36 = load double, double* %bitcast35, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %7 = fadd double %6, %receive_load36, !partition !3, !start !24, !end !14
  store double %7, double* %1, align 8, !tbaa !6, !partition !3, !start !17, !end !25
  %receive37 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_16 to i64), i8* %0), !reason !32
  %bitcast38 = bitcast i8* %receive37 to double**, !reason !32
  %receive_load39 = load double*, double** %bitcast38, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_16 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  %8 = load double, double* %receive_load39, align 8, !tbaa !6, !partition !3, !start !11, !end !4
  %send_alloca40 = alloca double, !reason !32
  store double %8, double* %send_alloca40, !reason !32
  %send_cast41 = bitcast double* %send_alloca40 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast41, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i8* %0), !reason !32
  %9 = load double, double* %3, align 8, !tbaa !6, !partition !3, !start !26, !end !24
  %send_alloca42 = alloca double, !reason !32
  store double %9, double* %send_alloca42, !reason !32
  %send_cast43 = bitcast double* %send_alloca42 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast43, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i8* %0), !reason !32
  %receive44 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_19 to i64), i8* %0), !reason !32
  %bitcast45 = bitcast i8* %receive44 to double**, !reason !32
  %receive_load46 = load double*, double** %bitcast45, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_19 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  %10 = load double, double* %receive_load46, align 8, !tbaa !6, !partition !3, !start !25, !end !16
  %send_alloca47 = alloca double, !reason !32
  store double %10, double* %send_alloca47, !reason !32
  %send_cast48 = bitcast double* %send_alloca47 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast48, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i8* %0), !reason !32
  %receive49 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i8* %0), !reason !32
  %bitcast50 = bitcast i8* %receive49 to double*, !reason !32
  %receive_load51 = load double, double* %bitcast50, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %receive52 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_22 to i64), i8* %0), !reason !32
  %bitcast53 = bitcast i8* %receive52 to double**, !reason !32
  %receive_load54 = load double*, double** %bitcast53, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_22 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  store double %receive_load51, double* %receive_load54, align 8, !tbaa !6, !partition !3, !start !13, !end !12
  %receive55 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_23 to i64), i8* %0), !reason !32
  %bitcast56 = bitcast i8* %receive55 to double**, !reason !32
  %receive_load57 = load double*, double** %bitcast56, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_23 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  %11 = load double, double* %receive_load57, align 8, !tbaa !6, !partition !3, !start !12, !end !15
  %12 = load double, double* %3, align 8, !tbaa !6, !partition !3, !start !4, !end !13
  %send_alloca58 = alloca double, !reason !32
  store double %12, double* %send_alloca58, !reason !32
  %send_cast59 = bitcast double* %send_alloca58 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast59, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_24 to i64), i8* %0), !reason !32
  %send_alloca60 = alloca double, !reason !32
  store double %11, double* %send_alloca60, !reason !32
  %send_cast61 = bitcast double* %send_alloca60 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast61, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_25 to i64), i8* %0), !reason !32
  %receive62 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_26 to i64), i8* %0), !reason !32
  %bitcast63 = bitcast i8* %receive62 to double**, !reason !32
  %receive_load64 = load double*, double** %bitcast63, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_26 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  %13 = load double, double* %receive_load64, align 8, !tbaa !6, !partition !3, !start !18, !end !11
  %send_alloca65 = alloca double, !reason !32
  store double %13, double* %send_alloca65, !reason !32
  %send_cast66 = bitcast double* %send_alloca65 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast66, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_27 to i64), i8* %0), !reason !32
  %receive67 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i8* %0), !reason !32
  %bitcast68 = bitcast i8* %receive67 to double*, !reason !32
  %receive_load69 = load double, double* %bitcast68, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %receive70 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_29 to i64), i8* %0), !reason !32
  %bitcast71 = bitcast i8* %receive70 to double**, !reason !32
  %receive_load72 = load double*, double** %bitcast71, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_29 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  store double %receive_load69, double* %receive_load72, align 8, !tbaa !6, !partition !3, !start !23, !end !20
  %14 = add nuw nsw i64 %new_phi21, 1, !partition !3, !start !16, !end !26
  %send_alloca73 = alloca i64, !reason !32
  store i64 %14, i64* %send_alloca73, !reason !32
  %send_cast74 = bitcast i64* %send_alloca73 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast74, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i8* %0), !reason !32
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i8* %0), !reason !33
  %bitcast116 = bitcast i8* %broadcast to i1*, !reason !33
  %receive_load117 = load i1, i1* %bitcast116, !reason !33
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !33
  br i1 %receive_load117, label %l3, label %l2

l3:                                               ; preds = %l2
  %15 = add nuw nsw i64 %new_phi9, 1, !partition !3, !start !3, !end !18
  %send_alloca75 = alloca i64, !reason !32
  store i64 %15, i64* %send_alloca75, !reason !32
  %send_cast76 = bitcast i64* %send_alloca75 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast76, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i8* %0), !reason !32
  %broadcast118 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i8* %0), !reason !33
  %bitcast119 = bitcast i8* %broadcast118 to i1*, !reason !33
  %receive_load120 = load i1, i1* %bitcast119, !reason !33
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !33
  br i1 %receive_load120, label %l4, label %l1

l4:                                               ; preds = %l3
  %16 = add nuw nsw i64 %new_phi, 1, !partition !3, !start !10, !end !11
  %send_alloca77 = alloca i64, !reason !32
  store i64 %16, i64* %send_alloca77, !reason !32
  %send_cast78 = bitcast i64* %send_alloca77 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast78, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i8* %0), !reason !32
  %broadcast121 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i8* %0), !reason !33
  %bitcast122 = bitcast i8* %broadcast121 to i1*, !reason !33
  %receive_load123 = load i1, i1* %bitcast122, !reason !33
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !33
  br i1 %receive_load123, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  %new_phi79 = phi i64 [ %23, %l7 ], [ 0, %l4 ]
  br label %l6

l6:                                               ; preds = %l6, %l5
  %new_phi80 = phi i64 [ 0, %l5 ], [ %receive_load115, %l6 ]
  %17 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi79, i64 %new_phi80, !partition !3, !start !13, !end !17
  %18 = load double, double* %17, align 8, !tbaa !6, !partition !3, !start !16, !end !29
  %19 = getelementptr inbounds [3 x double], [3 x double]* %receive_load83, i64 %new_phi79, i64 %new_phi80, !partition !3, !start !18, !end !13
  %20 = load double, double* %19, align 8, !tbaa !6, !partition !3, !start !17, !end !25
  %send_alloca84 = alloca double, !reason !32
  store double %18, double* %send_alloca84, !reason !32
  %send_cast85 = bitcast double* %send_alloca84 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast85, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_34 to i64), i8* %0), !reason !32
  %send_alloca86 = alloca double, !reason !32
  store double %20, double* %send_alloca86, !reason !32
  %send_cast87 = bitcast double* %send_alloca86 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast87, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_35 to i64), i8* %0), !reason !32
  %send_alloca88 = alloca i64, !reason !32
  store i64 %new_phi79, i64* %send_alloca88, !reason !32
  %send_cast89 = bitcast i64* %send_alloca88 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast89, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i8* %0), !reason !32
  %send_alloca90 = alloca i64, !reason !32
  store i64 %new_phi80, i64* %send_alloca90, !reason !32
  %send_cast91 = bitcast i64* %send_alloca90 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast91, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i8* %0), !reason !32
  %receive92 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_38 to i64), i8* %0), !reason !32
  %bitcast93 = bitcast i8* %receive92 to double**, !reason !32
  %receive_load94 = load double*, double** %bitcast93, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_38 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  %21 = load double, double* %receive_load94, align 8, !tbaa !6, !partition !3, !start !25, !end !16
  %send_alloca95 = alloca double, !reason !32
  store double %21, double* %send_alloca95, !reason !32
  %send_cast96 = bitcast double* %send_alloca95 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast96, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_39 to i64), i8* %0), !reason !32
  %send_alloca97 = alloca i64, !reason !32
  store i64 %new_phi79, i64* %send_alloca97, !reason !32
  %send_cast98 = bitcast i64* %send_alloca97 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast98, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i8* %0), !reason !32
  %send_alloca99 = alloca i64, !reason !32
  store i64 %new_phi80, i64* %send_alloca99, !reason !32
  %send_cast100 = bitcast i64* %send_alloca99 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast100, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i8* %0), !reason !32
  %receive101 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_43 to i64), i8* %0), !reason !32
  %bitcast102 = bitcast i8* %receive101 to double*, !reason !32
  %receive_load103 = load double, double* %bitcast102, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_43 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %receive104 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_44 to i64), i8* %0), !reason !32
  %bitcast105 = bitcast i8* %receive104 to double**, !reason !32
  %receive_load106 = load double*, double** %bitcast105, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_44 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !32
  store double %receive_load103, double* %receive_load106, align 8, !tbaa !6, !partition !3, !start !29, !end !30
  %send_alloca107 = alloca i64, !reason !32
  store i64 %new_phi80, i64* %send_alloca107, !reason !32
  %send_cast108 = bitcast i64* %send_alloca107 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast108, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_45 to i64), i8* %0), !reason !32
  %receive109 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i8* %0), !reason !32
  %bitcast110 = bitcast i8* %receive109 to i64*, !reason !32
  %receive_load111 = load i64, i64* %bitcast110, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %22 = icmp eq i64 %receive_load111, 3, !partition !3, !start !3, !end !18
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i8* %0), !reason !33
  %bitcast114 = bitcast i8* %repair_phi to i64*, !reason !33
  %receive_load115 = load i64, i64* %bitcast114, !reason !33
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !33
  %send_alloca124 = alloca i1, !reason !34
  store i1 %22, i1* %send_alloca124, !reason !34
  %send_cast125 = bitcast i1* %send_alloca124 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast125, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i8* %0), !reason !34
  br i1 %22, label %l7, label %l6

l7:                                               ; preds = %l6
  %23 = add nuw nsw i64 %new_phi79, 1, !partition !3, !start !10, !end !11
  %send_alloca112 = alloca i64, !reason !32
  store i64 %23, i64* %send_alloca112, !reason !32
  %send_cast113 = bitcast i64* %send_alloca112 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast113, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_47 to i64), i8* %0), !reason !32
  %broadcast126 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i8* %0), !reason !33
  %bitcast127 = bitcast i8* %broadcast126 to i1*, !reason !33
  %receive_load128 = load i1, i1* %bitcast127, !reason !33
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !33
  br i1 %receive_load128, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

define void @_p_multiply_1(i8*) {
entry:
  %argument101 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_40 to i64), i8* %0), !reason !31
  %bitcast102 = bitcast i8* %argument101 to [3 x double]**, !reason !31
  %receive_load103 = load [3 x double]*, [3 x double]** %bitcast102, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_40 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %argument25 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i8* %0), !reason !31
  %bitcast26 = bitcast i8* %argument25 to [3 x double]**, !reason !31
  %receive_load27 = load [3 x double]*, [3 x double]** %bitcast26, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %argument14 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_5 to i64), i8* %0), !reason !31
  %bitcast15 = bitcast i8* %argument14 to [3 x double]**, !reason !31
  %receive_load16 = load [3 x double]*, [3 x double]** %bitcast15, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_5 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_1 to i64), i8* %0), !reason !31
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !31
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !31
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_1 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !31
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_2 to i64), i8* %0), !reason !32
  %bitcast9 = bitcast i8* %receive to i64*, !reason !32
  %receive_load10 = load i64, i64* %bitcast9, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_2 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %receive11 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !32
  %bitcast12 = bitcast i8* %receive11 to i64*, !reason !32
  %receive_load13 = load i64, i64* %bitcast12, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load10, i64 %receive_load13, !partition !10, !start !10, !end !11
  %send_alloca = alloca double*, !reason !32
  store double* %1, double** %send_alloca, !reason !32
  %send_cast = bitcast double** %send_alloca to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_4 to i64), i8* %0), !reason !32
  %receive17 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i8* %0), !reason !32
  %bitcast18 = bitcast i8* %receive17 to i64*, !reason !32
  %receive_load19 = load i64, i64* %bitcast18, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %receive20 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !32
  %bitcast21 = bitcast i8* %receive20 to i64*, !reason !32
  %receive_load22 = load i64, i64* %bitcast21, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load16, i64 %receive_load19, i64 %receive_load22, !partition !10, !start !11, !end !12
  %send_alloca23 = alloca double*, !reason !32
  store double* %2, double** %send_alloca23, !reason !32
  %send_cast24 = bitcast double** %send_alloca23 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast24, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i8* %0), !reason !32
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive28 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !32
  %bitcast29 = bitcast i8* %receive28 to i64*, !reason !32
  %receive_load30 = load i64, i64* %bitcast29, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %receive31 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_11 to i64), i8* %0), !reason !32
  %bitcast32 = bitcast i8* %receive31 to i64*, !reason !32
  %receive_load33 = load i64, i64* %bitcast32, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_11 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load27, i64 %receive_load30, i64 %receive_load33, !partition !10, !start !15, !end !16
  %send_alloca34 = alloca double*, !reason !32
  store double* %3, double** %send_alloca34, !reason !32
  %send_cast35 = bitcast double** %send_alloca34 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast35, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_12 to i64), i8* %0), !reason !32
  %receive36 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !32
  %bitcast37 = bitcast i8* %receive36 to double*, !reason !32
  %receive_load38 = load double, double* %bitcast37, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %4 = tail call double @llvm.sqrt.f64(double %receive_load38), !partition !10, !start !19, !end !22
  %send_alloca39 = alloca double, !reason !32
  store double %4, double* %send_alloca39, !reason !32
  %send_cast40 = bitcast double* %send_alloca39 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast40, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i8* %0), !reason !32
  %send_alloca41 = alloca double*, !reason !32
  store double* %3, double** %send_alloca41, !reason !32
  %send_cast42 = bitcast double** %send_alloca41 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast42, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_16 to i64), i8* %0), !reason !32
  %receive43 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i8* %0), !reason !32
  %bitcast44 = bitcast i8* %receive43 to double*, !reason !32
  %receive_load45 = load double, double* %bitcast44, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %5 = tail call double @llvm.sqrt.f64(double %receive_load45), !partition !10, !start !5, !end !4
  %receive46 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i8* %0), !reason !32
  %bitcast47 = bitcast i8* %receive46 to double*, !reason !32
  %receive_load48 = load double, double* %bitcast47, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %6 = fmul double %5, %receive_load48, !partition !10, !start !26, !end !27
  %send_alloca49 = alloca double*, !reason !32
  store double* %1, double** %send_alloca49, !reason !32
  %send_cast50 = bitcast double** %send_alloca49 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast50, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_19 to i64), i8* %0), !reason !32
  %receive51 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i8* %0), !reason !32
  %bitcast52 = bitcast i8* %receive51 to double*, !reason !32
  %receive_load53 = load double, double* %bitcast52, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %7 = fadd double %receive_load53, %6, !partition !10, !start !27, !end !19
  %send_alloca54 = alloca double, !reason !32
  store double %7, double* %send_alloca54, !reason !32
  %send_cast55 = bitcast double* %send_alloca54 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast55, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i8* %0), !reason !32
  %send_alloca56 = alloca double*, !reason !32
  store double* %1, double** %send_alloca56, !reason !32
  %send_cast57 = bitcast double** %send_alloca56 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast57, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_22 to i64), i8* %0), !reason !32
  %send_alloca58 = alloca double*, !reason !32
  store double* %3, double** %send_alloca58, !reason !32
  %send_cast59 = bitcast double** %send_alloca58 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast59, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_23 to i64), i8* %0), !reason !32
  %receive60 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_24 to i64), i8* %0), !reason !32
  %bitcast61 = bitcast i8* %receive60 to double*, !reason !32
  %receive_load62 = load double, double* %bitcast61, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_24 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %8 = tail call double @llvm.sqrt.f64(double %receive_load62), !partition !10, !start !16, !end !26
  %receive63 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_25 to i64), i8* %0), !reason !32
  %bitcast64 = bitcast i8* %receive63 to double*, !reason !32
  %receive_load65 = load double, double* %bitcast64, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_25 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %9 = fmul double %receive_load65, %8, !partition !10, !start !22, !end !28
  %send_alloca66 = alloca double*, !reason !32
  store double* %2, double** %send_alloca66, !reason !32
  %send_cast67 = bitcast double** %send_alloca66 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast67, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_26 to i64), i8* %0), !reason !32
  %receive68 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_27 to i64), i8* %0), !reason !32
  %bitcast69 = bitcast i8* %receive68 to double*, !reason !32
  %receive_load70 = load double, double* %bitcast69, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_27 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %10 = fadd double %receive_load70, %9, !partition !10, !start !3, !end !5
  %send_alloca71 = alloca double, !reason !32
  store double %10, double* %send_alloca71, !reason !32
  %send_cast72 = bitcast double* %send_alloca71 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast72, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i8* %0), !reason !32
  %send_alloca73 = alloca double*, !reason !32
  store double* %2, double** %send_alloca73, !reason !32
  %send_cast74 = bitcast double** %send_alloca73 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast74, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_29 to i64), i8* %0), !reason !32
  %receive75 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i8* %0), !reason !32
  %bitcast76 = bitcast i8* %receive75 to i64*, !reason !32
  %receive_load77 = load i64, i64* %bitcast76, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %11 = icmp eq i64 %receive_load77, 3, !partition !10, !start !4, !end !15
  %send_alloca124 = alloca i1, !reason !34
  store i1 %11, i1* %send_alloca124, !reason !34
  %send_cast125 = bitcast i1* %send_alloca124 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast125, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i8* %0), !reason !34
  br i1 %11, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive78 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i8* %0), !reason !32
  %bitcast79 = bitcast i8* %receive78 to i64*, !reason !32
  %receive_load80 = load i64, i64* %bitcast79, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %12 = icmp eq i64 %receive_load80, 3, !partition !10, !start !3, !end !18
  %send_alloca126 = alloca i1, !reason !34
  store i1 %12, i1* %send_alloca126, !reason !34
  %send_cast127 = bitcast i1* %send_alloca126 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast127, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i8* %0), !reason !34
  br i1 %12, label %l4, label %l1

l4:                                               ; preds = %l3
  %receive81 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i8* %0), !reason !32
  %bitcast82 = bitcast i8* %receive81 to i64*, !reason !32
  %receive_load83 = load i64, i64* %bitcast82, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %13 = icmp eq i64 %receive_load83, 3, !partition !10, !start !3, !end !18
  %send_alloca128 = alloca i1, !reason !34
  store i1 %13, i1* %send_alloca128, !reason !34
  %send_cast129 = bitcast i1* %send_alloca128 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast129, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i8* %0), !reason !34
  br i1 %13, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %receive84 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_34 to i64), i8* %0), !reason !32
  %bitcast85 = bitcast i8* %receive84 to double*, !reason !32
  %receive_load86 = load double, double* %bitcast85, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_34 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %receive87 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_35 to i64), i8* %0), !reason !32
  %bitcast88 = bitcast i8* %receive87 to double*, !reason !32
  %receive_load89 = load double, double* %bitcast88, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_35 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %14 = fadd double %receive_load86, %receive_load89, !partition !10, !start !3, !end !5
  %receive90 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i8* %0), !reason !32
  %bitcast91 = bitcast i8* %receive90 to i64*, !reason !32
  %receive_load92 = load i64, i64* %bitcast91, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %receive93 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i8* %0), !reason !32
  %bitcast94 = bitcast i8* %receive93 to i64*, !reason !32
  %receive_load95 = load i64, i64* %bitcast94, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %15 = getelementptr inbounds [3 x double], [3 x double]* %receive_load16, i64 %receive_load92, i64 %receive_load95, !partition !10, !start !5, !end !4
  %send_alloca96 = alloca double*, !reason !32
  store double* %15, double** %send_alloca96, !reason !32
  %send_cast97 = bitcast double** %send_alloca96 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast97, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_38 to i64), i8* %0), !reason !32
  %receive98 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_39 to i64), i8* %0), !reason !32
  %bitcast99 = bitcast i8* %receive98 to double*, !reason !32
  %receive_load100 = load double, double* %bitcast99, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_39 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %16 = fadd double %14, %receive_load100, !partition !10, !start !16, !end !30
  %receive104 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i8* %0), !reason !32
  %bitcast105 = bitcast i8* %receive104 to i64*, !reason !32
  %receive_load106 = load i64, i64* %bitcast105, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %receive107 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i8* %0), !reason !32
  %bitcast108 = bitcast i8* %receive107 to i64*, !reason !32
  %receive_load109 = load i64, i64* %bitcast108, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %17 = getelementptr inbounds [3 x double], [3 x double]* %receive_load103, i64 %receive_load106, i64 %receive_load109, !partition !10, !start !15, !end !16
  %send_alloca110 = alloca double, !reason !32
  store double %16, double* %send_alloca110, !reason !32
  %send_cast111 = bitcast double* %send_alloca110 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast111, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_43 to i64), i8* %0), !reason !32
  %send_alloca112 = alloca double*, !reason !32
  store double* %17, double** %send_alloca112, !reason !32
  %send_cast113 = bitcast double** %send_alloca112 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast113, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_44 to i64), i8* %0), !reason !32
  %receive114 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_45 to i64), i8* %0), !reason !32
  %bitcast115 = bitcast i8* %receive114 to i64*, !reason !32
  %receive_load116 = load i64, i64* %bitcast115, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_45 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %18 = add nuw nsw i64 %receive_load116, 1, !partition !10, !start !4, !end !15
  %send_alloca117 = alloca i64, !reason !32
  store i64 %18, i64* %send_alloca117, !reason !32
  %send_cast118 = bitcast i64* %send_alloca117 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast118, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i8* %0), !reason !32
  %send_alloca122 = alloca i64, !reason !35
  store i64 %18, i64* %send_alloca122, !reason !35
  %send_cast123 = bitcast i64* %send_alloca122 to i8*, !reason !35
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast123, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i8* %0), !reason !35
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i8* %0), !reason !33
  %bitcast130 = bitcast i8* %broadcast to i1*, !reason !33
  %receive_load131 = load i1, i1* %bitcast130, !reason !33
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !33
  br i1 %receive_load131, label %l7, label %l6

l7:                                               ; preds = %l6
  %receive119 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_47 to i64), i8* %0), !reason !32
  %bitcast120 = bitcast i8* %receive119 to i64*, !reason !32
  %receive_load121 = load i64, i64* %bitcast120, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_47 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !32
  %19 = icmp eq i64 %receive_load121, 3, !partition !10, !start !3, !end !18
  %send_alloca132 = alloca i1, !reason !34
  store i1 %19, i1* %send_alloca132, !reason !34
  %send_cast133 = bitcast i1* %send_alloca132 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast133, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i8* %0), !reason !34
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
  %9 = load volatile i8, i8* %7, align 1, !tbaa !36
  store volatile i8 %9, i8* %8, align 1, !tbaa !36
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !37
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !40
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
  %16 = load i64, i64* %15, align 8, !tbaa !41
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !37
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !40
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !41
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
  %10 = load volatile i8, i8* %8, align 1, !tbaa !36
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !36
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !36
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
  store volatile i8 0, i8* %6, align 1, !tbaa !36
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
!4 = !{!"5"}
!5 = !{!"2"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"1"}
!11 = !{!"4"}
!12 = !{!"7"}
!13 = !{!"6"}
!14 = !{!"17"}
!15 = !{!"8"}
!16 = !{!"11"}
!17 = !{!"9"}
!18 = !{!"3"}
!19 = !{!"18"}
!20 = !{!"20"}
!21 = !{!"22"}
!22 = !{!"21"}
!23 = !{!"19"}
!24 = !{!"15"}
!25 = !{!"10"}
!26 = !{!"14"}
!27 = !{!"16"}
!28 = !{!"23"}
!29 = !{!"12"}
!30 = !{!"13"}
!31 = !{!"replace argument"}
!32 = !{!"replace mapped op"}
!33 = !{!"receive"}
!34 = !{!"broadcast"}
!35 = !{!"repair_phi"}
!36 = !{!8, !8, i64 0}
!37 = !{!38, !39, i64 0}
!38 = !{!"Closure", !39, i64 0, !39, i64 8}
!39 = !{!"any pointer", !8, i64 0}
!40 = !{!38, !39, i64 8}
!41 = !{!39, !39, i64 0}
