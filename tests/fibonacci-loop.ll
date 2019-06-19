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

@.str = global [4 x i8] c"%d\0A\00"
@funs = global [2 x void (i8*)*] [void (i8*)* @fib_0, void (i8*)* @fib_1]
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1

define void @fib_0(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i8* %0), !reason !3
  %bitcast = bitcast i8* %argument to i32*, !reason !3
  %receive_load = load i32, i32* %bitcast, !reason !3
  %1 = icmp sgt i32 %receive_load, 0, !time !4
  %send_alloca = alloca i1, !reason !5
  store i1 %1, i1* %send_alloca, !reason !5
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 1, i8* %0), !reason !5
  br i1 %1, label %l2, label %l1

l:                                                ; preds = %l2
  br label %l1

l1:                                               ; preds = %l, %entry
  ret void

l2:                                               ; preds = %l2, %entry
  %new_phi = phi i32 [ %receive_load20, %l2 ], [ 1, %entry ], !time !6
  %send_alloca3 = alloca i32, !reason !7
  store i32 %new_phi, i32* %send_alloca3, !reason !7
  %send_cast4 = bitcast i32* %send_alloca3 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast4, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 2, i8* %0), !reason !7
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 3, i8* %0), !reason !7
  %bitcast5 = bitcast i8* %receive to i1*, !reason !7
  %receive_load6 = load i1, i1* %bitcast5, !reason !7
  %receive7 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 4, i8* %0), !reason !7
  %bitcast8 = bitcast i8* %receive7 to i32*, !reason !7
  %receive_load9 = load i32, i32* %bitcast8, !reason !7
  %2 = select i1 %receive_load6, i32 %receive_load9, i32 %new_phi, !time !8
  %send_alloca10 = alloca i32, !reason !7
  store i32 %new_phi, i32* %send_alloca10, !reason !7
  %send_cast11 = bitcast i32* %send_alloca10 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast11, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 5, i8* %0), !reason !7
  %receive12 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 6, i8* %0), !reason !7
  %bitcast13 = bitcast i8* %receive12 to i32*, !reason !7
  %receive_load14 = load i32, i32* %bitcast13, !reason !7
  %3 = add nuw nsw i32 %receive_load14, 1, !time !9
  %4 = icmp eq i32 %3, %receive_load, !time !10
  %send_alloca15 = alloca i1, !reason !5
  store i1 %4, i1* %send_alloca15, !reason !5
  %send_cast16 = bitcast i1* %send_alloca15 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast16, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 7, i8* %0), !reason !5
  %send_alloca17 = alloca i32, !reason !11
  store i32 %3, i32* %send_alloca17, !reason !11
  %send_cast18 = bitcast i32* %send_alloca17 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast18, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 9, i8* %0), !reason !11
  %"repair phi" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 10, i8* %0), !reason !12
  %bitcast19 = bitcast i8* %"repair phi" to i32*, !reason !12
  %receive_load20 = load i32, i32* %bitcast19, !reason !12
  %send_alloca21 = alloca i32, !reason !11
  store i32 %2, i32* %send_alloca21, !reason !11
  %send_cast22 = bitcast i32* %send_alloca21 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast22, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 11, i8* %0), !reason !11
  br i1 %4, label %l, label %l2
}

define void @fib_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 8, i8* %0), !reason !3
  %bitcast16 = bitcast i8* %argument to i32*, !reason !3
  %receive_load17 = load i32, i32* %bitcast16, !reason !3
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 1, i8* %0), !reason !12
  %bitcast = bitcast i8* %broadcast to i1*, !reason !12
  %receive_load = load i1, i1* %bitcast, !reason !12
  br i1 %receive_load, label %l2, label %l1

l:                                                ; preds = %l2
  %1 = add i32 %receive_load17, -1, !time !13
  %2 = select i1 %3, i32 %1, i32 %4, !time !14
  br label %l1

