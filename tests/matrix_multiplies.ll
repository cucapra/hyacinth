; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Context = type {}
%union.pthread_attr_t = type { i64, [48 x i8] }

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
@comms_21 = global { i64, i1, i32 } zeroinitializer
@comms_22 = global { i64, i1, i32 } zeroinitializer
@comms_23 = global { i64, i1, i32 } zeroinitializer
@comms_24 = global { i64, i1, i32 } zeroinitializer
@arg_25 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_26 = global { i64, i1, i32 } zeroinitializer
@comms_27 = global { i64, i1, i32 } zeroinitializer
@comms_28 = global { double, i1, i32 } zeroinitializer
@comms_29 = global { i64, i1, i32 } zeroinitializer
@comms_30 = global { i64, i1, i32 } zeroinitializer
@comms_31 = global { double, i1, i32 } zeroinitializer
@arg_32 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms_33 = global { i64, i1, i32 } zeroinitializer
@comms_34 = global { i64, i1, i32 } zeroinitializer
@comms_35 = global { double, i1, i32 } zeroinitializer
@comms_36 = global { i64, i1, i32 } zeroinitializer
@comms_37 = global { i64, i1, i32 } zeroinitializer
@comms_38 = global { i64, i1, i32 } zeroinitializer
@comms_39 = global { i1, i1, i32 } zeroinitializer
@comms_40 = global { i1, i1, i32 } zeroinitializer
@comms_41 = global { i1, i1, i32 } zeroinitializer
@comms_42 = global { i1, i1, i32 } zeroinitializer
@comms_43 = global { i1, i1, i32 } zeroinitializer
@return_struct = global { i1, i1, i32 } zeroinitializer
@__const.main.a = dso_local constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b = dso_local constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str = dso_local constant [4 x i8] c"%f \00", align 1
@funs = global [2 x void (i8*)*] [void (i8*)* @_p_multiply_0, void (i8*)* @_p_multiply_1]

; Function Attrs: nounwind uwtable
define dso_local void @_p_multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture) local_unnamed_addr #0 {
  br label %7

; <label>:7:                                      ; preds = %41, %6
  %8 = phi i64 [ 0, %6 ], [ %42, %41 ], !partition !2, !start !2, !end !2
  br label %9

; <label>:9:                                      ; preds = %38, %7
  %10 = phi i64 [ 0, %7 ], [ %39, %38 ], !partition !3, !start !4, !end !4
  %11 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %10, !partition !2, !start !3, !end !5
  store double 0.000000e+00, double* %11, align 8, !tbaa !6, !partition !2, !start !10, !end !11
  %12 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %10, !partition !2, !start !5, !end !12
  store double 0.000000e+00, double* %12, align 8, !tbaa !6, !partition !2, !start !12, !end !10
  %13 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %10, !partition !3, !start !3, !end !5
  store double 0.000000e+00, double* %13, align 8, !tbaa !6, !partition !3, !start !5, !end !4
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %14 ], !partition !2, !start !13, !end !13
  %16 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %15, !partition !3, !start !11, !end !14
  %17 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !15, !end !16
  %18 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %15, i64 %10, !partition !3, !start !17, !end !18
  %19 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !10, !end !11
  %20 = fmul double %17, %19, !partition !2, !start !13, !end !15
  %21 = tail call double @sqrt(double %20) #3, !partition !3, !start !14, !end !19
  %22 = load double, double* %11, align 8, !tbaa !6, !partition !2, !start !4, !end !18
  %23 = fadd double %21, %22, !partition !2, !start !2, !end !20
  store double %23, double* %11, align 8, !tbaa !6, !partition !2, !start !18, !end !12
  %24 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !16, !end !21
  %25 = tail call double @sqrt(double %24) #3, !partition !2, !start !20, !end !4
  %26 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !18, !end !12
  %27 = fmul double %25, %26, !partition !2, !start !22, !end !23
  %28 = load double, double* %12, align 8, !tbaa !6, !partition !2, !start !24, !end !22
  %29 = fadd double %28, %27, !partition !2, !start !16, !end !24
  store double %29, double* %12, align 8, !tbaa !6, !partition !2, !start !15, !end !16
  %30 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !19, !end !15
  %31 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !12, !end !10
  %32 = tail call double @sqrt(double %31) #3, !partition !2, !start !25, !end !13
  %33 = fmul double %30, %32, !partition !2, !start !11, !end !25
  %34 = load double, double* %13, align 8, !tbaa !6, !partition !3, !start !23, !end !26
  %35 = fadd double %34, %33, !partition !2, !start !12, !end !11
  store double %35, double* %13, align 8, !tbaa !6, !partition !3, !start !21, !end !24
  %36 = add nuw nsw i64 %15, 1, !partition !3, !start !2, !end !17
  %37 = icmp eq i64 %36, 3, !partition !3, !start !24, !end !23
  br i1 %37, label %38, label %14

