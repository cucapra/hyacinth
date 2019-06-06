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

@.str.1 = global [22 x i8] c"quadratic result: %f\0A\00"
@str = global [14 x i8] c"starting main\00"
@funs = global [2 x void (i8*)*] [void (i8*)* @quadratic_0, void (i8*)* @quadratic_1]
@str.1 = private unnamed_addr constant [14 x i8] c"starting main\00", align 1
@.str.1.2 = private unnamed_addr constant [22 x i8] c"quadratic result: %f\0A\00", align 1
@.str = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1

define void @quadratic_0(i8*) {
entry:
  %argument1 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 -1, i32 4, i8* %0), !reason !3
  %bitcast2 = bitcast i8* %argument1 to double*, !reason !3
  %receive_load3 = load double, double* %bitcast2, !reason !3
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 -1, i32 0, i8* %0), !reason !3
  %bitcast = bitcast i8* %argument to double*, !reason !3
  %receive_load = load double, double* %bitcast, !reason !3
  %1 = fmul double %receive_load, %receive_load, !time !4
  %send_alloca = alloca double, !reason !5
  store double %1, double* %send_alloca, !reason !5
  %send_cast = bitcast double* %send_alloca to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 3, i8* %0), !reason !5
  %2 = fmul double %receive_load3, 2.000000e+00, !time !6
  %3 = tail call i32 @"\01_sleep"(i32 1) #2, !time !7
  %4 = tail call i32 @"\01_sleep"(i32 1) #2, !time !8
  %5 = tail call i32 @"\01_sleep"(i32 1) #2, !time !9
  %6 = tail call i32 @"\01_sleep"(i32 1) #2, !time !10
  %7 = tail call i32 @"\01_sleep"(i32 1) #2, !time !11
  %8 = fsub double -0.000000e+00, %receive_load, !time !12
  %send_alloca4 = alloca double, !reason !5
  store double %2, double* %send_alloca4, !reason !5
  %send_cast5 = bitcast double* %send_alloca4 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast5, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 6, i8* %0), !reason !5
  %send_alloca6 = alloca double, !reason !5
  store double %8, double* %send_alloca6, !reason !5
  %send_cast7 = bitcast double* %send_alloca6 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast7, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 7, i8* %0), !reason !5
  %send_alloca8 = alloca double, !reason !5
  store double %2, double* %send_alloca8, !reason !5
  %send_cast9 = bitcast double* %send_alloca8 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast9, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 8, i8* %0), !reason !5
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 9, i8* %0), !reason !5
  %bitcast10 = bitcast i8* %receive to i1*, !reason !5
  %receive_load11 = load i1, i1* %bitcast10, !reason !5
  %receive12 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 10, i8* %0), !reason !5
  %bitcast13 = bitcast i8* %receive12 to double*, !reason !5
  %receive_load14 = load double, double* %bitcast13, !reason !5
  %receive15 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 11, i8* %0), !reason !5
  %bitcast16 = bitcast i8* %receive15 to double*, !reason !5
  %receive_load17 = load double, double* %bitcast16, !reason !5
  %9 = select i1 %receive_load11, double %receive_load14, double %receive_load17, !time !13
  %send_alloca18 = alloca double, !reason !14
  store double %9, double* %send_alloca18, !reason !14
  %send_cast19 = bitcast double* %send_alloca18 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast19, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 -1, i32 -1, i8* %0), !reason !14
  ret void
}

declare i32 @"\01_sleep"(i32)

