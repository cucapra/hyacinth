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
@comms_2 = global { double*, i1, i32 } zeroinitializer
@arg_3 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_4 = global { i64, i1, i32 } zeroinitializer
@comms_5 = global { double*, i1, i32 } zeroinitializer
@arg_6 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_7 = global { i64, i1, i32 } zeroinitializer
@comms_8 = global { double*, i1, i32 } zeroinitializer
@arg_9 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_10 = global { i64, i1, i32 } zeroinitializer
@arg_11 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_12 = global { i64, i1, i32 } zeroinitializer
@comms_13 = global { i64, i1, i32 } zeroinitializer
@comms_14 = global { double, i1, i32 } zeroinitializer
@comms_15 = global { double*, i1, i32 } zeroinitializer
@comms_16 = global { double, i1, i32 } zeroinitializer
@comms_17 = global { double*, i1, i32 } zeroinitializer
@comms_18 = global { double, i1, i32 } zeroinitializer
@comms_19 = global { double, i1, i32 } zeroinitializer
@comms_20 = global { double*, i1, i32 } zeroinitializer
@comms_21 = global { double, i1, i32 } zeroinitializer
@comms_22 = global { double, i1, i32 } zeroinitializer
@comms_23 = global { double, i1, i32 } zeroinitializer
@comms_24 = global { double*, i1, i32 } zeroinitializer
@comms_25 = global { double*, i1, i32 } zeroinitializer
@comms_26 = global { double*, i1, i32 } zeroinitializer
@comms_27 = global { i64, i1, i32 } zeroinitializer
@comms_28 = global { i64, i1, i32 } zeroinitializer
@comms_29 = global { i64, i1, i32 } zeroinitializer
@comms_30 = global { double*, i1, i32 } zeroinitializer
@arg_31 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_32 = global { i64, i1, i32 } zeroinitializer
@comms_33 = global { double, i1, i32 } zeroinitializer
@comms_34 = global { double, i1, i32 } zeroinitializer
@arg_35 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_36 = global { i64, i1, i32 } zeroinitializer
@comms_37 = global { double, i1, i32 } zeroinitializer
@arg_38 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_39 = global { i64, i1, i32 } zeroinitializer
@comms_40 = global { double, i1, i32 } zeroinitializer
@comms_41 = global { double*, i1, i32 } zeroinitializer
@comms_42 = global { i64, i1, i32 } zeroinitializer
@comms_43 = global { i64, i1, i32 } zeroinitializer
@comms_44 = global { i64, i1, i32 } zeroinitializer
@comms_45 = global { i64, i1, i32 } zeroinitializer
@comms_46 = global { i64, i1, i32 } zeroinitializer
@comms_47 = global { i1, i1, i32 } zeroinitializer
@comms_48 = global { i1, i1, i32 } zeroinitializer
@comms_49 = global { i1, i1, i32 } zeroinitializer
@comms_50 = global { i1, i1, i32 } zeroinitializer
@comms_51 = global { i1, i1, i32 } zeroinitializer
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
  %11 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %10, !partition !4, !start !5, !end !6
  store double 0.000000e+00, double* %11, align 8, !tbaa !7, !partition !3, !start !3, !end !4
  %12 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %10, !partition !4, !start !11, !end !5
  store double 0.000000e+00, double* %12, align 8, !tbaa !7, !partition !3, !start !4, !end !11
  %13 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %10, !partition !4, !start !4, !end !11
  store double 0.000000e+00, double* %13, align 8, !tbaa !7, !partition !3, !start !11, !end !5
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %14 ], !partition !4, !start !3, !end !3
  %16 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %15, !partition !3, !start !12, !end !13
  %17 = load double, double* %16, align 8, !tbaa !7, !partition !3, !start !11, !end !5
  %18 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %15, i64 %10, !partition !3, !start !14, !end !15
  %19 = load double, double* %18, align 8, !tbaa !7, !partition !3, !start !5, !end !6
  %20 = fmul double %17, %19, !partition !3, !start !16, !end !17
  %21 = tail call double @llvm.sqrt.f64(double %20), !partition !4, !start !18, !end !19
  %22 = load double, double* %11, align 8, !tbaa !7, !partition !3, !start !20, !end !21
  %23 = fadd double %22, %21, !partition !3, !start !22, !end !23
  store double %23, double* %11, align 8, !tbaa !7, !partition !3, !start !24, !end !25
  %24 = load double, double* %16, align 8, !tbaa !7, !partition !3, !start !3, !end !4
  %25 = tail call double @llvm.sqrt.f64(double %24), !partition !4, !start !11, !end !18
  %26 = load double, double* %18, align 8, !tbaa !7, !partition !3, !start !26, !end !20
  %27 = fmul double %25, %26, !partition !3, !start !27, !end !28
  %28 = load double, double* %12, align 8, !tbaa !7, !partition !3, !start !21, !end !29
  %29 = fadd double %28, %27, !partition !4, !start !22, !end !23
  store double %29, double* %12, align 8, !tbaa !7, !partition !3, !start !30, !end !27
  %30 = load double, double* %16, align 8, !tbaa !7, !partition !3, !start !31, !end !26
  %31 = load double, double* %18, align 8, !tbaa !7, !partition !3, !start !4, !end !11
  %32 = tail call double @llvm.sqrt.f64(double %31), !partition !3, !start !25, !end !14
  %33 = fmul double %30, %32, !partition !3, !start !28, !end !32
  %34 = load double, double* %13, align 8, !tbaa !7, !partition !3, !start !29, !end !16
  %35 = fadd double %34, %33, !partition !3, !start !19, !end !22
  store double %35, double* %13, align 8, !tbaa !7, !partition !3, !start !6, !end !31
  %36 = add nuw nsw i64 %15, 1, !partition !3, !start !17, !end !24
  %37 = icmp eq i64 %36, 3, !partition !3, !start !15, !end !12
  br i1 %37, label %38, label %14