; <label>:38:                                     ; preds = %14
  %39 = add nuw nsw i64 %10, 1, !partition !2, !start !2, !end !17
  %40 = icmp eq i64 %39, 3, !partition !3, !start !2, !end !17
  br i1 %40, label %41, label %9

; <label>:41:                                     ; preds = %38
  %42 = add nuw nsw i64 %8, 1, !partition !2, !start !3, !end !5
  %43 = icmp eq i64 %42, 3, !partition !3, !start !2, !end !17
  br i1 %43, label %44, label %7

; <label>:44:                                     ; preds = %59, %41
  %45 = phi i64 [ %60, %59 ], [ 0, %41 ], !partition !2, !start !2, !end !2
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %57, %46 ], !partition !2, !start !20, !end !20
  %48 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %47, !partition !2, !start !20, !end !4
  %49 = load double, double* %48, align 8, !tbaa !6, !partition !2, !start !25, !end !14
  %50 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %47, !partition !3, !start !20, !end !4
  %51 = load double, double* %50, align 8, !tbaa !6, !partition !3, !start !27, !end !13
  %52 = fadd double %49, %51, !partition !2, !start !2, !end !20
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %47, !partition !3, !start !10, !end !25
  %54 = load double, double* %53, align 8, !tbaa !6, !partition !3, !start !25, !end !14
  %55 = fadd double %52, %54, !partition !2, !start !14, !end !13
  %56 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %47, !partition !3, !start !4, !end !10
  store double %55, double* %56, align 8, !tbaa !6, !partition !3, !start !14, !end !27
  %57 = add nuw nsw i64 %47, 1, !partition !2, !start !10, !end !25
  %58 = icmp eq i64 %57, 3, !partition !2, !start !4, !end !10
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %46
  %60 = add nuw nsw i64 %45, 1, !partition !2, !start !3, !end !5
  %61 = icmp eq i64 %60, 3, !partition !3, !start !2, !end !17
  br i1 %61, label %62, label %44

; <label>:62:                                     ; preds = %59
  ret void, !partition !2, !start !2, !end !3
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #0 {
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
  %send_alloca = alloca [3 x double]*, !reason !28
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !28
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %6), !reason !28
  %send_alloca1 = alloca [3 x double]*, !reason !28
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !28
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i8* %6), !reason !28
  %send_alloca3 = alloca [3 x double]*, !reason !28
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !28
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_4 to i64), i8* %6), !reason !28
  %send_alloca5 = alloca [3 x double]*, !reason !28
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !28
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_6 to i64), i8* %6), !reason !28
  %send_alloca7 = alloca [3 x double]*, !reason !28
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !28
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i8* %6), !reason !28
  %send_alloca9 = alloca [3 x double]*, !reason !28
  store [3 x double]* %3, [3 x double]** %send_alloca9, !reason !28
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_25 to i64), i8* %6), !reason !28
  %send_alloca11 = alloca [3 x double]*, !reason !28
  store [3 x double]* %5, [3 x double]** %send_alloca11, !reason !28
  %send_cast12 = bitcast [3 x double]** %send_alloca11 to i8*, !reason !28
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_32 to i64), i8* %6), !reason !28
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @putchar(i32) #3

define void @_p_multiply_0(i8*) {
entry:
  %argument11 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i8* %0), !reason !28
  %bitcast12 = bitcast i8* %argument11 to [3 x double]**, !reason !28
  %receive_load13 = load [3 x double]*, [3 x double]** %bitcast12, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_2 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i8* %0), !reason !28
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !28
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_0 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %14, %l4 ]
  br label %l1

