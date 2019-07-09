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
@a = global i32 0
@funs = global [2 x void (i8*)*] [void (i8*)* @fib_0, void (i8*)* @fib_1]
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1

define void @fib_0(i8*) {
entry:
  store volatile i32 0, i32* @a, align 4, !tbaa !3, !time !7
  br label %l

l:                                                ; preds = %l3, %entry
  %new_phi = phi i32 [ 0, %entry ], [ %3, %l3 ], !time !8
  %new_phi5 = phi i32 [ 1, %entry ], [ %receive_load12, %l3 ], !time !8
  %new_phi6 = phi i32 [ 0, %entry ], [ %receive_load15, %l3 ], !time !8
  %1 = icmp ult i32 %new_phi, 2, !time !8
  %send_alloca24 = alloca i1, !reason !9
  store i1 %1, i1* %send_alloca24, !reason !9
  %send_cast25 = bitcast i1* %send_alloca24 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast25, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 9, i8* %0), !reason !9
  br i1 %1, label %l1, label %l2

l1:                                               ; preds = %l
  store volatile i32 %new_phi, i32* @a, align 4, !tbaa !3, !time !10
  %send_alloca16 = alloca i32, !reason !11
  store i32 %new_phi6, i32* %send_alloca16, !reason !11
  %send_cast17 = bitcast i32* %send_alloca16 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast17, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 5, i8* %0), !reason !11
  %send_alloca20 = alloca i32, !reason !11
  store i32 %new_phi5, i32* %send_alloca20, !reason !11
  %send_cast21 = bitcast i32* %send_alloca20 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast21, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 7, i8* %0), !reason !11
  br label %l3

l2:                                               ; preds = %l
  %send_alloca = alloca i32, !reason !12
  store i32 %new_phi5, i32* %send_alloca, !reason !12
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 0, i8* %0), !reason !12
  %send_alloca7 = alloca i32, !reason !12
  store i32 %new_phi6, i32* %send_alloca7, !reason !12
  %send_cast8 = bitcast i32* %send_alloca7 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast8, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 1, i8* %0), !reason !12
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 2, i8* %0), !reason !12
  %bitcast = bitcast i8* %receive to i32*, !reason !12
  %receive_load = load i32, i32* %bitcast, !reason !12
  store volatile i32 %receive_load, i32* @a, align 4, !tbaa !3, !time !13
  %2 = load volatile i32, i32* @a, align 4, !tbaa !3, !time !14
  %send_alloca18 = alloca i32, !reason !11
  store i32 %new_phi5, i32* %send_alloca18, !reason !11
  %send_cast19 = bitcast i32* %send_alloca18 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast19, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 6, i8* %0), !reason !11
  %send_alloca22 = alloca i32, !reason !11
  store i32 %2, i32* %send_alloca22, !reason !11
  %send_cast23 = bitcast i32* %send_alloca22 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast23, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 8, i8* %0), !reason !11
  br label %l3

l3:                                               ; preds = %l2, %l1
  %3 = add nuw nsw i32 %new_phi, 1, !time !15
  %4 = icmp eq i32 %3, 10, !time !16
  %repair_phi = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 3, i8* %0), !reason !17
  %bitcast11 = bitcast i8* %repair_phi to i32*, !reason !17
  %receive_load12 = load i32, i32* %bitcast11, !reason !17
  %repair_phi13 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 4, i8* %0), !reason !17
  %bitcast14 = bitcast i8* %repair_phi13 to i32*, !reason !17
  %receive_load15 = load i32, i32* %bitcast14, !reason !17
  %send_alloca26 = alloca i1, !reason !9
  store i1 %4, i1* %send_alloca26, !reason !9
  %send_cast27 = bitcast i1* %send_alloca26 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast27, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 10, i8* %0), !reason !9
  br i1 %4, label %l4, label %l