define void @quadratic_1(i8*) {
entry:
  %argument6 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 -1, i32 5, i8* %0), !reason !3
  %bitcast7 = bitcast i8* %argument6 to double*, !reason !3
  %receive_load8 = load double, double* %bitcast7, !reason !3
  %argument1 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 -1, i32 2, i8* %0), !reason !3
  %bitcast2 = bitcast i8* %argument1 to double*, !reason !3
  %receive_load3 = load double, double* %bitcast2, !reason !3
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 -1, i32 1, i8* %0), !reason !3
  %bitcast = bitcast i8* %argument to double*, !reason !3
  %receive_load = load double, double* %bitcast, !reason !3
  %1 = fmul double %receive_load, 4.000000e+00, !time !15
  %2 = fmul double %1, %receive_load3, !time !16
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 3, i8* %0), !reason !5
  %bitcast4 = bitcast i8* %receive to double*, !reason !5
  %receive_load5 = load double, double* %bitcast4, !reason !5
  %3 = fsub double %receive_load5, %2, !time !17
  %4 = tail call i32 @"\01_sleep"(i32 1) #2, !time !18
  %5 = tail call i32 @"\01_sleep"(i32 1) #2, !time !19
  %6 = tail call i32 @"\01_sleep"(i32 1) #2, !time !20
  %7 = tail call double @llvm.sqrt.f64(double %3), !time !21
  %8 = fsub double %7, %receive_load8, !time !22
  %receive9 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 6, i8* %0), !reason !5
  %bitcast10 = bitcast i8* %receive9 to double*, !reason !5
  %receive_load11 = load double, double* %bitcast10, !reason !5
  %9 = fdiv double %8, %receive_load11, !time !23
  %receive12 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 7, i8* %0), !reason !5
  %bitcast13 = bitcast i8* %receive12 to double*, !reason !5
  %receive_load14 = load double, double* %bitcast13, !reason !5
  %10 = fsub double %receive_load14, %7, !time !24
  %receive15 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 8, i8* %0), !reason !5
  %bitcast16 = bitcast i8* %receive15 to double*, !reason !5
  %receive_load17 = load double, double* %bitcast16, !reason !5
  %11 = fdiv double %10, %receive_load17, !time !25
  %12 = fcmp une double %9, 0.000000e+00, !time !26
  %send_alloca = alloca i1, !reason !5
  store i1 %12, i1* %send_alloca, !reason !5
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 9, i8* %0), !reason !5
  %send_alloca18 = alloca double, !reason !5
  store double %9, double* %send_alloca18, !reason !5
  %send_cast19 = bitcast double* %send_alloca18 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast19, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 10, i8* %0), !reason !5
  %send_alloca20 = alloca double, !reason !5
  store double %11, double* %send_alloca20, !reason !5
  %send_cast21 = bitcast double* %send_alloca20 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast21, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 11, i8* %0), !reason !5
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #0

; Function Attrs: nounwind ssp uwtable
define double @quadratic(double, double, double) local_unnamed_addr #1 {
  %4 = fmul double %1, %1
  %5 = fmul double %0, 4.000000e+00
  %6 = fmul double %5, %2
  %7 = fsub double %4, %6
  %8 = fmul double %0, 2.000000e+00
  %9 = tail call i32 @"\01_sleep"(i32 1) #2
  %10 = tail call i32 @"\01_sleep"(i32 1) #2
  %11 = tail call i32 @"\01_sleep"(i32 1) #2
  %12 = tail call i32 @"\01_sleep"(i32 1) #2
  %13 = tail call i32 @"\01_sleep"(i32 1) #2
  %14 = tail call i32 @"\01_sleep"(i32 1) #2
  %15 = tail call i32 @"\01_sleep"(i32 1) #2
  %16 = tail call i32 @"\01_sleep"(i32 1) #2
  %17 = fsub double -0.000000e+00, %1
  %18 = tail call double @llvm.sqrt.f64(double %7)
  %19 = fsub double %18, %1
  %20 = fdiv double %19, %8
  %21 = fsub double %17, %18
  %22 = fdiv double %21, %8
  %23 = fcmp une double %20, 0.000000e+00
  %24 = select i1 %23, double %20, double %22
  ret double %24
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #1 {
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.1, i64 0, i64 0))
  %4 = getelementptr inbounds i8*, i8** %1, i64 1
  %5 = load i8*, i8** %4, align 8, !tbaa !27
  %6 = tail call i32 @atoi(i8* %5)
  %7 = sitofp i32 %6 to double
  %8 = getelementptr inbounds i8*, i8** %1, i64 2
  %9 = load i8*, i8** %8, align 8, !tbaa !27
  %10 = tail call i32 @atoi(i8* %9)
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds i8*, i8** %1, i64 3
  %13 = load i8*, i8** %12, align 8, !tbaa !27
  %14 = tail call i32 @atoi(i8* %13)
  %15 = sitofp i32 %14 to double
  %16 = tail call double @replace_quadratic(double %7, double %11, double %15)
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.2, i64 0, i64 0), double %16)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #3

