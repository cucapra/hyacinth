; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Context = type {}
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@comms_0 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_1 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_2 = global { i64, i1, i32 } zeroinitializer
@comms_3 = global { i64, i1, i32 } zeroinitializer
@comms_4 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_5 = global { double*, i1, i32 } zeroinitializer
@comms_6 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_7 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_8 = global { i64, i1, i32 } zeroinitializer
@comms_9 = global { i64, i1, i32 } zeroinitializer
@comms_10 = global { double, i1, i32 } zeroinitializer
@comms_11 = global { double, i1, i32 } zeroinitializer
@comms_12 = global { double*, i1, i32 } zeroinitializer
@comms_13 = global { double, i1, i32 } zeroinitializer
@comms_14 = global { double*, i1, i32 } zeroinitializer
@comms_15 = global { double*, i1, i32 } zeroinitializer
@comms_16 = global { double, i1, i32 } zeroinitializer
@comms_17 = global { double*, i1, i32 } zeroinitializer
@comms_18 = global { double*, i1, i32 } zeroinitializer
@comms_19 = global { double*, i1, i32 } zeroinitializer
@comms_20 = global { double*, i1, i32 } zeroinitializer
@comms_21 = global { i64, i1, i32 } zeroinitializer
@comms_22 = global { i64, i1, i32 } zeroinitializer
@comms_23 = global { double, i1, i32 } zeroinitializer
@comms_24 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_25 = global { i64, i1, i32 } zeroinitializer
@comms_26 = global { i64, i1, i32 } zeroinitializer
@comms_27 = global { double*, i1, i32 } zeroinitializer
@comms_28 = global { double, i1, i32 } zeroinitializer
@comms_29 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_30 = global { double*, i1, i32 } zeroinitializer
@comms_31 = global { i1, i1, i32 } zeroinitializer
@comms_32 = global { i1, i1, i32 } zeroinitializer
@comms_33 = global { i1, i1, i32 } zeroinitializer
@comms_34 = global { i1, i1, i32 } zeroinitializer
@comms_35 = global { i1, i1, i32 } zeroinitializer
@return_struct = global { i1, i1, i32 } zeroinitializer
@funs = global [2 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1]
@__const.main.a.2 = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b.4 = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@__const.main.a = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]]
@__const.main.b = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]]
@.str = global [4 x i8] c"%f \00"

; Function Attrs: nounwind ssp uwtable
define void @multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture) local_unnamed_addr #0 {
  br label %7

; <label>:7:                                      ; preds = %41, %6
  %8 = phi i64 [ 0, %6 ], [ %42, %41 ]
  br label %9

; <label>:9:                                      ; preds = %38, %7
  %10 = phi i64 [ 0, %7 ], [ %39, %38 ]
  %11 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %10
  store double 0.000000e+00, double* %11, align 8, !tbaa !3
  %12 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %10
  store double 0.000000e+00, double* %12, align 8, !tbaa !3
  %13 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %10
  store double 0.000000e+00, double* %13, align 8, !tbaa !3
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %14 ]
  %16 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %15
  %17 = load double, double* %16, align 8, !tbaa !3
  %18 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %15, i64 %10
  %19 = load double, double* %18, align 8, !tbaa !3
  %20 = fmul double %17, %19
  %21 = tail call double @llvm.sqrt.f64(double %20)
  %22 = load double, double* %11, align 8, !tbaa !3
  %23 = fadd double %22, %21
  store double %23, double* %11, align 8, !tbaa !3
  %24 = load double, double* %16, align 8, !tbaa !3
  %25 = tail call double @llvm.sqrt.f64(double %24)
  %26 = load double, double* %18, align 8, !tbaa !3
  %27 = fmul double %25, %26
  %28 = load double, double* %12, align 8, !tbaa !3
  %29 = fadd double %28, %27
  store double %29, double* %12, align 8, !tbaa !3
  %30 = load double, double* %16, align 8, !tbaa !3
  %31 = load double, double* %18, align 8, !tbaa !3
  %32 = tail call double @llvm.sqrt.f64(double %31)
  %33 = fmul double %30, %32
  %34 = load double, double* %13, align 8, !tbaa !3
  %35 = fadd double %34, %33
  store double %35, double* %13, align 8, !tbaa !3
  %36 = add nuw nsw i64 %15, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %14