; <label>:38:                                     ; preds = %14
  %39 = add nuw nsw i64 %10, 1, !partition !3, !start !3, !end !3
  %40 = icmp eq i64 %39, 3, !partition !3, !start !3, !end !3
  br i1 %40, label %41, label %9

; <label>:41:                                     ; preds = %38
  %42 = add nuw nsw i64 %8, 1, !partition !3, !start !3, !end !3
  %43 = icmp eq i64 %42, 3, !partition !3, !start !3, !end !3
  br i1 %43, label %44, label %7

; <label>:44:                                     ; preds = %59, %41
  %45 = phi i64 [ %60, %59 ], [ 0, %41 ], !partition !3, !start !3, !end !3
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %57, %46 ], !partition !4, !start !3, !end !3
  %48 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %47, !partition !4, !start !6, !end !31
  %49 = load double, double* %48, align 8, !tbaa !7, !partition !3, !start !4, !end !11
  %50 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %47, !partition !3, !start !31, !end !26
  %51 = load double, double* %50, align 8, !tbaa !7, !partition !3, !start !3, !end !4
  %52 = fadd double %49, %51, !partition !4, !start !5, !end !6
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %47, !partition !3, !start !26, !end !20
  %54 = load double, double* %53, align 8, !tbaa !7, !partition !3, !start !11, !end !5
  %55 = fadd double %52, %54, !partition !4, !start !31, !end !26
  %56 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %47, !partition !4, !start !11, !end !5
  store double %55, double* %56, align 8, !tbaa !7, !partition !3, !start !5, !end !6
  %57 = add nuw nsw i64 %47, 1, !partition !3, !start !6, !end !31
  %58 = icmp eq i64 %57, 3, !partition !4, !start !26, !end !20
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %46
  %60 = add nuw nsw i64 %45, 1, !partition !3, !start !3, !end !3
  %61 = icmp eq i64 %60, 3, !partition !3, !start !3, !end !3
  br i1 %61, label %62, label %44

; <label>:62:                                     ; preds = %59
  ret void, !partition !3, !start !3, !end !3
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

define void @replace__p_multiply([3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %send_alloca = alloca [3 x double]*, !reason !33
  %send_alloca1 = alloca [3 x double]*, !reason !33
  %send_alloca3 = alloca [3 x double]*, !reason !33
  %send_alloca5 = alloca [3 x double]*, !reason !33
  %send_alloca7 = alloca [3 x double]*, !reason !33
  %send_alloca9 = alloca [3 x double]*, !reason !33
  %send_alloca11 = alloca [3 x double]*, !reason !33
  %send_alloca13 = alloca [3 x double]*, !reason !33
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !33
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !33
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !33
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !33
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !33
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !33
  %send_cast12 = bitcast [3 x double]** %send_alloca11 to i8*, !reason !33
  %send_cast14 = bitcast [3 x double]** %send_alloca13 to i8*, !reason !33
  %6 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %6)
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !33
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %6), !reason !33
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !33
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_3 to i64), i8* %6), !reason !33
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !33
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_6 to i64), i8* %6), !reason !33
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !33
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i8* %6), !reason !33
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !33
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_11 to i64), i8* %6), !reason !33
  store [3 x double]* %3, [3 x double]** %send_alloca9, !reason !33
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_31 to i64), i8* %6), !reason !33
  store [3 x double]* %4, [3 x double]** %send_alloca11, !reason !33
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_35 to i64), i8* %6), !reason !33
  store [3 x double]* %5, [3 x double]** %send_alloca13, !reason !33
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast14, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_38 to i64), i8* %6), !reason !33
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

