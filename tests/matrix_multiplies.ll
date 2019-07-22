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

@funs = global [2 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1]
@__const.main.a = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1

define void @multiply_0(i8*) {
entry:
  %argument46 = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 16, i8* %0), !reason !3
  %bitcast47 = bitcast i8* %argument46 to [3 x double]**, !reason !3
  %receive_load48 = load [3 x double]*, [3 x double]** %bitcast47, !reason !3
  %argument20 = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 4, i8* %0), !reason !3
  %bitcast21 = bitcast i8* %argument20 to [3 x double]**, !reason !3
  %receive_load22 = load [3 x double]*, [3 x double]** %bitcast21, !reason !3
  %argument17 = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 3, i8* %0), !reason !3
  %bitcast18 = bitcast i8* %argument17 to [3 x double]**, !reason !3
  %receive_load19 = load [3 x double]*, [3 x double]** %bitcast18, !reason !3
  %argument13 = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 2, i8* %0), !reason !3
  %bitcast14 = bitcast i8* %argument13 to [3 x double]**, !reason !3
  %receive_load15 = load [3 x double]*, [3 x double]** %bitcast14, !reason !3
  %argument10 = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 1, i8* %0), !reason !3
  %bitcast11 = bitcast i8* %argument10 to [3 x double]**, !reason !3
  %receive_load12 = load [3 x double]*, [3 x double]** %bitcast11, !reason !3
  %argument = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 0, i8* %0), !reason !3
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !3
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !3
  br label %l

l:                                                ; preds = %l4, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %21, %l4 ], !time !4
  br label %l1

l1:                                               ; preds = %l3, %l
  %new_phi9 = phi i64 [ 0, %l ], [ %19, %l3 ], !time !4
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi, i64 %new_phi9, !time !4
  store double 0.000000e+00, double* %1, align 8, !tbaa !5, !time !4
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load12, i64 %new_phi, i64 %new_phi9, !time !4
  store double 0.000000e+00, double* %2, align 8, !tbaa !5, !time !4
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load15, i64 %new_phi, i64 %new_phi9, !time !4
  store double 0.000000e+00, double* %3, align 8, !tbaa !5, !time !4
  br label %l2

l2:                                               ; preds = %l2, %l1
  %new_phi16 = phi i64 [ 0, %l1 ], [ %receive_load55, %l2 ], !time !9
  %4 = getelementptr inbounds [3 x double], [3 x double]* %receive_load19, i64 %new_phi, i64 %new_phi16, !time !10
  %5 = load double, double* %4, align 8, !tbaa !5, !time !11
  %6 = getelementptr inbounds [3 x double], [3 x double]* %receive_load22, i64 %new_phi16, i64 %new_phi9, !time !12
  %7 = load double, double* %6, align 8, !tbaa !5, !time !13
  %send_alloca = alloca double, !reason !14
  store double %5, double* %send_alloca, !reason !14
  %send_cast = bitcast double* %send_alloca to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 5, i8* %0), !reason !14
  %send_alloca23 = alloca double, !reason !14
  store double %7, double* %send_alloca23, !reason !14
  %send_cast24 = bitcast double* %send_alloca23 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast24, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 6, i8* %0), !reason !14
  %8 = load double, double* %1, align 8, !tbaa !5, !time !15
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 7, i8* %0), !reason !14
  %bitcast25 = bitcast i8* %receive to double*, !reason !14
  %receive_load26 = load double, double* %bitcast25, !reason !14
  %9 = fadd double %8, %receive_load26, !time !16
  store double %9, double* %1, align 8, !tbaa !5, !time !17
  %10 = load double, double* %4, align 8, !tbaa !5, !time !18
  %11 = tail call double @llvm.sqrt.f64(double %10), !time !19
  %12 = load double, double* %6, align 8, !tbaa !5, !time !20
  %13 = fmul double %11, %12, !time !21
  %14 = load double, double* %2, align 8, !tbaa !5, !time !22
  %15 = fadd double %14, %13, !time !23
  store double %15, double* %2, align 8, !tbaa !5, !time !24
  %16 = load double, double* %4, align 8, !tbaa !5, !time !25
  %17 = load double, double* %6, align 8, !tbaa !5, !time !26
  %send_alloca27 = alloca double, !reason !14
  store double %17, double* %send_alloca27, !reason !14
  %send_cast28 = bitcast double* %send_alloca27 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast28, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 8, i8* %0), !reason !14
  %send_alloca29 = alloca double, !reason !14
  store double %16, double* %send_alloca29, !reason !14
  %send_cast30 = bitcast double* %send_alloca29 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast30, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 9, i8* %0), !reason !14
  %18 = load double, double* %3, align 8, !tbaa !5, !time !27
  %send_alloca31 = alloca double, !reason !14
  store double %18, double* %send_alloca31, !reason !14
  %send_cast32 = bitcast double* %send_alloca31 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast32, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 10, i8* %0), !reason !14
  %receive33 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 11, i8* %0), !reason !14
  %bitcast34 = bitcast i8* %receive33 to double*, !reason !14
  %receive_load35 = load double, double* %bitcast34, !reason !14
  store double %receive_load35, double* %3, align 8, !tbaa !5, !time !28
  %send_alloca36 = alloca i64, !reason !14
  store i64 %new_phi16, i64* %send_alloca36, !reason !14
  %send_cast37 = bitcast i64* %send_alloca36 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast37, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 12, i8* %0), !reason !14
  %repair_phi = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 19, i8* %0), !reason !29
  %bitcast54 = bitcast i8* %repair_phi to i64*, !reason !29
  %receive_load55 = load i64, i64* %bitcast54, !reason !29
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 21, i8* %0), !reason !29
  %bitcast59 = bitcast i8* %broadcast to i1*, !reason !29
  %receive_load60 = load i1, i1* %bitcast59, !reason !29
  br i1 %receive_load60, label %l3, label %l2

