; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Context = type {}
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@arg_0 = global { i32, i1, i32 } zeroinitializer
@comms_1 = global { i1, i1, i32 } zeroinitializer
@comms_2 = global { i32, i1, i32 } zeroinitializer
@comms_3 = global { i32, i1, i32 } zeroinitializer
@comms_4 = global { i32, i1, i32 } zeroinitializer
@arg_5 = global { i32, i1, i32 } zeroinitializer
@comms_6 = global { i1, i1, i32 } zeroinitializer
@comms_7 = global { i32, i1, i32 } zeroinitializer
@comms_8 = global { i32, i1, i32 } zeroinitializer
@comms_9 = global { i32, i1, i32 } zeroinitializer
@comms_10 = global { i32, i1, i32 } zeroinitializer
@comms_11 = global { i32, i1, i32 } zeroinitializer
@comms_12 = global { i1, i1, i32 } zeroinitializer
@comms_13 = global { i1, i1, i32 } zeroinitializer
@return_struct = global { i32, i1, i32 } zeroinitializer
@.str = dso_local constant [4 x i8] c"%d\0A\00", align 1
@funs = global [2 x void (i8*)*] [void (i8*)* @_p_fib_0, void (i8*)* @_p_fib_1]

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @_p_fib(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0, !partition !3, !start !3, !end !4
  br i1 %2, label %3, label %16

; <label>:3:                                      ; preds = %3, %1
  %4 = phi i32 [ %11, %3 ], [ 0, %1 ], !partition !3, !start !5, !end !5
  %5 = phi i32 [ %10, %3 ], [ 1, %1 ], !partition !3, !start !4, !end !4
  %6 = phi i32 [ %9, %3 ], [ 0, %1 ], !partition !3, !start !5, !end !5
  %7 = icmp ult i32 %4, 2, !partition !3, !start !3, !end !4
  %8 = add nsw i32 %5, %6, !partition !3, !start !4, !end !5
  %9 = select i1 %7, i32 %6, i32 %5, !partition !3, !start !5, !end !6
  %10 = select i1 %7, i32 %5, i32 %8, !partition !7, !start !3, !end !7
  %11 = add nuw nsw i32 %4, 1, !partition !7, !start !7, !end !8
  %12 = icmp eq i32 %11, %0, !partition !7, !start !8, !end !6
  br i1 %12, label %13, label %3

; <label>:13:                                     ; preds = %3
  %14 = add i32 %0, -1, !partition !3, !start !3, !end !4
  %15 = select i1 %7, i32 %14, i32 %8, !partition !7, !start !3, !end !7
  br label %16

; <label>:16:                                     ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ], !partition !3, !start !3, !end !3
  ret i32 %17, !partition !3, !start !3, !end !3
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !9
  %5 = tail call i32 @atoi(i8* %4)
  %6 = tail call i32 @replace__p_fib(i32 %5)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #2

define i32 @replace__p_fib(i32) {
entry:
  %1 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %1)
  %send_alloca = alloca i32, !reason !13
  store i32 %0, i32* %send_alloca, !reason !13
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @arg_0 to i64), i8* %1), !reason !13
  %send_alloca1 = alloca i32, !reason !13
  store i32 %0, i32* %send_alloca1, !reason !13
  %send_cast2 = bitcast i32* %send_alloca1 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @arg_5 to i64), i8* %1), !reason !13
  %return = call i8* bitcast (i8* (i32, i8*)* @receive_return to i8* (i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %1), !reason !14
  %bitcast = bitcast i8* %return to i32*, !reason !14
  %receive_load = load i32, i32* %bitcast, !reason !14
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret i32 %receive_load
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

define void @_p_fib_0(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 ptrtoint ({ i32, i1, i32 }* @arg_0 to i64), i8* %0), !reason !13
  %bitcast = bitcast i8* %argument to i32*, !reason !13
  %receive_load = load i32, i32* %bitcast, !reason !13
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @arg_0 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !13
  %1 = icmp sgt i32 %receive_load, 0, !partition !3, !start !3, !end !4
  %send_alloca28 = alloca i1, !reason !15
  store i1 %1, i1* %send_alloca28, !reason !15
  %send_cast29 = bitcast i1* %send_alloca28 to i8*, !reason !15
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast29, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i8* %0), !reason !15
  br i1 %1, label %l, label %l2

