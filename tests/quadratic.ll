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
@comms_2 = global { double, i1, i32 } zeroinitializer
@arg_3 = global { double, i1, i32 } zeroinitializer
@comms_4 = global { double, i1, i32 } zeroinitializer
@arg_5 = global { double, i1, i32 } zeroinitializer
@comms_6 = global { double, i1, i32 } zeroinitializer
@comms_7 = global { double, i1, i32 } zeroinitializer
@comms_8 = global { double, i1, i32 } zeroinitializer
@comms_9 = global { double, i1, i32 } zeroinitializer
@comms_10 = global { i1, i1, i32 } zeroinitializer
@comms_11 = global { double, i1, i32 } zeroinitializer
@comms_12 = global { double, i1, i32 } zeroinitializer
@return_struct = global { double, i1, i32 } zeroinitializer
@funs = global [2 x void (i8*)*] [void (i8*)* @quadratic_0, void (i8*)* @quadratic_1]
@str.4 = private unnamed_addr constant [14 x i8] c"starting main\00", align 1
@.str.1.2 = private unnamed_addr constant [22 x i8] c"quadratic result: %f\0A\00", align 1
@.str.1 = global [22 x i8] c"quadratic result: %f\0A\00"
@str = global [14 x i8] c"starting main\00"

; Function Attrs: nounwind ssp uwtable
define double @quadratic(double, double, double) local_unnamed_addr #0 {
  %4 = fmul double %1, %1, !partition !3, !start !4, !end !5
  %5 = fmul double %0, 4.000000e+00, !partition !3, !start !6, !end !7
  %6 = fmul double %5, %2, !partition !6, !start !4, !end !5
  %7 = fsub double %4, %6, !partition !3, !start !8, !end !9
  %8 = fmul double %0, 2.000000e+00, !partition !3, !start !10, !end !11
  %9 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !12, !end !13
  %10 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !5, !end !9
  %11 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !14, !end !15
  %12 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !16, !end !17
  %13 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !18, !end !19
  %14 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !6, !end !4
  %15 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !20, !end !21
  %16 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !19, !end !22
  %17 = fsub double -0.000000e+00, %1, !partition !6, !start !9, !end !16
  %18 = tail call double @llvm.sqrt.f64(double %7), !partition !3, !start !23, !end !10
  %19 = fsub double %18, %1, !partition !6, !start !17, !end !24
  %20 = fdiv double %19, %8, !partition !6, !start !25, !end !20
  %21 = fsub double %17, %18, !partition !3, !start !11, !end !25
  %22 = fdiv double %21, %8, !partition !3, !start !26, !end !27
  %23 = fcmp une double %20, 0.000000e+00, !partition !3, !start !27, !end !12
  %24 = select i1 %23, double %20, double %22, !partition !6, !start !21, !end !18
  ret double %24, !partition !3, !start !13, !end !14
}

declare i32 @"\01_sleep"(i32) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 {
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str.4, i64 0, i64 0))
  %4 = getelementptr inbounds i8*, i8** %1, i64 1
  %5 = load i8*, i8** %4, align 8, !tbaa !28
  %6 = tail call i32 @atoi(i8* %5)
  %7 = sitofp i32 %6 to double
  %8 = getelementptr inbounds i8*, i8** %1, i64 2
  %9 = load i8*, i8** %8, align 8, !tbaa !28
  %10 = tail call i32 @atoi(i8* %9)
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds i8*, i8** %1, i64 3
  %13 = load i8*, i8** %12, align 8, !tbaa !28
  %14 = tail call i32 @atoi(i8* %13)
  %15 = sitofp i32 %14 to double
  %16 = tail call double @replace_quadratic(double %7, double %11, double %15)
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1.2, i64 0, i64 0), double %16)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #4

