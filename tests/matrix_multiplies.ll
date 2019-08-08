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
@arg_4 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_5 = global { i64, i1, i32 } zeroinitializer
@arg_6 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_7 = global { i64, i1, i32 } zeroinitializer
@comms_8 = global { i64, i1, i32 } zeroinitializer
@arg_9 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_10 = global { i64, i1, i32 } zeroinitializer
@comms_11 = global { double, i1, i32 } zeroinitializer
@comms_12 = global { double, i1, i32 } zeroinitializer
@comms_13 = global { double, i1, i32 } zeroinitializer
@comms_14 = global { double, i1, i32 } zeroinitializer
@comms_15 = global { double, i1, i32 } zeroinitializer
@comms_16 = global { double, i1, i32 } zeroinitializer
@comms_17 = global { double, i1, i32 } zeroinitializer
@comms_18 = global { double, i1, i32 } zeroinitializer
@comms_19 = global { double, i1, i32 } zeroinitializer
@comms_20 = global { double, i1, i32 } zeroinitializer
@comms_21 = global { double, i1, i32 } zeroinitializer
@comms_22 = global { i64, i1, i32 } zeroinitializer
@comms_23 = global { i64, i1, i32 } zeroinitializer
@comms_24 = global { i64, i1, i32 } zeroinitializer
@comms_25 = global { i64, i1, i32 } zeroinitializer
@comms_26 = global { i64, i1, i32 } zeroinitializer
@comms_27 = global { i64, i1, i32 } zeroinitializer
@arg_28 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_29 = global { i64, i1, i32 } zeroinitializer
@comms_30 = global { double, i1, i32 } zeroinitializer
@arg_31 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_32 = global { i64, i1, i32 } zeroinitializer
@comms_33 = global { double, i1, i32 } zeroinitializer
@arg_34 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_35 = global { i64, i1, i32 } zeroinitializer
@comms_36 = global { double, i1, i32 } zeroinitializer
@comms_37 = global { i64, i1, i32 } zeroinitializer
@comms_38 = global { i64, i1, i32 } zeroinitializer
@comms_39 = global { i64, i1, i32 } zeroinitializer
@comms_40 = global { i64, i1, i32 } zeroinitializer
@comms_41 = global { i64, i1, i32 } zeroinitializer
@comms_42 = global { i64, i1, i32 } zeroinitializer
@comms_43 = global { i1, i1, i32 } zeroinitializer
@comms_44 = global { i1, i1, i32 } zeroinitializer
@comms_45 = global { i1, i1, i32 } zeroinitializer
@comms_46 = global { i1, i1, i32 } zeroinitializer
@comms_47 = global { i1, i1, i32 } zeroinitializer
@return_struct = global { i1, i1, i32 } zeroinitializer
@__const.main.a = dso_local constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b = dso_local constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str = dso_local constant [4 x i8] c"%f \00", align 1
@funs = global [2 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1]

; Function Attrs: nounwind ssp uwtable
define void @multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture) local_unnamed_addr #0 {
  br label %7

; <label>:7:                                      ; preds = %41, %6
  %8 = phi i64 [ 0, %6 ], [ %42, %41 ], !partition !3, !start !3, !end !3
  br label %9

