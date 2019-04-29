; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.Context = type { %struct.Comm*, %struct._opaque_pthread_rwlock_t }
%struct.Comm = type { i32, double, %struct.Comm* }
%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }
%struct._opaque_pthread_rwlockattr_t = type { i64, [16 x i8] }
%struct.Closure = type { void (%struct.Context*)*, %struct.Context* }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@funs = global [2 x void (i8*)*] [void (i8*)* @quadratic_0, void (i8*)* @quadratic_1]
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @init() #0 {
  %1 = alloca %struct.Context*, align 8
  %2 = call i8* @malloc(i64 208) #8
  %3 = bitcast i8* %2 to %struct.Context*
  store %struct.Context* %3, %struct.Context** %1, align 8
  %4 = load %struct.Context*, %struct.Context** %1, align 8
  %5 = getelementptr inbounds %struct.Context, %struct.Context* %4, i32 0, i32 0
  store %struct.Comm* null, %struct.Comm** %5, align 8
  %6 = load %struct.Context*, %struct.Context** %1, align 8
  %7 = getelementptr inbounds %struct.Context, %struct.Context* %6, i32 0, i32 1
  %8 = call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* %7, %struct._opaque_pthread_rwlockattr_t* null)
  %9 = load %struct.Context*, %struct.Context** %1, align 8
  %10 = bitcast %struct.Context* %9 to i8*
  ret i8* %10
}

; Function Attrs: allocsize(0)
declare i8* @malloc(i64) #1

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @_call_function(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Closure*, align 8
  %4 = alloca void (%struct.Context*)*, align 8
  %5 = alloca %struct.Context*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.Closure*
  store %struct.Closure* %7, %struct.Closure** %3, align 8
  %8 = load %struct.Closure*, %struct.Closure** %3, align 8
  %9 = getelementptr inbounds %struct.Closure, %struct.Closure* %8, i32 0, i32 0
  %10 = load void (%struct.Context*)*, void (%struct.Context*)** %9, align 8
  store void (%struct.Context*)* %10, void (%struct.Context*)** %4, align 8
  %11 = load %struct.Closure*, %struct.Closure** %3, align 8
  %12 = getelementptr inbounds %struct.Closure, %struct.Closure* %11, i32 0, i32 1
  %13 = load %struct.Context*, %struct.Context** %12, align 8
  store %struct.Context* %13, %struct.Context** %5, align 8
  %14 = load void (%struct.Context*)*, void (%struct.Context*)** %4, align 8
  %15 = load %struct.Context*, %struct.Context** %5, align 8
  call void %14(%struct.Context* %15)
  ret i8* null
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)**, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca void (i8*)**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._opaque_pthread_t**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Closure*, align 8
  store i32 %0, i32* %4, align 4
  store void (i8*)** %1, void (i8*)*** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = call i8* @malloc(i64 %12) #8
  %14 = bitcast i8* %13 to %struct._opaque_pthread_t**
  store %struct._opaque_pthread_t** %14, %struct._opaque_pthread_t*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

; <label>:15:                                     ; preds = %41, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

; <label>:19:                                     ; preds = %15
  %20 = call i8* @malloc(i64 16) #8
  %21 = bitcast i8* %20 to %struct.Closure*
  store %struct.Closure* %21, %struct.Closure** %9, align 8
  %22 = load void (i8*)**, void (i8*)*** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds void (i8*)*, void (i8*)** %22, i64 %24
  %26 = load void (i8*)*, void (i8*)** %25, align 8
  %27 = bitcast void (i8*)* %26 to void (%struct.Context*)*
  %28 = load %struct.Closure*, %struct.Closure** %9, align 8
  %29 = getelementptr inbounds %struct.Closure, %struct.Closure* %28, i32 0, i32 0
  store void (%struct.Context*)* %27, void (%struct.Context*)** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.Context*
  %32 = load %struct.Closure*, %struct.Closure** %9, align 8
  %33 = getelementptr inbounds %struct.Closure, %struct.Closure* %32, i32 0, i32 1
  store %struct.Context* %31, %struct.Context** %33, align 8
  %34 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %34, i64 %36
  %38 = load %struct.Closure*, %struct.Closure** %9, align 8
  %39 = bitcast %struct.Closure* %38 to i8*
  %40 = call i32 @pthread_create(%struct._opaque_pthread_t** %37, %struct._opaque_pthread_attr_t* null, i8* (i8*)* @_call_function, i8* %39)
  br label %41

; <label>:41:                                     ; preds = %19
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %15

; <label>:44:                                     ; preds = %15
  %45 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %7, align 8
  %46 = bitcast %struct._opaque_pthread_t** %45 to i8*
  ret i8* %46
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @join_partitioned_functions(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._opaque_pthread_t**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct._opaque_pthread_t**
  store %struct._opaque_pthread_t** %8, %struct._opaque_pthread_t*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

; <label>:9:                                      ; preds = %20, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %9
  %14 = load %struct._opaque_pthread_t**, %struct._opaque_pthread_t*** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %14, i64 %16
  %18 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %17, align 8
  %19 = call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %18, i8** null)
  br label %20