l1:                                               ; preds = %l3, %l
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i8* %0), !reason !29
  %bitcast9 = bitcast i8* %receive to i64*, !reason !29
  %receive_load10 = load i64, i64* %bitcast9, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %receive_load10, !partition !2, !start !3, !end !5
  store double 0.000000e+00, double* %1, align 8, !tbaa !6, !partition !2, !start !10, !end !11
  %receive14 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !29
  %bitcast15 = bitcast i8* %receive14 to i64*, !reason !29
  %receive_load16 = load i64, i64* %bitcast15, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load13, i64 %new_phi, i64 %receive_load16, !partition !2, !start !5, !end !12
  store double 0.000000e+00, double* %2, align 8, !tbaa !6, !partition !2, !start !12, !end !10
  %send_alloca = alloca i64, !reason !29
  store i64 %new_phi, i64* %send_alloca, !reason !29
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_5 to i64), i8* %0), !reason !29
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi17 = phi i64 [ 0, %l1 ], [ %receive_load88, %l2 ]
  %send_alloca18 = alloca i64, !reason !29
  store i64 %new_phi, i64* %send_alloca18, !reason !29
  %send_cast19 = bitcast i64* %send_alloca18 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast19, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !29
  %send_alloca20 = alloca i64, !reason !29
  store i64 %new_phi17, i64* %send_alloca20, !reason !29
  %send_cast21 = bitcast i64* %send_alloca20 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast21, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !29
  %send_alloca22 = alloca i64, !reason !29
  store i64 %new_phi17, i64* %send_alloca22, !reason !29
  %send_cast23 = bitcast i64* %send_alloca22 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast23, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !29
  %receive24 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !29
  %bitcast25 = bitcast i8* %receive24 to double*, !reason !29
  %receive_load26 = load double, double* %bitcast25, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %receive27 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i8* %0), !reason !29
  %bitcast28 = bitcast i8* %receive27 to double*, !reason !29
  %receive_load29 = load double, double* %bitcast28, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %3 = fmul double %receive_load26, %receive_load29, !partition !2, !start !13, !end !15
  %send_alloca30 = alloca double, !reason !29
  store double %3, double* %send_alloca30, !reason !29
  %send_cast31 = bitcast double* %send_alloca30 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast31, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i8* %0), !reason !29
  %4 = load double, double* %1, align 8, !tbaa !6, !partition !2, !start !4, !end !18
  %receive32 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !29
  %bitcast33 = bitcast i8* %receive32 to double*, !reason !29
  %receive_load34 = load double, double* %bitcast33, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %5 = fadd double %receive_load34, %4, !partition !2, !start !2, !end !20
  store double %5, double* %1, align 8, !tbaa !6, !partition !2, !start !18, !end !12
  %receive35 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i8* %0), !reason !29
  %bitcast36 = bitcast i8* %receive35 to double*, !reason !29
  %receive_load37 = load double, double* %bitcast36, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %6 = tail call double @sqrt(double %receive_load37) #3, !partition !2, !start !20, !end !4
  %receive38 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !29
  %bitcast39 = bitcast i8* %receive38 to double*, !reason !29
  %receive_load40 = load double, double* %bitcast39, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %7 = fmul double %6, %receive_load40, !partition !2, !start !22, !end !23
  %8 = load double, double* %2, align 8, !tbaa !6, !partition !2, !start !24, !end !22
  %9 = fadd double %8, %7, !partition !2, !start !16, !end !24
  store double %9, double* %2, align 8, !tbaa !6, !partition !2, !start !15, !end !16
  %receive41 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i8* %0), !reason !29
  %bitcast42 = bitcast i8* %receive41 to double*, !reason !29
  %receive_load43 = load double, double* %bitcast42, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %10 = tail call double @sqrt(double %receive_load43) #3, !partition !2, !start !25, !end !13
  %receive44 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i8* %0), !reason !29
  %bitcast45 = bitcast i8* %receive44 to double*, !reason !29
  %receive_load46 = load double, double* %bitcast45, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %11 = fmul double %receive_load46, %10, !partition !2, !start !11, !end !25
  %receive47 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i8* %0), !reason !29
  %bitcast48 = bitcast i8* %receive47 to double*, !reason !29
  %receive_load49 = load double, double* %bitcast48, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %12 = fadd double %receive_load49, %11, !partition !2, !start !12, !end !11
  %send_alloca50 = alloca double, !reason !29
  store double %12, double* %send_alloca50, !reason !29
  %send_cast51 = bitcast double* %send_alloca50 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast51, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i8* %0), !reason !29
  %send_alloca52 = alloca i64, !reason !29
  store i64 %new_phi17, i64* %send_alloca52, !reason !29
  %send_cast53 = bitcast i64* %send_alloca52 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast53, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_21 to i64), i8* %0), !reason !29
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i8* %0), !reason !30
  %bitcast87 = bitcast i8* %repair_phi to i64*, !reason !30
  %receive_load88 = load i64, i64* %bitcast87, !reason !30
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !30
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_39 to i64), i8* %0), !reason !30
  %bitcast89 = bitcast i8* %broadcast to i1*, !reason !30
  %receive_load90 = load i1, i1* %bitcast89, !reason !30
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_39 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !30
  br i1 %receive_load90, label %l3, label %l2