; <label>:9:                                      ; preds = %38, %7
  %10 = phi i64 [ 0, %7 ], [ %39, %38 ], !partition !4, !start !5, !end !5
  %11 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %10, !partition !3, !start !4, !end !6
  store double 0.000000e+00, double* %11, align 8, !tbaa !7, !partition !3, !start !6, !end !5
  %12 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %10, !partition !3, !start !5, !end !11
  store double 0.000000e+00, double* %12, align 8, !tbaa !7, !partition !3, !start !11, !end !12
  %13 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %10, !partition !4, !start !4, !end !6
  store double 0.000000e+00, double* %13, align 8, !tbaa !7, !partition !4, !start !6, !end !5
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %14 ], !partition !3, !start !13, !end !13
  %16 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %15, !partition !4, !start !5, !end !11
  %17 = load double, double* %16, align 8, !tbaa !7, !partition !4, !start !14, !end !15
  %18 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %15, i64 %10, !partition !3, !start !16, !end !13
  %19 = load double, double* %18, align 8, !tbaa !7, !partition !3, !start !17, !end !18
  %20 = fmul double %17, %19, !partition !4, !start !19, !end !20
  %21 = tail call double @llvm.sqrt.f64(double %20), !partition !3, !start !18, !end !21
  %22 = load double, double* %11, align 8, !tbaa !7, !partition !3, !start !6, !end !5
  %23 = fadd double %22, %21, !partition !4, !start !11, !end !19
  store double %23, double* %11, align 8, !tbaa !7, !partition !3, !start !11, !end !12
  %24 = load double, double* %16, align 8, !tbaa !7, !partition !4, !start !15, !end !21
  %25 = tail call double @llvm.sqrt.f64(double %24), !partition !4, !start !20, !end !22
  %26 = load double, double* %18, align 8, !tbaa !7, !partition !3, !start !23, !end !17
  %27 = fmul double %25, %26, !partition !3, !start !3, !end !24
  %28 = load double, double* %12, align 8, !tbaa !7, !partition !3, !start !12, !end !19
  %29 = fadd double %28, %27, !partition !4, !start !24, !end !6
  store double %29, double* %12, align 8, !tbaa !7, !partition !3, !start !21, !end !25
  %30 = load double, double* %16, align 8, !tbaa !7, !partition !4, !start !18, !end !14
  %31 = load double, double* %18, align 8, !tbaa !7, !partition !3, !start !13, !end !23
  %32 = tail call double @llvm.sqrt.f64(double %31), !partition !3, !start !5, !end !11
  %33 = fmul double %30, %32, !partition !3, !start !24, !end !6
  %34 = load double, double* %13, align 8, !tbaa !7, !partition !4, !start !17, !end !18
  %35 = fadd double %34, %33, !partition !4, !start !3, !end !24
  store double %35, double* %13, align 8, !tbaa !7, !partition !4, !start !6, !end !5
  %36 = add nuw nsw i64 %15, 1, !partition !4, !start !22, !end !17
  %37 = icmp eq i64 %36, 3, !partition !3, !start !19, !end !16
  br i1 %37, label %38, label %14

; <label>:38:                                     ; preds = %14
  %39 = add nuw nsw i64 %10, 1, !partition !3, !start !3, !end !26
  %40 = icmp eq i64 %39, 3, !partition !4, !start !3, !end !26
  br i1 %40, label %41, label %9

; <label>:41:                                     ; preds = %38
  %42 = add nuw nsw i64 %8, 1, !partition !3, !start !4, !end !6
  %43 = icmp eq i64 %42, 3, !partition !4, !start !3, !end !26
  br i1 %43, label %44, label %7

; <label>:44:                                     ; preds = %59, %41
  %45 = phi i64 [ %60, %59 ], [ 0, %41 ], !partition !3, !start !3, !end !3
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %57, %46 ], !partition !4, !start !20, !end !20
  %48 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %47, !partition !3, !start !5, !end !11
  %49 = load double, double* %48, align 8, !tbaa !7, !partition !3, !start !12, !end !19
  %50 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %47, !partition !4, !start !5, !end !11
  %51 = load double, double* %50, align 8, !tbaa !7, !partition !4, !start !20, !end !16
  %52 = fadd double %49, %51, !partition !4, !start !3, !end !24
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %47, !partition !3, !start !24, !end !5
  %54 = load double, double* %53, align 8, !tbaa !7, !partition !3, !start !11, !end !12
  %55 = fadd double %52, %54, !partition !3, !start !3, !end !24
  %56 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %47, !partition !4, !start !24, !end !5
  store double %55, double* %56, align 8, !tbaa !7, !partition !4, !start !11, !end !12
  %57 = add nuw nsw i64 %47, 1, !partition !3, !start !19, !end !16
  %58 = icmp eq i64 %57, 3, !partition !4, !start !12, !end !20
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %46
  %60 = add nuw nsw i64 %45, 1, !partition !3, !start !4, !end !6
  %61 = icmp eq i64 %60, 3, !partition !4, !start !3, !end !26
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
  call void @replace_multiply([3 x double]* nonnull %11, [3 x double]* nonnull %12, [3 x double]* nonnull %13, [3 x double]* nonnull %14, [3 x double]* nonnull %15, [3 x double]* nonnull %16)
  br label %17

; <label>:17:                                     ; preds = %26, %2
  %18 = phi i64 [ 0, %2 ], [ %28, %26 ]
  br label %19

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %24, %19 ]
  %21 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %6, i64 0, i64 %18, i64 %20
  %22 = load double, double* %21, align 8, !tbaa !7
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