define double @replace_quadratic(double, double, double) {
entry:
  %3 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  %send_alloca = alloca double, !reason !32
  store double %1, double* %send_alloca, !reason !32
  %send_cast = bitcast double* %send_alloca to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @arg_0 to i64), i8* %3), !reason !32
  %send_alloca1 = alloca double, !reason !32
  store double %0, double* %send_alloca1, !reason !32
  %send_cast2 = bitcast double* %send_alloca1 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @arg_1 to i64), i8* %3), !reason !32
  %send_alloca3 = alloca double, !reason !32
  store double %2, double* %send_alloca3, !reason !32
  %send_cast4 = bitcast double* %send_alloca3 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @arg_3 to i64), i8* %3), !reason !32
  %send_alloca5 = alloca double, !reason !32
  store double %1, double* %send_alloca5, !reason !32
  %send_cast6 = bitcast double* %send_alloca5 to i8*, !reason !32
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @arg_5 to i64), i8* %3), !reason !32
  %return = call i8* bitcast (i8* (i32, i8*)* @receive_return to i8* (i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %3), !reason !33
  %bitcast = bitcast i8* %return to double*, !reason !33
  %receive_load = load double, double* %bitcast, !reason !33
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret double %receive_load
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #5

define void @quadratic_0(i8*) {
entry:
  %argument3 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_5 to i64), i8* %0), !reason !32
  %bitcast4 = bitcast i8* %argument3 to double*, !reason !32
  %receive_load5 = load double, double* %bitcast4, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_5 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_3 to i64), i8* %0), !reason !32
  %bitcast1 = bitcast i8* %argument to double*, !reason !32
  %receive_load2 = load double, double* %bitcast1, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_3 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_2 to i64), i8* %0), !reason !34
  %bitcast = bitcast i8* %receive to double*, !reason !34
  %receive_load = load double, double* %bitcast, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_2 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %1 = fmul double %receive_load, %receive_load2, !partition !6, !start !4, !end !5
  %send_alloca = alloca double, !reason !34
  store double %1, double* %send_alloca, !reason !34
  %send_cast = bitcast double* %send_alloca to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i8* %0), !reason !34
  %2 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !5, !end !9
  %3 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !16, !end !17
  %4 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !18, !end !19
  %5 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !6, !end !4
  %6 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !20, !end !21
  %7 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !6, !start !19, !end !22
  %8 = fsub double -0.000000e+00, %receive_load5, !partition !6, !start !9, !end !16
  %receive6 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_6 to i64), i8* %0), !reason !34
  %bitcast7 = bitcast i8* %receive6 to double*, !reason !34
  %receive_load8 = load double, double* %bitcast7, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_6 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %9 = fsub double %receive_load8, %receive_load5, !partition !6, !start !17, !end !24
  %receive9 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_7 to i64), i8* %0), !reason !34
  %bitcast10 = bitcast i8* %receive9 to double*, !reason !34
  %receive_load11 = load double, double* %bitcast10, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_7 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %10 = fdiv double %9, %receive_load11, !partition !6, !start !25, !end !20
  %send_alloca12 = alloca double, !reason !34
  store double %8, double* %send_alloca12, !reason !34
  %send_cast13 = bitcast double* %send_alloca12 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast13, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_8 to i64), i8* %0), !reason !34
  %send_alloca14 = alloca double, !reason !34
  store double %10, double* %send_alloca14, !reason !34
  %send_cast15 = bitcast double* %send_alloca14 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast15, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_9 to i64), i8* %0), !reason !34
  %receive16 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_10 to i64), i8* %0), !reason !34
  %bitcast17 = bitcast i8* %receive16 to i1*, !reason !34
  %receive_load18 = load i1, i1* %bitcast17, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !34
  %receive19 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !34
  %bitcast20 = bitcast i8* %receive19 to double*, !reason !34
  %receive_load21 = load double, double* %bitcast20, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %11 = select i1 %receive_load18, double %10, double %receive_load21, !partition !6, !start !21, !end !18
  %send_alloca22 = alloca double, !reason !34
  store double %11, double* %send_alloca22, !reason !34
  %send_cast23 = bitcast double* %send_alloca22 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast23, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i8* %0), !reason !34
  ret void
}