l4:                                               ; preds = %l3
  %5 = load volatile i32, i32* @a, align 4, !tbaa !3, !time !10
  %send_alloca9 = alloca i32, !reason !18
  store i32 %5, i32* %send_alloca9, !reason !18
  %send_cast10 = bitcast i32* %send_alloca9 to i8*, !reason !18
  call void bitcast (void (i8*, i32, i8*)* @send_return to void (i8*, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !18
  ret void
}

define void @fib_1(i8*) {
entry:
  br label %l

l:                                                ; preds = %l3, %entry
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 9, i8* %0), !reason !17
  %bitcast24 = bitcast i8* %broadcast to i1*, !reason !17
  %receive_load25 = load i1, i1* %bitcast24, !reason !17
  br i1 %receive_load25, label %l1, label %l2

l1:                                               ; preds = %l
  %repair_phi = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 5, i8* %0), !reason !17
  %bitcast13 = bitcast i8* %repair_phi to i32*, !reason !17
  %receive_load14 = load i32, i32* %bitcast13, !reason !17
  %repair_phi18 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 7, i8* %0), !reason !17
  %bitcast19 = bitcast i8* %repair_phi18 to i32*, !reason !17
  %receive_load20 = load i32, i32* %bitcast19, !reason !17
  br label %l3

l2:                                               ; preds = %l
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 0, i8* %0), !reason !12
  %bitcast = bitcast i8* %receive to i32*, !reason !12
  %receive_load = load i32, i32* %bitcast, !reason !12
  %receive5 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 1, i8* %0), !reason !12
  %bitcast6 = bitcast i8* %receive5 to i32*, !reason !12
  %receive_load7 = load i32, i32* %bitcast6, !reason !12
  %1 = add nsw i32 %receive_load, %receive_load7, !time !15
  %send_alloca = alloca i32, !reason !12
  store i32 %1, i32* %send_alloca, !reason !12
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 2, i8* %0), !reason !12
  %repair_phi15 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 6, i8* %0), !reason !17
  %bitcast16 = bitcast i8* %repair_phi15 to i32*, !reason !17
  %receive_load17 = load i32, i32* %bitcast16, !reason !17
  %repair_phi21 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 8, i8* %0), !reason !17
  %bitcast22 = bitcast i8* %repair_phi21 to i32*, !reason !17
  %receive_load23 = load i32, i32* %bitcast22, !reason !17
  br label %l3

l3:                                               ; preds = %l2, %l1
  %new_phi = phi i32 [ %receive_load14, %l1 ], [ %receive_load17, %l2 ], !time !19
  %new_phi8 = phi i32 [ %receive_load20, %l1 ], [ %receive_load23, %l2 ], !time !19
  %send_alloca9 = alloca i32, !reason !11
  store i32 %new_phi8, i32* %send_alloca9, !reason !11
  %send_cast10 = bitcast i32* %send_alloca9 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast10, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 3, i8* %0), !reason !11
  %send_alloca11 = alloca i32, !reason !11
  store i32 %new_phi, i32* %send_alloca11, !reason !11
  %send_cast12 = bitcast i32* %send_alloca11 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast12, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 4, i8* %0), !reason !11
  %broadcast26 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 10, i8* %0), !reason !17
  %bitcast27 = bitcast i8* %broadcast26 to i1*, !reason !17
  %receive_load28 = load i1, i1* %bitcast27, !reason !17
  br i1 %receive_load28, label %l4, label %l

l4:                                               ; preds = %l3
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i32 @fib() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  store volatile i32 0, i32* %1, align 4, !tbaa !3
  br label %2

; <label>:2:                                      ; preds = %11, %0
  %3 = phi i32 [ 0, %0 ], [ %14, %11 ]
  %4 = phi i32 [ 1, %0 ], [ %13, %11 ]
  %5 = phi i32 [ 0, %0 ], [ %12, %11 ]
  %6 = icmp ult i32 %3, 2
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %2
  store volatile i32 %3, i32* %1, align 4, !tbaa !3
  br label %11

; <label>:8:                                      ; preds = %2
  %9 = add nsw i32 %4, %5
  store volatile i32 %9, i32* %1, align 4, !tbaa !3
  %10 = load volatile i32, i32* %1, align 4, !tbaa !3
  br label %11

; <label>:11:                                     ; preds = %8, %7
  %12 = phi i32 [ %5, %7 ], [ %4, %8 ]
  %13 = phi i32 [ %4, %7 ], [ %10, %8 ]
  %14 = add nuw nsw i32 %3, 1
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %2

; <label>:16:                                     ; preds = %11
  %17 = load volatile i32, i32* %1, align 4, !tbaa !3
  ret i32 %17
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = tail call i32 @replace_fib()
  %4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  ret i32 0
}