l3:                                               ; preds = %l2
  %19 = add nuw nsw i64 %new_phi9, 1, !time !30
  %20 = icmp eq i64 %19, 3, !time !10
  %send_alloca61 = alloca i1, !reason !31
  store i1 %20, i1* %send_alloca61, !reason !31
  %send_cast62 = bitcast i1* %send_alloca61 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast62, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 22, i8* %0), !reason !31
  br i1 %20, label %l4, label %l1

l4:                                               ; preds = %l3
  %21 = add nuw nsw i64 %new_phi, 1, !time !30
  %22 = icmp eq i64 %21, 3, !time !10
  %send_alloca63 = alloca i1, !reason !31
  store i1 %22, i1* %send_alloca63, !reason !31
  %send_cast64 = bitcast i1* %send_alloca63 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast64, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 23, i8* %0), !reason !31
  br i1 %22, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  %new_phi38 = phi i64 [ %30, %l7 ], [ 0, %l4 ], !time !4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %new_phi39 = phi i64 [ 0, %l5 ], [ %receive_load58, %l6 ], !time !32
  %23 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %new_phi38, i64 %new_phi39, !time !33
  %24 = load double, double* %23, align 8, !tbaa !5, !time !34
  %25 = getelementptr inbounds [3 x double], [3 x double]* %receive_load12, i64 %new_phi38, i64 %new_phi39, !time !35
  %26 = load double, double* %25, align 8, !tbaa !5, !time !36
  %send_alloca40 = alloca double, !reason !14
  store double %24, double* %send_alloca40, !reason !14
  %send_cast41 = bitcast double* %send_alloca40 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast41, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 13, i8* %0), !reason !14
  %send_alloca42 = alloca double, !reason !14
  store double %26, double* %send_alloca42, !reason !14
  %send_cast43 = bitcast double* %send_alloca42 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast43, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 14, i8* %0), !reason !14
  %27 = getelementptr inbounds [3 x double], [3 x double]* %receive_load15, i64 %new_phi38, i64 %new_phi39, !time !37
  %28 = load double, double* %27, align 8, !tbaa !5, !time !25
  %send_alloca44 = alloca double, !reason !14
  store double %28, double* %send_alloca44, !reason !14
  %send_cast45 = bitcast double* %send_alloca44 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast45, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 15, i8* %0), !reason !14
  %29 = getelementptr inbounds [3 x double], [3 x double]* %receive_load48, i64 %new_phi38, i64 %new_phi39, !time !38
  %receive49 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i64 17, i8* %0), !reason !14
  %bitcast50 = bitcast i8* %receive49 to double*, !reason !14
  %receive_load51 = load double, double* %bitcast50, !reason !14
  store double %receive_load51, double* %29, align 8, !tbaa !5, !time !39
  %send_alloca52 = alloca i64, !reason !14
  store i64 %new_phi39, i64* %send_alloca52, !reason !14
  %send_cast53 = bitcast i64* %send_alloca52 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast53, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 18, i8* %0), !reason !14
  %repair_phi56 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 20, i8* %0), !reason !29
  %bitcast57 = bitcast i8* %repair_phi56 to i64*, !reason !29
  %receive_load58 = load i64, i64* %bitcast57, !reason !29
  %broadcast65 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 24, i8* %0), !reason !29
  %bitcast66 = bitcast i8* %broadcast65 to i1*, !reason !29
  %receive_load67 = load i1, i1* %bitcast66, !reason !29
  br i1 %receive_load67, label %l7, label %l6