l:                                                ; preds = %l, %entry
  %new_phi = phi i32 [ %receive_load21, %l ], [ 0, %entry ]
  %new_phi3 = phi i32 [ %receive_load24, %l ], [ 1, %entry ]
  %new_phi4 = phi i32 [ %4, %l ], [ 0, %entry ]
  %2 = icmp ult i32 %new_phi, 2, !partition !3, !start !3, !end !4
  %3 = add nsw i32 %new_phi3, %new_phi4, !partition !3, !start !4, !end !5
  %4 = select i1 %2, i32 %new_phi4, i32 %new_phi3, !partition !3, !start !5, !end !6
  %send_alloca = alloca i1, !reason !16
  store i1 %2, i1* %send_alloca, !reason !16
  %send_cast = bitcast i1* %send_alloca to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_1 to i64), i8* %0), !reason !16
  %send_alloca5 = alloca i32, !reason !16
  store i32 %new_phi3, i32* %send_alloca5, !reason !16
  %send_cast6 = bitcast i32* %send_alloca5 to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i8* %0), !reason !16
  %send_alloca7 = alloca i32, !reason !16
  store i32 %3, i32* %send_alloca7, !reason !16
  %send_cast8 = bitcast i32* %send_alloca7 to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i8* %0), !reason !16
  %send_alloca9 = alloca i32, !reason !16
  store i32 %new_phi, i32* %send_alloca9, !reason !16
  %send_cast10 = bitcast i32* %send_alloca9 to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_4 to i64), i8* %0), !reason !16
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_9 to i64), i8* %0), !reason !17
  %bitcast20 = bitcast i8* %repair_phi to i32*, !reason !17
  %receive_load21 = load i32, i32* %bitcast20, !reason !17
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_9 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !17
  %repair_phi22 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i8* %0), !reason !17
  %bitcast23 = bitcast i8* %repair_phi22 to i32*, !reason !17
  %receive_load24 = load i32, i32* %bitcast23, !reason !17
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !17
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i8* %0), !reason !17
  %bitcast30 = bitcast i8* %broadcast to i1*, !reason !17
  %receive_load31 = load i1, i1* %bitcast30, !reason !17
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !17
  br i1 %receive_load31, label %l1, label %l

l1:                                               ; preds = %l
  %5 = add i32 %receive_load, -1, !partition !3, !start !3, !end !4
  %send_alloca11 = alloca i1, !reason !16
  store i1 %2, i1* %send_alloca11, !reason !16
  %send_cast12 = bitcast i1* %send_alloca11 to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_6 to i64), i8* %0), !reason !16
  %send_alloca13 = alloca i32, !reason !16
  store i32 %5, i32* %send_alloca13, !reason !16
  %send_cast14 = bitcast i32* %send_alloca13 to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast14, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_7 to i64), i8* %0), !reason !16
  %send_alloca15 = alloca i32, !reason !16
  store i32 %3, i32* %send_alloca15, !reason !16
  %send_cast16 = bitcast i32* %send_alloca15 to i8*, !reason !16
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast16, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_8 to i64), i8* %0), !reason !16
  %repair_phi25 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i8* %0), !reason !17
  %bitcast26 = bitcast i8* %repair_phi25 to i32*, !reason !17
  %receive_load27 = load i32, i32* %bitcast26, !reason !17
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !17
  br label %l2

l2:                                               ; preds = %l1, %entry
  %new_phi17 = phi i32 [ %receive_load27, %l1 ], [ 0, %entry ]
  %send_alloca18 = alloca i32, !reason !14
  store i32 %new_phi17, i32* %send_alloca18, !reason !14
  %send_cast19 = bitcast i32* %send_alloca18 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i8*)* @send_return to void (i8*, i64, i8*)*)(i8* %send_cast19, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !14
  ret void
}

define void @_p_fib_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i64 ptrtoint ({ i32, i1, i32 }* @arg_5 to i64), i8* %0), !reason !13
  %bitcast12 = bitcast i8* %argument to i32*, !reason !13
  %receive_load13 = load i32, i32* %bitcast12, !reason !13
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @arg_5 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !13
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i8* %0), !reason !17
  %bitcast27 = bitcast i8* %broadcast to i1*, !reason !17
  %receive_load28 = load i1, i1* %bitcast27, !reason !17
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_12 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !17
  br i1 %receive_load28, label %l, label %l2

