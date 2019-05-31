; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.Comm = type { i32, i32, i8*, %struct.Comm* }
%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }
%struct._opaque_pthread_rwlockattr_t = type { i64, [16 x i8] }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct.Context = type { %struct.Comm*, %struct._opaque_pthread_rwlock_t }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@funs = global [3 x void (i8*)*] [void (i8*)* @if_f_0, void (i8*)* @if_f_1, void (i8*)* @if_f_2]
@str.5.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@str.6.8 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@str.2 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@str.4.4 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@str = global [2 x i8] c"3\00"
@str.4 = global [2 x i8] c"4\00"
@str.5 = global [2 x i8] c"1\00"
@str.6 = global [2 x i8] c"2\00"
@.str = private unnamed_addr constant [38 x i8] c"calling function with thread id = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"WARNING: sending with ID [%d] already in use\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ID [%d] Send size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ID [%d] Sending value: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ID [%d] Sending value: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ID [%d] Receive size: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"ID [%d] Receiving value: %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"ID [%d] Receiving value: %d\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @if_f(i32) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 5
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.5.6, i64 0, i64 0))
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.6.8, i64 0, i64 0))
  br label %9

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.2, i64 0, i64 0))
  %8 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.4.4, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = tail call i32 @atoi(i8* %4)
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.5.6, i64 0, i64 0)) #1
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.6.8, i64 0, i64 0)) #1
  br label %13

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.2, i64 0, i64 0)) #1
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.4.4, i64 0, i64 0)) #1
  br label %13

; <label>:13:                                     ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #2

define void @replace_if_f(i32) {
entry:
  %1 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 3, void (i8*)** getelementptr inbounds ([3 x void (i8*)*], [3 x void (i8*)*]* @funs, i32 0, i32 0), i8* %1)
  %send_alloca = alloca i32
  store i32 %0, i32* %send_alloca
  %send_cast = bitcast i32* %send_alloca to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 0, i8* %1)
  call void @join_partitioned_functions(i32 3, i8* %threads)
  ret void
}

define void @if_f_0(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 -1, i32 0, i8* %0)
  %bitcast = bitcast i8* %argument to i32*
  %receive_load = load i32, i32* %bitcast
  %1 = icmp slt i32 %receive_load, 5, !start !7, !end !7
  %send_alloca = alloca i1
  store i1 %1, i1* %send_alloca
  %send_cast = bitcast i1* %send_alloca to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 1, i8* %0)
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 2, i32 2, i8* %0)
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 3, i32 3, i8* %0)
  br i1 %1, label %l1, label %l

l:                                                ; preds = %entry
  br label %l2

l1:                                               ; preds = %entry
  %2 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str, i64 0, i64 0)), !start !7, !end !8
  br label %l2

l2:                                               ; preds = %l1, %l
  ret void
}

define void @if_f_1(i8*) {
entry:
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 1, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  br i1 %receive_load, label %l1, label %l

l:                                                ; preds = %entry
  %1 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.5, i64 0, i64 0)), !start !7, !end !8
  br label %l2

l1:                                               ; preds = %entry
  %2 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.4, i64 0, i64 0)), !start !7, !end !8
  br label %l2

l2:                                               ; preds = %l1, %l
  ret void
}

define void @if_f_2(i8*) {
entry:
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 2, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  br i1 %receive_load, label %l1, label %l

l:                                                ; preds = %entry
  %1 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.6, i64 0, i64 0)), !start !7, !end !8
  br label %l2

l1:                                               ; preds = %entry
  br label %l2

l2:                                               ; preds = %l1, %l
  ret void
}

define void @if_f_3(i8*) {
entry:
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 3, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  br i1 %receive_load, label %l1, label %l

l:                                                ; preds = %entry
  br label %l2

l1:                                               ; preds = %entry
  br label %l2

l2:                                               ; preds = %l1, %l
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i8* @init() #0 {
  %1 = tail call i8* @malloc(i64 208) #8
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !9
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #1
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #3

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #0 {
  %2 = tail call %struct._opaque_pthread_t* @pthread_self() #1
  %3 = ptrtoint %struct._opaque_pthread_t* %2 to i64
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = bitcast i8* %0 to void (%struct.Context*)**
  %7 = load void (%struct.Context*)*, void (%struct.Context*)** %6, align 8, !tbaa !13
  %8 = getelementptr inbounds i8, i8* %0, i64 8
  %9 = bitcast i8* %8 to %struct.Context**
  %10 = load %struct.Context*, %struct.Context** %9, align 8, !tbaa !15
  tail call void %7(%struct.Context* %10) #1
  ret i8* null
}

declare %struct._opaque_pthread_t* @pthread_self() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #0 {
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
  %17 = load i64, i64* %16, align 8, !tbaa !3
  %18 = bitcast i8* %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !13
  %19 = getelementptr inbounds i8, i8* %14, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %2, i8** %20, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %13
  %22 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %21, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %14) #1
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %12
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define void @join_partitioned_functions(i32, i8* nocapture readonly) #0 {
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
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %10, align 8, !tbaa !3
  %12 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %11, i8** null) #1
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #0 {
  %5 = tail call i8* @malloc(i64 24) #8
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !16
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !19
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #8
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !20
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #1
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !9
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %24, label %20

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds %struct.Comm, %struct.Comm* %18, i64 0, i32 3
  %22 = load %struct.Comm*, %struct.Comm** %21, align 8, !tbaa !21
  %23 = icmp eq %struct.Comm* %22, null
  br i1 %23, label %39, label %26

; <label>:24:                                     ; preds = %4
  %25 = bitcast %struct.Context* %3 to i8**
  br label %42