l7:                                               ; preds = %l6
  %30 = add nuw nsw i64 %new_phi38, 1, !time !30
  %31 = icmp eq i64 %30, 3, !time !10
  %send_alloca68 = alloca i1, !reason !31
  store i1 %31, i1* %send_alloca68, !reason !31
  %send_cast69 = bitcast i1* %send_alloca68 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast69, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 25, i8* %0), !reason !31
  br i1 %31, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #0

define void @multiply_1(i8*) {
entry:
  br label %l

l:                                                ; preds = %l4, %entry
  br label %l1

l1:                                               ; preds = %l3, %l
  br label %l2

l2:                                               ; preds = %l2, %l1
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 5, i8* %0), !reason !14
  %bitcast = bitcast i8* %receive to double*, !reason !14
  %receive_load = load double, double* %bitcast, !reason !14
  %receive9 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 6, i8* %0), !reason !14
  %bitcast10 = bitcast i8* %receive9 to double*, !reason !14
  %receive_load11 = load double, double* %bitcast10, !reason !14
  %1 = fmul double %receive_load, %receive_load11, !time !40
  %2 = tail call double @llvm.sqrt.f64(double %1), !time !41
  %send_alloca = alloca double, !reason !14
  store double %2, double* %send_alloca, !reason !14
  %send_cast = bitcast double* %send_alloca to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 7, i8* %0), !reason !14
  %receive12 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 8, i8* %0), !reason !14
  %bitcast13 = bitcast i8* %receive12 to double*, !reason !14
  %receive_load14 = load double, double* %bitcast13, !reason !14
  %3 = tail call double @llvm.sqrt.f64(double %receive_load14), !time !42
  %receive15 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 9, i8* %0), !reason !14
  %bitcast16 = bitcast i8* %receive15 to double*, !reason !14
  %receive_load17 = load double, double* %bitcast16, !reason !14
  %4 = fmul double %receive_load17, %3, !time !43
  %receive18 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 10, i8* %0), !reason !14
  %bitcast19 = bitcast i8* %receive18 to double*, !reason !14
  %receive_load20 = load double, double* %bitcast19, !reason !14
  %5 = fadd double %receive_load20, %4, !time !44
  %send_alloca21 = alloca double, !reason !14
  store double %5, double* %send_alloca21, !reason !14
  %send_cast22 = bitcast double* %send_alloca21 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast22, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 11, i8* %0), !reason !14
  %receive23 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 12, i8* %0), !reason !14
  %bitcast24 = bitcast i8* %receive23 to i64*, !reason !14
  %receive_load25 = load i64, i64* %bitcast24, !reason !14
  %6 = add nuw nsw i64 %receive_load25, 1, !time !45
  %7 = icmp eq i64 %6, 3, !time !46
  %send_alloca40 = alloca i64, !reason !47
  store i64 %6, i64* %send_alloca40, !reason !47
  %send_cast41 = bitcast i64* %send_alloca40 to i8*, !reason !47
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast41, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 19, i8* %0), !reason !47
  %send_alloca44 = alloca i1, !reason !31
  store i1 %7, i1* %send_alloca44, !reason !31
  %send_cast45 = bitcast i1* %send_alloca44 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast45, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 21, i8* %0), !reason !31
  br i1 %7, label %l3, label %l2