; <label>:38:                                     ; preds = %14
  %39 = add nuw nsw i64 %10, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %9

; <label>:41:                                     ; preds = %38
  %42 = add nuw nsw i64 %8, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %7

; <label>:44:                                     ; preds = %59, %41
  %45 = phi i64 [ %60, %59 ], [ 0, %41 ]
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %57, %46 ]
  %48 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %47
  %49 = load double, double* %48, align 8, !tbaa !3
  %50 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %47
  %51 = load double, double* %50, align 8, !tbaa !3
  %52 = fadd double %49, %51
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %47
  %54 = load double, double* %53, align 8, !tbaa !3
  %55 = fadd double %52, %54
  %56 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %47
  store double %55, double* %56, align 8, !tbaa !3
  %57 = add nuw nsw i64 %47, 1
  %58 = icmp eq i64 %57, 3
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %46
  %60 = add nuw nsw i64 %45, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %44

; <label>:62:                                     ; preds = %59
  ret void
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a.2 to i8*), i64 72, i1 false)
  %10 = bitcast [3 x [3 x double]]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b.4 to i8*), i64 72, i1 false)
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
  %22 = load double, double* %21, align 8, !tbaa !3
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %22)
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
  %send_alloca = alloca [3 x double]*, !reason !7
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !7
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_0 to i64), i8* %6), !reason !7
  %send_alloca1 = alloca [3 x double]*, !reason !7
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !7
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_1 to i64), i8* %6), !reason !7
  %send_alloca3 = alloca [3 x double]*, !reason !7
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !7
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_4 to i64), i8* %6), !reason !7
  %send_alloca5 = alloca [3 x double]*, !reason !7
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !7
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_6 to i64), i8* %6), !reason !7
  %send_alloca7 = alloca [3 x double]*, !reason !7
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !7
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_7 to i64), i8* %6), !reason !7
  %send_alloca9 = alloca [3 x double]*, !reason !7
  store [3 x double]* %4, [3 x double]** %send_alloca9, !reason !7
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_24 to i64), i8* %6), !reason !7
  %send_alloca11 = alloca [3 x double]*, !reason !7
  store [3 x double]* %5, [3 x double]** %send_alloca11, !reason !7
  %send_cast12 = bitcast [3 x double]** %send_alloca11 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_29 to i64), i8* %6), !reason !7
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

