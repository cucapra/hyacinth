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
@comms_2 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_3 = global { i64, i1, i32 } zeroinitializer
@comms_4 = global { i64, i1, i32 } zeroinitializer
@comms_5 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_6 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_7 = global { double*, i1, i32 } zeroinitializer
@comms_8 = global { double*, i1, i32 } zeroinitializer
@comms_9 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_10 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_11 = global { i1, i1, i32 } zeroinitializer
@comms_12 = global { i1, i1, i32 } zeroinitializer
@comms_13 = global { i1, i1, i32 } zeroinitializer
@comms_14 = global { i1, i1, i32 } zeroinitializer
@comms_15 = global { i1, i1, i32 } zeroinitializer
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
  %8 = phi i64 [ 0, %6 ], [ %42, %41 ], !partition !3
  br label %9

; <label>:9:                                      ; preds = %38, %7
  %10 = phi i64 [ 0, %7 ], [ %39, %38 ], !partition !3
  %11 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %10, !partition !3
  store double 0.000000e+00, double* %11, align 8, !tbaa !4, !partition !3
  %12 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %10, !partition !3
  store double 0.000000e+00, double* %12, align 8, !tbaa !4, !partition !3
  %13 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %10, !partition !8
  store double 0.000000e+00, double* %13, align 8, !tbaa !4, !partition !8
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %14 ], !partition !3
  %16 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %15, !partition !3
  %17 = load double, double* %16, align 8, !tbaa !4, !partition !3
  %18 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %15, i64 %10, !partition !3
  %19 = load double, double* %18, align 8, !tbaa !4, !partition !3
  %20 = fmul double %17, %19, !partition !3
  %21 = tail call double @llvm.sqrt.f64(double %20), !partition !3
  %22 = load double, double* %11, align 8, !tbaa !4, !partition !3
  %23 = fadd double %22, %21, !partition !3
  store double %23, double* %11, align 8, !tbaa !4, !partition !3
  %24 = load double, double* %16, align 8, !tbaa !4, !partition !3
  %25 = tail call double @llvm.sqrt.f64(double %24), !partition !3
  %26 = load double, double* %18, align 8, !tbaa !4, !partition !3
  %27 = fmul double %25, %26, !partition !3
  %28 = load double, double* %12, align 8, !tbaa !4, !partition !3
  %29 = fadd double %28, %27, !partition !3
  store double %29, double* %12, align 8, !tbaa !4, !partition !3
  %30 = load double, double* %16, align 8, !tbaa !4, !partition !3
  %31 = load double, double* %18, align 8, !tbaa !4, !partition !3
  %32 = tail call double @llvm.sqrt.f64(double %31), !partition !3
  %33 = fmul double %30, %32, !partition !3
  %34 = load double, double* %13, align 8, !tbaa !4, !partition !3
  %35 = fadd double %34, %33, !partition !3
  store double %35, double* %13, align 8, !tbaa !4, !partition !3
  %36 = add nuw nsw i64 %15, 1, !partition !3
  %37 = icmp eq i64 %36, 3, !partition !3
  br i1 %37, label %38, label %14

; <label>:38:                                     ; preds = %14
  %39 = add nuw nsw i64 %10, 1, !partition !3
  %40 = icmp eq i64 %39, 3, !partition !3
  br i1 %40, label %41, label %9

; <label>:41:                                     ; preds = %38
  %42 = add nuw nsw i64 %8, 1, !partition !3
  %43 = icmp eq i64 %42, 3, !partition !3
  br i1 %43, label %44, label %7

; <label>:44:                                     ; preds = %59, %41
  %45 = phi i64 [ %60, %59 ], [ 0, %41 ], !partition !3
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %57, %46 ], !partition !3
  %48 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %47, !partition !3
  %49 = load double, double* %48, align 8, !tbaa !4, !partition !3
  %50 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %47, !partition !3
  %51 = load double, double* %50, align 8, !tbaa !4, !partition !3
  %52 = fadd double %49, %51, !partition !3
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %47, !partition !3
  %54 = load double, double* %53, align 8, !tbaa !4, !partition !3
  %55 = fadd double %52, %54, !partition !3
  %56 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %47, !partition !3
  store double %55, double* %56, align 8, !tbaa !4, !partition !3
  %57 = add nuw nsw i64 %47, 1, !partition !3
  %58 = icmp eq i64 %57, 3, !partition !3
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %46
  %60 = add nuw nsw i64 %45, 1, !partition !3
  %61 = icmp eq i64 %60, 3, !partition !3
  br i1 %61, label %62, label %44