define void @replace_multiply([3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %6 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %6)
  %send_alloca = alloca [3 x double]*, !reason !27
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !27
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !27
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %6), !reason !27
  %send_alloca1 = alloca [3 x double]*, !reason !27
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !27
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !27
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i8* %6), !reason !27
  %send_alloca3 = alloca [3 x double]*, !reason !27
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !27
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !27
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_4 to i64), i8* %6), !reason !27
  %send_alloca5 = alloca [3 x double]*, !reason !27
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !27
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !27
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_6 to i64), i8* %6), !reason !27
  %send_alloca7 = alloca [3 x double]*, !reason !27
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !27
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !27
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i8* %6), !reason !27
  %send_alloca9 = alloca [3 x double]*, !reason !27
  store [3 x double]* %3, [3 x double]** %send_alloca9, !reason !27
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !27
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_28 to i64), i8* %6), !reason !27
  %send_alloca11 = alloca [3 x double]*, !reason !27
  store [3 x double]* %4, [3 x double]** %send_alloca11, !reason !27
  %send_cast12 = bitcast [3 x double]** %send_alloca11 to i8*, !reason !27
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_31 to i64), i8* %6), !reason !27
  %send_alloca13 = alloca [3 x double]*, !reason !27
  store [3 x double]* %5, [3 x double]** %send_alloca13, !reason !27
  %send_cast14 = bitcast [3 x double]** %send_alloca13 to i8*, !reason !27
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast14, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_34 to i64), i8* %6), !reason !27
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