l3:                                               ; preds = %l2
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 22, i8* %0), !reason !29
  %bitcast46 = bitcast i8* %broadcast to i1*, !reason !29
  %receive_load47 = load i1, i1* %bitcast46, !reason !29
  br i1 %receive_load47, label %l4, label %l1

l4:                                               ; preds = %l3
  %broadcast48 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 23, i8* %0), !reason !29
  %bitcast49 = bitcast i8* %broadcast48 to i1*, !reason !29
  %receive_load50 = load i1, i1* %bitcast49, !reason !29
  br i1 %receive_load50, label %l5, label %l

l5:                                               ; preds = %l7, %l4
  br label %l6

l6:                                               ; preds = %l6, %l5
  %receive26 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 13, i8* %0), !reason !14
  %bitcast27 = bitcast i8* %receive26 to double*, !reason !14
  %receive_load28 = load double, double* %bitcast27, !reason !14
  %receive29 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 14, i8* %0), !reason !14
  %bitcast30 = bitcast i8* %receive29 to double*, !reason !14
  %receive_load31 = load double, double* %bitcast30, !reason !14
  %8 = fadd double %receive_load28, %receive_load31, !time !48
  %receive32 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 15, i8* %0), !reason !14
  %bitcast33 = bitcast i8* %receive32 to double*, !reason !14
  %receive_load34 = load double, double* %bitcast33, !reason !14
  %9 = fadd double %8, %receive_load34, !time !38
  %send_alloca35 = alloca double, !reason !14
  store double %9, double* %send_alloca35, !reason !14
  %send_cast36 = bitcast double* %send_alloca35 to i8*, !reason !14
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast36, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i64 17, i8* %0), !reason !14
  %receive37 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 18, i8* %0), !reason !14
  %bitcast38 = bitcast i8* %receive37 to i64*, !reason !14
  %receive_load39 = load i64, i64* %bitcast38, !reason !14
  %10 = add nuw nsw i64 %receive_load39, 1, !time !33
  %11 = icmp eq i64 %10, 3, !time !46
  %send_alloca42 = alloca i64, !reason !47
  store i64 %10, i64* %send_alloca42, !reason !47
  %send_cast43 = bitcast i64* %send_alloca42 to i8*, !reason !47
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast43, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 20, i8* %0), !reason !47
  %send_alloca51 = alloca i1, !reason !31
  store i1 %11, i1* %send_alloca51, !reason !31
  %send_cast52 = bitcast i1* %send_alloca51 to i8*, !reason !31
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast52, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 24, i8* %0), !reason !31
  br i1 %11, label %l7, label %l6

l7:                                               ; preds = %l6
  %broadcast53 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 25, i8* %0), !reason !29
  %bitcast54 = bitcast i8* %broadcast53 to i1*, !reason !29
  %receive_load55 = load i1, i1* %bitcast54, !reason !29
  br i1 %receive_load55, label %l8, label %l5

l8:                                               ; preds = %l7
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture) local_unnamed_addr #1 {
  br label %7

; <label>:7:                                      ; preds = %41, %6
  %8 = phi i64 [ 0, %6 ], [ %42, %41 ]
  br label %9

; <label>:9:                                      ; preds = %38, %7
  %10 = phi i64 [ 0, %7 ], [ %39, %38 ]
  %11 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %10
  store double 0.000000e+00, double* %11, align 8, !tbaa !5
  %12 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %10
  store double 0.000000e+00, double* %12, align 8, !tbaa !5
  %13 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %10
  store double 0.000000e+00, double* %13, align 8, !tbaa !5
  br label %14