; <label>:26:                                     ; preds = %34, %20
  %27 = phi %struct.Comm** [ %36, %34 ], [ %21, %20 ]
  %28 = phi %struct.Comm* [ %35, %34 ], [ %18, %20 ]
  %29 = getelementptr inbounds %struct.Comm, %struct.Comm* %28, i64 0, i32 0
  %30 = load i32, i32* %29, align 8, !tbaa !16
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %26
  %33 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  br label %34

; <label>:34:                                     ; preds = %32, %26
  %35 = load %struct.Comm*, %struct.Comm** %27, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.Comm, %struct.Comm* %35, i64 0, i32 3
  %37 = load %struct.Comm*, %struct.Comm** %36, align 8, !tbaa !21
  %38 = icmp eq %struct.Comm* %37, null
  br i1 %38, label %39, label %26

; <label>:39:                                     ; preds = %34, %20
  %40 = phi %struct.Comm** [ %21, %20 ], [ %36, %34 ]
  %41 = bitcast %struct.Comm** %40 to i8**
  br label %42

; <label>:42:                                     ; preds = %39, %24
  %43 = phi i8** [ %41, %39 ], [ %25, %24 ]
  store i8* %5, i8** %43, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #6

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #5

; Function Attrs: norecurse nounwind readonly ssp uwtable
define %struct.Comm* @_find_channel(i32, %struct.Context* nocapture readonly) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.Context, %struct.Context* %1, i64 0, i32 0
  %4 = load %struct.Comm*, %struct.Comm** %3, align 8, !tbaa !3
  %5 = icmp eq %struct.Comm* %4, null
  br i1 %5, label %15, label %6

; <label>:6:                                      ; preds = %11, %2
  %7 = phi %struct.Comm* [ %13, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !16
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %7, i64 0, i32 3
  %13 = load %struct.Comm*, %struct.Comm** %12, align 8, !tbaa !3
  %14 = icmp eq %struct.Comm* %13, null
  br i1 %14, label %15, label %6

; <label>:15:                                     ; preds = %11, %6, %2
  %16 = phi %struct.Comm* [ null, %2 ], [ null, %11 ], [ %7, %6 ]
  ret %struct.Comm* %16
}

; Function Attrs: nounwind ssp uwtable
define void @send(i8*, i32, i32, i32, i8*) #0 {
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %3, i32 %1)
  switch i32 %1, label %15 [
    i32 8, label %7
    i32 1, label %11
  ]

; <label>:7:                                      ; preds = %5
  %8 = bitcast i8* %0 to double*
  %9 = load double, double* %8, align 8, !tbaa !22
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %3, double %9)
  br label %15

; <label>:11:                                     ; preds = %5
  %12 = load i8, i8* %0, align 1, !tbaa !24, !range !26
  %13 = zext i8 %12 to i32
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %3, i32 %13)
  br label %15

; <label>:15:                                     ; preds = %11, %7, %5
  %16 = bitcast i8* %4 to %struct.Context*
  %17 = getelementptr inbounds i8, i8* %4, i64 8
  %18 = bitcast i8* %17 to %struct._opaque_pthread_rwlock_t*
  %19 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %18) #1
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %16)
  %20 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %18) #1
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @receive(i32, i32, i32, i8*) #0 {
  %5 = bitcast i8* %3 to %struct.Context*
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_rwlock_t*
  br label %8

; <label>:8:                                      ; preds = %8, %4
  %9 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #1
  %10 = tail call %struct.Comm* @_find_channel(i32 %2, %struct.Context* %5)
  %11 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #1
  %12 = icmp eq %struct.Comm* %10, null
  br i1 %12, label %8, label %13

; <label>:13:                                     ; preds = %8
  %14 = getelementptr inbounds %struct.Comm, %struct.Comm* %10, i64 0, i32 1
  %15 = load i32, i32* %14, align 4, !tbaa !19
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %19, label %17

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %2, i32 %0, i32 %15)
  br label %19

; <label>:19:                                     ; preds = %17, %13
  %20 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %2, i32 %0)
  switch i32 %0, label %33 [
    i32 8, label %21
    i32 1, label %27
  ]

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.Comm, %struct.Comm* %10, i64 0, i32 2
  %23 = bitcast i8** %22 to double**
  %24 = load double*, double** %23, align 8, !tbaa !20
  %25 = load double, double* %24, align 8, !tbaa !22
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %2, double %25)
  br label %33

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %10, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8, !tbaa !20
  %30 = load i8, i8* %29, align 1, !tbaa !24, !range !26
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %2, i32 %31)
  br label %33

; <label>:33:                                     ; preds = %27, %21, %19
  %34 = getelementptr inbounds %struct.Comm, %struct.Comm* %10, i64 0, i32 2
  %35 = load i8*, i8** %34, align 8, !tbaa !20
  ret i8* %35
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { norecurse nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"0"}
!8 = !{!"15"}
!9 = !{!10, !4, i64 0}
!10 = !{!"Context", !4, i64 0, !11, i64 8}
!11 = !{!"_opaque_pthread_rwlock_t", !12, i64 0, !5, i64 8}
!12 = !{!"long", !5, i64 0}
!13 = !{!14, !4, i64 0}
!14 = !{!"Closure", !4, i64 0, !4, i64 8}
!15 = !{!14, !4, i64 8}
!16 = !{!17, !18, i64 0}
!17 = !{!"Comm", !18, i64 0, !18, i64 4, !4, i64 8, !4, i64 16}
!18 = !{!"int", !5, i64 0}
!19 = !{!17, !18, i64 4}
!20 = !{!17, !4, i64 8}
!21 = !{!17, !4, i64 16}
!22 = !{!23, !23, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"_Bool", !5, i64 0}
!26 = !{i8 0, i8 2}