define void @multiply_0(i8*) {
entry:
  %argument67 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_29 to i64), i8* %0), !reason !7
  %bitcast68 = bitcast i8* %argument67 to [3 x double]**, !reason !7
  %receive_load69 = load [3 x double]*, [3 x double]** %bitcast68, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_29 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  %argument18 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_6 to i64), i8* %0), !reason !7
  %bitcast19 = bitcast i8* %argument18 to [3 x double]**, !reason !7
  %receive_load20 = load [3 x double]*, [3 x double]** %bitcast19, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_6 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  %argument12 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_4 to i64), i8* %0), !reason !7
  %bitcast13 = bitcast i8* %argument12 to [3 x double]**, !reason !7
  %receive_load14 = load [3 x double]*, [3 x double]** %bitcast13, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_0 to i64), i8* %0), !reason !7
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !7
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_0 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %15, %l4 ], !time !8
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi9 = phi i64 [ 0, %l ], [ %13, %l3 ], !time !9
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %new_phi9, !time !10
  store double 0.000000e+00, double* %1, align 8, !tbaa !3, !time !11
  %send_alloca = alloca i64, !reason !12
  store i64 %new_phi, i64* %send_alloca, !reason !12
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_2 to i64), i8* %0), !reason !12
  %send_alloca10 = alloca i64, !reason !12
  store i64 %new_phi9, i64* %send_alloca10, !reason !12
  %send_cast11 = bitcast i64* %send_alloca10 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast11, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !12
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load14, i64 %new_phi, i64 %new_phi9, !time !13
  %send_alloca15 = alloca double*, !reason !12
  store double* %2, double** %send_alloca15, !reason !12
  %send_cast16 = bitcast double** %send_alloca15 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast16, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_5 to i64), i8* %0), !reason !12
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi17 = phi i64 [ 0, %l1 ], [ %11, %l2 ], !time !9
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load20, i64 %new_phi, i64 %new_phi17, !time !14
  %4 = load double, double* %3, align 8, !tbaa !3, !time !15
  %send_alloca21 = alloca i64, !reason !12
  store i64 %new_phi17, i64* %send_alloca21, !reason !12
  %send_cast22 = bitcast i64* %send_alloca21 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast22, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !12
  %send_alloca23 = alloca i64, !reason !12
  store i64 %new_phi9, i64* %send_alloca23, !reason !12
  %send_cast24 = bitcast i64* %send_alloca23 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast24, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i8* %0), !reason !12
  %send_alloca25 = alloca double, !reason !12
  store double %4, double* %send_alloca25, !reason !12
  %send_cast26 = bitcast double* %send_alloca25 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast26, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_10 to i64), i8* %0), !reason !12
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !12
  %bitcast27 = bitcast i8* %receive to double*, !reason !12
  %receive_load28 = load double, double* %bitcast27, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !12
  %5 = tail call double @llvm.sqrt.f64(double %receive_load28), !time !16
  %send_alloca29 = alloca double*, !reason !12
  store double* %1, double** %send_alloca29, !reason !12
  %send_cast30 = bitcast double** %send_alloca29 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast30, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_12 to i64), i8* %0), !reason !12
  %send_alloca31 = alloca double, !reason !12
  store double %5, double* %send_alloca31, !reason !12
  %send_cast32 = bitcast double* %send_alloca31 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast32, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i8* %0), !reason !12
  %send_alloca33 = alloca double*, !reason !12
  store double* %1, double** %send_alloca33, !reason !12
  %send_cast34 = bitcast double** %send_alloca33 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast34, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_14 to i64), i8* %0), !reason !12
  %6 = load double, double* %3, align 8, !tbaa !3, !time !17
  %7 = tail call double @llvm.sqrt.f64(double %6), !time !18
  %receive35 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_15 to i64), i8* %0), !reason !12
  %bitcast36 = bitcast i8* %receive35 to double**, !reason !12
  %receive_load37 = load double*, double** %bitcast36, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_15 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  %8 = load double, double* %receive_load37, align 8, !tbaa !3, !time !19
  %9 = fmul double %7, %8, !time !20
  %receive38 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !12
  %bitcast39 = bitcast i8* %receive38 to double*, !reason !12
  %receive_load40 = load double, double* %bitcast39, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !12
  %10 = fadd double %receive_load40, %9, !time !21
  %receive41 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_17 to i64), i8* %0), !reason !12
  %bitcast42 = bitcast i8* %receive41 to double**, !reason !12
  %receive_load43 = load double*, double** %bitcast42, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_17 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  store double %10, double* %receive_load43, align 8, !tbaa !3, !time !22
  %send_alloca44 = alloca double*, !reason !12
  store double* %3, double** %send_alloca44, !reason !12
  %send_cast45 = bitcast double** %send_alloca44 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast45, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_18 to i64), i8* %0), !reason !12
  %send_alloca46 = alloca double*, !reason !12
  store double* %2, double** %send_alloca46, !reason !12
  %send_cast47 = bitcast double** %send_alloca46 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast47, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_19 to i64), i8* %0), !reason !12
  %send_alloca48 = alloca double*, !reason !12
  store double* %2, double** %send_alloca48, !reason !12
  %send_cast49 = bitcast double** %send_alloca48 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast49, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_20 to i64), i8* %0), !reason !12
  %11 = add nuw nsw i64 %new_phi17, 1, !time !23
  %12 = icmp eq i64 %11, 3, !time !24
  %send_alloca72 = alloca i1, !reason !25
  store i1 %12, i1* %send_alloca72, !reason !25
  %send_cast73 = bitcast i1* %send_alloca72 to i8*, !reason !25
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast73, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_31 to i64), i8* %0), !reason !25
  br i1 %12, label %l3, label %l2