define void @quadratic_1(i8*) {
entry:
  %argument1 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_1 to i64), i8* %0), !reason !32
  %bitcast2 = bitcast i8* %argument1 to double*, !reason !32
  %receive_load3 = load double, double* %bitcast2, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_1 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_0 to i64), i8* %0), !reason !32
  %bitcast = bitcast i8* %argument to double*, !reason !32
  %receive_load = load double, double* %bitcast, !reason !32
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_0 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !32
  %1 = fmul double %receive_load, %receive_load, !partition !3, !start !4, !end !5
  %2 = fmul double %receive_load3, 4.000000e+00, !partition !3, !start !6, !end !7
  %send_alloca = alloca double, !reason !34
  store double %2, double* %send_alloca, !reason !34
  %send_cast = bitcast double* %send_alloca to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_2 to i64), i8* %0), !reason !34
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i8* %0), !reason !34
  %bitcast4 = bitcast i8* %receive to double*, !reason !34
  %receive_load5 = load double, double* %bitcast4, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %3 = fsub double %1, %receive_load5, !partition !3, !start !8, !end !9
  %4 = fmul double %receive_load3, 2.000000e+00, !partition !3, !start !10, !end !11
  %5 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !12, !end !13
  %6 = tail call i32 @"\01_sleep"(i32 1) #3, !partition !3, !start !14, !end !15
  %7 = tail call double @llvm.sqrt.f64(double %3), !partition !3, !start !23, !end !10
  %send_alloca6 = alloca double, !reason !34
  store double %7, double* %send_alloca6, !reason !34
  %send_cast7 = bitcast double* %send_alloca6 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast7, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_6 to i64), i8* %0), !reason !34
  %send_alloca8 = alloca double, !reason !34
  store double %4, double* %send_alloca8, !reason !34
  %send_cast9 = bitcast double* %send_alloca8 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast9, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_7 to i64), i8* %0), !reason !34
  %receive10 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_8 to i64), i8* %0), !reason !34
  %bitcast11 = bitcast i8* %receive10 to double*, !reason !34
  %receive_load12 = load double, double* %bitcast11, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_8 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %8 = fsub double %receive_load12, %7, !partition !3, !start !11, !end !25
  %9 = fdiv double %8, %4, !partition !3, !start !26, !end !27
  %receive13 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_9 to i64), i8* %0), !reason !34
  %bitcast14 = bitcast i8* %receive13 to double*, !reason !34
  %receive_load15 = load double, double* %bitcast14, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_9 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  %10 = fcmp une double %receive_load15, 0.000000e+00, !partition !3, !start !27, !end !12
  %send_alloca16 = alloca i1, !reason !34
  store i1 %10, i1* %send_alloca16, !reason !34
  %send_cast17 = bitcast i1* %send_alloca16 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast17, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_10 to i64), i8* %0), !reason !34
  %send_alloca18 = alloca double, !reason !34
  store double %9, double* %send_alloca18, !reason !34
  %send_cast19 = bitcast double* %send_alloca18 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast19, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !34
  %send_alloca20 = alloca double, !reason !33
  %receive22 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i8* %0), !reason !34
  %bitcast23 = bitcast i8* %receive22 to double*, !reason !34
  %receive_load24 = load double, double* %bitcast23, !reason !34
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !34
  store double %receive_load24, double* %send_alloca20, !reason !33
  %send_cast21 = bitcast double* %send_alloca20 to i8*, !reason !33
  call void bitcast (void (i8*, i32, i8*)* @send_return to void (i8*, i64, i8*)*)(i8* %send_cast21, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !33
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
  %9 = load volatile i8, i8* %7, align 1, !tbaa !35
  store volatile i8 %9, i8* %8, align 1, !tbaa !35
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !36
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !38
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
  %16 = load i64, i64* %15, align 8, !tbaa !28
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !36
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !38
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !28
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
  %10 = load volatile i8, i8* %8, align 1, !tbaa !35
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !35
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #6 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !35
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
  store volatile i8 0, i8* %6, align 1, !tbaa !35
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

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"1"}
!4 = !{!"3"}
!5 = !{!"5"}
!6 = !{!"0"}
!7 = !{!"2"}
!8 = !{!"6"}
!9 = !{!"8"}
!10 = !{!"12"}
!11 = !{!"14"}
!12 = !{!"21"}
!13 = !{!"24"}
!14 = !{!"25"}
!15 = !{!"28"}
!16 = !{!"10"}
!17 = !{!"13"}
!18 = !{!"23"}
!19 = !{!"26"}
!20 = !{!"19"}
!21 = !{!"22"}
!22 = !{!"29"}
!23 = !{!"9"}
!24 = !{!"15"}
!25 = !{!"16"}
!26 = !{!"17"}
!27 = !{!"20"}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !{!"replace argument"}
!33 = !{!"return"}
!34 = !{!"replace mapped op"}
!35 = !{!30, !30, i64 0}
!36 = !{!37, !29, i64 0}
!37 = !{!"Closure", !29, i64 0, !29, i64 8}
!38 = !{!37, !29, i64 8}
