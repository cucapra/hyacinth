; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Context = type {}
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@arg_0 = global { double, i1, i32 } zeroinitializer
@arg_1 = global { double, i1, i32 } zeroinitializer
@arg_2 = global { double, i1, i32 } zeroinitializer
@comms_3 = global { double, i1, i32 } zeroinitializer
@comms_4 = global { double, i1, i32 } zeroinitializer
@comms_5 = global { double, i1, i32 } zeroinitializer
@comms_6 = global { double, i1, i32 } zeroinitializer
@return_struct = global { double, i1, i32 } zeroinitializer
@.str.1 = dso_local constant [22 x i8] c"quadratic result: %f\0A\00", align 1
@str = dso_local constant [14 x i8] c"starting main\00", align 1
@funs = global [2 x void (i8*)*] [void (i8*)* @_p_quadratic_0, void (i8*)* @_p_quadratic_1]

; Function Attrs: nounwind ssp uwtable
define double @_p_quadratic(double, double, double) local_unnamed_addr #0 {
  %4 = fmul double %1, %1, !partition !3, !start !4, !end !5
  %5 = fmul double %0, 4.000000e+00, !partition !3, !start !6, !end !7
  %6 = fmul double %5, %2, !partition !3, !start !8, !end !9
  %7 = fsub double %4, %6, !partition !3, !start !10, !end !11
  %8 = fmul double %0, 2.000000e+00, !partition !3, !start !9, !end !12
  %9 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !13, !end !14
  %10 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !15, !end !16
  %11 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !17, !end !18
  %12 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !19, !end !17
  %13 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !20, !end !21
  %14 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !4, !end !19
  %15 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !22, !end !23
  %16 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !24, !end !22
  %17 = fsub double -0.000000e+00, %1, !partition !3, !start !12, !end !10
  %18 = tail call double @llvm.sqrt.f64(double %7), !partition !3, !start !25, !end !26
  %19 = fsub double %18, %1, !partition !3, !start !27, !end !28
  %20 = fdiv double %19, %8, !partition !3, !start !29, !end !30
  %21 = fsub double %17, %18, !partition !3, !start !30, !end !15
  %22 = fdiv double %21, %8, !partition !4, !start !18, !end !24
  %23 = fcmp une double %20, 0.000000e+00, !partition !3, !start !16, !end !31
  %24 = select i1 %23, double %20, double %22, !partition !3, !start !14, !end !20
  ret double %24, !partition !4, !start !22, !end !22
}

declare i32 @"\01_sleep"(i32) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 {
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0))
  %4 = getelementptr inbounds i8*, i8** %1, i64 1
  %5 = load i8*, i8** %4, align 8, !tbaa !32
  %6 = tail call i32 @atoi(i8* %5)
  %7 = sitofp i32 %6 to double
  %8 = getelementptr inbounds i8*, i8** %1, i64 2
  %9 = load i8*, i8** %8, align 8, !tbaa !32
  %10 = tail call i32 @atoi(i8* %9)
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds i8*, i8** %1, i64 3
  %13 = load i8*, i8** %12, align 8, !tbaa !32
  %14 = tail call i32 @atoi(i8* %13)
  %15 = sitofp i32 %14 to double
  %16 = tail call double @replace__p_quadratic(double %7, double %11, double %15)
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), double %16)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #4