; <label>:20:                                     ; preds = %13
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %9

; <label>:23:                                     ; preds = %9
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_add_channel(double, i32, %struct.Context*) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Context*, align 8
  %7 = alloca %struct.Comm*, align 8
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.Context* %2, %struct.Context** %6, align 8
  %8 = load %struct.Context*, %struct.Context** %6, align 8
  %9 = getelementptr inbounds %struct.Context, %struct.Context* %8, i32 0, i32 0
  %10 = load %struct.Comm*, %struct.Comm** %9, align 8
  store %struct.Comm* %10, %struct.Comm** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %16, %3
  %12 = load %struct.Comm*, %struct.Comm** %7, align 8
  %13 = getelementptr inbounds %struct.Comm, %struct.Comm* %12, i32 0, i32 2
  %14 = load %struct.Comm*, %struct.Comm** %13, align 8
  %15 = icmp ne %struct.Comm* %14, null
  br i1 %15, label %16, label %20

; <label>:16:                                     ; preds = %11
  %17 = load %struct.Comm*, %struct.Comm** %7, align 8
  %18 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i32 0, i32 2
  %19 = load %struct.Comm*, %struct.Comm** %18, align 8
  store %struct.Comm* %19, %struct.Comm** %7, align 8
  br label %11

; <label>:20:                                     ; preds = %11
  %21 = call i8* @malloc(i64 24) #8
  %22 = bitcast i8* %21 to %struct.Comm*
  store %struct.Comm* %22, %struct.Comm** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.Comm*, %struct.Comm** %7, align 8
  %25 = getelementptr inbounds %struct.Comm, %struct.Comm* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load double, double* %4, align 8
  %27 = load %struct.Comm*, %struct.Comm** %7, align 8
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %27, i32 0, i32 1
  store double %26, double* %28, align 8
  %29 = load %struct.Comm*, %struct.Comm** %7, align 8
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i32 0, i32 2
  store %struct.Comm* null, %struct.Comm** %30, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double* @_find_channel(i32, %struct.Context*) #0 {
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Context*, align 8
  %6 = alloca %struct.Comm*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.Context* %1, %struct.Context** %5, align 8
  %7 = load %struct.Context*, %struct.Context** %5, align 8
  %8 = getelementptr inbounds %struct.Context, %struct.Context* %7, i32 0, i32 0
  %9 = load %struct.Comm*, %struct.Comm** %8, align 8
  store %struct.Comm* %9, %struct.Comm** %6, align 8
  br label %10

; <label>:10:                                     ; preds = %22, %2
  %11 = load %struct.Comm*, %struct.Comm** %6, align 8
  %12 = icmp ne %struct.Comm* %11, null
  br i1 %12, label %13, label %26

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.Comm*, %struct.Comm** %6, align 8
  %16 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %13
  %20 = load %struct.Comm*, %struct.Comm** %6, align 8
  %21 = getelementptr inbounds %struct.Comm, %struct.Comm* %20, i32 0, i32 1
  store double* %21, double** %3, align 8
  br label %27

; <label>:22:                                     ; preds = %13
  %23 = load %struct.Comm*, %struct.Comm** %6, align 8
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i32 0, i32 2
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8
  store %struct.Comm* %25, %struct.Comm** %6, align 8
  br label %10

; <label>:26:                                     ; preds = %10
  store double* null, double** %3, align 8
  br label %27

; <label>:27:                                     ; preds = %26, %19
  %28 = load double*, double** %3, align 8
  ret double* %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @send(double, i32, i32, i8*) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.Context*, align 8
  store double %0, double* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.Context*
  store %struct.Context* %11, %struct.Context** %9, align 8
  %12 = load %struct.Context*, %struct.Context** %9, align 8
  %13 = getelementptr inbounds %struct.Context, %struct.Context* %12, i32 0, i32 1
  %14 = call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* %13)
  %15 = load double, double* %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.Context*, %struct.Context** %9, align 8
  call void @_add_channel(double %15, i32 %16, %struct.Context* %17)
  %18 = load %struct.Context*, %struct.Context** %9, align 8
  %19 = getelementptr inbounds %struct.Context, %struct.Context* %18, i32 0, i32 1
  %20 = call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* %19)
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) #2

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) #2

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @receive(i32, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Context*, align 8
  %8 = alloca double*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.Context*
  store %struct.Context* %10, %struct.Context** %7, align 8
  br label %11

; <label>:11:                                     ; preds = %23, %3
  %12 = load %struct.Context*, %struct.Context** %7, align 8
  %13 = getelementptr inbounds %struct.Context, %struct.Context* %12, i32 0, i32 1
  %14 = call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.Context*, %struct.Context** %7, align 8
  %17 = call double* @_find_channel(i32 %15, %struct.Context* %16)
  store double* %17, double** %8, align 8
  %18 = load double*, double** %8, align 8
  %19 = icmp ne double* %18, null
  br i1 %19, label %20, label %23

; <label>:20:                                     ; preds = %11
  %21 = load double*, double** %8, align 8
  %22 = load double, double* %21, align 8
  ret double %22

; <label>:23:                                     ; preds = %11
  %24 = load %struct.Context*, %struct.Context** %7, align 8
  %25 = getelementptr inbounds %struct.Context, %struct.Context* %24, i32 0, i32 1
  %26 = call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* %25)
  br label %11
}

