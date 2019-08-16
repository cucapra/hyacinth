; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Context = type {}
%union.pthread_attr_t = type { i64, [48 x i8] }

@arg_0 = global { double, i1, i32 } zeroinitializer
@arg_1 = global { double, i1, i32 } zeroinitializer
@comms_2 = global { double, i1, i32 } zeroinitializer
@arg_3 = global { double, i1, i32 } zeroinitializer
@comms_4 = global { double, i1, i32 } zeroinitializer
@arg_5 = global { double, i1, i32 } zeroinitializer
@arg_6 = global { double, i1, i32 } zeroinitializer
@comms_7 = global { double, i1, i32 } zeroinitializer
@comms_8 = global { double, i1, i32 } zeroinitializer
@comms_9 = global { double, i1, i32 } zeroinitializer
@comms_10 = global { double, i1, i32 } zeroinitializer
@comms_11 = global { double, i1, i32 } zeroinitializer
@comms_12 = global { double, i1, i32 } zeroinitializer
@comms_13 = global { double, i1, i32 } zeroinitializer
@return_struct = global { double, i1, i32 } zeroinitializer
@.str.1 = dso_local constant [22 x i8] c"quadratic result: %f\0A\00", align 1
@str = dso_local constant [14 x i8] c"starting main\00", align 1
@funs = global [2 x void (i8*)*] [void (i8*)* @_p_quadratic_0, void (i8*)* @_p_quadratic_1]

; Function Attrs: nounwind uwtable
define dso_local double @_p_quadratic(double, double, double) local_unnamed_addr #0 {
  %4 = fmul double %1, %1, !partition !2, !start !3, !end !4
  %5 = fmul double %0, 4.000000e+00, !partition !2, !start !5, !end !6
  %6 = fmul double %5, %2, !partition !7, !start !8, !end !9
  %7 = fsub double %4, %6, !partition !7, !start !6, !end !10
  %8 = fmul double %0, 2.000000e+00, !partition !7, !start !10, !end !3
  %9 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !11, !end !9
  %10 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !12, !end !13
  %11 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !14, !end !3
  %12 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !13, !end !11
  %13 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !4, !end !12
  %14 = tail call i32 @sleep(i32 1) #3, !partition !7, !start !3, !end !15
  %15 = tail call i32 @sleep(i32 1) #3, !partition !7, !start !15, !end !16
  %16 = tail call i32 @sleep(i32 1) #3, !partition !7, !start !13, !end !11
  %17 = fsub double -0.000000e+00, %1, !partition !2, !start !7, !end !5
  %18 = tail call double @sqrt(double %7) #3, !partition !7, !start !2, !end !6
  %19 = fsub double %18, %1, !partition !7, !start !16, !end !13
  %20 = fdiv double %19, %8, !partition !2, !start !9, !end !17
  %21 = tail call double @sqrt(double %7) #3, !partition !2, !start !17, !end !18
  %22 = fsub double %17, %21, !partition !7, !start !17, !end !19
  %23 = fdiv double %22, %8, !partition !7, !start !9, !end !17
  %24 = fcmp une double %20, 0.000000e+00, !partition !7, !start !11, !end !8
  %25 = select i1 %24, double %20, double %23, !partition !7, !start !7, !end !2
  ret double %25, !partition !7, !start !19, !end !18
}

declare dso_local i32 @sleep(i32) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 {
  %3 = tail call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @str, i64 0, i64 0))
  %4 = getelementptr inbounds i8*, i8** %1, i64 1
  %5 = load i8*, i8** %4, align 8, !tbaa !20
  %6 = tail call i32 @atoi(i8* %5) #7
  %7 = sitofp i32 %6 to double
  %8 = getelementptr inbounds i8*, i8** %1, i64 2
  %9 = load i8*, i8** %8, align 8, !tbaa !20
  %10 = tail call i32 @atoi(i8* %9) #7
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds i8*, i8** %1, i64 3
  %13 = load i8*, i8** %12, align 8, !tbaa !20
  %14 = tail call i32 @atoi(i8* %13) #7
  %15 = sitofp i32 %14 to double
  %16 = tail call double @replace__p_quadratic(double %7, double %11, double %15)
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), double %16)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #3

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull) local_unnamed_addr #4 {
  %2 = tail call i64 @strtol(i8* nocapture nonnull %0, i8** null, i32 10) #3
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

