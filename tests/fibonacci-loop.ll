; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Context = type {}
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@arg_0 = global { i32, i1, i32 } zeroinitializer
@comms_1 = global { i32, i1, i32 } zeroinitializer
@comms_2 = global { i32, i1, i32 } zeroinitializer
@comms_3 = global { i32, i1, i32 } zeroinitializer
@comms_4 = global { i1, i1, i32 } zeroinitializer
@comms_5 = global { i32, i1, i32 } zeroinitializer
@comms_6 = global { i32, i1, i32 } zeroinitializer
@comms_7 = global { i32, i1, i32 } zeroinitializer
@comms_8 = global { i32, i1, i32 } zeroinitializer
@arg_9 = global { i32, i1, i32 } zeroinitializer
@comms_10 = global { i1, i1, i32 } zeroinitializer
@comms_11 = global { i32, i1, i32 } zeroinitializer
@comms_12 = global { i1, i1, i32 } zeroinitializer
@comms_13 = global { i1, i1, i32 } zeroinitializer
@return_struct = global { i32, i1, i32 } zeroinitializer
@.str = dso_local constant [4 x i8] c"%d\0A\00", align 1
@funs = global [2 x void (i8*)*] [void (i8*)* @fib_0, void (i8*)* @fib_1]

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @fib(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0, !partition !3, !start !3, !end !4
  br i1 %2, label %3, label %16

; <label>:3:                                      ; preds = %3, %1
  %4 = phi i32 [ %11, %3 ], [ 0, %1 ], !partition !3, !start !3, !end !3
  %5 = phi i32 [ %10, %3 ], [ 1, %1 ], !partition !5, !start !3, !end !3
  %6 = phi i32 [ %9, %3 ], [ 0, %1 ], !partition !5, !start !3, !end !3
  %7 = icmp ult i32 %4, 2, !partition !5, !start !6, !end !7
  %8 = add nsw i32 %5, %6, !partition !3, !start !8, !end !9
  %9 = select i1 %7, i32 %6, i32 %5, !partition !3, !start !9, !end !10
  %10 = select i1 %7, i32 %5, i32 %8, !partition !5, !start !10, !end !11
  %11 = add nuw nsw i32 %4, 1, !partition !3, !start !5, !end !8
  %12 = icmp eq i32 %11, %0, !partition !5, !start !7, !end !10
  br i1 %12, label %13, label %3

; <label>:13:                                     ; preds = %3
  %14 = add i32 %0, -1, !partition !3, !start !3, !end !3
  %15 = select i1 %7, i32 %14, i32 %8, !partition !3, !start !3, !end !3
  br label %16

; <label>:16:                                     ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ], !partition !3, !start !3, !end !3
  ret i32 %17, !partition !3, !start !3, !end !3
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  %5 = tail call i32 @atoi(i8* %4)
  %6 = tail call i32 @replace_fib(i32 %5)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #2

define i32 @replace_fib(i32) {
entry:
  %1 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %1)
  %send_alloca = alloca i32, !reason !16
  store i32 %0, i32* %send_alloca, !reason !16
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @arg_0 to i64), i8* %1), !reason !16
  %send_alloca1 = alloca i32, !reason !16
  store i32 %0, i32* %send_alloca1, !reason !16
  %send_cast2 = bitcast i32* %send_alloca1 to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @arg_9 to i64), i8* %1), !reason !16
  %return = call i8* bitcast (i8* (i32, i8*)* @receive_return to i8* (i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %1), !reason !17
  %bitcast = bitcast i8* %return to i32*, !reason !17
  %receive_load = load i32, i32* %bitcast, !reason !17
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret i32 %receive_load
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

define void @fib_0(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 ptrtoint ({ i32, i1, i32 }* @arg_0 to i64), i8* %0), !reason !16
  %bitcast = bitcast i8* %argument to i32*, !reason !16
  %receive_load = load i32, i32* %bitcast, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @arg_0 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !16
  %1 = icmp sgt i32 %receive_load, 0, !partition !3, !start !3, !end !4
  %send_alloca29 = alloca i1, !reason !18
  store i1 %1, i1* %send_alloca29, !reason !18
  %send_cast30 = bitcast i1* %send_alloca29 to i8*, !reason !18
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast30, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i8* %0), !reason !18
  br i1 %1, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %4, %l ], [ 0, %entry ]
  %send_alloca = alloca i32, !reason !19
  store i32 %new_phi, i32* %send_alloca, !reason !19
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i8* %0), !reason !19
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i8* %0), !reason !19
  %bitcast3 = bitcast i8* %receive to i32*, !reason !19
  %receive_load4 = load i32, i32* %bitcast3, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !19
  %receive5 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i8* %0), !reason !19
  %bitcast6 = bitcast i8* %receive5 to i32*, !reason !19
  %receive_load7 = load i32, i32* %bitcast6, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !19
  %2 = add nsw i32 %receive_load4, %receive_load7, !partition !3, !start !8, !end !9
  %receive8 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_4 to i64), i8* %0), !reason !19
  %bitcast9 = bitcast i8* %receive8 to i1*, !reason !19
  %receive_load10 = load i1, i1* %bitcast9, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !19
  %receive11 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_5 to i64), i8* %0), !reason !19
  %bitcast12 = bitcast i8* %receive11 to i32*, !reason !19
  %receive_load13 = load i32, i32* %bitcast12, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_5 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !19
  %receive14 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_6 to i64), i8* %0), !reason !19
  %bitcast15 = bitcast i8* %receive14 to i32*, !reason !19
  %receive_load16 = load i32, i32* %bitcast15, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_6 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !19
  %3 = select i1 %receive_load10, i32 %receive_load13, i32 %receive_load16, !partition !3, !start !9, !end !10
  %send_alloca17 = alloca i32, !reason !19
  store i32 %2, i32* %send_alloca17, !reason !19
  %send_cast18 = bitcast i32* %send_alloca17 to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast18, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_7 to i64), i8* %0), !reason !19
  %4 = add nuw nsw i32 %new_phi, 1, !partition !3, !start !5, !end !8
  %send_alloca19 = alloca i32, !reason !19
  store i32 %4, i32* %send_alloca19, !reason !19
  %send_cast20 = bitcast i32* %send_alloca19 to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast20, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_8 to i64), i8* %0), !reason !19
  %send_alloca27 = alloca i32, !reason !20
  store i32 %3, i32* %send_alloca27, !reason !20
  %send_cast28 = bitcast i32* %send_alloca27 to i8*, !reason !20
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast28, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i8* %0), !reason !20
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i8* %0), !reason !21
  %bitcast31 = bitcast i8* %broadcast to i1*, !reason !21
  %receive_load32 = load i1, i1* %bitcast31, !reason !21
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !21
  br i1 %receive_load32, label %l1, label %l