l3:                                               ; preds = %l2
  %receive54 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i8* %0), !reason !29
  %bitcast55 = bitcast i8* %receive54 to i64*, !reason !29
  %receive_load56 = load i64, i64* %bitcast55, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %13 = add nuw nsw i64 %receive_load56, 1, !partition !2, !start !2, !end !17
  %send_alloca57 = alloca i64, !reason !29
  store i64 %13, i64* %send_alloca57, !reason !29
  %send_cast58 = bitcast i64* %send_alloca57 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast58, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i8* %0), !reason !29
  %send_alloca85 = alloca i64, !reason !31
  store i64 %13, i64* %send_alloca85, !reason !31
  %send_cast86 = bitcast i64* %send_alloca85 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast86, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i8* %0), !reason !31
  %broadcast91 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_40 to i64), i8* %0), !reason !30
  %bitcast92 = bitcast i8* %broadcast91 to i1*, !reason !30
  %receive_load93 = load i1, i1* %bitcast92, !reason !30
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_40 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !30
  br i1 %receive_load93, label %l4, label %l1

l4:                                               ; preds = %l3
  %14 = add nuw nsw i64 %new_phi, 1, !partition !2, !start !3, !end !5
  %send_alloca59 = alloca i64, !reason !29
  store i64 %14, i64* %send_alloca59, !reason !29
  %send_cast60 = bitcast i64* %send_alloca59 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast60, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i8* %0), !reason !29
  %broadcast94 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_41 to i64), i8* %0), !reason !30
  %bitcast95 = bitcast i8* %broadcast94 to i1*, !reason !30
  %receive_load96 = load i1, i1* %bitcast95, !reason !30
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_41 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !30
  br i1 %receive_load96, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  %new_phi61 = phi i64 [ %21, %l7 ], [ 0, %l4 ]
  br label %l6

l6:                                               ; preds = %l6, %l5
  %new_phi62 = phi i64 [ 0, %l5 ], [ %19, %l6 ]
  %15 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi61, i64 %new_phi62, !partition !2, !start !20, !end !4
  %16 = load double, double* %15, align 8, !tbaa !6, !partition !2, !start !25, !end !14
  %send_alloca63 = alloca i64, !reason !29
  store i64 %new_phi61, i64* %send_alloca63, !reason !29
  %send_cast64 = bitcast i64* %send_alloca63 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast64, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i8* %0), !reason !29
  %send_alloca65 = alloca i64, !reason !29
  store i64 %new_phi62, i64* %send_alloca65, !reason !29
  %send_cast66 = bitcast i64* %send_alloca65 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast66, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i8* %0), !reason !29
  %receive67 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i8* %0), !reason !29
  %bitcast68 = bitcast i8* %receive67 to double*, !reason !29
  %receive_load69 = load double, double* %bitcast68, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %17 = fadd double %16, %receive_load69, !partition !2, !start !2, !end !20
  %send_alloca70 = alloca i64, !reason !29
  store i64 %new_phi61, i64* %send_alloca70, !reason !29
  %send_cast71 = bitcast i64* %send_alloca70 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast71, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i8* %0), !reason !29
  %send_alloca72 = alloca i64, !reason !29
  store i64 %new_phi62, i64* %send_alloca72, !reason !29
  %send_cast73 = bitcast i64* %send_alloca72 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast73, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i8* %0), !reason !29
  %receive74 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_31 to i64), i8* %0), !reason !29
  %bitcast75 = bitcast i8* %receive74 to double*, !reason !29
  %receive_load76 = load double, double* %bitcast75, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_31 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %18 = fadd double %17, %receive_load76, !partition !2, !start !14, !end !13
  %send_alloca77 = alloca i64, !reason !29
  store i64 %new_phi61, i64* %send_alloca77, !reason !29
  %send_cast78 = bitcast i64* %send_alloca77 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast78, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i8* %0), !reason !29
  %send_alloca79 = alloca i64, !reason !29
  store i64 %new_phi62, i64* %send_alloca79, !reason !29
  %send_cast80 = bitcast i64* %send_alloca79 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast80, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_34 to i64), i8* %0), !reason !29
  %send_alloca81 = alloca double, !reason !29
  store double %18, double* %send_alloca81, !reason !29
  %send_cast82 = bitcast double* %send_alloca81 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast82, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_35 to i64), i8* %0), !reason !29
  %19 = add nuw nsw i64 %new_phi62, 1, !partition !2, !start !10, !end !25
  %20 = icmp eq i64 %19, 3, !partition !2, !start !4, !end !10
  %send_alloca97 = alloca i1, !reason !32
  store i1 %20, i1* %send_alloca97, !reason !32
  %send_cast98 = bitcast i1* %send_alloca97 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast98, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_42 to i64), i8* %0), !reason !32
  br i1 %20, label %l7, label %l6