define double @replace_quadratic(double, double, double) {
entry:
  %3 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  %send_alloca = alloca double, !reason !3
  store double %1, double* %send_alloca, !reason !3
  %send_cast = bitcast double* %send_alloca to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 0, i8* %3), !reason !3
  %send_alloca1 = alloca double, !reason !3
  store double %0, double* %send_alloca1, !reason !3
  %send_cast2 = bitcast double* %send_alloca1 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast2, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 1, i8* %3), !reason !3
  %send_alloca3 = alloca double, !reason !3
  store double %2, double* %send_alloca3, !reason !3
  %send_cast4 = bitcast double* %send_alloca3 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast4, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 2, i8* %3), !reason !3
  %send_alloca5 = alloca double, !reason !3
  store double %0, double* %send_alloca5, !reason !3
  %send_cast6 = bitcast double* %send_alloca5 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast6, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 4, i8* %3), !reason !3
  %send_alloca7 = alloca double, !reason !3
  store double %1, double* %send_alloca7, !reason !3
  %send_cast8 = bitcast double* %send_alloca7 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast8, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 5, i8* %3), !reason !3
  %return = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 -1, i32 -1, i8* %3), !reason !14
  %bitcast = bitcast i8* %return to double*, !reason !14
  %receive_load = load double, double* %bitcast, !reason !14
  call void @join_partitioned_functions(i32 2, i8* %threads)
  ret double %receive_load
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @init() #1 {
  %1 = tail call i8* @malloc(i64 208) #8
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !31
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #2
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #5

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !37
  tail call void %3(%struct.Context* %6) #2
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
  %17 = load i64, i64* %16, align 8, !tbaa !27
  %18 = bitcast i8* %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !35
  %19 = getelementptr inbounds i8, i8* %14, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %2, i8** %20, align 8, !tbaa !37
  %21 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %13
  %22 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %21, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %14) #2
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
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %10, align 8, !tbaa !27
  %12 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %11, i8** null) #2
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %5 = tail call i8* @malloc(i64 24) #8
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !38
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !41
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #8
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !42
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #2
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !43
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !31
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.Context* %3 to i8**
  br label %30

; <label>:22:                                     ; preds = %22, %4
  %23 = phi %struct.Comm* [ %25, %22 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !43
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !27
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #0

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !27
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !38
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !38
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
  %22 = load i64, i64* %21, align 8, !tbaa !43
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !43
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !31
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !27
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
  %9 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #2
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %6)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #2
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
  %11 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #2
  br label %14

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #2
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = tail call %struct.Comm* @_find_channel(i1 zeroext %0, i32 %3, %struct.Context* %6)
  %16 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #2
  %17 = icmp eq %struct.Comm* %15, null
  br i1 %17, label %9, label %18

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i64 0, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !41
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %1, i32 %20)
  br label %24

; <label>:24:                                     ; preds = %22, %18
  %25 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8, !tbaa !42
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

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"replace argument"}
!4 = !{!"18", !"23"}
!5 = !{!"replace mapped op"}
!6 = !{!"23", !"28"}
!7 = !{!"46", !"61"}
!8 = !{!"1", !"16"}
!9 = !{!"61", !"76"}
!10 = !{!"31", !"46"}
!11 = !{!"76", !"91"}
!12 = !{!"28", !"31"}
!13 = !{!"91", !"92"}
!14 = !{!"return"}
!15 = !{!"16", !"21"}
!16 = !{!"21", !"26"}
!17 = !{!"26", !"29"}
!18 = !{!"54", !"69"}
!19 = !{!"0", !"15"}
!20 = !{!"80", !"95"}
!21 = !{!"29", !"44"}
!22 = !{!"69", !"72"}
!23 = !{!"72", !"79"}
!24 = !{!"44", !"47"}
!25 = !{!"47", !"54"}
!26 = !{!"79", !"80"}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !28, i64 0}
!32 = !{!"Context", !28, i64 0, !33, i64 8}
!33 = !{!"_opaque_pthread_rwlock_t", !34, i64 0, !29, i64 8}
!34 = !{!"long", !29, i64 0}
!35 = !{!36, !28, i64 0}
!36 = !{!"Closure", !28, i64 0, !28, i64 8}
!37 = !{!36, !28, i64 8}
!38 = !{!39, !40, i64 0}
!39 = !{!"Comm", !40, i64 0, !40, i64 4, !28, i64 8, !28, i64 16}
!40 = !{!"int", !29, i64 0}
!41 = !{!39, !40, i64 4}
!42 = !{!39, !28, i64 8}
!43 = !{!39, !28, i64 16}