l1:                                               ; preds = %l
  %5 = add i32 %receive_load, -1, !partition !3, !start !3, !end !3
  %receive21 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_10 to i64), i8* %0), !reason !19
  %bitcast22 = bitcast i8* %receive21 to i1*, !reason !19
  %receive_load23 = load i1, i1* %bitcast22, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !19
  %6 = select i1 %receive_load23, i32 %5, i32 %2, !partition !3, !start !3, !end !3
  br label %l2

l2:                                               ; preds = %l1, %entry
  %new_phi24 = phi i32 [ %6, %l1 ], [ 0, %entry ]
  %send_alloca25 = alloca i32, !reason !17
  store i32 %new_phi24, i32* %send_alloca25, !reason !17
  %send_cast26 = bitcast i32* %send_alloca25 to i8*, !reason !17
  call void bitcast (void (i8*, i32, i8*)* @send_return to void (i8*, i64, i8*)*)(i8* %send_cast26, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !17
  ret void
}

define void @fib_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 ptrtoint ({ i32, i1, i32 }* @arg_9 to i64), i8* %0), !reason !16
  %bitcast18 = bitcast i8* %argument to i32*, !reason !16
  %receive_load19 = load i32, i32* %bitcast18, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @arg_9 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !16
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i8* %0), !reason !21
  %bitcast24 = bitcast i8* %broadcast to i1*, !reason !21
  %receive_load25 = load i1, i1* %bitcast24, !reason !21
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !21
  br i1 %receive_load25, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %2, %l ], [ 1, %entry ]
  %new_phi3 = phi i32 [ %receive_load23, %l ], [ 0, %entry ]
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i8* %0), !reason !19
  %bitcast = bitcast i8* %receive to i32*, !reason !19
  %receive_load = load i32, i32* %bitcast, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !19
  %1 = icmp ult i32 %receive_load, 2, !partition !5, !start !6, !end !7
  %send_alloca = alloca i32, !reason !19
  store i32 %new_phi, i32* %send_alloca, !reason !19
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i8* %0), !reason !19
  %send_alloca4 = alloca i32, !reason !19
  store i32 %new_phi3, i32* %send_alloca4, !reason !19
  %send_cast5 = bitcast i32* %send_alloca4 to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast5, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i8* %0), !reason !19
  %send_alloca6 = alloca i1, !reason !19
  store i1 %1, i1* %send_alloca6, !reason !19
  %send_cast7 = bitcast i1* %send_alloca6 to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast7, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_4 to i64), i8* %0), !reason !19
  %send_alloca8 = alloca i32, !reason !19
  store i32 %new_phi3, i32* %send_alloca8, !reason !19
  %send_cast9 = bitcast i32* %send_alloca8 to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast9, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_5 to i64), i8* %0), !reason !19
  %send_alloca10 = alloca i32, !reason !19
  store i32 %new_phi, i32* %send_alloca10, !reason !19
  %send_cast11 = bitcast i32* %send_alloca10 to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast11, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_6 to i64), i8* %0), !reason !19
  %receive12 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_7 to i64), i8* %0), !reason !19
  %bitcast13 = bitcast i8* %receive12 to i32*, !reason !19
  %receive_load14 = load i32, i32* %bitcast13, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !19
  %2 = select i1 %1, i32 %new_phi, i32 %receive_load14, !partition !5, !start !10, !end !11
  %receive15 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_8 to i64), i8* %0), !reason !19
  %bitcast16 = bitcast i8* %receive15 to i32*, !reason !19
  %receive_load17 = load i32, i32* %bitcast16, !reason !19
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !19
  %3 = icmp eq i32 %receive_load17, %receive_load19, !partition !5, !start !7, !end !10
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i8* %0), !reason !21
  %bitcast22 = bitcast i8* %repair_phi to i32*, !reason !21
  %receive_load23 = load i32, i32* %bitcast22, !reason !21
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !21
  %send_alloca26 = alloca i1, !reason !18
  store i1 %3, i1* %send_alloca26, !reason !18
  %send_cast27 = bitcast i1* %send_alloca26 to i8*, !reason !18
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast27, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i8* %0), !reason !18
  br i1 %3, label %l1, label %l