define void @_p_multiply_0(i8*) {
entry:
  %send_alloca96 = alloca double, !reason !34
  %send_alloca98 = alloca i64, !reason !34
  %send_alloca109 = alloca i64, !reason !34
  %send_alloca111 = alloca i64, !reason !35
  %send_alloca113 = alloca i64, !reason !35
  %send_alloca115 = alloca i64, !reason !35
  %send_alloca117 = alloca i1, !reason !36
  %send_alloca119 = alloca i1, !reason !36
  %send_alloca121 = alloca i1, !reason !36
  %send_alloca125 = alloca i1, !reason !36
  %send_cast97 = bitcast double* %send_alloca96 to i8*, !reason !34
  %send_cast99 = bitcast i64* %send_alloca98 to i8*, !reason !34
  %send_cast110 = bitcast i64* %send_alloca109 to i8*, !reason !34
  %send_cast112 = bitcast i64* %send_alloca111 to i8*, !reason !35
  %send_cast114 = bitcast i64* %send_alloca113 to i8*, !reason !35
  %send_cast116 = bitcast i64* %send_alloca115 to i8*, !reason !35
  %send_cast118 = bitcast i1* %send_alloca117 to i8*, !reason !36
  %send_cast120 = bitcast i1* %send_alloca119 to i8*, !reason !36
  %send_cast122 = bitcast i1* %send_alloca121 to i8*, !reason !36
  %send_cast126 = bitcast i1* %send_alloca125 to i8*, !reason !36
  %argument90 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_35 to i64), i8* %0), !reason !33
  %bitcast91 = bitcast i8* %argument90 to [3 x double]**, !reason !33
  %receive_load92 = load [3 x double]*, [3 x double]** %bitcast91, !reason !33
  %send_alloca86 = alloca double, !reason !34
  %send_alloca88 = alloca double, !reason !34
  %send_cast87 = bitcast double* %send_alloca86 to i8*, !reason !34
  %send_cast89 = bitcast double* %send_alloca88 to i8*, !reason !34
  %argument80 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_31 to i64), i8* %0), !reason !33
  %bitcast81 = bitcast i8* %argument80 to [3 x double]**, !reason !33
  %receive_load82 = load [3 x double]*, [3 x double]** %bitcast81, !reason !33
  %send_alloca33 = alloca double, !reason !34
  %send_alloca44 = alloca double, !reason !34
  %send_alloca52 = alloca double, !reason !34
  %send_alloca54 = alloca double, !reason !34
  %send_alloca75 = alloca i64, !reason !34
  %send_cast34 = bitcast double* %send_alloca33 to i8*, !reason !34
  %send_cast45 = bitcast double* %send_alloca44 to i8*, !reason !34
  %send_cast53 = bitcast double* %send_alloca52 to i8*, !reason !34
  %send_cast55 = bitcast double* %send_alloca54 to i8*, !reason !34
  %send_cast76 = bitcast i64* %send_alloca75 to i8*, !reason !34
  %argument24 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_11 to i64), i8* %0), !reason !33
  %bitcast25 = bitcast i8* %argument24 to [3 x double]**, !reason !33
  %receive_load26 = load [3 x double]*, [3 x double]** %bitcast25, !reason !33
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i8* %0), !reason !33
  %bitcast19 = bitcast i8* %argument to [3 x double]**, !reason !33
  %receive_load20 = load [3 x double]*, [3 x double]** %bitcast19, !reason !33
  %send_alloca = alloca i64, !reason !34
  %send_alloca9 = alloca i64, !reason !34
  %send_alloca14 = alloca i64, !reason !34
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !34
  %send_cast10 = bitcast i64* %send_alloca9 to i8*, !reason !34
  %send_cast15 = bitcast i64* %send_alloca14 to i8*, !reason !34
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %22, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  store i64 %new_phi, i64* %send_alloca, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i8* %0), !reason !34
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_2 to i64), i8* %0), !reason !34
  %bitcast = bitcast i8* %receive to double**, !reason !34
  %receive_load = load double*, double** %bitcast, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_2 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  store double 0.000000e+00, double* %receive_load, align 8, !tbaa !7, !partition !3, !start !3, !end !4
  store i64 %new_phi, i64* %send_alloca9, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i8* %0), !reason !34
  %receive11 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_5 to i64), i8* %0), !reason !34
  %bitcast12 = bitcast i8* %receive11 to double**, !reason !34
  %receive_load13 = load double*, double** %bitcast12, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_5 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  store double 0.000000e+00, double* %receive_load13, align 8, !tbaa !7, !partition !3, !start !4, !end !11
  store i64 %new_phi, i64* %send_alloca14, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast15, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !34
  %receive16 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i8* %0), !reason !34
  %bitcast17 = bitcast i8* %receive16 to double**, !reason !34
  %receive_load18 = load double*, double** %bitcast17, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  store double 0.000000e+00, double* %receive_load18, align 8, !tbaa !7, !partition !3, !start !11, !end !5
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive21 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !34
  %bitcast22 = bitcast i8* %receive21 to i64*, !reason !34
  %receive_load23 = load i64, i64* %bitcast22, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load20, i64 %new_phi, i64 %receive_load23, !partition !3, !start !12, !end !13
  %2 = load double, double* %1, align 8, !tbaa !7, !partition !3, !start !11, !end !5
  %receive27 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_12 to i64), i8* %0), !reason !34
  %bitcast28 = bitcast i8* %receive27 to i64*, !reason !34
  %receive_load29 = load i64, i64* %bitcast28, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_12 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %receive30 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_13 to i64), i8* %0), !reason !34
  %bitcast31 = bitcast i8* %receive30 to i64*, !reason !34
  %receive_load32 = load i64, i64* %bitcast31, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_13 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load26, i64 %receive_load29, i64 %receive_load32, !partition !3, !start !14, !end !15
  %4 = load double, double* %3, align 8, !tbaa !7, !partition !3, !start !5, !end !6
  %5 = fmul double %2, %4, !partition !3, !start !16, !end !17
  store double %5, double* %send_alloca33, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast34, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !34
  %receive35 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_15 to i64), i8* %0), !reason !34
  %bitcast36 = bitcast i8* %receive35 to double**, !reason !34
  %receive_load37 = load double*, double** %bitcast36, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_15 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  %6 = load double, double* %receive_load37, align 8, !tbaa !7, !partition !3, !start !20, !end !21
  %receive38 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !34
  %bitcast39 = bitcast i8* %receive38 to double*, !reason !34
  %receive_load40 = load double, double* %bitcast39, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %7 = fadd double %6, %receive_load40, !partition !3, !start !22, !end !23
  %receive41 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_17 to i64), i8* %0), !reason !34
  %bitcast42 = bitcast i8* %receive41 to double**, !reason !34
  %receive_load43 = load double*, double** %bitcast42, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_17 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  store double %7, double* %receive_load43, align 8, !tbaa !7, !partition !3, !start !24, !end !25
  %8 = load double, double* %1, align 8, !tbaa !7, !partition !3, !start !3, !end !4
  store double %8, double* %send_alloca44, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast45, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i8* %0), !reason !34
  %9 = load double, double* %3, align 8, !tbaa !7, !partition !3, !start !26, !end !20
  %receive46 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i8* %0), !reason !34
  %bitcast47 = bitcast i8* %receive46 to double*, !reason !34
  %receive_load48 = load double, double* %bitcast47, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %10 = fmul double %receive_load48, %9, !partition !3, !start !27, !end !28
  %receive49 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_20 to i64), i8* %0), !reason !34
  %bitcast50 = bitcast i8* %receive49 to double**, !reason !34
  %receive_load51 = load double*, double** %bitcast50, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_20 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  %11 = load double, double* %receive_load51, align 8, !tbaa !7, !partition !3, !start !21, !end !29
  store double %11, double* %send_alloca52, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast53, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i8* %0), !reason !34
  store double %10, double* %send_alloca54, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast55, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_22 to i64), i8* %0), !reason !34
  %receive56 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i8* %0), !reason !34
  %bitcast57 = bitcast i8* %receive56 to double*, !reason !34
  %receive_load58 = load double, double* %bitcast57, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %receive59 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_24 to i64), i8* %0), !reason !34
  %bitcast60 = bitcast i8* %receive59 to double**, !reason !34
  %receive_load61 = load double*, double** %bitcast60, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_24 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  store double %receive_load58, double* %receive_load61, align 8, !tbaa !7, !partition !3, !start !30, !end !27
  %12 = load double, double* %1, align 8, !tbaa !7, !partition !3, !start !31, !end !26
  %13 = load double, double* %3, align 8, !tbaa !7, !partition !3, !start !4, !end !11
  %14 = tail call double @llvm.sqrt.f64(double %13), !partition !3, !start !25, !end !14
  %15 = fmul double %12, %14, !partition !3, !start !28, !end !32
  %receive62 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_25 to i64), i8* %0), !reason !34
  %bitcast63 = bitcast i8* %receive62 to double**, !reason !34
  %receive_load64 = load double*, double** %bitcast63, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_25 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  %16 = load double, double* %receive_load64, align 8, !tbaa !7, !partition !3, !start !29, !end !16
  %17 = fadd double %16, %15, !partition !3, !start !19, !end !22
  %receive65 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_26 to i64), i8* %0), !reason !34
  %bitcast66 = bitcast i8* %receive65 to double**, !reason !34
  %receive_load67 = load double*, double** %bitcast66, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_26 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  store double %17, double* %receive_load67, align 8, !tbaa !7, !partition !3, !start !6, !end !31
  %receive68 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i8* %0), !reason !34
  %bitcast69 = bitcast i8* %receive68 to i64*, !reason !34
  %receive_load70 = load i64, i64* %bitcast69, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %18 = add nuw nsw i64 %receive_load70, 1, !partition !3, !start !17, !end !24
  %19 = icmp eq i64 %18, 3, !partition !3, !start !15, !end !12
  store i64 %18, i64* %send_alloca113, !reason !35
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast114, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_45 to i64), i8* %0), !reason !35
  store i1 %19, i1* %send_alloca117, !reason !36
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast118, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i8* %0), !reason !36
  br i1 %19, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive71 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i8* %0), !reason !34
  %bitcast72 = bitcast i8* %receive71 to i64*, !reason !34
  %receive_load73 = load i64, i64* %bitcast72, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %20 = add nuw nsw i64 %receive_load73, 1, !partition !3, !start !3, !end !3
  %21 = icmp eq i64 %20, 3, !partition !3, !start !3, !end !3
  store i64 %20, i64* %send_alloca111, !reason !35
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast112, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_44 to i64), i8* %0), !reason !35
  store i1 %21, i1* %send_alloca119, !reason !36
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast120, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_48 to i64), i8* %0), !reason !36
  br i1 %21, label %l4, label %l1