; <label>:62:                                     ; preds = %59
  ret void, !partition !3
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
  %22 = load double, double* %21, align 8, !tbaa !4
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
  %send_alloca = alloca [3 x double]*, !reason !9
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !9
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_0 to i64), i8* %6), !reason !9
  %send_alloca1 = alloca [3 x double]*, !reason !9
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !9
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_1 to i64), i8* %6), !reason !9
  %send_alloca3 = alloca [3 x double]*, !reason !9
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !9
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_2 to i64), i8* %6), !reason !9
  %send_alloca5 = alloca [3 x double]*, !reason !9
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !9
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_5 to i64), i8* %6), !reason !9
  %send_alloca7 = alloca [3 x double]*, !reason !9
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !9
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_6 to i64), i8* %6), !reason !9
  %send_alloca9 = alloca [3 x double]*, !reason !9
  store [3 x double]* %4, [3 x double]** %send_alloca9, !reason !9
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_9 to i64), i8* %6), !reason !9
  %send_alloca11 = alloca [3 x double]*, !reason !9
  store [3 x double]* %5, [3 x double]** %send_alloca11, !reason !9
  %send_cast12 = bitcast [3 x double]** %send_alloca11 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_10 to i64), i8* %6), !reason !9
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

define void @multiply_0(i8*) {
entry:
  %argument32 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_10 to i64), i8* %0), !reason !9
  %bitcast33 = bitcast i8* %argument32 to [3 x double]**, !reason !9
  %receive_load34 = load [3 x double]*, [3 x double]** %bitcast33, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  %argument29 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_9 to i64), i8* %0), !reason !9
  %bitcast30 = bitcast i8* %argument29 to [3 x double]**, !reason !9
  %receive_load31 = load [3 x double]*, [3 x double]** %bitcast30, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_9 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  %argument19 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_6 to i64), i8* %0), !reason !9
  %bitcast20 = bitcast i8* %argument19 to [3 x double]**, !reason !9
  %receive_load21 = load [3 x double]*, [3 x double]** %bitcast20, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_6 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  %argument16 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_5 to i64), i8* %0), !reason !9
  %bitcast17 = bitcast i8* %argument16 to [3 x double]**, !reason !9
  %receive_load18 = load [3 x double]*, [3 x double]** %bitcast17, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_5 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  %argument10 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_1 to i64), i8* %0), !reason !9
  %bitcast11 = bitcast i8* %argument10 to [3 x double]**, !reason !9
  %receive_load12 = load [3 x double]*, [3 x double]** %bitcast11, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_0 to i64), i8* %0), !reason !9
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !9
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_0 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %27, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi9 = phi i64 [ 0, %l ], [ %25, %l3 ]
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %new_phi9, !partition !3
  store double 0.000000e+00, double* %1, align 8, !tbaa !4, !partition !3
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load12, i64 %new_phi, i64 %new_phi9, !partition !3
  store double 0.000000e+00, double* %2, align 8, !tbaa !4, !partition !3
  %send_alloca = alloca i64, !reason !10
  store i64 %new_phi, i64* %send_alloca, !reason !10
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !10
  %send_alloca13 = alloca i64, !reason !10
  store i64 %new_phi9, i64* %send_alloca13, !reason !10
  %send_cast14 = bitcast i64* %send_alloca13 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast14, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i8* %0), !reason !10
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi15 = phi i64 [ 0, %l1 ], [ %23, %l2 ]
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load18, i64 %new_phi, i64 %new_phi15, !partition !3
  %4 = load double, double* %3, align 8, !tbaa !4, !partition !3
  %5 = getelementptr inbounds [3 x double], [3 x double]* %receive_load21, i64 %new_phi15, i64 %new_phi9, !partition !3
  %6 = load double, double* %5, align 8, !tbaa !4, !partition !3
  %7 = fmul double %4, %6, !partition !3
  %8 = tail call double @llvm.sqrt.f64(double %7), !partition !3
  %9 = load double, double* %1, align 8, !tbaa !4, !partition !3
  %10 = fadd double %9, %8, !partition !3
  store double %10, double* %1, align 8, !tbaa !4, !partition !3
  %11 = load double, double* %3, align 8, !tbaa !4, !partition !3
  %12 = tail call double @llvm.sqrt.f64(double %11), !partition !3
  %13 = load double, double* %5, align 8, !tbaa !4, !partition !3
  %14 = fmul double %12, %13, !partition !3
  %15 = load double, double* %2, align 8, !tbaa !4, !partition !3
  %16 = fadd double %15, %14, !partition !3
  store double %16, double* %2, align 8, !tbaa !4, !partition !3
  %17 = load double, double* %3, align 8, !tbaa !4, !partition !3
  %18 = load double, double* %5, align 8, !tbaa !4, !partition !3
  %19 = tail call double @llvm.sqrt.f64(double %18), !partition !3
  %20 = fmul double %17, %19, !partition !3
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_7 to i64), i8* %0), !reason !10
  %bitcast22 = bitcast i8* %receive to double**, !reason !10
  %receive_load23 = load double*, double** %bitcast22, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !10
  %21 = load double, double* %receive_load23, align 8, !tbaa !4, !partition !3
  %22 = fadd double %21, %20, !partition !3
  %receive24 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i8* %0), !reason !10
  %bitcast25 = bitcast i8* %receive24 to double**, !reason !10
  %receive_load26 = load double*, double** %bitcast25, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !10
  store double %22, double* %receive_load26, align 8, !tbaa !4, !partition !3
  %23 = add nuw nsw i64 %new_phi15, 1, !partition !3
  %24 = icmp eq i64 %23, 3, !partition !3
  %send_alloca35 = alloca i1, !reason !11
  store i1 %24, i1* %send_alloca35, !reason !11
  %send_cast36 = bitcast i1* %send_alloca35 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast36, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_11 to i64), i8* %0), !reason !11
  br i1 %24, label %l3, label %l2