define double @replace__p_quadratic(double, double, double) {
entry:
  %3 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  %send_alloca = alloca double, !reason !24
  store double %1, double* %send_alloca, !reason !24
  %send_cast = bitcast double* %send_alloca to i8*, !reason !24
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @arg_0 to i64), i8* %3), !reason !24
  %send_alloca1 = alloca double, !reason !24
  store double %0, double* %send_alloca1, !reason !24
  %send_cast2 = bitcast double* %send_alloca1 to i8*, !reason !24
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @arg_1 to i64), i8* %3), !reason !24
  %send_alloca3 = alloca double, !reason !24
  store double %2, double* %send_alloca3, !reason !24
  %send_cast4 = bitcast double* %send_alloca3 to i8*, !reason !24
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @arg_3 to i64), i8* %3), !reason !24
  %send_alloca5 = alloca double, !reason !24
  store double %0, double* %send_alloca5, !reason !24
  %send_cast6 = bitcast double* %send_alloca5 to i8*, !reason !24
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @arg_5 to i64), i8* %3), !reason !24
  %send_alloca7 = alloca double, !reason !24
  store double %1, double* %send_alloca7, !reason !24
  %send_cast8 = bitcast double* %send_alloca7 to i8*, !reason !24
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @arg_6 to i64), i8* %3), !reason !24
  %return = call i8* bitcast (i8* (i32, i8*)* @receive_return to i8* (i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %3), !reason !25
  %bitcast = bitcast i8* %return to double*, !reason !25
  %receive_load = load double, double* %bitcast, !reason !25
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret double %receive_load
}

; Function Attrs: nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) #2

define void @_p_quadratic_0(i8*) {
entry:
  %argument9 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_6 to i64), i8* %0), !reason !24
  %bitcast10 = bitcast i8* %argument9 to double*, !reason !24
  %receive_load11 = load double, double* %bitcast10, !reason !24
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_6 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !24
  %argument6 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_5 to i64), i8* %0), !reason !24
  %bitcast7 = bitcast i8* %argument6 to double*, !reason !24
  %receive_load8 = load double, double* %bitcast7, !reason !24
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_5 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !24
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_3 to i64), i8* %0), !reason !24
  %bitcast1 = bitcast i8* %argument to double*, !reason !24
  %receive_load2 = load double, double* %bitcast1, !reason !24
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_3 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !24
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_2 to i64), i8* %0), !reason !26
  %bitcast = bitcast i8* %receive to double*, !reason !26
  %receive_load = load double, double* %bitcast, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_2 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %1 = fmul double %receive_load, %receive_load2, !partition !7, !start !8, !end !9
  %receive3 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i8* %0), !reason !26
  %bitcast4 = bitcast i8* %receive3 to double*, !reason !26
  %receive_load5 = load double, double* %bitcast4, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %2 = fsub double %receive_load5, %1, !partition !7, !start !6, !end !10
  %3 = fmul double %receive_load8, 2.000000e+00, !partition !7, !start !10, !end !3
  %4 = tail call i32 @sleep(i32 1) #3, !partition !7, !start !3, !end !15
  %5 = tail call i32 @sleep(i32 1) #3, !partition !7, !start !15, !end !16
  %6 = tail call i32 @sleep(i32 1) #3, !partition !7, !start !13, !end !11
  %7 = tail call double @sqrt(double %2) #3, !partition !7, !start !2, !end !6
  %8 = fsub double %7, %receive_load11, !partition !7, !start !16, !end !13
  %send_alloca = alloca double, !reason !26
  store double %8, double* %send_alloca, !reason !26
  %send_cast = bitcast double* %send_alloca to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_7 to i64), i8* %0), !reason !26
  %send_alloca12 = alloca double, !reason !26
  store double %3, double* %send_alloca12, !reason !26
  %send_cast13 = bitcast double* %send_alloca12 to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast13, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_8 to i64), i8* %0), !reason !26
  %send_alloca14 = alloca double, !reason !26
  store double %2, double* %send_alloca14, !reason !26
  %send_cast15 = bitcast double* %send_alloca14 to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast15, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_9 to i64), i8* %0), !reason !26
  %receive16 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_10 to i64), i8* %0), !reason !26
  %bitcast17 = bitcast i8* %receive16 to double*, !reason !26
  %receive_load18 = load double, double* %bitcast17, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_10 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %receive19 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !26
  %bitcast20 = bitcast i8* %receive19 to double*, !reason !26
  %receive_load21 = load double, double* %bitcast20, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %9 = fsub double %receive_load18, %receive_load21, !partition !7, !start !17, !end !19
  %10 = fdiv double %9, %3, !partition !7, !start !9, !end !17
  %receive22 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i8* %0), !reason !26
  %bitcast23 = bitcast i8* %receive22 to double*, !reason !26
  %receive_load24 = load double, double* %bitcast23, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %11 = fcmp une double %receive_load24, 0.000000e+00, !partition !7, !start !11, !end !8
  %receive25 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i8* %0), !reason !26
  %bitcast26 = bitcast i8* %receive25 to double*, !reason !26
  %receive_load27 = load double, double* %bitcast26, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %12 = select i1 %11, double %receive_load27, double %10, !partition !7, !start !7, !end !2
  %send_alloca28 = alloca double, !reason !25
  store double %12, double* %send_alloca28, !reason !25
  %send_cast29 = bitcast double* %send_alloca28 to i8*, !reason !25
  call void bitcast (void (i8*, i32, i8*)* @send_return to void (i8*, i64, i8*)*)(i8* %send_cast29, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !25
  ret void
}