l4:                                               ; preds = %l3
  %22 = add nuw nsw i64 %new_phi, 1, !partition !3, !start !3, !end !3
  %23 = icmp eq i64 %22, 3, !partition !3, !start !3, !end !3
  store i1 %23, i1* %send_alloca121, !reason !36
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast122, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i8* %0), !reason !36
  br i1 %23, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  %new_phi74 = phi i64 [ %30, %l7 ], [ 0, %l4 ]
  br label %l6

l6:                                               ; preds = %l6, %l5
  store i64 %new_phi74, i64* %send_alloca75, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast76, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i8* %0), !reason !34
  %receive77 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i8* %0), !reason !34
  %bitcast78 = bitcast i8* %receive77 to double**, !reason !34
  %receive_load79 = load double*, double** %bitcast78, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  %24 = load double, double* %receive_load79, align 8, !tbaa !7, !partition !3, !start !4, !end !11
  %receive83 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i8* %0), !reason !34
  %bitcast84 = bitcast i8* %receive83 to i64*, !reason !34
  %receive_load85 = load i64, i64* %bitcast84, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %25 = getelementptr inbounds [3 x double], [3 x double]* %receive_load82, i64 %new_phi74, i64 %receive_load85, !partition !3, !start !31, !end !26
  %26 = load double, double* %25, align 8, !tbaa !7, !partition !3, !start !3, !end !4
  store double %24, double* %send_alloca86, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast87, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_33 to i64), i8* %0), !reason !34
  store double %26, double* %send_alloca88, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast89, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_34 to i64), i8* %0), !reason !34
  %receive93 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i8* %0), !reason !34
  %bitcast94 = bitcast i8* %receive93 to i64*, !reason !34
  %receive_load95 = load i64, i64* %bitcast94, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %27 = getelementptr inbounds [3 x double], [3 x double]* %receive_load92, i64 %new_phi74, i64 %receive_load95, !partition !3, !start !26, !end !20
  %28 = load double, double* %27, align 8, !tbaa !7, !partition !3, !start !11, !end !5
  store double %28, double* %send_alloca96, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast97, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_37 to i64), i8* %0), !reason !34
  store i64 %new_phi74, i64* %send_alloca98, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast99, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i8* %0), !reason !34
  %receive100 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_40 to i64), i8* %0), !reason !34
  %bitcast101 = bitcast i8* %receive100 to double*, !reason !34
  %receive_load102 = load double, double* %bitcast101, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_40 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %receive103 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_41 to i64), i8* %0), !reason !34
  %bitcast104 = bitcast i8* %receive103 to double**, !reason !34
  %receive_load105 = load double*, double** %bitcast104, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_41 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !34
  store double %receive_load102, double* %receive_load105, align 8, !tbaa !7, !partition !3, !start !5, !end !6
  %receive106 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i8* %0), !reason !34
  %bitcast107 = bitcast i8* %receive106 to i64*, !reason !34
  %receive_load108 = load i64, i64* %bitcast107, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %29 = add nuw nsw i64 %receive_load108, 1, !partition !3, !start !6, !end !31
  store i64 %29, i64* %send_alloca109, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast110, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i8* %0), !reason !34
  store i64 %29, i64* %send_alloca115, !reason !35
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast116, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i8* %0), !reason !35
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i8* %0), !reason !37
  %bitcast123 = bitcast i8* %broadcast to i1*, !reason !37
  %receive_load124 = load i1, i1* %bitcast123, !reason !37
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !37
  br i1 %receive_load124, label %l7, label %l6

