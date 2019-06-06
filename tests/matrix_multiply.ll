; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Comm = type { i32, i32, i8*, %struct.Comm* }
%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }
%struct._opaque_pthread_rwlockattr_t = type { i64, [16 x i8] }
%struct.Context = type { %struct.Comm*, %struct._opaque_pthread_rwlock_t }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@__const.main.a = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]]
@__const.main.b = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]]
@.str = global [4 x i8] c"%f \00"
@funs = global [2 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1]
@__const.main.a.1 = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b.2 = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1

define void @multiply_0(i8*) {
entry:
  %argument9 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 4, i8* %0), !reason !3
  %bitcast10 = bitcast i8* %argument9 to [3 x double]**, !reason !3
  %receive_load11 = load [3 x double]*, [3 x double]** %bitcast10, !reason !3
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 0, i8* %0), !reason !3
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !3
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !3
  br label %l

l:                                                ; preds = %l2, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %1, %l2 ], !time !4
  br label %l3

l1:                                               ; preds = %l2
  ret void

l2:                                               ; preds = %l4
  %1 = add nuw nsw i64 %new_phi, 1, !time !5
  %2 = icmp eq i64 %1, 3, !time !6
  %send_alloca24 = alloca i1, !reason !7
  store i1 %2, i1* %send_alloca24, !reason !7
  %send_cast25 = bitcast i1* %send_alloca24 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast25, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 10, i8* %0), !reason !7
  br i1 %2, label %l1, label %l

l3:                                               ; preds = %l4, %l
  %new_phi6 = phi i64 [ 0, %l ], [ %4, %l4 ], !time !4
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %new_phi6, !time !4
  store double 0.000000e+00, double* %3, align 8, !tbaa !8, !time !4
  br label %l5

l4:                                               ; preds = %l5
  %4 = add nuw nsw i64 %new_phi6, 1, !time !5
  %5 = icmp eq i64 %4, 3, !time !6
  %send_alloca22 = alloca i1, !reason !7
  store i1 %5, i1* %send_alloca22, !reason !7
  %send_cast23 = bitcast i1* %send_alloca22 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast23, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 9, i8* %0), !reason !7
  br i1 %5, label %l2, label %l3

l5:                                               ; preds = %l5, %l3
  %send_alloca = alloca i64, !reason !12
  store i64 %new_phi, i64* %send_alloca, !reason !12
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 2, i8* %0), !reason !12
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 3, i8* %0), !reason !12
  %bitcast7 = bitcast i8* %receive to double**, !reason !12
  %receive_load8 = load double*, double** %bitcast7, !reason !12
  %6 = load double, double* %receive_load8, align 8, !tbaa !8, !time !13
  %receive12 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 5, i8* %0), !reason !12
  %bitcast13 = bitcast i8* %receive12 to i64*, !reason !12
  %receive_load14 = load i64, i64* %bitcast13, !reason !12
  %7 = getelementptr inbounds [3 x double], [3 x double]* %receive_load11, i64 %receive_load14, i64 %new_phi6, !time !14
  %8 = load double, double* %7, align 8, !tbaa !8, !time !15
  %9 = fmul double %6, %8, !time !16
  %send_alloca15 = alloca double*, !reason !12
  store double* %3, double** %send_alloca15, !reason !12
  %send_cast16 = bitcast double** %send_alloca15 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast16, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 6, i8* %0), !reason !12
  %receive17 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 7, i8* %0), !reason !12
  %bitcast18 = bitcast i8* %receive17 to double*, !reason !12
  %receive_load19 = load double, double* %bitcast18, !reason !12
  %10 = fadd double %receive_load19, %9, !time !17
  store double %10, double* %3, align 8, !tbaa !8, !time !18
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 8, i8* %0), !reason !19
  %bitcast20 = bitcast i8* %broadcast to i1*, !reason !19
  %receive_load21 = load i1, i1* %bitcast20, !reason !19
  br i1 %receive_load21, label %l4, label %l5
}

define void @multiply_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 1, i8* %0), !reason !3
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !3
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !3
  br label %l

l:                                                ; preds = %l2, %entry
  br label %l3

l1:                                               ; preds = %l2
  ret void

l2:                                               ; preds = %l4
  %broadcast19 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 10, i8* %0), !reason !19
  %bitcast20 = bitcast i8* %broadcast19 to i1*, !reason !19
  %receive_load21 = load i1, i1* %bitcast20, !reason !19
  br i1 %receive_load21, label %l1, label %l

l3:                                               ; preds = %l4, %l
  br label %l5

l4:                                               ; preds = %l5
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 9, i8* %0), !reason !19
  %bitcast17 = bitcast i8* %broadcast to i1*, !reason !19
  %receive_load18 = load i1, i1* %bitcast17, !reason !19
  br i1 %receive_load18, label %l2, label %l3