define double @replace__p_quadratic(double, double, double) {
entry:
  %send_alloca = alloca double, !reason !36
  %send_alloca1 = alloca double, !reason !36
  %send_alloca3 = alloca double, !reason !36
  %send_cast = bitcast double* %send_alloca to i8*, !reason !36
  %send_cast2 = bitcast double* %send_alloca1 to i8*, !reason !36
  %send_cast4 = bitcast double* %send_alloca3 to i8*, !reason !36
  %3 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  store double %1, double* %send_alloca, !reason !36
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @arg_0 to i64), i8* %3), !reason !36
  store double %0, double* %send_alloca1, !reason !36
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @arg_1 to i64), i8* %3), !reason !36
  store double %2, double* %send_alloca3, !reason !36
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @arg_2 to i64), i8* %3), !reason !36
  %return = call i8* bitcast (i8* (i32, i8*)* @receive_return to i8* (i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %3), !reason !37
  %bitcast = bitcast i8* %return to double*, !reason !37
  %receive_load = load double, double* %bitcast, !reason !37
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret double %receive_load
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #5

define void @_p_quadratic_0(i8*) {
entry:
  %send_alloca = alloca double, !reason !38
  %send_alloca7 = alloca double, !reason !37
  %send_cast = bitcast double* %send_alloca to i8*, !reason !38
  %send_cast8 = bitcast double* %send_alloca7 to i8*, !reason !37
  %1 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !17, !end !18
  %2 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !19, !end !17
  %3 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !4, !end !19
  %4 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !22, !end !23
  %5 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !4, !start !24, !end !22
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_3 to i64), i8* %0), !reason !38
  %bitcast = bitcast i8* %receive to double*, !reason !38
  %receive_load = load double, double* %bitcast, !reason !38
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_3 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !38
  %receive1 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i8* %0), !reason !38
  %bitcast2 = bitcast i8* %receive1 to double*, !reason !38
  %receive_load3 = load double, double* %bitcast2, !reason !38
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !38
  %6 = fdiv double %receive_load, %receive_load3, !partition !4, !start !18, !end !24
  store double %6, double* %send_alloca, !reason !38
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_5 to i64), i8* %0), !reason !38
  %receive4 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_6 to i64), i8* %0), !reason !38
  %bitcast5 = bitcast i8* %receive4 to double*, !reason !38
  %receive_load6 = load double, double* %bitcast5, !reason !38
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_6 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !38
  store double %receive_load6, double* %send_alloca7, !reason !37
  call void bitcast (void (i8*, i32, i8*)* @send_return to void (i8*, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !37
  ret void
}

define void @_p_quadratic_1(i8*) {
entry:
  %send_alloca = alloca double, !reason !38
  %send_alloca7 = alloca double, !reason !38
  %send_alloca11 = alloca double, !reason !38
  %send_cast = bitcast double* %send_alloca to i8*, !reason !38
  %send_cast8 = bitcast double* %send_alloca7 to i8*, !reason !38
  %send_cast12 = bitcast double* %send_alloca11 to i8*, !reason !38
  %argument4 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_2 to i64), i8* %0), !reason !36
  %bitcast5 = bitcast i8* %argument4 to double*, !reason !36
  %receive_load6 = load double, double* %bitcast5, !reason !36
  %argument1 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_1 to i64), i8* %0), !reason !36
  %bitcast2 = bitcast i8* %argument1 to double*, !reason !36
  %receive_load3 = load double, double* %bitcast2, !reason !36
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_0 to i64), i8* %0), !reason !36
  %bitcast = bitcast i8* %argument to double*, !reason !36
  %receive_load = load double, double* %bitcast, !reason !36
  %1 = fmul double %receive_load, %receive_load, !partition !3, !start !4, !end !5
  %2 = fmul double %receive_load3, 4.000000e+00, !partition !3, !start !6, !end !7
  %3 = fmul double %2, %receive_load6, !partition !3, !start !8, !end !9
  %4 = fsub double %1, %3, !partition !3, !start !10, !end !11
  %5 = fmul double %receive_load3, 2.000000e+00, !partition !3, !start !9, !end !12
  %6 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !13, !end !14
  %7 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !15, !end !16
  %8 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !20, !end !21
  %9 = fsub double -0.000000e+00, %receive_load, !partition !3, !start !12, !end !10
  %10 = tail call double @llvm.sqrt.f64(double %4), !partition !3, !start !25, !end !26
  %11 = fsub double %10, %receive_load, !partition !3, !start !27, !end !28
  %12 = fdiv double %11, %5, !partition !3, !start !29, !end !30
  %13 = fsub double %9, %10, !partition !3, !start !30, !end !15
  store double %13, double* %send_alloca, !reason !38
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_3 to i64), i8* %0), !reason !38
  store double %5, double* %send_alloca7, !reason !38
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i8* %0), !reason !38
  %14 = fcmp une double %12, 0.000000e+00, !partition !3, !start !16, !end !31
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_5 to i64), i8* %0), !reason !38
  %bitcast9 = bitcast i8* %receive to double*, !reason !38
  %receive_load10 = load double, double* %bitcast9, !reason !38
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_5 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !38
  %15 = select i1 %14, double %12, double %receive_load10, !partition !3, !start !14, !end !20
  store double %15, double* %send_alloca11, !reason !38
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast12, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_6 to i64), i8* %0), !reason !38
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @volatile_copy(i8*, i8*, i32) local_unnamed_addr #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

