; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Context = type {}
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@return_struct = global { i1, i1, i32 } zeroinitializer
@comms = global { [3 x double]*, i1, i32 } zeroinitializer
@comms.1 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms.2 = global { i64, i1, i32 } zeroinitializer
@comms.3 = global { i64, i1, i32 } zeroinitializer
@comms.4 = global { [3 x double]*, i1, i32 } zeroinitializer
@comms.5 = global { double, i1, i32 } zeroinitializer
@comms.6 = global { double*, i1, i32 } zeroinitializer
@comms.7 = global { double*, i1, i32 } zeroinitializer
@return_struct.8 = global { i1, i1, i32 } zeroinitializer
@return_struct.9 = global { i1, i1, i32 } zeroinitializer
@comms.10 = global { i1, i1, i32 } zeroinitializer
@comms.11 = global { i1, i1, i32 } zeroinitializer
@comms.12 = global { i1, i1, i32 } zeroinitializer
@funs = global [2 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1]
@__const.main.a.2 = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b.4 = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@__const.main.a = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]]
@__const.main.b = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]]
@.str = global [4 x i8] c"%f \00"

; Function Attrs: norecurse nounwind ssp uwtable
define void @multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %23, %3
  %5 = phi i64 [ 0, %3 ], [ %24, %23 ]
  br label %6

; <label>:6:                                      ; preds = %20, %4
  %7 = phi i64 [ 0, %4 ], [ %21, %20 ]
  %8 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %5, i64 %7
  store double 0.000000e+00, double* %8, align 8, !tbaa !3
  br label %9

; <label>:9:                                      ; preds = %9, %6
  %10 = phi i64 [ 0, %6 ], [ %18, %9 ]
  %11 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %5, i64 %10
  %12 = load double, double* %11, align 8, !tbaa !3
  %13 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %10, i64 %7
  %14 = load double, double* %13, align 8, !tbaa !3
  %15 = fmul double %12, %14
  %16 = load double, double* %8, align 8, !tbaa !3
  %17 = fadd double %16, %15
  store double %17, double* %8, align 8, !tbaa !3
  %18 = add nuw nsw i64 %10, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %20, label %9

; <label>:20:                                     ; preds = %9
  %21 = add nuw nsw i64 %7, 1
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %6

; <label>:23:                                     ; preds = %20
  %24 = add nuw nsw i64 %5, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %4

; <label>:26:                                     ; preds = %23
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = alloca [3 x [3 x double]], align 16
  %4 = alloca [3 x [3 x double]], align 16
  %5 = alloca [3 x [3 x double]], align 16
  %6 = bitcast [3 x [3 x double]]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %6, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a.2 to i8*), i64 72, i1 false)
  %7 = bitcast [3 x [3 x double]]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %7, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b.4 to i8*), i64 72, i1 false)
  %8 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %5, i64 0, i64 0
  %10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 0
  call void @replace_multiply([3 x double]* nonnull %8, [3 x double]* nonnull %9, [3 x double]* nonnull %10)
  br label %11

; <label>:11:                                     ; preds = %20, %2
  %12 = phi i64 [ 0, %2 ], [ %22, %20 ]
  br label %13

; <label>:13:                                     ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %18, %13 ]
  %15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 %12, i64 %14
  %16 = load double, double* %15, align 8, !tbaa !3
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %16)
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

define void @replace_multiply([3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %3 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  %send_alloca = alloca [3 x double]*, !reason !7
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !7
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms to i64), i8* %3), !reason !7
  %send_alloca1 = alloca [3 x double]*, !reason !7
  store [3 x double]* %0, [3 x double]** %send_alloca1, !reason !7
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms.1 to i64), i8* %3), !reason !7
  %send_alloca3 = alloca [3 x double]*, !reason !7
  store [3 x double]* %1, [3 x double]** %send_alloca3, !reason !7
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms.4 to i64), i8* %3), !reason !7
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare i32 @putchar(i32) #4