define void @_p_quadratic_1(i8*) {
entry:
  %argument1 = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_1 to i64), i8* %0), !reason !24
  %bitcast2 = bitcast i8* %argument1 to double*, !reason !24
  %receive_load3 = load double, double* %bitcast2, !reason !24
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_1 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !24
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 ptrtoint ({ double, i1, i32 }* @arg_0 to i64), i8* %0), !reason !24
  %bitcast = bitcast i8* %argument to double*, !reason !24
  %receive_load = load double, double* %bitcast, !reason !24
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @arg_0 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !24
  %1 = fmul double %receive_load, %receive_load, !partition !2, !start !3, !end !4
  %2 = fmul double %receive_load3, 4.000000e+00, !partition !2, !start !5, !end !6
  %send_alloca = alloca double, !reason !26
  store double %2, double* %send_alloca, !reason !26
  %send_cast = bitcast double* %send_alloca to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_2 to i64), i8* %0), !reason !26
  %send_alloca4 = alloca double, !reason !26
  store double %1, double* %send_alloca4, !reason !26
  %send_cast5 = bitcast double* %send_alloca4 to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast5, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_4 to i64), i8* %0), !reason !26
  %3 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !11, !end !9
  %4 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !12, !end !13
  %5 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !14, !end !3
  %6 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !13, !end !11
  %7 = tail call i32 @sleep(i32 1) #3, !partition !2, !start !4, !end !12
  %8 = fsub double -0.000000e+00, %receive_load, !partition !2, !start !7, !end !5
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_7 to i64), i8* %0), !reason !26
  %bitcast6 = bitcast i8* %receive to double*, !reason !26
  %receive_load7 = load double, double* %bitcast6, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_7 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %receive8 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_8 to i64), i8* %0), !reason !26
  %bitcast9 = bitcast i8* %receive8 to double*, !reason !26
  %receive_load10 = load double, double* %bitcast9, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_8 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %9 = fdiv double %receive_load7, %receive_load10, !partition !2, !start !9, !end !17
  %receive11 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_9 to i64), i8* %0), !reason !26
  %bitcast12 = bitcast i8* %receive11 to double*, !reason !26
  %receive_load13 = load double, double* %bitcast12, !reason !26
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ double, i1, i32 }* @comms_9 to i64), i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i8* %0), !reason !26
  %10 = tail call double @sqrt(double %receive_load13) #3, !partition !2, !start !17, !end !18
  %send_alloca14 = alloca double, !reason !26
  store double %8, double* %send_alloca14, !reason !26
  %send_cast15 = bitcast double* %send_alloca14 to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast15, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_10 to i64), i8* %0), !reason !26
  %send_alloca16 = alloca double, !reason !26
  store double %10, double* %send_alloca16, !reason !26
  %send_cast17 = bitcast double* %send_alloca16 to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast17, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_11 to i64), i8* %0), !reason !26
  %send_alloca18 = alloca double, !reason !26
  store double %9, double* %send_alloca18, !reason !26
  %send_cast19 = bitcast double* %send_alloca18 to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast19, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_12 to i64), i8* %0), !reason !26
  %send_alloca20 = alloca double, !reason !26
  store double %9, double* %send_alloca20, !reason !26
  %send_cast21 = bitcast double* %send_alloca20 to i8*, !reason !26
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast21, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 ptrtoint ({ double, i1, i32 }* @comms_13 to i64), i8* %0), !reason !26
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @volatile_copy(i8*, i8*, i32) local_unnamed_addr #5 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