define void @multiply_0(i8*) {
entry:
  %argument75 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_31 to i64), i8* %0), !reason !27
  %bitcast76 = bitcast i8* %argument75 to [3 x double]**, !reason !27
  %receive_load77 = load [3 x double]*, [3 x double]** %bitcast76, !reason !27
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_31 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !27
  %argument22 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i8* %0), !reason !27
  %bitcast23 = bitcast i8* %argument22 to [3 x double]**, !reason !27
  %receive_load24 = load [3 x double]*, [3 x double]** %bitcast23, !reason !27
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !27
  %argument11 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i8* %0), !reason !27
  %bitcast12 = bitcast i8* %argument11 to [3 x double]**, !reason !27
  %receive_load13 = load [3 x double]*, [3 x double]** %bitcast12, !reason !27
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !27
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %0), !reason !27
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !27
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !27
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !27
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %15, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i8* %0), !reason !28
  %bitcast9 = bitcast i8* %receive to i64*, !reason !28
  %receive_load10 = load i64, i64* %bitcast9, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %receive_load10, !partition !3, !start !4, !end !6
  store double 0.000000e+00, double* %1, align 8, !tbaa !7, !partition !3, !start !6, !end !5
  %receive14 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !28
  %bitcast15 = bitcast i8* %receive14 to i64*, !reason !28
  %receive_load16 = load i64, i64* %bitcast15, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load13, i64 %new_phi, i64 %receive_load16, !partition !3, !start !5, !end !11
  store double 0.000000e+00, double* %2, align 8, !tbaa !7, !partition !3, !start !11, !end !12
  %send_alloca = alloca i64, !reason !28
  store i64 %new_phi, i64* %send_alloca, !reason !28
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_5 to i64), i8* %0), !reason !28
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi17 = phi i64 [ 0, %l1 ], [ %receive_load98, %l2 ]
  %send_alloca18 = alloca i64, !reason !28
  store i64 %new_phi, i64* %send_alloca18, !reason !28
  %send_cast19 = bitcast i64* %send_alloca18 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast19, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !28
  %send_alloca20 = alloca i64, !reason !28
  store i64 %new_phi17, i64* %send_alloca20, !reason !28
  %send_cast21 = bitcast i64* %send_alloca20 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast21, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !28
  %receive25 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !28
  %bitcast26 = bitcast i8* %receive25 to i64*, !reason !28
  %receive_load27 = load i64, i64* %bitcast26, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load24, i64 %new_phi17, i64 %receive_load27, !partition !3, !start !16, !end !13
  %4 = load double, double* %3, align 8, !tbaa !7, !partition !3, !start !17, !end !18
  %send_alloca28 = alloca double, !reason !28
  store double %4, double* %send_alloca28, !reason !28
  %send_cast29 = bitcast double* %send_alloca28 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast29, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !28
  %receive30 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i8* %0), !reason !28
  %bitcast31 = bitcast i8* %receive30 to double*, !reason !28
  %receive_load32 = load double, double* %bitcast31, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %5 = tail call double @llvm.sqrt.f64(double %receive_load32), !partition !3, !start !18, !end !21
  %6 = load double, double* %1, align 8, !tbaa !7, !partition !3, !start !6, !end !5
  %send_alloca33 = alloca double, !reason !28
  store double %6, double* %send_alloca33, !reason !28
  %send_cast34 = bitcast double* %send_alloca33 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast34, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i8* %0), !reason !28
  %send_alloca35 = alloca double, !reason !28
  store double %5, double* %send_alloca35, !reason !28
  %send_cast36 = bitcast double* %send_alloca35 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast36, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !28
  %receive37 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i8* %0), !reason !28
  %bitcast38 = bitcast i8* %receive37 to double*, !reason !28
  %receive_load39 = load double, double* %bitcast38, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  store double %receive_load39, double* %1, align 8, !tbaa !7, !partition !3, !start !11, !end !12
  %7 = load double, double* %3, align 8, !tbaa !7, !partition !3, !start !23, !end !17
  %receive40 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !28
  %bitcast41 = bitcast i8* %receive40 to double*, !reason !28
  %receive_load42 = load double, double* %bitcast41, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %8 = fmul double %receive_load42, %7, !partition !3, !start !3, !end !24
  %9 = load double, double* %2, align 8, !tbaa !7, !partition !3, !start !12, !end !19
  %send_alloca43 = alloca double, !reason !28
  store double %9, double* %send_alloca43, !reason !28
  %send_cast44 = bitcast double* %send_alloca43 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast44, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i8* %0), !reason !28
  %send_alloca45 = alloca double, !reason !28
  store double %8, double* %send_alloca45, !reason !28
  %send_cast46 = bitcast double* %send_alloca45 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast46, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i8* %0), !reason !28
  %receive47 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i8* %0), !reason !28
  %bitcast48 = bitcast i8* %receive47 to double*, !reason !28
  %receive_load49 = load double, double* %bitcast48, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  store double %receive_load49, double* %2, align 8, !tbaa !7, !partition !3, !start !21, !end !25
  %10 = load double, double* %3, align 8, !tbaa !7, !partition !3, !start !13, !end !23
  %11 = tail call double @llvm.sqrt.f64(double %10), !partition !3, !start !5, !end !11
  %receive50 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i8* %0), !reason !28
  %bitcast51 = bitcast i8* %receive50 to double*, !reason !28
  %receive_load52 = load double, double* %bitcast51, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %12 = fmul double %receive_load52, %11, !partition !3, !start !24, !end !6
  %send_alloca53 = alloca double, !reason !28
  store double %12, double* %send_alloca53, !reason !28
  %send_cast54 = bitcast double* %send_alloca53 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast54, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i8* %0), !reason !28
  %send_alloca55 = alloca i64, !reason !28
  store i64 %new_phi17, i64* %send_alloca55, !reason !28
  %send_cast56 = bitcast i64* %send_alloca55 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast56, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i8* %0), !reason !28
  %receive57 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i8* %0), !reason !28
  %bitcast58 = bitcast i8* %receive57 to i64*, !reason !28
  %receive_load59 = load i64, i64* %bitcast58, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %13 = icmp eq i64 %receive_load59, 3, !partition !3, !start !19, !end !16
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i8* %0), !reason !29
  %bitcast97 = bitcast i8* %repair_phi to i64*, !reason !29
  %receive_load98 = load i64, i64* %bitcast97, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %send_alloca101 = alloca i1, !reason !30
  store i1 %13, i1* %send_alloca101, !reason !30
  %send_cast102 = bitcast i1* %send_alloca101 to i8*, !reason !30
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast102, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_43 to i64), i8* %0), !reason !30
  br i1 %13, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive60 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i8* %0), !reason !28
  %bitcast61 = bitcast i8* %receive60 to i64*, !reason !28
  %receive_load62 = load i64, i64* %bitcast61, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %14 = add nuw nsw i64 %receive_load62, 1, !partition !3, !start !3, !end !26
  %send_alloca63 = alloca i64, !reason !28
  store i64 %14, i64* %send_alloca63, !reason !28
  %send_cast64 = bitcast i64* %send_alloca63 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast64, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i8* %0), !reason !28
  %send_alloca95 = alloca i64, !reason !31
  store i64 %14, i64* %send_alloca95, !reason !31
  %send_cast96 = bitcast i64* %send_alloca95 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast96, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_40 to i64), i8* %0), !reason !31
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_44 to i64), i8* %0), !reason !29
  %bitcast103 = bitcast i8* %broadcast to i1*, !reason !29
  %receive_load104 = load i1, i1* %bitcast103, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_44 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !29
  br i1 %receive_load104, label %l4, label %l1