define void @multiply_0(i8*) {
entry:
  %argument10 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms.4 to i64), i8* %0), !reason !7
  %bitcast11 = bitcast i8* %argument10 to [3 x double]**, !reason !7
  %receive_load12 = load [3 x double]*, [3 x double]** %bitcast11, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms.4 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms to i64), i8* %0), !reason !7
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !7
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %8, %l4 ], !time !8
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi6 = phi i64 [ 0, %l ], [ %6, %l3 ], !time !8
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %new_phi6, !time !8
  store double 0.000000e+00, double* %1, align 8, !tbaa !3, !time !8
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi7 = phi i64 [ 0, %l1 ], [ %4, %l2 ], !time !9
  %send_alloca = alloca i64, !reason !10
  store i64 %new_phi, i64* %send_alloca, !reason !10
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms.2 to i64), i8* %0), !reason !10
  %send_alloca8 = alloca i64, !reason !10
  store i64 %new_phi7, i64* %send_alloca8, !reason !10
  %send_cast9 = bitcast i64* %send_alloca8 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast9, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms.3 to i64), i8* %0), !reason !10
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load12, i64 %new_phi7, i64 %new_phi6, !time !11
  %3 = load double, double* %2, align 8, !tbaa !3, !time !12
  %send_alloca13 = alloca double, !reason !10
  store double %3, double* %send_alloca13, !reason !10
  %send_cast14 = bitcast double* %send_alloca13 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast14, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms.5 to i64), i8* %0), !reason !10
  %send_alloca15 = alloca double*, !reason !10
  store double* %1, double** %send_alloca15, !reason !10
  %send_cast16 = bitcast double** %send_alloca15 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast16, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms.6 to i64), i8* %0), !reason !10
  %send_alloca17 = alloca double*, !reason !10
  store double* %1, double** %send_alloca17, !reason !10
  %send_cast18 = bitcast double** %send_alloca17 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast18, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ double*, i1, i32 }* @comms.7 to i64), i8* %0), !reason !10
  %4 = add nuw nsw i64 %new_phi7, 1, !time !13
  %5 = icmp eq i64 %4, 3, !time !14
  %send_alloca19 = alloca i1, !reason !15
  store i1 %5, i1* %send_alloca19, !reason !15
  %send_cast20 = bitcast i1* %send_alloca19 to i8*, !reason !15
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast20, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms.10 to i64), i8* %0), !reason !15
  br i1 %5, label %l3, label %l2

l3:                                               ; preds = %l2
  %6 = add nuw nsw i64 %new_phi6, 1, !time !16
  %7 = icmp eq i64 %6, 3, !time !11
  %send_alloca21 = alloca i1, !reason !15
  store i1 %7, i1* %send_alloca21, !reason !15
  %send_cast22 = bitcast i1* %send_alloca21 to i8*, !reason !15
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast22, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms.11 to i64), i8* %0), !reason !15
  br i1 %7, label %l4, label %l1

l4:                                               ; preds = %l3
  %8 = add nuw nsw i64 %new_phi, 1, !time !16
  %9 = icmp eq i64 %8, 3, !time !11
  %send_alloca23 = alloca i1, !reason !15
  store i1 %9, i1* %send_alloca23, !reason !15
  %send_cast24 = bitcast i1* %send_alloca23 to i8*, !reason !15
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast24, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms.12 to i64), i8* %0), !reason !15
  br i1 %9, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

define void @multiply_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms.1 to i64), i8* %0), !reason !7
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !7
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ [3 x double]*, i1, i32 }* @comms.1 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms.2 to i64), i8* %0), !reason !10
  %bitcast6 = bitcast i8* %receive to i64*, !reason !10
  %receive_load7 = load i64, i64* %bitcast6, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms.2 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %receive8 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms.3 to i64), i8* %0), !reason !10
  %bitcast9 = bitcast i8* %receive8 to i64*, !reason !10
  %receive_load10 = load i64, i64* %bitcast9, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms.3 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load7, i64 %receive_load10, !time !17
  %2 = load double, double* %1, align 8, !tbaa !3, !time !18
  %receive11 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms.5 to i64), i8* %0), !reason !10
  %bitcast12 = bitcast i8* %receive11 to double*, !reason !10
  %receive_load13 = load double, double* %bitcast12, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms.5 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !10
  %3 = fmul double %2, %receive_load13, !time !19
  %receive14 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms.6 to i64), i8* %0), !reason !10
  %bitcast15 = bitcast i8* %receive14 to double**, !reason !10
  %receive_load16 = load double*, double** %bitcast15, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms.6 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !10
  %4 = load double, double* %receive_load16, align 8, !tbaa !3, !time !20
  %5 = fadd double %4, %3, !time !21
  %receive17 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ double*, i1, i32 }* @comms.7 to i64), i8* %0), !reason !10
  %bitcast18 = bitcast i8* %receive17 to double**, !reason !10
  %receive_load19 = load double*, double** %bitcast18, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double*, i1, i32 }* @comms.7 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !10
  store double %5, double* %receive_load19, align 8, !tbaa !3, !time !22
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms.10 to i64), i8* %0), !reason !23
  %bitcast20 = bitcast i8* %broadcast to i1*, !reason !23
  %receive_load21 = load i1, i1* %bitcast20, !reason !23
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms.10 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !23
  br i1 %receive_load21, label %l3, label %l2

l3:                                               ; preds = %l2
  %broadcast22 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms.11 to i64), i8* %0), !reason !23
  %bitcast23 = bitcast i8* %broadcast22 to i1*, !reason !23
  %receive_load24 = load i1, i1* %bitcast23, !reason !23
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms.11 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !23
  br i1 %receive_load24, label %l4, label %l1