l3:                                               ; preds = %l2
  %13 = add nuw nsw i64 %new_phi9, 1, !time !26
  %14 = icmp eq i64 %13, 3, !time !14
  %send_alloca74 = alloca i1, !reason !25
  store i1 %14, i1* %send_alloca74, !reason !25
  %send_cast75 = bitcast i1* %send_alloca74 to i8*, !reason !25
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast75, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_32 to i64), i8* %0), !reason !25
  br i1 %14, label %l4, label %l1

l4:                                               ; preds = %l3
  %15 = add nuw nsw i64 %new_phi, 1, !time !26
  %16 = icmp eq i64 %15, 3, !time !14
  %send_alloca76 = alloca i1, !reason !25
  store i1 %16, i1* %send_alloca76, !reason !25
  %send_cast77 = bitcast i1* %send_alloca76 to i8*, !reason !25
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast77, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_33 to i64), i8* %0), !reason !25
  br i1 %16, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  %new_phi50 = phi i64 [ %23, %l7 ], [ 0, %l4 ], !time !8
  br label %l6

l6:                                               ; preds = %l6, %l5
  %new_phi51 = phi i64 [ 0, %l5 ], [ %21, %l6 ], !time !27
  %17 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi50, i64 %new_phi51, !time !28
  %18 = load double, double* %17, align 8, !tbaa !3, !time !29
  %send_alloca52 = alloca i64, !reason !12
  store i64 %new_phi50, i64* %send_alloca52, !reason !12
  %send_cast53 = bitcast i64* %send_alloca52 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast53, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_21 to i64), i8* %0), !reason !12
  %send_alloca54 = alloca i64, !reason !12
  store i64 %new_phi51, i64* %send_alloca54, !reason !12
  %send_cast55 = bitcast i64* %send_alloca54 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast55, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i8* %0), !reason !12
  %send_alloca56 = alloca double, !reason !12
  store double %18, double* %send_alloca56, !reason !12
  %send_cast57 = bitcast double* %send_alloca56 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast57, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i8* %0), !reason !12
  %send_alloca58 = alloca i64, !reason !12
  store i64 %new_phi50, i64* %send_alloca58, !reason !12
  %send_cast59 = bitcast i64* %send_alloca58 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast59, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i8* %0), !reason !12
  %send_alloca60 = alloca i64, !reason !12
  store i64 %new_phi51, i64* %send_alloca60, !reason !12
  %send_cast61 = bitcast i64* %send_alloca60 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast61, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i8* %0), !reason !12
  %receive62 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_27 to i64), i8* %0), !reason !12
  %bitcast63 = bitcast i8* %receive62 to double**, !reason !12
  %receive_load64 = load double*, double** %bitcast63, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_27 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  %19 = load double, double* %receive_load64, align 8, !tbaa !3, !time !30
  %send_alloca65 = alloca double, !reason !12
  store double %19, double* %send_alloca65, !reason !12
  %send_cast66 = bitcast double* %send_alloca65 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast66, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i8* %0), !reason !12
  %20 = getelementptr inbounds [3 x double], [3 x double]* %receive_load69, i64 %new_phi50, i64 %new_phi51, !time !31
  %send_alloca70 = alloca double*, !reason !12
  store double* %20, double** %send_alloca70, !reason !12
  %send_cast71 = bitcast double** %send_alloca70 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast71, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i8* %0), !reason !12
  %21 = add nuw nsw i64 %new_phi51, 1, !time !32
  %22 = icmp eq i64 %21, 3, !time !33
  %send_alloca78 = alloca i1, !reason !25
  store i1 %22, i1* %send_alloca78, !reason !25
  %send_cast79 = bitcast i1* %send_alloca78 to i8*, !reason !25
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast79, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_34 to i64), i8* %0), !reason !25
  br i1 %22, label %l7, label %l6