; <label>:5:                                      ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ %2, %3 ]
  %7 = phi i8* [ %11, %5 ], [ %1, %3 ]
  %8 = phi i8* [ %10, %5 ], [ %0, %3 ]
  %9 = load volatile i8, i8* %7, align 1, !tbaa !27
  store volatile i8 %9, i8* %8, align 1, !tbaa !27
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = add i32 %6, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

; <label>:14:                                     ; preds = %5, %3
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local noalias i8* @init() #6 {
  ret i8* null
}

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @_call_function(i8* nocapture readonly) #0 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !28
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !30
  tail call void %3(%struct.Context* %6) #3
  ret i8* null
}

; Function Attrs: nounwind uwtable
define dso_local i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #0 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias i8* @malloc(i64 %5) #3
  %7 = bitcast i8* %6 to i64*
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %11

; <label>:11:                                     ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %22, %11 ]
  %13 = tail call noalias i8* @malloc(i64 16) #3
  %14 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %12
  %15 = bitcast void (i8*)** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !20
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !28
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !30
  %20 = getelementptr inbounds i64, i64* %7, i64 %12
  %21 = tail call i32 @pthread_create(i64* %20, %union.pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #3
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @join_partitioned_functions(i32, i8* nocapture readonly) #0 {
  %3 = bitcast i8* %1 to i64*
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = zext i32 %0 to i64
  br label %7

; <label>:7:                                      ; preds = %7, %5
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds i64, i64* %3, i64 %8
  %10 = load i64, i64* %9, align 8, !tbaa !31
  %11 = tail call i32 @pthread_join(i64 %10, i8** null) #3
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare dso_local i32 @pthread_join(i64, i8**) local_unnamed_addr #1

; Function Attrs: norecurse nounwind uwtable
define dso_local void @send(i8*, i32, i32, i64, i8* nocapture readnone) #5 {
  %6 = inttoptr i64 %3 to i8*
  %7 = sext i32 %1 to i64
  %8 = getelementptr i8, i8* %6, i64 %7
  br label %9

; <label>:9:                                      ; preds = %9, %5
  %10 = load volatile i8, i8* %8, align 1, !tbaa !27
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !27
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !27
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %7, label %10

; <label>:10:                                     ; preds = %7
  %11 = inttoptr i64 %1 to i8*
  ret i8* %11
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i8* @receive(i32, i32, i64, i8* nocapture readnone) #5 {
  %5 = tail call i8* @_receive(i32 %0, i64 %2, i8* undef)
  ret i8* %5
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @free_comms(i64, i32, i8* nocapture readnone) #5 {
  %4 = inttoptr i64 %0 to i8*
  %5 = sext i32 %1 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  store volatile i8 0, i8* %6, align 1, !tbaa !27
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @send_argument(i8*, i32, i32, i64, i8* nocapture readnone) #5 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 %3, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i8* @receive_argument(i32, i64, i8* nocapture readnone) #5 {
  %4 = tail call i8* @_receive(i32 %0, i64 %1, i8* undef)
  ret i8* %4
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @send_return(i8*, i32, i8* nocapture readnone) #5 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 ptrtoint ({ double, i1, i32 }* @return_struct to i64), i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local i8* @receive_return(i32, i8* nocapture readnone) #5 {
  %3 = tail call i8* @_receive(i32 %0, i64 ptrtoint ({ double, i1, i32 }* @return_struct to i64), i8* undef)
  ret i8* %3
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @send_token(i32, i64, i8* nocapture readnone) local_unnamed_addr #5 {
  tail call void @send(i8* null, i32 0, i32 undef, i64 %1, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define dso_local void @receive_token(i64, i8* nocapture readnone) local_unnamed_addr #5 {
  %3 = tail call i8* @_receive(i32 0, i64 %0, i8* undef)
  ret void
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 8.0.0-3~ubuntu18.04.1 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"1"}
!3 = !{!"8"}
!4 = !{!"10"}
!5 = !{!"2"}
!6 = !{!"4"}
!7 = !{!"0"}
!8 = !{!"20"}
!9 = !{!"22"}
!10 = !{!"6"}
!11 = !{!"19"}
!12 = !{!"13"}
!13 = !{!"16"}
!14 = !{!"5"}
!15 = !{!"11"}
!16 = !{!"14"}
!17 = !{!"25"}
!18 = !{!"28"}
!19 = !{!"27"}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!"replace argument"}
!25 = !{!"return"}
!26 = !{!"replace mapped op"}
!27 = !{!22, !22, i64 0}
!28 = !{!29, !21, i64 0}
!29 = !{!"Closure", !21, i64 0, !21, i64 8}
!30 = !{!29, !21, i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"long", !22, i64 0}