l7:                                               ; preds = %l6
  %21 = add nuw nsw i64 %new_phi61, 1, !partition !2, !start !3, !end !5
  %send_alloca83 = alloca i64, !reason !29
  store i64 %21, i64* %send_alloca83, !reason !29
  %send_cast84 = bitcast i64* %send_alloca83 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast84, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i8* %0), !reason !29
  %broadcast99 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_43 to i64), i8* %0), !reason !30
  %bitcast100 = bitcast i8* %broadcast99 to i1*, !reason !30
  %receive_load101 = load i1, i1* %bitcast100, !reason !30
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_43 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !30
  br i1 %receive_load101, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

define void @_p_multiply_1(i8*) {
entry:
  %argument80 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_32 to i64), i8* %0), !reason !28
  %bitcast81 = bitcast i8* %argument80 to [3 x double]**, !reason !28
  %receive_load82 = load [3 x double]*, [3 x double]** %bitcast81, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_32 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %argument61 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_25 to i64), i8* %0), !reason !28
  %bitcast62 = bitcast i8* %argument61 to [3 x double]**, !reason !28
  %receive_load63 = load [3 x double]*, [3 x double]** %bitcast62, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_25 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %argument22 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i8* %0), !reason !28
  %bitcast23 = bitcast i8* %argument22 to [3 x double]**, !reason !28
  %receive_load24 = load [3 x double]*, [3 x double]** %bitcast23, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_9 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %argument13 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_6 to i64), i8* %0), !reason !28
  %bitcast14 = bitcast i8* %argument13 to [3 x double]**, !reason !28
  %receive_load15 = load [3 x double]*, [3 x double]** %bitcast14, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_6 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_4 to i64), i8* %0), !reason !28
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !28
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !28
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @arg_4 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !28
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi = phi i64 [ 0, %l ], [ %receive_load96, %l3 ]
  %send_alloca = alloca i64, !reason !29
  store i64 %new_phi, i64* %send_alloca, !reason !29
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_1 to i64), i8* %0), !reason !29
  %send_alloca9 = alloca i64, !reason !29
  store i64 %new_phi, i64* %send_alloca9, !reason !29
  %send_cast10 = bitcast i64* %send_alloca9 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !29
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_5 to i64), i8* %0), !reason !29
  %bitcast11 = bitcast i8* %receive to i64*, !reason !29
  %receive_load12 = load i64, i64* %bitcast11, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_5 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load12, i64 %new_phi, !partition !3, !start !3, !end !5
  store double 0.000000e+00, double* %1, align 8, !tbaa !6, !partition !3, !start !5, !end !4
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive16 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !29
  %bitcast17 = bitcast i8* %receive16 to i64*, !reason !29
  %receive_load18 = load i64, i64* %bitcast17, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %receive19 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !29
  %bitcast20 = bitcast i8* %receive19 to i64*, !reason !29
  %receive_load21 = load i64, i64* %bitcast20, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load15, i64 %receive_load18, i64 %receive_load21, !partition !3, !start !11, !end !14
  %3 = load double, double* %2, align 8, !tbaa !6, !partition !3, !start !15, !end !16
  %receive25 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i8* %0), !reason !29
  %bitcast26 = bitcast i8* %receive25 to i64*, !reason !29
  %receive_load27 = load i64, i64* %bitcast26, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %4 = getelementptr inbounds [3 x double], [3 x double]* %receive_load24, i64 %receive_load27, i64 %new_phi, !partition !3, !start !17, !end !18
  %5 = load double, double* %4, align 8, !tbaa !6, !partition !3, !start !10, !end !11
  %send_alloca28 = alloca double, !reason !29
  store double %3, double* %send_alloca28, !reason !29
  %send_cast29 = bitcast double* %send_alloca28 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast29, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !29
  %send_alloca30 = alloca double, !reason !29
  store double %5, double* %send_alloca30, !reason !29
  %send_cast31 = bitcast double* %send_alloca30 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast31, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i8* %0), !reason !29
  %receive32 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i8* %0), !reason !29
  %bitcast33 = bitcast i8* %receive32 to double*, !reason !29
  %receive_load34 = load double, double* %bitcast33, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  %6 = tail call double @sqrt(double %receive_load34) #3, !partition !3, !start !14, !end !19
  %send_alloca35 = alloca double, !reason !29
  store double %6, double* %send_alloca35, !reason !29
  %send_cast36 = bitcast double* %send_alloca35 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast36, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_14 to i64), i8* %0), !reason !29
  %7 = load double, double* %2, align 8, !tbaa !6, !partition !3, !start !16, !end !21
  %send_alloca37 = alloca double, !reason !29
  store double %7, double* %send_alloca37, !reason !29
  %send_cast38 = bitcast double* %send_alloca37 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast38, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_15 to i64), i8* %0), !reason !29
  %8 = load double, double* %4, align 8, !tbaa !6, !partition !3, !start !18, !end !12
  %send_alloca39 = alloca double, !reason !29
  store double %8, double* %send_alloca39, !reason !29
  %send_cast40 = bitcast double* %send_alloca39 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast40, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_16 to i64), i8* %0), !reason !29
  %9 = load double, double* %2, align 8, !tbaa !6, !partition !3, !start !19, !end !15
  %10 = load double, double* %4, align 8, !tbaa !6, !partition !3, !start !12, !end !10
  %send_alloca41 = alloca double, !reason !29
  store double %10, double* %send_alloca41, !reason !29
  %send_cast42 = bitcast double* %send_alloca41 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast42, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_17 to i64), i8* %0), !reason !29
  %send_alloca43 = alloca double, !reason !29
  store double %9, double* %send_alloca43, !reason !29
  %send_cast44 = bitcast double* %send_alloca43 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast44, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_18 to i64), i8* %0), !reason !29
  %11 = load double, double* %1, align 8, !tbaa !6, !partition !3, !start !23, !end !26
  %send_alloca45 = alloca double, !reason !29
  store double %11, double* %send_alloca45, !reason !29
  %send_cast46 = bitcast double* %send_alloca45 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast46, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_19 to i64), i8* %0), !reason !29
  %receive47 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i8* %0), !reason !29
  %bitcast48 = bitcast i8* %receive47 to double*, !reason !29
  %receive_load49 = load double, double* %bitcast48, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_20 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  store double %receive_load49, double* %1, align 8, !tbaa !6, !partition !3, !start !21, !end !24
  %receive50 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_21 to i64), i8* %0), !reason !29
  %bitcast51 = bitcast i8* %receive50 to i64*, !reason !29
  %receive_load52 = load i64, i64* %bitcast51, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_21 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %12 = add nuw nsw i64 %receive_load52, 1, !partition !3, !start !2, !end !17
  %13 = icmp eq i64 %12, 3, !partition !3, !start !24, !end !23
  %send_alloca97 = alloca i64, !reason !31
  store i64 %12, i64* %send_alloca97, !reason !31
  %send_cast98 = bitcast i64* %send_alloca97 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast98, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i8* %0), !reason !31
  %send_alloca99 = alloca i1, !reason !32
  store i1 %13, i1* %send_alloca99, !reason !32
  %send_cast100 = bitcast i1* %send_alloca99 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast100, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_39 to i64), i8* %0), !reason !32
  br i1 %13, label %l3, label %l2