l1:                                               ; preds = %l
  %send_alloca20 = alloca i1, !reason !19
  store i1 %1, i1* %send_alloca20, !reason !19
  %send_cast21 = bitcast i1* %send_alloca20 to i8*, !reason !19
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast21, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_10 to i64), i8* %0), !reason !19
  br label %l2

l2:                                               ; preds = %l1, %entry
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @volatile_copy(i8*, i8*, i32) local_unnamed_addr #4 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

; <label>:5:                                      ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ %2, %3 ]
  %7 = phi i8* [ %11, %5 ], [ %1, %3 ]
  %8 = phi i8* [ %10, %5 ], [ %0, %3 ]
  %9 = load volatile i8, i8* %7, align 1, !tbaa !22
  store volatile i8 %9, i8* %8, align 1, !tbaa !22
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = add i32 %6, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

; <label>:14:                                     ; preds = %5, %3
  ret void
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define noalias i8* @init() #0 {
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !23
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !25
  tail call void %3(%struct.Context* %6) #7
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
  %16 = load i64, i64* %15, align 8, !tbaa !12
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !23
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !25
  %20 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %12
  %21 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %20, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #7
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #5

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #6

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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !12
  %11 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %10, i8** null) #7
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #6

; Function Attrs: norecurse nounwind ssp uwtable
define void @send(i8*, i32, i32, i64, i8* nocapture readnone) #4 {
  %6 = inttoptr i64 %3 to i8*
  %7 = sext i32 %1 to i64
  %8 = getelementptr i8, i8* %6, i64 %7
  br label %9

; <label>:9:                                      ; preds = %9, %5
  %10 = load volatile i8, i8* %8, align 1, !tbaa !22
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !22
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #4 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %7, label %10

; <label>:10:                                     ; preds = %7
  %11 = inttoptr i64 %1 to i8*
  ret i8* %11
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive(i32, i32, i64, i8* nocapture readnone) #4 {
  %5 = tail call i8* @_receive(i32 %0, i64 %2, i8* undef)
  ret i8* %5
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @free_comms(i64, i32, i8* nocapture readnone) #4 {
  %4 = inttoptr i64 %0 to i8*
  %5 = sext i32 %1 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  store volatile i8 0, i8* %6, align 1, !tbaa !22
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_argument(i8*, i32, i32, i64, i8* nocapture readnone) #4 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 %3, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_argument(i32, i64, i8* nocapture readnone) #4 {
  %4 = tail call i8* @_receive(i32 %0, i64 %1, i8* undef)
  ret i8* %4
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_return(i8*, i32, i8* nocapture readnone) #4 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 ptrtoint ({ i32, i1, i32 }* @return_struct to i64), i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_return(i32, i8* nocapture readnone) #4 {
  %3 = tail call i8* @_receive(i32 %0, i64 ptrtoint ({ i32, i1, i32 }* @return_struct to i64), i8* undef)
  ret i8* %3
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_token(i32, i64, i8* nocapture readnone) local_unnamed_addr #4 {
  tail call void @send(i8* null, i32 0, i32 undef, i64 %1, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @receive_token(i64, i8* nocapture readnone) local_unnamed_addr #4 {
  %3 = tail call i8* @_receive(i32 0, i64 %0, i8* undef)
  ret void
}

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"0"}
!4 = !{!"3"}
!5 = !{!"1"}
!6 = !{!"2"}
!7 = !{!"5"}
!8 = !{!"4"}
!9 = !{!"7"}
!10 = !{!"8"}
!11 = !{!"9"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!"replace argument"}
!17 = !{!"return"}
!18 = !{!"broadcast"}
!19 = !{!"replace mapped op"}
!20 = !{!"repair_phi"}
!21 = !{!"receive"}
!22 = !{!14, !14, i64 0}
!23 = !{!24, !13, i64 0}
!24 = !{!"Closure", !13, i64 0, !13, i64 8}
!25 = !{!24, !13, i64 8}