l3:                                               ; preds = %l2
  %25 = add nuw nsw i64 %new_phi9, 1, !partition !3
  %26 = icmp eq i64 %25, 3, !partition !3
  %send_alloca37 = alloca i1, !reason !11
  store i1 %26, i1* %send_alloca37, !reason !11
  %send_cast38 = bitcast i1* %send_alloca37 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast38, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i8* %0), !reason !11
  br i1 %26, label %l4, label %l1

l4:                                               ; preds = %l3
  %27 = add nuw nsw i64 %new_phi, 1, !partition !3
  %28 = icmp eq i64 %27, 3, !partition !3
  %send_alloca39 = alloca i1, !reason !11
  store i1 %28, i1* %send_alloca39, !reason !11
  %send_cast40 = bitcast i1* %send_alloca39 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast40, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i8* %0), !reason !11
  br i1 %28, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  %new_phi27 = phi i64 [ %40, %l7 ], [ 0, %l4 ]
  br label %l6

l6:                                               ; preds = %l6, %l5
  %new_phi28 = phi i64 [ 0, %l5 ], [ %38, %l6 ]
  %29 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi27, i64 %new_phi28, !partition !3
  %30 = load double, double* %29, align 8, !tbaa !4, !partition !3
  %31 = getelementptr inbounds [3 x double], [3 x double]* %receive_load12, i64 %new_phi27, i64 %new_phi28, !partition !3
  %32 = load double, double* %31, align 8, !tbaa !4, !partition !3
  %33 = fadd double %30, %32, !partition !3
  %34 = getelementptr inbounds [3 x double], [3 x double]* %receive_load31, i64 %new_phi27, i64 %new_phi28, !partition !3
  %35 = load double, double* %34, align 8, !tbaa !4, !partition !3
  %36 = fadd double %33, %35, !partition !3
  %37 = getelementptr inbounds [3 x double], [3 x double]* %receive_load34, i64 %new_phi27, i64 %new_phi28, !partition !3
  store double %36, double* %37, align 8, !tbaa !4, !partition !3
  %38 = add nuw nsw i64 %new_phi28, 1, !partition !3
  %39 = icmp eq i64 %38, 3, !partition !3
  %send_alloca41 = alloca i1, !reason !11
  store i1 %39, i1* %send_alloca41, !reason !11
  %send_cast42 = bitcast i1* %send_alloca41 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast42, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_14 to i64), i8* %0), !reason !11
  br i1 %39, label %l7, label %l6