l3:                                               ; preds = %l2
  %send_alloca53 = alloca i64, !reason !29
  store i64 %new_phi, i64* %send_alloca53, !reason !29
  %send_cast54 = bitcast i64* %send_alloca53 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast54, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_22 to i64), i8* %0), !reason !29
  %receive55 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i8* %0), !reason !29
  %bitcast56 = bitcast i8* %receive55 to i64*, !reason !29
  %receive_load57 = load i64, i64* %bitcast56, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %14 = icmp eq i64 %receive_load57, 3, !partition !3, !start !2, !end !17
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i8* %0), !reason !30
  %bitcast95 = bitcast i8* %repair_phi to i64*, !reason !30
  %receive_load96 = load i64, i64* %bitcast95, !reason !30
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !30
  %send_alloca101 = alloca i1, !reason !32
  store i1 %14, i1* %send_alloca101, !reason !32
  %send_cast102 = bitcast i1* %send_alloca101 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast102, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_40 to i64), i8* %0), !reason !32
  br i1 %14, label %l4, label %l1

l4:                                               ; preds = %l3
  %receive58 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i8* %0), !reason !29
  %bitcast59 = bitcast i8* %receive58 to i64*, !reason !29
  %receive_load60 = load i64, i64* %bitcast59, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %15 = icmp eq i64 %receive_load60, 3, !partition !3, !start !2, !end !17
  %send_alloca103 = alloca i1, !reason !32
  store i1 %15, i1* %send_alloca103, !reason !32
  %send_cast104 = bitcast i1* %send_alloca103 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast104, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_41 to i64), i8* %0), !reason !32
  br i1 %15, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %receive64 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i8* %0), !reason !29
  %bitcast65 = bitcast i8* %receive64 to i64*, !reason !29
  %receive_load66 = load i64, i64* %bitcast65, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_26 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %receive67 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i8* %0), !reason !29
  %bitcast68 = bitcast i8* %receive67 to i64*, !reason !29
  %receive_load69 = load i64, i64* %bitcast68, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_27 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %16 = getelementptr inbounds [3 x double], [3 x double]* %receive_load63, i64 %receive_load66, i64 %receive_load69, !partition !3, !start !20, !end !4
  %17 = load double, double* %16, align 8, !tbaa !6, !partition !3, !start !27, !end !13
  %send_alloca70 = alloca double, !reason !29
  store double %17, double* %send_alloca70, !reason !29
  %send_cast71 = bitcast double* %send_alloca70 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast71, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_28 to i64), i8* %0), !reason !29
  %receive72 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i8* %0), !reason !29
  %bitcast73 = bitcast i8* %receive72 to i64*, !reason !29
  %receive_load74 = load i64, i64* %bitcast73, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_29 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %receive75 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i8* %0), !reason !29
  %bitcast76 = bitcast i8* %receive75 to i64*, !reason !29
  %receive_load77 = load i64, i64* %bitcast76, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %18 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load74, i64 %receive_load77, !partition !3, !start !10, !end !25
  %19 = load double, double* %18, align 8, !tbaa !6, !partition !3, !start !25, !end !14
  %send_alloca78 = alloca double, !reason !29
  store double %19, double* %send_alloca78, !reason !29
  %send_cast79 = bitcast double* %send_alloca78 to i8*, !reason !29
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast79, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_31 to i64), i8* %0), !reason !29
  %receive83 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i8* %0), !reason !29
  %bitcast84 = bitcast i8* %receive83 to i64*, !reason !29
  %receive_load85 = load i64, i64* %bitcast84, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %receive86 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_34 to i64), i8* %0), !reason !29
  %bitcast87 = bitcast i8* %receive86 to i64*, !reason !29
  %receive_load88 = load i64, i64* %bitcast87, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_34 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %20 = getelementptr inbounds [3 x double], [3 x double]* %receive_load82, i64 %receive_load85, i64 %receive_load88, !partition !3, !start !4, !end !10
  %receive89 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_35 to i64), i8* %0), !reason !29
  %bitcast90 = bitcast i8* %receive89 to double*, !reason !29
  %receive_load91 = load double, double* %bitcast90, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_35 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !29
  store double %receive_load91, double* %20, align 8, !tbaa !6, !partition !3, !start !14, !end !27
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_42 to i64), i8* %0), !reason !30
  %bitcast105 = bitcast i8* %broadcast to i1*, !reason !30
  %receive_load106 = load i1, i1* %bitcast105, !reason !30
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_42 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !30
  br i1 %receive_load106, label %l7, label %l6