l4:                                               ; preds = %l3
  %15 = add nuw nsw i64 %new_phi, 1, !partition !3, !start !4, !end !6
  %send_alloca65 = alloca i64, !reason !28
  store i64 %15, i64* %send_alloca65, !reason !28
  %send_cast66 = bitcast i64* %send_alloca65 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast66, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i8* %0), !reason !28
  %broadcast105 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_45 to i64), i8* %0), !reason !29
  %bitcast106 = bitcast i8* %broadcast105 to i1*, !reason !29
  %receive_load107 = load i1, i1* %bitcast106, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_45 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !29
  br i1 %receive_load107, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  %new_phi67 = phi i64 [ %22, %l7 ], [ 0, %l4 ]
  br label %l6

l6:                                               ; preds = %l6, %l5
  %receive68 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i8* %0), !reason !28
  %bitcast69 = bitcast i8* %receive68 to i64*, !reason !28
  %receive_load70 = load i64, i64* %bitcast69, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %16 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi67, i64 %receive_load70, !partition !3, !start !5, !end !11
  %17 = load double, double* %16, align 8, !tbaa !7, !partition !3, !start !12, !end !19
  %send_alloca71 = alloca i64, !reason !28
  store i64 %new_phi67, i64* %send_alloca71, !reason !28
  %send_cast72 = bitcast i64* %send_alloca71 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast72, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i8* %0), !reason !28
  %send_alloca73 = alloca double, !reason !28
  store double %17, double* %send_alloca73, !reason !28
  %send_cast74 = bitcast double* %send_alloca73 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast74, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_30 to i64), i8* %0), !reason !28
  %receive78 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i8* %0), !reason !28
  %bitcast79 = bitcast i8* %receive78 to i64*, !reason !28
  %receive_load80 = load i64, i64* %bitcast79, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %18 = getelementptr inbounds [3 x double], [3 x double]* %receive_load77, i64 %new_phi67, i64 %receive_load80, !partition !3, !start !24, !end !5
  %19 = load double, double* %18, align 8, !tbaa !7, !partition !3, !start !11, !end !12
  %receive81 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_33 to i64), i8* %0), !reason !28
  %bitcast82 = bitcast i8* %receive81 to double*, !reason !28
  %receive_load83 = load double, double* %bitcast82, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_33 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %20 = fadd double %receive_load83, %19, !partition !3, !start !3, !end !24
  %send_alloca84 = alloca i64, !reason !28
  store i64 %new_phi67, i64* %send_alloca84, !reason !28
  %send_cast85 = bitcast i64* %send_alloca84 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast85, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_35 to i64), i8* %0), !reason !28
  %send_alloca86 = alloca double, !reason !28
  store double %20, double* %send_alloca86, !reason !28
  %send_cast87 = bitcast double* %send_alloca86 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast87, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_36 to i64), i8* %0), !reason !28
  %receive88 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i8* %0), !reason !28
  %bitcast89 = bitcast i8* %receive88 to i64*, !reason !28
  %receive_load90 = load i64, i64* %bitcast89, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %21 = add nuw nsw i64 %receive_load90, 1, !partition !3, !start !19, !end !16
  %send_alloca91 = alloca i64, !reason !28
  store i64 %21, i64* %send_alloca91, !reason !28
  %send_cast92 = bitcast i64* %send_alloca91 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast92, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i8* %0), !reason !28
  %send_alloca99 = alloca i64, !reason !31
  store i64 %21, i64* %send_alloca99, !reason !31
  %send_cast100 = bitcast i64* %send_alloca99 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast100, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i8* %0), !reason !31
  %broadcast108 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_46 to i64), i8* %0), !reason !29
  %bitcast109 = bitcast i8* %broadcast108 to i1*, !reason !29
  %receive_load110 = load i1, i1* %bitcast109, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_46 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !29
  br i1 %receive_load110, label %l7, label %l6

l7:                                               ; preds = %l6
  %22 = add nuw nsw i64 %new_phi67, 1, !partition !3, !start !4, !end !6
  %send_alloca93 = alloca i64, !reason !28
  store i64 %22, i64* %send_alloca93, !reason !28
  %send_cast94 = bitcast i64* %send_alloca93 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast94, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i8* %0), !reason !28
  %broadcast111 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i8* %0), !reason !29
  %bitcast112 = bitcast i8* %broadcast111 to i1*, !reason !29
  %receive_load113 = load i1, i1* %bitcast112, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !29
  br i1 %receive_load113, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