; <label>:14:                                     ; preds = %14, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %14 ]
  %16 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %15
  %17 = load double, double* %16, align 8, !tbaa !5
  %18 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %15, i64 %10
  %19 = load double, double* %18, align 8, !tbaa !5
  %20 = fmul double %17, %19
  %21 = tail call double @llvm.sqrt.f64(double %20)
  %22 = load double, double* %11, align 8, !tbaa !5
  %23 = fadd double %22, %21
  store double %23, double* %11, align 8, !tbaa !5
  %24 = load double, double* %16, align 8, !tbaa !5
  %25 = tail call double @llvm.sqrt.f64(double %24)
  %26 = load double, double* %18, align 8, !tbaa !5
  %27 = fmul double %25, %26
  %28 = load double, double* %12, align 8, !tbaa !5
  %29 = fadd double %28, %27
  store double %29, double* %12, align 8, !tbaa !5
  %30 = load double, double* %16, align 8, !tbaa !5
  %31 = load double, double* %18, align 8, !tbaa !5
  %32 = tail call double @llvm.sqrt.f64(double %31)
  %33 = fmul double %30, %32
  %34 = load double, double* %13, align 8, !tbaa !5
  %35 = fadd double %34, %33
  store double %35, double* %13, align 8, !tbaa !5
  %36 = add nuw nsw i64 %15, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %14

; <label>:38:                                     ; preds = %14
  %39 = add nuw nsw i64 %10, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %9

; <label>:41:                                     ; preds = %38
  %42 = add nuw nsw i64 %8, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %7

; <label>:44:                                     ; preds = %59, %41
  %45 = phi i64 [ %60, %59 ], [ 0, %41 ]
  br label %46

; <label>:46:                                     ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %57, %46 ]
  %48 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %47
  %49 = load double, double* %48, align 8, !tbaa !5
  %50 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %47
  %51 = load double, double* %50, align 8, !tbaa !5
  %52 = fadd double %49, %51
  %53 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %47
  %54 = load double, double* %53, align 8, !tbaa !5
  %55 = fadd double %52, %54
  %56 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %47
  store double %55, double* %56, align 8, !tbaa !5
  %57 = add nuw nsw i64 %47, 1
  %58 = icmp eq i64 %57, 3
  br i1 %58, label %59, label %46

; <label>:59:                                     ; preds = %46
  %60 = add nuw nsw i64 %45, 1
  %61 = icmp eq i64 %60, 3
  br i1 %61, label %62, label %44

; <label>:62:                                     ; preds = %59
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = alloca [3 x [3 x double]], align 16
  %4 = alloca [3 x [3 x double]], align 16
  %5 = alloca [3 x [3 x double]], align 16
  %6 = alloca [3 x [3 x double]], align 16
  %7 = alloca [3 x [3 x double]], align 16
  %8 = alloca [3 x [3 x double]], align 16
  %9 = bitcast [3 x [3 x double]]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %9, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a to i8*), i64 72, i1 false)
  %10 = bitcast [3 x [3 x double]]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %10, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b to i8*), i64 72, i1 false)
  %11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %12 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %8, i64 0, i64 0
  %13 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 0
  %14 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %5, i64 0, i64 0
  %16 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %6, i64 0, i64 0
  call void @replace_multiply([3 x double]* nonnull %11, [3 x double]* nonnull %12, [3 x double]* nonnull %13, [3 x double]* nonnull %14, [3 x double]* nonnull %15, [3 x double]* nonnull %16)
  br label %17

; <label>:17:                                     ; preds = %26, %2
  %18 = phi i64 [ 0, %2 ], [ %28, %26 ]
  br label %19

; <label>:19:                                     ; preds = %19, %17
  %20 = phi i64 [ 0, %17 ], [ %24, %19 ]
  %21 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %6, i64 0, i64 %18, i64 %20
  %22 = load double, double* %21, align 8, !tbaa !5
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %22)
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %26, label %19

; <label>:26:                                     ; preds = %19
  %27 = tail call i32 @putchar(i32 10)
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, 3
  br i1 %29, label %30, label %17

; <label>:30:                                     ; preds = %26
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

define void @replace_multiply([3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %6 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %6)
  %send_alloca = alloca [3 x double]*, !reason !3
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !3
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 0, i8* %6), !reason !3
  %send_alloca1 = alloca [3 x double]*, !reason !3
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !3
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 1, i8* %6), !reason !3
  %send_alloca3 = alloca [3 x double]*, !reason !3
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !3
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 2, i8* %6), !reason !3
  %send_alloca5 = alloca [3 x double]*, !reason !3
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !3
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 3, i8* %6), !reason !3
  %send_alloca7 = alloca [3 x double]*, !reason !3
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !3
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 4, i8* %6), !reason !3
  %send_alloca9 = alloca [3 x double]*, !reason !3
  store [3 x double]* %5, [3 x double]** %send_alloca9, !reason !3
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 16, i8* %6), !reason !3
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @init() #1 {
  %1 = tail call i8* @malloc(i64 208) #8
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !49
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #4
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #5

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !54
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !56
  tail call void %3(%struct.Context* %6) #4
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
  %16 = load i64, i64* %15, align 8, !tbaa !57
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !54
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %12
  %21 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %20, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #4
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !57
  %11 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %10, i8** null) #4
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %5 = tail call i8* @malloc(i64 24) #8
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !58
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !61
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #8
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !62
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #4
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !49
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.Context* %3 to i8**
  br label %30