l1:                                               ; preds = %l, %entry
  %new_phi18 = phi i32 [ %2, %l ], [ 0, %entry ], !time !4
  %send_alloca19 = alloca i32, !reason !15
  store i32 %new_phi18, i32* %send_alloca19, !reason !15
  %send_cast20 = bitcast i32* %send_alloca19 to i8*, !reason !15
  call void bitcast (void (i8*, i32, i8*)* @send_return to void (i8*, i64, i8*)*)(i8* %send_cast20, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !15
  ret void

l2:                                               ; preds = %l2, %entry
  %new_phi = phi i32 [ %receive_load22, %l2 ], [ 0, %entry ], !time !16
  %new_phi3 = phi i32 [ %receive_load27, %l2 ], [ 0, %entry ], !time !17
  %3 = icmp ult i32 %new_phi, 2, !time !18
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 2, i8* %0), !reason !7
  %bitcast4 = bitcast i8* %receive to i32*, !reason !7
  %receive_load5 = load i32, i32* %bitcast4, !reason !7
  %4 = add nsw i32 %receive_load5, %new_phi3, !time !19
  %send_alloca = alloca i1, !reason !7
  store i1 %3, i1* %send_alloca, !reason !7
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 3, i8* %0), !reason !7
  %send_alloca6 = alloca i32, !reason !7
  store i32 %new_phi3, i32* %send_alloca6, !reason !7
  %send_cast7 = bitcast i32* %send_alloca6 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast7, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 4, i8* %0), !reason !7
  %receive8 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 5, i8* %0), !reason !7
  %bitcast9 = bitcast i8* %receive8 to i32*, !reason !7
  %receive_load10 = load i32, i32* %bitcast9, !reason !7
  %5 = select i1 %3, i32 %receive_load10, i32 %4, !time !20
  %send_alloca11 = alloca i32, !reason !7
  store i32 %new_phi, i32* %send_alloca11, !reason !7
  %send_cast12 = bitcast i32* %send_alloca11 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast12, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 6, i8* %0), !reason !7
  %broadcast13 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 7, i8* %0), !reason !12
  %bitcast14 = bitcast i8* %broadcast13 to i1*, !reason !12
  %receive_load15 = load i1, i1* %bitcast14, !reason !12
  %"repair phi" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 9, i8* %0), !reason !12
  %bitcast21 = bitcast i8* %"repair phi" to i32*, !reason !12
  %receive_load22 = load i32, i32* %bitcast21, !reason !12
  %send_alloca23 = alloca i32, !reason !11
  store i32 %5, i32* %send_alloca23, !reason !11
  %send_cast24 = bitcast i32* %send_alloca23 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast24, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 10, i8* %0), !reason !11
  %"repair phi25" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 11, i8* %0), !reason !12
  %bitcast26 = bitcast i8* %"repair phi25" to i32*, !reason !12
  %receive_load27 = load i32, i32* %bitcast26, !reason !12
  br i1 %receive_load15, label %l, label %l2
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @fib(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %8, label %6

; <label>:3:                                      ; preds = %8
  %4 = add i32 %0, -1
  %5 = select i1 %12, i32 %4, i32 %13
  br label %6

; <label>:6:                                      ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7

; <label>:8:                                      ; preds = %8, %1
  %9 = phi i32 [ %16, %8 ], [ 0, %1 ]
  %10 = phi i32 [ %15, %8 ], [ 1, %1 ]
  %11 = phi i32 [ %14, %8 ], [ 0, %1 ]
  %12 = icmp ult i32 %9, 2
  %13 = add nsw i32 %10, %11
  %14 = select i1 %12, i32 %11, i32 %10
  %15 = select i1 %12, i32 %10, i32 %13
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, %0
  br i1 %17, label %3, label %8
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !21
  %5 = tail call i32 @atoi(i8* %4)
  %6 = tail call i32 @replace_fib(i32 %5)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #2

define i32 @replace_fib(i32) {
entry:
  %1 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %1)
  %send_alloca = alloca i32, !reason !3
  store i32 %0, i32* %send_alloca, !reason !3
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 0, i8* %1), !reason !3
  %send_alloca1 = alloca i32, !reason !3
  store i32 %0, i32* %send_alloca1, !reason !3
  %send_cast2 = bitcast i32* %send_alloca1 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast2, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 8, i8* %1), !reason !3
  %return = call i8* bitcast (i8* (i32, i8*)* @receive_return to i8* (i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %1), !reason !15
  %bitcast = bitcast i8* %return to i32*, !reason !15
  %receive_load = load i32, i32* %bitcast, !reason !15
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret i32 %receive_load
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define i8* @init() #1 {
  %1 = tail call i8* @malloc(i64 208) #8
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !25
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #9
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #4

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !29
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !31
  tail call void %3(%struct.Context* %6) #9
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
  %17 = load i64, i64* %16, align 8, !tbaa !21
  %18 = bitcast i8* %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !29
  %19 = getelementptr inbounds i8, i8* %14, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %2, i8** %20, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %13
  %22 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %21, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %14) #9
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %12
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #5

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
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %10, align 8, !tbaa !21
  %12 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %11, i8** null) #9
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %5 = tail call i8* @malloc(i64 24) #8
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !32
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !35
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #8
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !36
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #9
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !37
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
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !37
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #6

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !21
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !32
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !32
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
  %22 = load i64, i64* %21, align 8, !tbaa !37
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !37
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !25
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !21
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
  %9 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #9
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %6)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #9
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #5

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i8* @_receive(i1 zeroext, i32, i32, i8*) local_unnamed_addr #1 {
  %5 = bitcast i8* %3 to %struct.Context*
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_rwlock_t*
  br label %8