l:                                                ; preds = %l, %entry
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_1 to i64), i8* %0), !reason !16
  %bitcast = bitcast i8* %receive to i1*, !reason !16
  %receive_load = load i1, i1* %bitcast, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !16
  %receive3 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i8* %0), !reason !16
  %bitcast4 = bitcast i8* %receive3 to i32*, !reason !16
  %receive_load5 = load i32, i32* %bitcast4, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !16
  %receive6 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i8* %0), !reason !16
  %bitcast7 = bitcast i8* %receive6 to i32*, !reason !16
  %receive_load8 = load i32, i32* %bitcast7, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !16
  %1 = select i1 %receive_load, i32 %receive_load5, i32 %receive_load8, !partition !7, !start !3, !end !7
  %receive9 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_4 to i64), i8* %0), !reason !16
  %bitcast10 = bitcast i8* %receive9 to i32*, !reason !16
  %receive_load11 = load i32, i32* %bitcast10, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !16
  %2 = add nuw nsw i32 %receive_load11, 1, !partition !7, !start !7, !end !8
  %3 = icmp eq i32 %2, %receive_load13, !partition !7, !start !8, !end !6
  %send_alloca = alloca i32, !reason !18
  store i32 %2, i32* %send_alloca, !reason !18
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !18
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_9 to i64), i8* %0), !reason !18
  %send_alloca23 = alloca i32, !reason !18
  store i32 %1, i32* %send_alloca23, !reason !18
  %send_cast24 = bitcast i32* %send_alloca23 to i8*, !reason !18
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast24, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i8* %0), !reason !18
  %send_alloca29 = alloca i1, !reason !15
  store i1 %3, i1* %send_alloca29, !reason !15
  %send_cast30 = bitcast i1* %send_alloca29 to i8*, !reason !15
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast30, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_13 to i64), i8* %0), !reason !15
  br i1 %3, label %l1, label %l

l1:                                               ; preds = %l
  %receive14 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_6 to i64), i8* %0), !reason !16
  %bitcast15 = bitcast i8* %receive14 to i1*, !reason !16
  %receive_load16 = load i1, i1* %bitcast15, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_6 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !16
  %receive17 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_7 to i64), i8* %0), !reason !16
  %bitcast18 = bitcast i8* %receive17 to i32*, !reason !16
  %receive_load19 = load i32, i32* %bitcast18, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !16
  %receive20 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_8 to i64), i8* %0), !reason !16
  %bitcast21 = bitcast i8* %receive20 to i32*, !reason !16
  %receive_load22 = load i32, i32* %bitcast21, !reason !16
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !16
  %4 = select i1 %receive_load16, i32 %receive_load19, i32 %receive_load22, !partition !7, !start !3, !end !7
  %send_alloca25 = alloca i32, !reason !18
  store i32 %4, i32* %send_alloca25, !reason !18
  %send_cast26 = bitcast i32* %send_alloca25 to i8*, !reason !18
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast26, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i8* %0), !reason !18
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
  %9 = load volatile i8, i8* %7, align 1, !tbaa !19
  store volatile i8 %9, i8* %8, align 1, !tbaa !19
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !20
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !22
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
  %16 = load i64, i64* %15, align 8, !tbaa !9
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !20
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !22
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !9
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
  %10 = load volatile i8, i8* %8, align 1, !tbaa !19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !19
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #4 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !19
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
  store volatile i8 0, i8* %6, align 1, !tbaa !19
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

!0 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"0"}
!4 = !{!"3"}
!5 = !{!"6"}
!6 = !{!"7"}
!7 = !{!"1"}
!8 = !{!"4"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"replace argument"}
!14 = !{!"return"}
!15 = !{!"broadcast"}
!16 = !{!"replace mapped op"}
!17 = !{!"receive"}
!18 = !{!"repair_phi"}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !10, i64 0}
!21 = !{!"Closure", !10, i64 0, !10, i64 8}
!22 = !{!21, !10, i64 8}