l7:                                               ; preds = %l6
  %23 = add nuw nsw i64 %new_phi50, 1, !time !26
  %24 = icmp eq i64 %23, 3, !time !14
  %send_alloca80 = alloca i1, !reason !25
  store i1 %24, i1* %send_alloca80, !reason !25
  %send_cast81 = bitcast i1* %send_alloca80 to i8*, !reason !25
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast81, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_35 to i64), i8* %0), !reason !25
  br i1 %24, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

define void @multiply_1(i8*) {
entry:
  %argument62 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_24 to i64), i8* %0), !reason !7
  %bitcast63 = bitcast i8* %argument62 to [3 x double]**, !reason !7
  %receive_load64 = load [3 x double]*, [3 x double]** %bitcast63, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_24 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  %argument17 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_7 to i64), i8* %0), !reason !7
  %bitcast18 = bitcast i8* %argument17 to [3 x double]**, !reason !7
  %receive_load19 = load [3 x double]*, [3 x double]** %bitcast18, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_1 to i64), i8* %0), !reason !7
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !7
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_2 to i64), i8* %0), !reason !12
  %bitcast9 = bitcast i8* %receive to i64*, !reason !12
  %receive_load10 = load i64, i64* %bitcast9, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_2 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !12
  %receive11 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !12
  %bitcast12 = bitcast i8* %receive11 to i64*, !reason !12
  %receive_load13 = load i64, i64* %bitcast12, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !12
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load10, i64 %receive_load13, !time !34
  store double 0.000000e+00, double* %1, align 8, !tbaa !3, !time !35
  %receive14 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_5 to i64), i8* %0), !reason !12
  %bitcast15 = bitcast i8* %receive14 to double**, !reason !12
  %receive_load16 = load double*, double** %bitcast15, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_5 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  store double 0.000000e+00, double* %receive_load16, align 8, !tbaa !3, !time !30
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive20 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !12
  %bitcast21 = bitcast i8* %receive20 to i64*, !reason !12
  %receive_load22 = load i64, i64* %bitcast21, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !12
  %receive23 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i8* %0), !reason !12
  %bitcast24 = bitcast i8* %receive23 to i64*, !reason !12
  %receive_load25 = load i64, i64* %bitcast24, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !12
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load19, i64 %receive_load22, i64 %receive_load25, !time !34
  %3 = load double, double* %2, align 8, !tbaa !3, !time !35
  %receive26 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_10 to i64), i8* %0), !reason !12
  %bitcast27 = bitcast i8* %receive26 to double*, !reason !12
  %receive_load28 = load double, double* %bitcast27, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_10 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !12
  %4 = fmul double %receive_load28, %3, !time !36
  %send_alloca = alloca double, !reason !12
  store double %4, double* %send_alloca, !reason !12
  %send_cast = bitcast double* %send_alloca to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !12
  %receive29 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_12 to i64), i8* %0), !reason !12
  %bitcast30 = bitcast i8* %receive29 to double**, !reason !12
  %receive_load31 = load double*, double** %bitcast30, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_12 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  %5 = load double, double* %receive_load31, align 8, !tbaa !3, !time !37
  %receive32 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i8* %0), !reason !12
  %bitcast33 = bitcast i8* %receive32 to double*, !reason !12
  %receive_load34 = load double, double* %bitcast33, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !12
  %6 = fadd double %5, %receive_load34, !time !38
  %receive35 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_14 to i64), i8* %0), !reason !12
  %bitcast36 = bitcast i8* %receive35 to double**, !reason !12
  %receive_load37 = load double*, double** %bitcast36, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_14 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  store double %6, double* %receive_load37, align 8, !tbaa !3, !time !39
  %send_alloca38 = alloca double*, !reason !12
  store double* %2, double** %send_alloca38, !reason !12
  %send_cast39 = bitcast double** %send_alloca38 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast39, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_15 to i64), i8* %0), !reason !12
  %7 = load double, double* %1, align 8, !tbaa !3, !time !40
  %send_alloca40 = alloca double, !reason !12
  store double %7, double* %send_alloca40, !reason !12
  %send_cast41 = bitcast double* %send_alloca40 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast41, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !12
  %send_alloca42 = alloca double*, !reason !12
  store double* %1, double** %send_alloca42, !reason !12
  %send_cast43 = bitcast double** %send_alloca42 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast43, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_17 to i64), i8* %0), !reason !12
  %receive44 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_18 to i64), i8* %0), !reason !12
  %bitcast45 = bitcast i8* %receive44 to double**, !reason !12
  %receive_load46 = load double*, double** %bitcast45, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_18 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  %8 = load double, double* %receive_load46, align 8, !tbaa !3, !time !41
  %9 = load double, double* %2, align 8, !tbaa !3, !time !30
  %10 = tail call double @llvm.sqrt.f64(double %9), !time !23
  %11 = fmul double %8, %10, !time !42
  %receive47 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_19 to i64), i8* %0), !reason !12
  %bitcast48 = bitcast i8* %receive47 to double**, !reason !12
  %receive_load49 = load double*, double** %bitcast48, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_19 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  %12 = load double, double* %receive_load49, align 8, !tbaa !3, !time !43
  %13 = fadd double %12, %11, !time !44
  %receive50 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_20 to i64), i8* %0), !reason !12
  %bitcast51 = bitcast i8* %receive50 to double**, !reason !12
  %receive_load52 = load double*, double** %bitcast51, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_20 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  store double %13, double* %receive_load52, align 8, !tbaa !3, !time !45
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_31 to i64), i8* %0), !reason !46
  %bitcast79 = bitcast i8* %broadcast to i1*, !reason !46
  %receive_load80 = load i1, i1* %bitcast79, !reason !46
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_31 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !46
  br i1 %receive_load80, label %l3, label %l2