l5:                                               ; preds = %l5, %l3
  %new_phi = phi i64 [ 0, %l3 ], [ %3, %l5 ], !time !20
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 2, i8* %0), !reason !12
  %bitcast6 = bitcast i8* %receive to i64*, !reason !12
  %receive_load7 = load i64, i64* %bitcast6, !reason !12
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load7, i64 %new_phi, !time !21
  %send_alloca = alloca double*, !reason !12
  store double* %1, double** %send_alloca, !reason !12
  %send_cast = bitcast double** %send_alloca to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 3, i8* %0), !reason !12
  %send_alloca8 = alloca i64, !reason !12
  store i64 %new_phi, i64* %send_alloca8, !reason !12
  %send_cast9 = bitcast i64* %send_alloca8 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast9, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 5, i8* %0), !reason !12
  %receive10 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 6, i8* %0), !reason !12
  %bitcast11 = bitcast i8* %receive10 to double**, !reason !12
  %receive_load12 = load double*, double** %bitcast11, !reason !12
  %2 = load double, double* %receive_load12, align 8, !tbaa !8, !time !22
  %send_alloca13 = alloca double, !reason !12
  store double %2, double* %send_alloca13, !reason !12
  %send_cast14 = bitcast double* %send_alloca13 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast14, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 7, i8* %0), !reason !12
  %3 = add nuw nsw i64 %new_phi, 1, !time !23
  %4 = icmp eq i64 %3, 3, !time !24
  %send_alloca15 = alloca i1, !reason !7
  store i1 %4, i1* %send_alloca15, !reason !7
  %send_cast16 = bitcast i1* %send_alloca15 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast16, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 8, i8* %0), !reason !7
  br i1 %4, label %l4, label %l5
}

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
  store double 0.000000e+00, double* %12, align 8, !tbaa !8
  br label %16

; <label>:13:                                     ; preds = %16
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %7, label %10

; <label>:16:                                     ; preds = %16, %10
  %17 = phi i64 [ 0, %10 ], [ %25, %16 ]
  %18 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %5, i64 %17
  %19 = load double, double* %18, align 8, !tbaa !8
  %20 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %17, i64 %11
  %21 = load double, double* %20, align 8, !tbaa !8
  %22 = fmul double %19, %21
  %23 = load double, double* %12, align 8, !tbaa !8
  %24 = fadd double %23, %22
  store double %24, double* %12, align 8, !tbaa !8
  %25 = add nuw nsw i64 %17, 1
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %13, label %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = alloca [3 x [3 x double]], align 16
  %4 = alloca [3 x [3 x double]], align 16
  %5 = alloca [3 x [3 x double]], align 16
  %6 = bitcast [3 x [3 x double]]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %6) #3
  %7 = bitcast [3 x [3 x double]]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %7) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %7, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a.1 to i8*), i64 72, i1 false)
  %8 = bitcast [3 x [3 x double]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %8) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %8, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b.2 to i8*), i64 72, i1 false)
  %9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %5, i64 0, i64 0
  %11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 0
  call void @replace_multiply([3 x double]* nonnull %9, [3 x double]* nonnull %10, [3 x double]* nonnull %11)
  br label %12

; <label>:12:                                     ; preds = %15, %2
  %13 = phi i64 [ 0, %2 ], [ %17, %15 ]
  br label %19

; <label>:14:                                     ; preds = %15
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %7) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %6) #3
  ret i32 0

; <label>:15:                                     ; preds = %19
  %16 = tail call i32 @putchar(i32 10)
  %17 = add nuw nsw i64 %13, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %14, label %12

; <label>:19:                                     ; preds = %19, %12
  %20 = phi i64 [ 0, %12 ], [ %24, %19 ]
  %21 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 %13, i64 %20
  %22 = load double, double* %21, align 8, !tbaa !8
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %22)
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %15, label %19
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

define void @replace_multiply([3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %3 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  %send_alloca = alloca [3 x double]*, !reason !3
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !3
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 0, i8* %3), !reason !3
  %send_alloca1 = alloca [3 x double]*, !reason !3
  store [3 x double]* %0, [3 x double]** %send_alloca1, !reason !3
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 1, i8* %3), !reason !3
  %send_alloca3 = alloca [3 x double]*, !reason !3
  store [3 x double]* %1, [3 x double]** %send_alloca3, !reason !3
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 4, i8* %3), !reason !3
  call void @join_partitioned_functions(i32 2, i8* %threads)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @init() #1 {
  %1 = tail call i8* @malloc(i64 208) #8
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !25
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #3
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #5

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !30
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !32
  tail call void %3(%struct.Context* %6) #3
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #1 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_t**
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %12

; <label>:11:                                     ; preds = %12, %3
  ret i8* %6