l7:                                               ; preds = %l6
  %40 = add nuw nsw i64 %new_phi27, 1, !partition !3
  %41 = icmp eq i64 %40, 3, !partition !3
  %send_alloca43 = alloca i1, !reason !11
  store i1 %41, i1* %send_alloca43, !reason !11
  %send_cast44 = bitcast i1* %send_alloca43 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast44, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_15 to i64), i8* %0), !reason !11
  br i1 %41, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

define void @multiply_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_2 to i64), i8* %0), !reason !9
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !9
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms_2 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !10
  %bitcast9 = bitcast i8* %receive to i64*, !reason !10
  %receive_load10 = load i64, i64* %bitcast9, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %receive11 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i8* %0), !reason !10
  %bitcast12 = bitcast i8* %receive11 to i64*, !reason !10
  %receive_load13 = load i64, i64* %bitcast12, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load10, i64 %receive_load13, !partition !8
  store double 0.000000e+00, double* %1, align 8, !tbaa !4, !partition !8
  br label %l2

l2:                                               ; preds = %l2, %l1
  %send_alloca = alloca double*, !reason !10
  store double* %1, double** %send_alloca, !reason !10
  %send_cast = bitcast double** %send_alloca to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_7 to i64), i8* %0), !reason !10
  %send_alloca14 = alloca double*, !reason !10
  store double* %1, double** %send_alloca14, !reason !10
  %send_cast15 = bitcast double** %send_alloca14 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast15, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms_8 to i64), i8* %0), !reason !10
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_11 to i64), i8* %0), !reason !12
  %bitcast16 = bitcast i8* %broadcast to i1*, !reason !12
  %receive_load17 = load i1, i1* %bitcast16, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_11 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !12
  br i1 %receive_load17, label %l3, label %l2

l3:                                               ; preds = %l2
  %broadcast18 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i8* %0), !reason !12
  %bitcast19 = bitcast i8* %broadcast18 to i1*, !reason !12
  %receive_load20 = load i1, i1* %bitcast19, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !12
  br i1 %receive_load20, label %l4, label %l1

l4:                                               ; preds = %l3
  %broadcast21 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i8* %0), !reason !12
  %bitcast22 = bitcast i8* %broadcast21 to i1*, !reason !12
  %receive_load23 = load i1, i1* %bitcast22, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !12
  br i1 %receive_load23, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %broadcast24 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_14 to i64), i8* %0), !reason !12
  %bitcast25 = bitcast i8* %broadcast24 to i1*, !reason !12
  %receive_load26 = load i1, i1* %bitcast25, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_14 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !12
  br i1 %receive_load26, label %l7, label %l6

l7:                                               ; preds = %l6
  %broadcast27 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_15 to i64), i8* %0), !reason !12
  %bitcast28 = bitcast i8* %broadcast27 to i1*, !reason !12
  %receive_load29 = load i1, i1* %bitcast28, !reason !12
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_15 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !12
  br i1 %receive_load29, label %l8, label %l5

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
  %9 = load volatile i8, i8* %7, align 1, !tbaa !13
  store volatile i8 %9, i8* %8, align 1, !tbaa !13
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !14
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !17
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
  %16 = load i64, i64* %15, align 8, !tbaa !18
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !14
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !17
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !18
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
  %10 = load volatile i8, i8* %8, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !13
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !13
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
  store volatile i8 0, i8* %6, align 1, !tbaa !13
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
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"1"}
!9 = !{!"replace argument"}
!10 = !{!"replace mapped op"}
!11 = !{!"broadcast"}
!12 = !{!"receive"}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"Closure", !16, i64 0, !16, i64 8}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!15, !16, i64 8}
!18 = !{!16, !16, i64 0}