l7:                                               ; preds = %l6
  %30 = add nuw nsw i64 %new_phi74, 1, !partition !3, !start !3, !end !3
  %31 = icmp eq i64 %30, 3, !partition !3, !start !3, !end !3
  store i1 %31, i1* %send_alloca125, !reason !36
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast126, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i8* %0), !reason !36
  br i1 %31, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

define void @_p_multiply_1(i8*) {
entry:
  %send_alloca93 = alloca double, !reason !34
  %send_alloca95 = alloca double*, !reason !34
  %send_alloca97 = alloca i64, !reason !34
  %send_alloca118 = alloca i1, !reason !36
  %send_cast94 = bitcast double* %send_alloca93 to i8*, !reason !34
  %send_cast96 = bitcast double** %send_alloca95 to i8*, !reason !34
  %send_cast98 = bitcast i64* %send_alloca97 to i8*, !reason !34
  %send_cast119 = bitcast i1* %send_alloca118 to i8*, !reason !36
  %argument87 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_38 to i64), i8* %0), !reason !33
  %bitcast88 = bitcast i8* %argument87 to [3 x double]**, !reason !33
  %receive_load89 = load [3 x double]*, [3 x double]** %bitcast88, !reason !33
  %send_alloca25 = alloca double*, !reason !34
  %send_alloca28 = alloca i64, !reason !34
  %send_alloca30 = alloca i64, !reason !34
  %send_alloca32 = alloca i64, !reason !34
  %send_alloca37 = alloca double*, !reason !34
  %send_alloca39 = alloca double, !reason !34
  %send_alloca41 = alloca double*, !reason !34
  %send_alloca46 = alloca double, !reason !34
  %send_alloca48 = alloca double*, !reason !34
  %send_alloca56 = alloca double, !reason !34
  %send_alloca58 = alloca double*, !reason !34
  %send_alloca60 = alloca double*, !reason !34
  %send_alloca62 = alloca double*, !reason !34
  %send_alloca64 = alloca i64, !reason !34
  %send_alloca66 = alloca i64, !reason !34
  %send_alloca72 = alloca double*, !reason !34
  %send_alloca74 = alloca i64, !reason !34
  %send_alloca82 = alloca i64, !reason !34
  %send_cast26 = bitcast double** %send_alloca25 to i8*, !reason !34
  %send_cast29 = bitcast i64* %send_alloca28 to i8*, !reason !34
  %send_cast31 = bitcast i64* %send_alloca30 to i8*, !reason !34
  %send_cast33 = bitcast i64* %send_alloca32 to i8*, !reason !34
  %send_cast38 = bitcast double** %send_alloca37 to i8*, !reason !34
  %send_cast40 = bitcast double* %send_alloca39 to i8*, !reason !34
  %send_cast42 = bitcast double** %send_alloca41 to i8*, !reason !34
  %send_cast47 = bitcast double* %send_alloca46 to i8*, !reason !34
  %send_cast49 = bitcast double** %send_alloca48 to i8*, !reason !34
  %send_cast57 = bitcast double* %send_alloca56 to i8*, !reason !34
  %send_cast59 = bitcast double** %send_alloca58 to i8*, !reason !34
  %send_cast61 = bitcast double** %send_alloca60 to i8*, !reason !34
  %send_cast63 = bitcast double** %send_alloca62 to i8*, !reason !34
  %send_cast65 = bitcast i64* %send_alloca64 to i8*, !reason !34
  %send_cast67 = bitcast i64* %send_alloca66 to i8*, !reason !34
  %send_cast73 = bitcast double** %send_alloca72 to i8*, !reason !34
  %send_cast75 = bitcast i64* %send_alloca74 to i8*, !reason !34
  %send_cast83 = bitcast i64* %send_alloca82 to i8*, !reason !34
  %argument19 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_6 to i64), i8* %0), !reason !33
  %bitcast20 = bitcast i8* %argument19 to [3 x double]**, !reason !33
  %receive_load21 = load [3 x double]*, [3 x double]** %bitcast20, !reason !33
  %send_alloca17 = alloca double*, !reason !34
  %send_cast18 = bitcast double** %send_alloca17 to i8*, !reason !34
  %argument11 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_3 to i64), i8* %0), !reason !33
  %bitcast12 = bitcast i8* %argument11 to [3 x double]**, !reason !33
  %receive_load13 = load [3 x double]*, [3 x double]** %bitcast12, !reason !33
  %send_alloca = alloca double*, !reason !34
  %send_cast = bitcast double** %send_alloca to i8*, !reason !34
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %0), !reason !33
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !33
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !33
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi = phi i64 [ 0, %l ], [ %receive_load103, %l3 ]
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i8* %0), !reason !34
  %bitcast9 = bitcast i8* %receive to i64*, !reason !34
  %receive_load10 = load i64, i64* %bitcast9, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load10, i64 %new_phi, !partition !4, !start !5, !end !6
  store double* %1, double** %send_alloca, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_2 to i64), i8* %0), !reason !34
  %receive14 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i8* %0), !reason !34
  %bitcast15 = bitcast i8* %receive14 to i64*, !reason !34
  %receive_load16 = load i64, i64* %bitcast15, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load13, i64 %receive_load16, i64 %new_phi, !partition !4, !start !11, !end !5
  store double* %2, double** %send_alloca17, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast18, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_5 to i64), i8* %0), !reason !34
  %receive22 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !34
  %bitcast23 = bitcast i8* %receive22 to i64*, !reason !34
  %receive_load24 = load i64, i64* %bitcast23, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load21, i64 %receive_load24, i64 %new_phi, !partition !4, !start !4, !end !11
  store double* %3, double** %send_alloca25, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast26, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i8* %0), !reason !34
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi27 = phi i64 [ 0, %l1 ], [ %receive_load106, %l2 ]
  store i64 %new_phi27, i64* %send_alloca28, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast29, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !34
  store i64 %new_phi27, i64* %send_alloca30, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast31, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_12 to i64), i8* %0), !reason !34
  store i64 %new_phi, i64* %send_alloca32, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast33, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_13 to i64), i8* %0), !reason !34
  %receive34 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !34
  %bitcast35 = bitcast i8* %receive34 to double*, !reason !34
  %receive_load36 = load double, double* %bitcast35, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %4 = tail call double @llvm.sqrt.f64(double %receive_load36), !partition !4, !start !18, !end !19
  store double* %1, double** %send_alloca37, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast38, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_15 to i64), i8* %0), !reason !34
  store double %4, double* %send_alloca39, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast40, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !34
  store double* %1, double** %send_alloca41, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast42, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_17 to i64), i8* %0), !reason !34
  %receive43 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i8* %0), !reason !34
  %bitcast44 = bitcast i8* %receive43 to double*, !reason !34
  %receive_load45 = load double, double* %bitcast44, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %5 = tail call double @llvm.sqrt.f64(double %receive_load45), !partition !4, !start !11, !end !18
  store double %5, double* %send_alloca46, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast47, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i8* %0), !reason !34
  store double* %2, double** %send_alloca48, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast49, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_20 to i64), i8* %0), !reason !34
  %receive50 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i8* %0), !reason !34
  %bitcast51 = bitcast i8* %receive50 to double*, !reason !34
  %receive_load52 = load double, double* %bitcast51, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_21 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %receive53 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_22 to i64), i8* %0), !reason !34
  %bitcast54 = bitcast i8* %receive53 to double*, !reason !34
  %receive_load55 = load double, double* %bitcast54, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_22 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %6 = fadd double %receive_load52, %receive_load55, !partition !4, !start !22, !end !23
  store double %6, double* %send_alloca56, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast57, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i8* %0), !reason !34
  store double* %2, double** %send_alloca58, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast59, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_24 to i64), i8* %0), !reason !34
  store double* %3, double** %send_alloca60, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast61, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_25 to i64), i8* %0), !reason !34
  store double* %3, double** %send_alloca62, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast63, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_26 to i64), i8* %0), !reason !34
  store i64 %new_phi27, i64* %send_alloca64, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast65, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i8* %0), !reason !34
  %repair_phi104 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_45 to i64), i8* %0), !reason !37
  %bitcast105 = bitcast i8* %repair_phi104 to i64*, !reason !37
  %receive_load106 = load i64, i64* %bitcast105, !reason !37
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_45 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !37
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i8* %0), !reason !37
  %bitcast110 = bitcast i8* %broadcast to i1*, !reason !37
  %receive_load111 = load i1, i1* %bitcast110, !reason !37
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !37
  br i1 %receive_load111, label %l3, label %l2