l4:                                               ; preds = %l3
  %broadcast25 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms.12 to i64), i8* %0), !reason !23
  %bitcast26 = bitcast i8* %broadcast25 to i1*, !reason !23
  %receive_load27 = load i1, i1* %bitcast26, !reason !23
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms.12 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !23
  br i1 %receive_load27, label %l5, label %l

l5:                                               ; preds = %l4
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @volatile_copy(i8*, i8*, i32) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

; <label>:5:                                      ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ %2, %3 ]
  %7 = phi i8* [ %11, %5 ], [ %1, %3 ]
  %8 = phi i8* [ %10, %5 ], [ %0, %3 ]
  %9 = load volatile i8, i8* %7, align 1, !tbaa !24
  store volatile i8 %9, i8* %8, align 1, !tbaa !24
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = add i32 %6, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

; <label>:14:                                     ; preds = %5, %3
  ret void
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define noalias i8* @init() #5 {
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !25
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !28
  tail call void %3(%struct.Context* %6) #4
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #1 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_t**
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %11

; <label>:11:                                     ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %22, %11 ]
  %13 = tail call i8* @malloc(i64 16) #8
  %14 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %12
  %15 = bitcast void (i8*)** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !29
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !25
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !28
  %20 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %12
  %21 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %20, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #4
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #6

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #7

; Function Attrs: nounwind ssp uwtable
define void @join_partitioned_functions(i32, i8* nocapture readonly) #1 {
  %3 = bitcast i8* %1 to %struct._opaque_pthread_t**
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = zext i32 %0 to i64
  br label %7

; <label>:7:                                      ; preds = %7, %5
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %3, i64 %8
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !29
  %11 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %10, i8** null) #4
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #7

; Function Attrs: norecurse nounwind ssp uwtable
define void @send(i8*, i32, i32, i64, i8* nocapture readnone) #0 {
  %6 = inttoptr i64 %3 to i8*
  %7 = sext i32 %1 to i64
  %8 = getelementptr i8, i8* %6, i64 %7
  br label %9

; <label>:9:                                      ; preds = %9, %5
  %10 = load volatile i8, i8* %8, align 1, !tbaa !24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !24
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #0 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !24
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %7, label %10

; <label>:10:                                     ; preds = %7
  %11 = inttoptr i64 %1 to i8*
  ret i8* %11
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive(i32, i32, i64, i8* nocapture readnone) #0 {
  %5 = tail call i8* @_receive(i32 %0, i64 %2, i8* undef)
  ret i8* %5
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @free_comms(i64, i32, i8* nocapture readnone) #0 {
  %4 = inttoptr i64 %0 to i8*
  %5 = sext i32 %1 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  store volatile i8 0, i8* %6, align 1, !tbaa !24
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_argument(i8*, i32, i32, i64, i8* nocapture readnone) #0 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 %3, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_argument(i32, i64, i8* nocapture readnone) #0 {
  %4 = tail call i8* @_receive(i32 %0, i64 %1, i8* undef)
  ret i8* %4
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_return(i8*, i32, i8* nocapture readnone) local_unnamed_addr #0 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 ptrtoint ({ i1, i1, i32 }* @return_struct to i64), i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_return(i32, i8* nocapture readnone) local_unnamed_addr #0 {
  %3 = tail call i8* @_receive(i32 %0, i64 ptrtoint ({ i1, i1, i32 }* @return_struct to i64), i8* undef)
  ret i8* %3
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_token(i32, i64, i8* nocapture readnone) local_unnamed_addr #0 {
  tail call void @send(i8* null, i32 0, i32 undef, i64 %1, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @receive_token(i64, i8* nocapture readnone) local_unnamed_addr #0 {
  %3 = tail call i8* @_receive(i32 0, i64 %0, i8* undef)
  ret void
}

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { allocsize(0) }

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
!9 = !{!"2", !"2"}
!10 = !{!"replace mapped op"}
!11 = !{!"3", !"6"}
!12 = !{!"6", !"7"}
!13 = !{!"7", !"10"}
!14 = !{!"10", !"13"}
!15 = !{!"broadcast"}
!16 = !{!"0", !"3"}
!17 = !{!"4", !"7"}
!18 = !{!"8", !"9"}
!19 = !{!"9", !"11"}
!20 = !{!"7", !"8"}
!21 = !{!"11", !"13"}
!22 = !{!"13", !"14"}
!23 = !{!"receive"}
!24 = !{!5, !5, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"Closure", !27, i64 0, !27, i64 8}
!27 = !{!"any pointer", !5, i64 0}
!28 = !{!26, !27, i64 8}
!29 = !{!27, !27, i64 0}