; <label>:8:                                      ; preds = %13, %4
  br i1 %0, label %9, label %11

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #9
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #9
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = tail call %struct.Comm* @_find_channel(i1 zeroext %0, i32 %2, %struct.Context* %5)
  %15 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #9
  %16 = icmp eq %struct.Comm* %14, null
  br i1 %16, label %8, label %17

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !35
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %17
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i32 %2, i32 %1, i32 %19)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8, !tbaa !36
  ret i8* %25
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i8* @receive(i32, i32, i32, i8*) #1 {
  %5 = tail call i8* @_receive(i1 zeroext true, i32 %0, i32 %2, i8* %3)
  ret i8* %5
}

; Function Attrs: nounwind ssp uwtable
define void @send_argument(i8*, i32, i32, i32, i8*) #1 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i32 %3, i8* %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_argument(i32, i32, i8*) #1 {
  %4 = tail call i8* @_receive(i1 zeroext false, i32 %0, i32 %1, i8* %2)
  ret i8* %4
}

; Function Attrs: nounwind ssp uwtable
define void @send_return(i8*, i32, i8*) #1 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i32 -1, i8* %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_return(i32, i8*) #1 {
  %3 = tail call i8* @_receive(i1 zeroext true, i32 %0, i32 -1, i8* %1)
  ret i8* %3
}

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { allocsize(0) }
attributes #9 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"replace argument"}
!4 = !{!"0", !"0"}
!5 = !{!"broadcast"}
!6 = !{!"3", !"3"}
!7 = !{!"replace mapped op"}
!8 = !{!"10", !"11"}
!9 = !{!"3", !"10"}
!10 = !{!"11", !"18"}
!11 = !{!"repair phi"}
!12 = !{!"receive"}
!13 = !{!"0", !"7"}
!14 = !{!"7", !"8"}
!15 = !{!"return"}
!16 = !{!"2", !"2"}
!17 = !{!"9", !"9"}
!18 = !{!"2", !"9"}
!19 = !{!"9", !"16"}
!20 = !{!"16", !"17"}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !{!26, !22, i64 0}
!26 = !{!"Context", !22, i64 0, !27, i64 8}
!27 = !{!"_opaque_pthread_rwlock_t", !28, i64 0, !23, i64 8}
!28 = !{!"long", !23, i64 0}
!29 = !{!30, !22, i64 0}
!30 = !{!"Closure", !22, i64 0, !22, i64 8}
!31 = !{!30, !22, i64 8}
!32 = !{!33, !34, i64 0}
!33 = !{!"Comm", !34, i64 0, !34, i64 4, !22, i64 8, !22, i64 16}
!34 = !{!"int", !23, i64 0}
!35 = !{!33, !34, i64 4}
!36 = !{!33, !22, i64 8}
!37 = !{!33, !22, i64 16}