; <label>:12:                                     ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %23, %12 ]
  %14 = tail call i8* @malloc(i64 16) #8
  %15 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %13
  %16 = bitcast void (i8*)** %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !33
  %18 = bitcast i8* %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !30
  %19 = getelementptr inbounds i8, i8* %14, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %2, i8** %20, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %13
  %22 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %21, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %14) #3
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %12
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define void @join_partitioned_functions(i32, i8* nocapture readonly) #1 {
  %3 = bitcast i8* %1 to %struct._opaque_pthread_t**
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = zext i32 %0 to i64
  br label %8

; <label>:7:                                      ; preds = %8, %2
  ret void

; <label>:8:                                      ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %13, %8 ]
  %10 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %3, i64 %9
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %10, align 8, !tbaa !33
  %12 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %11, i8** null) #3
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %5 = tail call i8* @malloc(i64 24) #8
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !34
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !37
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #8
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !38
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #3
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !25
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.Context* %3 to i8**
  br label %30

; <label>:22:                                     ; preds = %22, %4
  %23 = phi %struct.Comm* [ %25, %22 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !39
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !33
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #7

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !33
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !34
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !34
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %11, %7
  %16 = phi %struct.Comm* [ %5, %7 ], [ %31, %11 ]
  %17 = phi %struct.Comm* [ null, %7 ], [ %29, %11 ]
  br i1 %0, label %18, label %33

; <label>:18:                                     ; preds = %15
  %19 = icmp eq %struct.Comm* %17, null
  %20 = getelementptr inbounds %struct.Comm, %struct.Comm* %16, i64 0, i32 3
  %21 = bitcast %struct.Comm** %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !39
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !39
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !25
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !33
  %32 = icmp eq %struct.Comm* %31, null
  br i1 %32, label %33, label %11

; <label>:33:                                     ; preds = %28, %26, %23, %15, %3
  %34 = phi %struct.Comm* [ %16, %15 ], [ %16, %26 ], [ %16, %23 ], [ null, %3 ], [ null, %28 ]
  ret %struct.Comm* %34
}

; Function Attrs: nounwind ssp uwtable
define void @send(i8*, i32, i32, i32, i8*) #1 {
  %6 = bitcast i8* %4 to %struct.Context*
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to %struct._opaque_pthread_rwlock_t*
  %9 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %6)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define i8* @_receive(i1 zeroext, i32, i32, i32, i8*) local_unnamed_addr #1 {
  %6 = bitcast i8* %4 to %struct.Context*
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to %struct._opaque_pthread_rwlock_t*
  br label %9

; <label>:9:                                      ; preds = %14, %5
  br i1 %0, label %10, label %12

; <label>:10:                                     ; preds = %9
  %11 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  br label %14

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = tail call %struct.Comm* @_find_channel(i1 zeroext %0, i32 %3, %struct.Context* %6)
  %16 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  %17 = icmp eq %struct.Comm* %15, null
  br i1 %17, label %9, label %18

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i64 0, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !37
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0), i32 %3, i32 %1, i32 %20)
  br label %24

; <label>:24:                                     ; preds = %22, %18
  %25 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8, !tbaa !38
  ret i8* %26
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define i8* @receive(i32, i32, i32, i8*) #1 {
  %5 = tail call i8* @_receive(i1 zeroext true, i32 %0, i32 undef, i32 %2, i8* %3)
  ret i8* %5
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_argument(i32, i32, i32, i8*) #1 {
  %5 = tail call i8* @_receive(i1 zeroext false, i32 %0, i32 undef, i32 %2, i8* %3)
  ret i8* %5
}

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"replace argument"}
!4 = !{!"0", !"0"}
!5 = !{!"0", !"7"}
!6 = !{!"7", !"14"}
!7 = !{!"broadcast"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"replace mapped op"}
!13 = !{!"11", !"12"}
!14 = !{!"4", !"11"}
!15 = !{!"12", !"13"}
!16 = !{!"13", !"18"}
!17 = !{!"19", !"22"}
!18 = !{!"22", !"23"}
!19 = !{!"receive"}
!20 = !{!"3", !"3"}
!21 = !{!"3", !"10"}
!22 = !{!"0", !"1"}
!23 = !{!"10", !"17"}
!24 = !{!"17", !"24"}
!25 = !{!26, !27, i64 0}
!26 = !{!"Context", !27, i64 0, !28, i64 8}
!27 = !{!"any pointer", !10, i64 0}
!28 = !{!"_opaque_pthread_rwlock_t", !29, i64 0, !10, i64 8}
!29 = !{!"long", !10, i64 0}
!30 = !{!31, !27, i64 0}
!31 = !{!"Closure", !27, i64 0, !27, i64 8}
!32 = !{!31, !27, i64 8}
!33 = !{!27, !27, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"Comm", !36, i64 0, !36, i64 4, !27, i64 8, !27, i64 16}
!36 = !{!"int", !10, i64 0}
!37 = !{!35, !36, i64 4}
!38 = !{!35, !27, i64 8}
!39 = !{!35, !27, i64 16}