l3:                                               ; preds = %l2
  %broadcast81 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_32 to i64), i8* %0), !reason !46
  %bitcast82 = bitcast i8* %broadcast81 to i1*, !reason !46
  %receive_load83 = load i1, i1* %bitcast82, !reason !46
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_32 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !46
  br i1 %receive_load83, label %l4, label %l1

l4:                                               ; preds = %l3
  %broadcast84 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_33 to i64), i8* %0), !reason !46
  %bitcast85 = bitcast i8* %broadcast84 to i1*, !reason !46
  %receive_load86 = load i1, i1* %bitcast85, !reason !46
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_33 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !46
  br i1 %receive_load86, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %receive53 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_21 to i64), i8* %0), !reason !12
  %bitcast54 = bitcast i8* %receive53 to i64*, !reason !12
  %receive_load55 = load i64, i64* %bitcast54, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_21 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !12
  %receive56 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i8* %0), !reason !12
  %bitcast57 = bitcast i8* %receive56 to i64*, !reason !12
  %receive_load58 = load i64, i64* %bitcast57, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !12
  %14 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load55, i64 %receive_load58, !time !31
  %15 = load double, double* %14, align 8, !tbaa !3, !time !30
  %receive59 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i8* %0), !reason !12
  %bitcast60 = bitcast i8* %receive59 to double*, !reason !12
  %receive_load61 = load double, double* %bitcast60, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_23 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !12
  %16 = fadd double %receive_load61, %15, !time !36
  %receive65 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i8* %0), !reason !12
  %bitcast66 = bitcast i8* %receive65 to i64*, !reason !12
  %receive_load67 = load i64, i64* %bitcast66, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !12
  %receive68 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i8* %0), !reason !12
  %bitcast69 = bitcast i8* %receive68 to i64*, !reason !12
  %receive_load70 = load i64, i64* %bitcast69, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !12
  %17 = getelementptr inbounds [3 x double], [3 x double]* %receive_load64, i64 %receive_load67, i64 %receive_load70, !time !14
  %send_alloca71 = alloca double*, !reason !12
  store double* %17, double** %send_alloca71, !reason !12
  %send_cast72 = bitcast double** %send_alloca71 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast72, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_27 to i64), i8* %0), !reason !12
  %receive73 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i8* %0), !reason !12
  %bitcast74 = bitcast i8* %receive73 to double*, !reason !12
  %receive_load75 = load double, double* %bitcast74, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !12
  %18 = fadd double %16, %receive_load75, !time !47
  %receive76 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i8* %0), !reason !12
  %bitcast77 = bitcast i8* %receive76 to double**, !reason !12
  %receive_load78 = load double*, double** %bitcast77, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_30 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !12
  store double %18, double* %receive_load78, align 8, !tbaa !3, !time !48
  %broadcast87 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_34 to i64), i8* %0), !reason !46
  %bitcast88 = bitcast i8* %broadcast87 to i1*, !reason !46
  %receive_load89 = load i1, i1* %bitcast88, !reason !46
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_34 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !46
  br i1 %receive_load89, label %l7, label %l6