define i32 @replace_fib() {
entry:
  %0 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %0)
  %return = call i8* bitcast (i8* (i32, i8*)* @receive_return to i8* (i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !18
  %bitcast = bitcast i8* %return to i32*, !reason !18
  %receive_load = load i32, i32* %bitcast, !reason !18
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret i32 %receive_load
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define i8* @init() #1 {
  %1 = tail call i8* @malloc(i64 208) #6
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !20
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #7
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #3

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !25
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !27
  tail call void %3(%struct.Context* %6) #7
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #1 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #6
  %7 = bitcast i8* %6 to %struct._opaque_pthread_t**
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %11

; <label>:11:                                     ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %22, %11 ]
  %13 = tail call i8* @malloc(i64 16) #6
  %14 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %12
  %15 = bitcast void (i8*)** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !28
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !25
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %12
  %21 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %20, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #7
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #4

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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !28
  %11 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %10, i8** null) #7
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %5 = tail call i8* @malloc(i64 24) #6
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !29
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !31
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #6
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !32
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #7
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !33
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !20
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.Context* %3 to i8**
  br label %30

; <label>:22:                                     ; preds = %22, %4
  %23 = phi %struct.Comm* [ %25, %22 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !33
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #5

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !28
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !29
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !29
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
  %22 = load i64, i64* %21, align 8, !tbaa !33
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !33
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !20
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !28
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
  %9 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #7
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %6)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #7
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @_receive(i1 zeroext, i32, i32, i8*) local_unnamed_addr #1 {
  %5 = bitcast i8* %3 to %struct.Context*
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_rwlock_t*
  br label %8

; <label>:8:                                      ; preds = %13, %4
  br i1 %0, label %9, label %11

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #7
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #7
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = tail call %struct.Comm* @_find_channel(i1 zeroext %0, i32 %2, %struct.Context* %5)
  %15 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #7
  %16 = icmp eq %struct.Comm* %14, null
  br i1 %16, label %8, label %17

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !31
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %17
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i32 %2, i32 %1, i32 %19)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8, !tbaa !32
  ret i8* %25
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @receive(i32, i32, i32, i8*) #1 {
  %5 = tail call i8* @_receive(i1 zeroext true, i32 %0, i32 %2, i8* %3)
  ret i8* %5
}

; Function Attrs: nounwind ssp uwtable
define void @send_argument(i8*, i32, i32, i32, i8*) local_unnamed_addr #1 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i32 %3, i8* %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_argument(i32, i32, i8*) local_unnamed_addr #1 {
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

; Function Attrs: nounwind ssp uwtable
define void @send_token(i32, i32, i8*) local_unnamed_addr #1 {
  tail call void @send(i8* null, i32 0, i32 undef, i32 %1, i8* %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @receive_token(i32, i8*) local_unnamed_addr #1 {
  %3 = tail call i8* @_receive(i1 zeroext true, i32 0, i32 %0, i8* %1)
  ret void
}

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"1", !"2"}
!8 = !{!"0", !"0"}
!9 = !{!"broadcast"}
!10 = !{!"0", !"1"}
!11 = !{!"repair_phi"}
!12 = !{!"replace mapped op"}
!13 = !{!"4", !"5"}
!14 = !{!"3", !"4"}
!15 = !{!"0", !"3"}
!16 = !{!"3", !"6"}
!17 = !{!"receive"}
!18 = !{!"return"}
!19 = !{!"5", !"5"}
!20 = !{!21, !22, i64 0}
!21 = !{!"Context", !22, i64 0, !23, i64 8}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"_opaque_pthread_rwlock_t", !24, i64 0, !5, i64 8}
!24 = !{!"long", !5, i64 0}
!25 = !{!26, !22, i64 0}
!26 = !{!"Closure", !22, i64 0, !22, i64 8}
!27 = !{!26, !22, i64 8}
!28 = !{!22, !22, i64 0}
!29 = !{!30, !4, i64 0}
!30 = !{!"Comm", !4, i64 0, !4, i64 4, !22, i64 8, !22, i64 16}
!31 = !{!30, !4, i64 4}
!32 = !{!30, !22, i64 8}
!33 = !{!30, !22, i64 16}