; Function Attrs: nounwind readnone ssp uwtable
define double @quadratic(double, double, double) local_unnamed_addr #3 {
  %4 = fmul double %1, %1
  %5 = fmul double %0, 4.000000e+00
  %6 = fmul double %5, %2
  %7 = fsub double %4, %6
  %8 = fmul double %0, 2.000000e+00
  %9 = fsub double -0.000000e+00, %1
  %10 = tail call double @llvm.sqrt.f64(double %7)
  %11 = fsub double %10, %1
  %12 = fdiv double %11, %8
  %13 = fsub double %9, %10
  %14 = fdiv double %13, %8
  %15 = fcmp une double %12, 0.000000e+00
  %16 = select i1 %15, double %12, double %14
  ret double %16
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #5 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = tail call i32 @atoi(i8* %4)
  %6 = sitofp i32 %5 to double
  %7 = getelementptr inbounds i8*, i8** %1, i64 2
  %8 = load i8*, i8** %7, align 8, !tbaa !3
  %9 = tail call i32 @atoi(i8* %8)
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds i8*, i8** %1, i64 3
  %12 = load i8*, i8** %11, align 8, !tbaa !3
  %13 = tail call i32 @atoi(i8* %12)
  %14 = sitofp i32 %13 to double
  %15 = tail call double @replace_quadratic(double %6, double %10, double %14)
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %15)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #6

define double @replace_quadratic(double, double, double) {
entry:
  %3 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 1), i8* %3)
  call void @send(double %0, i32 0, i32 0, i8* %3)
  call void @send(double %1, i32 0, i32 1, i8* %3)
  call void @send(double %2, i32 0, i32 2, i8* %3)
  %return = call double @receive(i32 -1, i32 10, i8* %3)
  ret double %return
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #7

define void @quadratic_0(i8*) {
entry:
  %argument = call double @receive(i32 -1, i32 0, i8* %0)
  %argument1 = call double @receive(i32 -1, i32 1, i8* %0)
  %argument2 = call double @receive(i32 -1, i32 2, i8* %0)
  %1 = fmul double %argument1, %argument1, !start !7, !end !8
  call void @send(double %argument, i32 1, i32 3, i8* %0)
  call void @send(double %argument2, i32 1, i32 4, i8* %0)
  call void @send(double %1, i32 1, i32 5, i8* %0)
  %2 = fmul double %argument, 2.000000e+00, !start !9, !end !10
  %3 = fsub double -0.000000e+00, %argument1, !start !11, !end !12
  call void @send(double %argument1, i32 1, i32 6, i8* %0)
  call void @send(double %2, i32 1, i32 7, i8* %0)
  %receive = call double @receive(i32 1, i32 8, i8* %0)
  %4 = fsub double %3, %receive, !start !10, !end !13
  %5 = fdiv double %4, %2, !start !13, !end !14
  call void @send(double %5, i32 1, i32 9, i8* %0)
  ret void
}

define void @quadratic_1(i8*) {
entry:
  %receive = call double @receive(i32 0, i32 3, i8* %0)
  %1 = fmul double %receive, 4.000000e+00, !start !15, !end !16
  %receive1 = call double @receive(i32 0, i32 4, i8* %0)
  %2 = fmul double %1, %receive1, !start !16, !end !11
  %receive2 = call double @receive(i32 0, i32 5, i8* %0)
  %3 = fsub double %receive2, %2, !start !11, !end !12
  %4 = tail call double @llvm.sqrt.f64(double %3), !start !12, !end !17
  %receive3 = call double @receive(i32 0, i32 6, i8* %0)
  %5 = fsub double %4, %receive3, !start !10, !end !13
  %receive4 = call double @receive(i32 0, i32 7, i8* %0)
  %6 = fdiv double %5, %receive4, !start !13, !end !14
  call void @send(double %4, i32 0, i32 8, i8* %0)
  %7 = fcmp une double %6, 0.000000e+00, !start !14, !end !18
  %receive5 = call double @receive(i32 0, i32 9, i8* %0)
  %8 = select i1 %7, double %6, double %receive5, !start !18, !end !19
  call void @send(double %8, i32 -1, i32 10, i8* %0), !start !19, !end !20
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 7.0.1 (tags/RELEASE_701/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"4"}
!8 = !{!"9"}
!9 = !{!"21"}
!10 = !{!"26"}
!11 = !{!"12"}
!12 = !{!"15"}
!13 = !{!"29"}
!14 = !{!"39"}
!15 = !{!"2"}
!16 = !{!"7"}
!17 = !{!"25"}
!18 = !{!"40"}
!19 = !{!"41"}
!20 = !{!"42"}