l3:                                               ; preds = %l2
  store i64 %new_phi, i64* %send_alloca66, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast67, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i8* %0), !reason !34
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_44 to i64), i8* %0), !reason !37
  %bitcast102 = bitcast i8* %repair_phi to i64*, !reason !37
  %receive_load103 = load i64, i64* %bitcast102, !reason !37
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_44 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !37
  %broadcast112 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_48 to i64), i8* %0), !reason !37
  %bitcast113 = bitcast i8* %broadcast112 to i1*, !reason !37
  %receive_load114 = load i1, i1* %bitcast113, !reason !37
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_48 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !37
  br i1 %receive_load114, label %l4, label %l1

l4:                                               ; preds = %l3
  %broadcast115 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i8* %0), !reason !37
  %bitcast116 = bitcast i8* %broadcast115 to i1*, !reason !37
  %receive_load117 = load i1, i1* %bitcast116, !reason !37
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !37
  br i1 %receive_load117, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %new_phi68 = phi i64 [ 0, %l5 ], [ %receive_load109, %l6 ]
  %receive69 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i8* %0), !reason !34
  %bitcast70 = bitcast i8* %receive69 to i64*, !reason !34
  %receive_load71 = load i64, i64* %bitcast70, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %7 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load71, i64 %new_phi68, !partition !4, !start !6, !end !31
  store double* %7, double** %send_alloca72, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast73, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i8* %0), !reason !34
  store i64 %new_phi68, i64* %send_alloca74, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast75, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_32 to i64), i8* %0), !reason !34
  %receive76 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_33 to i64), i8* %0), !reason !34
  %bitcast77 = bitcast i8* %receive76 to double*, !reason !34
  %receive_load78 = load double, double* %bitcast77, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_33 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %receive79 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_34 to i64), i8* %0), !reason !34
  %bitcast80 = bitcast i8* %receive79 to double*, !reason !34
  %receive_load81 = load double, double* %bitcast80, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_34 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %8 = fadd double %receive_load78, %receive_load81, !partition !4, !start !5, !end !6
  store i64 %new_phi68, i64* %send_alloca82, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast83, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i8* %0), !reason !34
  %receive84 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_37 to i64), i8* %0), !reason !34
  %bitcast85 = bitcast i8* %receive84 to double*, !reason !34
  %receive_load86 = load double, double* %bitcast85, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_37 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %9 = fadd double %8, %receive_load86, !partition !4, !start !31, !end !26
  %receive90 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i8* %0), !reason !34
  %bitcast91 = bitcast i8* %receive90 to i64*, !reason !34
  %receive_load92 = load i64, i64* %bitcast91, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %10 = getelementptr inbounds [3 x double], [3 x double]* %receive_load89, i64 %receive_load92, i64 %new_phi68, !partition !4, !start !11, !end !5
  store double %9, double* %send_alloca93, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast94, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_40 to i64), i8* %0), !reason !34
  store double* %10, double** %send_alloca95, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast96, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_41 to i64), i8* %0), !reason !34
  store i64 %new_phi68, i64* %send_alloca97, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast98, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i8* %0), !reason !34
  %receive99 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i8* %0), !reason !34
  %bitcast100 = bitcast i8* %receive99 to i64*, !reason !34
  %receive_load101 = load i64, i64* %bitcast100, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !34
  %11 = icmp eq i64 %receive_load101, 3, !partition !4, !start !26, !end !20
  %repair_phi107 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i8* %0), !reason !37
  %bitcast108 = bitcast i8* %repair_phi107 to i64*, !reason !37
  %receive_load109 = load i64, i64* %bitcast108, !reason !37
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_46 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !37
  store i1 %11, i1* %send_alloca118, !reason !36
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast119, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i8* %0), !reason !36
  br i1 %11, label %l7, label %l6