; <label>:22:                                     ; preds = %22, %4
  %23 = phi %struct.Comm* [ %25, %22 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !63
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #0

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !57
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !58
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !58
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
  %22 = load i64, i64* %21, align 8, !tbaa !63
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !63
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !49
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !57
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
  %9 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #4
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %6)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #4
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define i8* @_receive(i1 zeroext, i32, i32, i8*) local_unnamed_addr #1 {
  %5 = bitcast i8* %3 to %struct.Context*
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_rwlock_t*
  br label %8

; <label>:8:                                      ; preds = %13, %4
  br i1 %0, label %9, label %11

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #4
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #4
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = tail call %struct.Comm* @_find_channel(i1 zeroext %0, i32 %2, %struct.Context* %5)
  %15 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #4
  %16 = icmp eq %struct.Comm* %14, null
  br i1 %16, label %8, label %17

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !61
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %17
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 %2, i32 %1, i32 %19)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8, !tbaa !62
  ret i8* %25
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

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
define void @send_return(i8*, i32, i8*) local_unnamed_addr #1 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i32 -1, i8* %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_return(i32, i8*) local_unnamed_addr #1 {
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

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
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
!4 = !{!"0", !"0"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"3", !"3"}
!10 = !{!"3", !"6"}
!11 = !{!"13", !"14"}
!12 = !{!"6", !"9"}
!13 = !{!"10", !"11"}
!14 = !{!"replace mapped op"}
!15 = !{!"34", !"35"}
!16 = !{!"36", !"39"}
!17 = !{!"40", !"41"}
!18 = !{!"11", !"12"}
!19 = !{!"17", !"24"}
!20 = !{!"14", !"15"}
!21 = !{!"24", !"29"}
!22 = !{!"16", !"17"}
!23 = !{!"29", !"32"}
!24 = !{!"35", !"36"}
!25 = !{!"12", !"13"}
!26 = !{!"9", !"10"}
!27 = !{!"15", !"16"}
!28 = !{!"39", !"40"}
!29 = !{!"receive"}
!30 = !{!"0", !"3"}
!31 = !{!"broadcast"}
!32 = !{!"1", !"1"}
!33 = !{!"4", !"7"}
!34 = !{!"7", !"8"}
!35 = !{!"1", !"4"}
!36 = !{!"8", !"9"}
!37 = !{!"9", !"12"}
!38 = !{!"14", !"17"}
!39 = !{!"18", !"19"}
!40 = !{!"23", !"28"}
!41 = !{!"28", !"35"}
!42 = !{!"11", !"18"}
!43 = !{!"18", !"23"}
!44 = !{!"35", !"38"}
!45 = !{!"5", !"8"}
!46 = !{!"8", !"11"}
!47 = !{!"repair_phi"}
!48 = !{!"11", !"14"}
!49 = !{!50, !51, i64 0}
!50 = !{!"Context", !51, i64 0, !52, i64 8}
!51 = !{!"any pointer", !7, i64 0}
!52 = !{!"_opaque_pthread_rwlock_t", !53, i64 0, !7, i64 8}
!53 = !{!"long", !7, i64 0}
!54 = !{!55, !51, i64 0}
!55 = !{!"Closure", !51, i64 0, !51, i64 8}
!56 = !{!55, !51, i64 8}
!57 = !{!51, !51, i64 0}
!58 = !{!59, !60, i64 0}
!59 = !{!"Comm", !60, i64 0, !60, i64 4, !51, i64 8, !51, i64 16}
!60 = !{!"int", !7, i64 0}
!61 = !{!59, !60, i64 4}
!62 = !{!59, !51, i64 8}
!63 = !{!59, !51, i64 16}