define void @multiply_1(i8*) {
entry:
  %argument81 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_34 to i64), i8* %0), !reason !27
  %bitcast82 = bitcast i8* %argument81 to [3 x double]**, !reason !27
  %receive_load83 = load [3 x double]*, [3 x double]** %bitcast82, !reason !27
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_34 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !27
  %argument68 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_28 to i64), i8* %0), !reason !27
  %bitcast69 = bitcast i8* %argument68 to [3 x double]**, !reason !27
  %receive_load70 = load [3 x double]*, [3 x double]** %bitcast69, !reason !27
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_28 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !27
  %argument13 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_6 to i64), i8* %0), !reason !27
  %bitcast14 = bitcast i8* %argument13 to [3 x double]**, !reason !27
  %receive_load15 = load [3 x double]*, [3 x double]** %bitcast14, !reason !27
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_6 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !27
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_4 to i64), i8* %0), !reason !27
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !27
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !27
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_4 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !27
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi = phi i64 [ 0, %l ], [ %receive_load99, %l3 ]
  %send_alloca = alloca i64, !reason !28
  store i64 %new_phi, i64* %send_alloca, !reason !28
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i8* %0), !reason !28
  %send_alloca9 = alloca i64, !reason !28
  store i64 %new_phi, i64* %send_alloca9, !reason !28
  %send_cast10 = bitcast i64* %send_alloca9 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !28
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_5 to i64), i8* %0), !reason !28
  %bitcast11 = bitcast i8* %receive to i64*, !reason !28
  %receive_load12 = load i64, i64* %bitcast11, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_5 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load12, i64 %new_phi, !partition !4, !start !4, !end !6
  store double 0.000000e+00, double* %1, align 8, !tbaa !7, !partition !4, !start !6, !end !5
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive16 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !28
  %bitcast17 = bitcast i8* %receive16 to i64*, !reason !28
  %receive_load18 = load i64, i64* %bitcast17, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %receive19 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !28
  %bitcast20 = bitcast i8* %receive19 to i64*, !reason !28
  %receive_load21 = load i64, i64* %bitcast20, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load15, i64 %receive_load18, i64 %receive_load21, !partition !4, !start !5, !end !11
  %3 = load double, double* %2, align 8, !tbaa !7, !partition !4, !start !14, !end !15
  %send_alloca22 = alloca i64, !reason !28
  store i64 %new_phi, i64* %send_alloca22, !reason !28
  %send_cast23 = bitcast i64* %send_alloca22 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast23, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !28
  %receive24 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !28
  %bitcast25 = bitcast i8* %receive24 to double*, !reason !28
  %receive_load26 = load double, double* %bitcast25, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %4 = fmul double %3, %receive_load26, !partition !4, !start !19, !end !20
  %send_alloca27 = alloca double, !reason !28
  store double %4, double* %send_alloca27, !reason !28
  %send_cast28 = bitcast double* %send_alloca27 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast28, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i8* %0), !reason !28
  %receive29 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i8* %0), !reason !28
  %bitcast30 = bitcast i8* %receive29 to double*, !reason !28
  %receive_load31 = load double, double* %bitcast30, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %receive32 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !28
  %bitcast33 = bitcast i8* %receive32 to double*, !reason !28
  %receive_load34 = load double, double* %bitcast33, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %5 = fadd double %receive_load31, %receive_load34, !partition !4, !start !11, !end !19
  %send_alloca35 = alloca double, !reason !28
  store double %5, double* %send_alloca35, !reason !28
  %send_cast36 = bitcast double* %send_alloca35 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast36, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i8* %0), !reason !28
  %6 = load double, double* %2, align 8, !tbaa !7, !partition !4, !start !15, !end !21
  %7 = tail call double @llvm.sqrt.f64(double %6), !partition !4, !start !20, !end !22
  %send_alloca37 = alloca double, !reason !28
  store double %7, double* %send_alloca37, !reason !28
  %send_cast38 = bitcast double* %send_alloca37 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast38, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !28
  %receive39 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i8* %0), !reason !28
  %bitcast40 = bitcast i8* %receive39 to double*, !reason !28
  %receive_load41 = load double, double* %bitcast40, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %receive42 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i8* %0), !reason !28
  %bitcast43 = bitcast i8* %receive42 to double*, !reason !28
  %receive_load44 = load double, double* %bitcast43, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %8 = fadd double %receive_load41, %receive_load44, !partition !4, !start !24, !end !6
  %send_alloca45 = alloca double, !reason !28
  store double %8, double* %send_alloca45, !reason !28
  %send_cast46 = bitcast double* %send_alloca45 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast46, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i8* %0), !reason !28
  %9 = load double, double* %2, align 8, !tbaa !7, !partition !4, !start !18, !end !14
  %send_alloca47 = alloca double, !reason !28
  store double %9, double* %send_alloca47, !reason !28
  %send_cast48 = bitcast double* %send_alloca47 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast48, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i8* %0), !reason !28
  %10 = load double, double* %1, align 8, !tbaa !7, !partition !4, !start !17, !end !18
  %receive49 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i8* %0), !reason !28
  %bitcast50 = bitcast i8* %receive49 to double*, !reason !28
  %receive_load51 = load double, double* %bitcast50, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %11 = fadd double %10, %receive_load51, !partition !4, !start !3, !end !24
  store double %11, double* %1, align 8, !tbaa !7, !partition !4, !start !6, !end !5
  %receive52 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i8* %0), !reason !28
  %bitcast53 = bitcast i8* %receive52 to i64*, !reason !28
  %receive_load54 = load i64, i64* %bitcast53, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %12 = add nuw nsw i64 %receive_load54, 1, !partition !4, !start !22, !end !17
  %send_alloca55 = alloca i64, !reason !28
  store i64 %12, i64* %send_alloca55, !reason !28
  %send_cast56 = bitcast i64* %send_alloca55 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast56, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i8* %0), !reason !28
  %send_alloca100 = alloca i64, !reason !31
  store i64 %12, i64* %send_alloca100, !reason !31
  %send_cast101 = bitcast i64* %send_alloca100 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast101, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i8* %0), !reason !31
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_43 to i64), i8* %0), !reason !29
  %bitcast105 = bitcast i8* %broadcast to i1*, !reason !29
  %receive_load106 = load i1, i1* %bitcast105, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_43 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !29
  br i1 %receive_load106, label %l3, label %l2