l7:                                               ; preds = %l6
  %receive92 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i8* %0), !reason !29
  %bitcast93 = bitcast i8* %receive92 to i64*, !reason !29
  %receive_load94 = load i64, i64* %bitcast93, !reason !29
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_36 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !29
  %21 = icmp eq i64 %receive_load94, 3, !partition !3, !start !2, !end !17
  %send_alloca107 = alloca i1, !reason !32
  store i1 %21, i1* %send_alloca107, !reason !32
  %send_cast108 = bitcast i1* %send_alloca107 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast108, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_43 to i64), i8* %0), !reason !32
  br i1 %21, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @volatile_copy(i8*, i8*, i32) local_unnamed_addr #4 {
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

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local noalias i8* @init() #5 {
  ret i8* null
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @_call_function(i8* nocapture readonly) #0 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !34
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !37
  tail call void %3(%struct.Context* %6) #3
  ret i8* null
}

; Function Attrs: nounwind uwtable
define dso_local i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #0 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias i8* @malloc(i64 %5) #3
  %7 = bitcast i8* %6 to i64*
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %11

; <label>:11:                                     ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %22, %11 ]
  %13 = tail call noalias i8* @malloc(i64 16) #3
  %14 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %12
  %15 = bitcast void (i8*)** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !38
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !34
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !37
  %20 = getelementptr inbounds i64, i64* %7, i64 %12
  %21 = tail call i32 @pthread_create(i64* %20, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #3
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @join_partitioned_functions(i32, i8* nocapture readonly) #0 {
  %3 = bitcast i8* %1 to i64*
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = zext i32 %0 to i64
  br label %7

; <label>:7:                                      ; preds = %7, %5
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds i64, i64* %3, i64 %8
  %10 = load i64, i64* %9, align 8, !tbaa !39
  %11 = tail call i32 @pthread_join(i64 %10, i8** null) #3
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare dso_local i32 @pthread_join(i64, i8**) local_unnamed_addr #6

; Function Attrs: norecurse nounwind uwtable
define dso_local void @send(i8*, i32, i32, i64, i8* nocapture readnone) #4 {
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

; Function Attrs: norecurse nounwind uwtable
define dso_local i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #4 {
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

; Function Attrs: norecurse nounwind uwtable
define dso_local i8* @receive(i32, i32, i64, i8* nocapture readnone) #4 {
  %5 = tail call i8* @_receive(i32 %0, i64 %2, i8* undef)
  ret i8* %5
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @free_comms(i64, i32, i8* nocapture readnone) #4 {
  %4 = inttoptr i64 %0 to i8*
  %5 = sext i32 %1 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  store volatile i8 0, i8* %6, align 1, !tbaa !33
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @send_argument(i8*, i32, i32, i64, i8* nocapture readnone) #4 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 %3, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i8* @receive_argument(i32, i64, i8* nocapture readnone) #4 {
  %4 = tail call i8* @_receive(i32 %0, i64 %1, i8* undef)
  ret i8* %4
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @send_return(i8*, i32, i8* nocapture readnone) local_unnamed_addr #4 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 ptrtoint ({ i1, i1, i32 }* @return_struct to i64), i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i8* @receive_return(i32, i8* nocapture readnone) local_unnamed_addr #4 {
  %3 = tail call i8* @_receive(i32 %0, i64 ptrtoint ({ i1, i1, i32 }* @return_struct to i64), i8* undef)
  ret i8* %3
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @send_token(i32, i64, i8* nocapture readnone) local_unnamed_addr #4 {
  tail call void @send(i8* null, i32 0, i32 undef, i64 %1, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @receive_token(i64, i8* nocapture readnone) local_unnamed_addr #4 {
  %3 = tail call i8* @_receive(i32 0, i64 %0, i8* undef)
  ret void
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 8.0.0-3~ubuntu18.04.1 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"0"}
!3 = !{!"1"}
!4 = !{!"5"}
!5 = !{!"4"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"8"}
!11 = !{!"9"}
!12 = !{!"7"}
!13 = !{!"14"}
!14 = !{!"12"}
!15 = !{!"16"}
!16 = !{!"17"}
!17 = !{!"3"}
!18 = !{!"6"}
!19 = !{!"15"}
!20 = !{!"2"}
!21 = !{!"18"}
!22 = !{!"20"}
!23 = !{!"22"}
!24 = !{!"19"}
!25 = !{!"11"}
!26 = !{!"23"}
!27 = !{!"13"}
!28 = !{!"replace argument"}
!29 = !{!"replace mapped op"}
!30 = !{!"receive"}
!31 = !{!"repair_phi"}
!32 = !{!"broadcast"}
!33 = !{!8, !8, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"Closure", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !8, i64 0}
!37 = !{!35, !36, i64 8}
!38 = !{!36, !36, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"long", !8, i64 0}