; <label>:5:                                      ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ %2, %3 ]
  %7 = phi i8* [ %11, %5 ], [ %1, %3 ]
  %8 = phi i8* [ %10, %5 ], [ %0, %3 ]
  %9 = load volatile i8, i8* %7, align 1, !tbaa !39
  store volatile i8 %9, i8* %8, align 1, !tbaa !39
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = add i32 %6, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

; <label>:14:                                     ; preds = %5, %3
  ret void
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define noalias i8* @init() #7 {
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #0 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !40
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !42
  tail call void %3(%struct.Context* %6) #3
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
  %16 = load i64, i64* %15, align 8, !tbaa !32
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !40
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %12
  %21 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %20, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #3
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #8

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #1

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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !32
  %11 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %10, i8** null) #3
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #1

; Function Attrs: norecurse nounwind ssp uwtable
define void @send(i8*, i32, i32, i64, i8* nocapture readnone) #6 {
  %6 = inttoptr i64 %3 to i8*
  %7 = sext i32 %1 to i64
  %8 = getelementptr i8, i8* %6, i64 %7
  br label %9

; <label>:9:                                      ; preds = %9, %5
  %10 = load volatile i8, i8* %8, align 1, !tbaa !39
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !39
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #6 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !39
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %7, label %10

; <label>:10:                                     ; preds = %7
  %11 = inttoptr i64 %1 to i8*
  ret i8* %11
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive(i32, i32, i64, i8* nocapture readnone) #6 {
  %5 = tail call i8* @_receive(i32 %0, i64 %2, i8* undef)
  ret i8* %5
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @free_comms(i64, i32, i8* nocapture readnone) #6 {
  %4 = inttoptr i64 %0 to i8*
  %5 = sext i32 %1 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  store volatile i8 0, i8* %6, align 1, !tbaa !39
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_argument(i8*, i32, i32, i64, i8* nocapture readnone) #6 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 %3, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_argument(i32, i64, i8* nocapture readnone) #6 {
  %4 = tail call i8* @_receive(i32 %0, i64 %1, i8* undef)
  ret i8* %4
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_return(i8*, i32, i8* nocapture readnone) #6 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 ptrtoint ({ double, i1, i32 }* @return_struct to i64), i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_return(i32, i8* nocapture readnone) #6 {
  %3 = tail call i8* @_receive(i32 %0, i64 ptrtoint ({ double, i1, i32 }* @return_struct to i64), i8* undef)
  ret i8* %3
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_token(i32, i64, i8* nocapture readnone) local_unnamed_addr #6 {
  tail call void @send(i8* null, i32 0, i32 undef, i64 %1, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @receive_token(i64, i8* nocapture readnone) local_unnamed_addr #6 {
  %3 = tail call i8* @_receive(i32 0, i64 %0, i8* undef)
  ret void
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.1 (tags/RELEASE_801/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"1"}
!4 = !{!"0"}
!5 = !{!"2"}
!6 = !{!"6"}
!7 = !{!"8"}
!8 = !{!"9"}
!9 = !{!"11"}
!10 = !{!"15"}
!11 = !{!"17"}
!12 = !{!"13"}
!13 = !{!"118"}
!14 = !{!"148"}
!15 = !{!"84"}
!16 = !{!"114"}
!17 = !{!"60"}
!18 = !{!"90"}
!19 = !{!"30"}
!20 = !{!"149"}
!21 = !{!"179"}
!22 = !{!"150"}
!23 = !{!"180"}
!24 = !{!"120"}
!25 = !{!"18"}
!26 = !{!"48"}
!27 = !{!"49"}
!28 = !{!"51"}
!29 = !{!"52"}
!30 = !{!"82"}
!31 = !{!"115"}
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !{!"replace argument"}
!37 = !{!"return"}
!38 = !{!"replace mapped op"}
!39 = !{!34, !34, i64 0}
!40 = !{!41, !33, i64 0}
!41 = !{!"Closure", !33, i64 0, !33, i64 8}
!42 = !{!41, !33, i64 8}