l3:                                               ; preds = %l2
  %send_alloca57 = alloca i64, !reason !28
  store i64 %new_phi, i64* %send_alloca57, !reason !28
  %send_cast58 = bitcast i64* %send_alloca57 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast58, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i8* %0), !reason !28
  %receive59 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i8* %0), !reason !28
  %bitcast60 = bitcast i8* %receive59 to i64*, !reason !28
  %receive_load61 = load i64, i64* %bitcast60, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %13 = icmp eq i64 %receive_load61, 3, !partition !4, !start !3, !end !26
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_40 to i64), i8* %0), !reason !29
  %bitcast98 = bitcast i8* %repair_phi to i64*, !reason !29
  %receive_load99 = load i64, i64* %bitcast98, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_40 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %send_alloca107 = alloca i1, !reason !30
  store i1 %13, i1* %send_alloca107, !reason !30
  %send_cast108 = bitcast i1* %send_alloca107 to i8*, !reason !30
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast108, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_44 to i64), i8* %0), !reason !30
  br i1 %13, label %l4, label %l1

l4:                                               ; preds = %l3
  %receive62 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i8* %0), !reason !28
  %bitcast63 = bitcast i8* %receive62 to i64*, !reason !28
  %receive_load64 = load i64, i64* %bitcast63, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %14 = icmp eq i64 %receive_load64, 3, !partition !4, !start !3, !end !26
  %send_alloca109 = alloca i1, !reason !30
  store i1 %14, i1* %send_alloca109, !reason !30
  %send_cast110 = bitcast i1* %send_alloca109 to i8*, !reason !30
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast110, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_45 to i64), i8* %0), !reason !30
  br i1 %14, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %new_phi65 = phi i64 [ 0, %l5 ], [ %receive_load104, %l6 ]
  %send_alloca66 = alloca i64, !reason !28
  store i64 %new_phi65, i64* %send_alloca66, !reason !28
  %send_cast67 = bitcast i64* %send_alloca66 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast67, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i8* %0), !reason !28
  %receive71 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i8* %0), !reason !28
  %bitcast72 = bitcast i8* %receive71 to i64*, !reason !28
  %receive_load73 = load i64, i64* %bitcast72, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %15 = getelementptr inbounds [3 x double], [3 x double]* %receive_load70, i64 %receive_load73, i64 %new_phi65, !partition !4, !start !5, !end !11
  %16 = load double, double* %15, align 8, !tbaa !7, !partition !4, !start !20, !end !16
  %receive74 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_30 to i64), i8* %0), !reason !28
  %bitcast75 = bitcast i8* %receive74 to double*, !reason !28
  %receive_load76 = load double, double* %bitcast75, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_30 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  %17 = fadd double %receive_load76, %16, !partition !4, !start !3, !end !24
  %send_alloca77 = alloca i64, !reason !28
  store i64 %new_phi65, i64* %send_alloca77, !reason !28
  %send_cast78 = bitcast i64* %send_alloca77 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast78, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i8* %0), !reason !28
  %send_alloca79 = alloca double, !reason !28
  store double %17, double* %send_alloca79, !reason !28
  %send_cast80 = bitcast double* %send_alloca79 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast80, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_33 to i64), i8* %0), !reason !28
  %receive84 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_35 to i64), i8* %0), !reason !28
  %bitcast85 = bitcast i8* %receive84 to i64*, !reason !28
  %receive_load86 = load i64, i64* %bitcast85, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_35 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %18 = getelementptr inbounds [3 x double], [3 x double]* %receive_load83, i64 %receive_load86, i64 %new_phi65, !partition !4, !start !24, !end !5
  %receive87 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_36 to i64), i8* %0), !reason !28
  %bitcast88 = bitcast i8* %receive87 to double*, !reason !28
  %receive_load89 = load double, double* %bitcast88, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_36 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !28
  store double %receive_load89, double* %18, align 8, !tbaa !7, !partition !4, !start !11, !end !12
  %send_alloca90 = alloca i64, !reason !28
  store i64 %new_phi65, i64* %send_alloca90, !reason !28
  %send_cast91 = bitcast i64* %send_alloca90 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast91, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i8* %0), !reason !28
  %receive92 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i8* %0), !reason !28
  %bitcast93 = bitcast i8* %receive92 to i64*, !reason !28
  %receive_load94 = load i64, i64* %bitcast93, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %19 = icmp eq i64 %receive_load94, 3, !partition !4, !start !12, !end !20
  %repair_phi102 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i8* %0), !reason !29
  %bitcast103 = bitcast i8* %repair_phi102 to i64*, !reason !29
  %receive_load104 = load i64, i64* %bitcast103, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %send_alloca111 = alloca i1, !reason !30
  store i1 %19, i1* %send_alloca111, !reason !30
  %send_cast112 = bitcast i1* %send_alloca111 to i8*, !reason !30
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast112, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_46 to i64), i8* %0), !reason !30
  br i1 %19, label %l7, label %l6