l7:                                               ; preds = %l6
  %broadcast120 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i8* %0), !reason !37
  %bitcast121 = bitcast i8* %broadcast120 to i1*, !reason !37
  %receive_load122 = load i1, i1* %bitcast121, !reason !37
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !37
  br i1 %receive_load122, label %l8, label %l5

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
  %9 = load volatile i8, i8* %7, align 1, !tbaa !38
  store volatile i8 %9, i8* %8, align 1, !tbaa !38
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !39
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !42
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
  %16 = load i64, i64* %15, align 8, !tbaa !43
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !39
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !42
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !43
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
  %10 = load volatile i8, i8* %8, align 1, !tbaa !38
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !38
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !38
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
  store volatile i8 0, i8* %6, align 1, !tbaa !38
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
!5 = !{!"3"}
!6 = !{!"4"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"2"}
!12 = !{!"46"}
!13 = !{!"47"}
!14 = !{!"44"}
!15 = !{!"45"}
!16 = !{!"10"}
!17 = !{!"12"}
!18 = !{!"32"}
!19 = !{!"62"}
!20 = !{!"7"}
!21 = !{!"8"}
!22 = !{!"63"}
!23 = !{!"64"}
!24 = !{!"13"}
!25 = !{!"14"}
!26 = !{!"6"}
!27 = !{!"57"}
!28 = !{!"59"}
!29 = !{!"9"}
!30 = !{!"56"}
!31 = !{!"5"}
!32 = !{!"61"}
!33 = !{!"replace argument"}
!34 = !{!"replace mapped op"}
!35 = !{!"repair_phi"}
!36 = !{!"broadcast"}
!37 = !{!"receive"}
!38 = !{!9, !9, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"Closure", !41, i64 0, !41, i64 8}
!41 = !{!"any pointer", !9, i64 0}
!42 = !{!40, !41, i64 8}
!43 = !{!41, !41, i64 0}