l7:                                               ; preds = %l6
  %broadcast90 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_35 to i64), i8* %0), !reason !46
  %bitcast91 = bitcast i8* %broadcast90 to i1*, !reason !46
  %receive_load92 = load i1, i1* %bitcast91, !reason !46
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_35 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !46
  br i1 %receive_load92, label %l8, label %l5

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
  %9 = load volatile i8, i8* %7, align 1, !tbaa !49
  store volatile i8 %9, i8* %8, align 1, !tbaa !49
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !50
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !53
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
  %16 = load i64, i64* %15, align 8, !tbaa !54
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !50
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !53
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !54
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
  %10 = load volatile i8, i8* %8, align 1, !tbaa !49
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !49
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !49
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
  store volatile i8 0, i8* %6, align 1, !tbaa !49
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
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"replace argument"}
!8 = !{!"0", !"0"}
!9 = !{!"3", !"3"}
!10 = !{!"7", !"10"}
!11 = !{!"10", !"11"}
!12 = !{!"replace mapped op"}
!13 = !{!"4", !"7"}
!14 = !{!"3", !"6"}
!15 = !{!"7", !"8"}
!16 = !{!"15", !"18"}
!17 = !{!"6", !"7"}
!18 = !{!"8", !"11"}
!19 = !{!"11", !"12"}
!20 = !{!"18", !"20"}
!21 = !{!"23", !"25"}
!22 = !{!"25", !"26"}
!23 = !{!"12", !"15"}
!24 = !{!"20", !"23"}
!25 = !{!"broadcast"}
!26 = !{!"0", !"3"}
!27 = !{!"1", !"1"}
!28 = !{!"1", !"4"}
!29 = !{!"5", !"6"}
!30 = !{!"9", !"10"}
!31 = !{!"6", !"9"}
!32 = !{!"10", !"13"}
!33 = !{!"13", !"16"}
!34 = !{!"5", !"8"}
!35 = !{!"8", !"9"}
!36 = !{!"10", !"12"}
!37 = !{!"3", !"4"}
!38 = !{!"21", !"23"}
!39 = !{!"24", !"25"}
!40 = !{!"15", !"16"}
!41 = !{!"16", !"17"}
!42 = !{!"17", !"19"}
!43 = !{!"0", !"1"}
!44 = !{!"19", !"21"}
!45 = !{!"23", !"24"}
!46 = !{!"receive"}
!47 = !{!"12", !"14"}
!48 = !{!"14", !"15"}
!49 = !{!5, !5, i64 0}
!50 = !{!51, !52, i64 0}
!51 = !{!"Closure", !52, i64 0, !52, i64 8}
!52 = !{!"any pointer", !5, i64 0}
!53 = !{!51, !52, i64 8}
!54 = !{!52, !52, i64 0}