l7:                                               ; preds = %l6
  %receive95 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i8* %0), !reason !28
  %bitcast96 = bitcast i8* %receive95 to i64*, !reason !28
  %receive_load97 = load i64, i64* %bitcast96, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !28
  %20 = icmp eq i64 %receive_load97, 3, !partition !4, !start !3, !end !26
  %send_alloca113 = alloca i1, !reason !30
  store i1 %20, i1* %send_alloca113, !reason !30
  %send_cast114 = bitcast i1* %send_alloca113 to i8*, !reason !30
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast114, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i8* %0), !reason !30
  br i1 %20, label %l8, label %l5

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
  %9 = load volatile i8, i8* %7, align 1, !tbaa !32
  store volatile i8 %9, i8* %8, align 1, !tbaa !32
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !33
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !36
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
  %16 = load i64, i64* %15, align 8, !tbaa !37
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !33
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !36
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !37
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
  %10 = load volatile i8, i8* %8, align 1, !tbaa !32
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !32
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !32
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
  store volatile i8 0, i8* %6, align 1, !tbaa !32
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

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"0"}
!4 = !{!"1"}
!5 = !{!"5"}
!6 = !{!"4"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"8"}
!12 = !{!"9"}
!13 = !{!"16"}
!14 = !{!"20"}
!15 = !{!"21"}
!16 = !{!"13"}
!17 = !{!"18"}
!18 = !{!"19"}
!19 = !{!"10"}
!20 = !{!"12"}
!21 = !{!"22"}
!22 = !{!"15"}
!23 = !{!"17"}
!24 = !{!"2"}
!25 = !{!"23"}
!26 = !{!"3"}
!27 = !{!"replace argument"}
!28 = !{!"replace mapped op"}
!29 = !{!"receive"}
!30 = !{!"broadcast"}
!31 = !{!"repair_phi"}
!32 = !{!9, !9, i64 0}
!33 = !{!34, !35, i64 0}
!34 = !{!"Closure", !35, i64 0, !35, i64 8}
!35 = !{!"any pointer", !9, i64 0}
!36 = !{!34, !35, i64 8}
!37 = !{!35, !35, i64 0}
