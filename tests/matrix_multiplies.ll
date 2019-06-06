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

@__const.main.a = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]]
@__const.main.b = global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]]
@.str = global [4 x i8] c"%f \00"
@funs = global [2 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1]
@__const.main.a.1 = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b.2 = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1

define void @multiply_0(i8*) {
entry:
  %argument90 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 37, i8* %0), !reason !3
  %bitcast91 = bitcast i8* %argument90 to [3 x double]**, !reason !3
  %receive_load92 = load [3 x double]*, [3 x double]** %bitcast91, !reason !3
  %argument84 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 35, i8* %0), !reason !3
  %bitcast85 = bitcast i8* %argument84 to [3 x double]**, !reason !3
  %receive_load86 = load [3 x double]*, [3 x double]** %bitcast85, !reason !3
  %argument19 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 8, i8* %0), !reason !3
  %bitcast20 = bitcast i8* %argument19 to [3 x double]**, !reason !3
  %receive_load21 = load [3 x double]*, [3 x double]** %bitcast20, !reason !3
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 4, i8* %0), !reason !3
  %bitcast12 = bitcast i8* %argument to [3 x double]**, !reason !3
  %receive_load13 = load [3 x double]*, [3 x double]** %bitcast12, !reason !3
  br label %l

l:                                                ; preds = %l1, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %receive_load104, %l1 ], !time !4
  br label %l2

l1:                                               ; preds = %l3
  %send_alloca71 = alloca i64, !reason !5
  store i64 %new_phi, i64* %send_alloca71, !reason !5
  %send_cast72 = bitcast i64* %send_alloca71 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast72, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 30, i8* %0), !reason !5
  %broadcast73 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 31, i8* %0), !reason !6
  %bitcast74 = bitcast i8* %broadcast73 to i1*, !reason !6
  %receive_load75 = load i1, i1* %bitcast74, !reason !6
  %"repair phi" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 42, i8* %0), !reason !6
  %bitcast103 = bitcast i8* %"repair phi" to i64*, !reason !6
  %receive_load104 = load i64, i64* %bitcast103, !reason !6
  br i1 %receive_load75, label %l5, label %l

l2:                                               ; preds = %l3, %l
  %new_phi9 = phi i64 [ 0, %l ], [ %receive_load107, %l3 ], !time !7
  %send_alloca = alloca i64, !reason !5
  store i64 %new_phi, i64* %send_alloca, !reason !5
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 1, i8* %0), !reason !5
  %send_alloca10 = alloca i64, !reason !5
  store i64 %new_phi9, i64* %send_alloca10, !reason !5
  %send_cast11 = bitcast i64* %send_alloca10 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast11, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 2, i8* %0), !reason !5
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 3, i8* %0), !reason !5
  %bitcast = bitcast i8* %receive to double**, !reason !5
  %receive_load = load double*, double** %bitcast, !reason !5
  store double 0.000000e+00, double* %receive_load, align 8, !tbaa !8, !time !12
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load13, i64 %new_phi, i64 %new_phi9, !time !13
  store double 0.000000e+00, double* %1, align 8, !tbaa !8, !time !14
  %send_alloca14 = alloca i64, !reason !5
  store i64 %new_phi, i64* %send_alloca14, !reason !5
  %send_cast15 = bitcast i64* %send_alloca14 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast15, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 6, i8* %0), !reason !5
  %send_alloca16 = alloca i64, !reason !5
  store i64 %new_phi9, i64* %send_alloca16, !reason !5
  %send_cast17 = bitcast i64* %send_alloca16 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast17, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 7, i8* %0), !reason !5
  br label %l4

l3:                                               ; preds = %l4
  %send_alloca66 = alloca i64, !reason !5
  store i64 %new_phi9, i64* %send_alloca66, !reason !5
  %send_cast67 = bitcast i64* %send_alloca66 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast67, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 28, i8* %0), !reason !5
  %broadcast68 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 29, i8* %0), !reason !6
  %bitcast69 = bitcast i8* %broadcast68 to i1*, !reason !6
  %receive_load70 = load i1, i1* %bitcast69, !reason !6
  %"repair phi105" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 43, i8* %0), !reason !6
  %bitcast106 = bitcast i8* %"repair phi105" to i64*, !reason !6
  %receive_load107 = load i64, i64* %bitcast106, !reason !6
  br i1 %receive_load70, label %l1, label %l2

l4:                                               ; preds = %l4, %l2
  %new_phi18 = phi i64 [ 0, %l2 ], [ %receive_load110, %l4 ], !time !15
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load21, i64 %new_phi, i64 %new_phi18, !time !16
  %send_alloca22 = alloca double*, !reason !5
  store double* %2, double** %send_alloca22, !reason !5
  %send_cast23 = bitcast double** %send_alloca22 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast23, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 9, i8* %0), !reason !5
  %send_alloca24 = alloca i64, !reason !5
  store i64 %new_phi18, i64* %send_alloca24, !reason !5
  %send_cast25 = bitcast i64* %send_alloca24 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast25, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 11, i8* %0), !reason !5
  %send_alloca26 = alloca i64, !reason !5
  store i64 %new_phi9, i64* %send_alloca26, !reason !5
  %send_cast27 = bitcast i64* %send_alloca26 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast27, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 12, i8* %0), !reason !5
  %receive28 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 13, i8* %0), !reason !5
  %bitcast29 = bitcast i8* %receive28 to double**, !reason !5
  %receive_load30 = load double*, double** %bitcast29, !reason !5
  %3 = load double, double* %receive_load30, align 8, !tbaa !8, !time !17
  %receive31 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 14, i8* %0), !reason !5
  %bitcast32 = bitcast i8* %receive31 to double*, !reason !5
  %receive_load33 = load double, double* %bitcast32, !reason !5
  %4 = fmul double %receive_load33, %3, !time !18
  %5 = tail call double @llvm.sqrt.f64(double %4), !time !19
  %receive34 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 15, i8* %0), !reason !5
  %bitcast35 = bitcast i8* %receive34 to double*, !reason !5
  %receive_load36 = load double, double* %bitcast35, !reason !5
  %6 = fadd double %receive_load36, %5, !time !20
  %receive37 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 16, i8* %0), !reason !5
  %bitcast38 = bitcast i8* %receive37 to double**, !reason !5
  %receive_load39 = load double*, double** %bitcast38, !reason !5
  store double %6, double* %receive_load39, align 8, !tbaa !8, !time !21
  %send_alloca40 = alloca double*, !reason !5
  store double* %2, double** %send_alloca40, !reason !5
  %send_cast41 = bitcast double** %send_alloca40 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast41, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 17, i8* %0), !reason !5
  %receive42 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 18, i8* %0), !reason !5
  %bitcast43 = bitcast i8* %receive42 to double*, !reason !5
  %receive_load44 = load double, double* %bitcast43, !reason !5
  %7 = tail call double @llvm.sqrt.f64(double %receive_load44), !time !22
  %send_alloca45 = alloca double, !reason !5
  store double %7, double* %send_alloca45, !reason !5
  %send_cast46 = bitcast double* %send_alloca45 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast46, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 19, i8* %0), !reason !5
  %send_alloca47 = alloca double*, !reason !5
  store double* %1, double** %send_alloca47, !reason !5
  %send_cast48 = bitcast double** %send_alloca47 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast48, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 20, i8* %0), !reason !5
  %receive49 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 21, i8* %0), !reason !5
  %bitcast50 = bitcast i8* %receive49 to double*, !reason !5
  %receive_load51 = load double, double* %bitcast50, !reason !5
  %receive52 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 22, i8* %0), !reason !5
  %bitcast53 = bitcast i8* %receive52 to double*, !reason !5
  %receive_load54 = load double, double* %bitcast53, !reason !5
  %8 = fadd double %receive_load51, %receive_load54, !time !23
  store double %8, double* %1, align 8, !tbaa !8, !time !24
  %9 = load double, double* %2, align 8, !tbaa !8, !time !25
  %receive55 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 23, i8* %0), !reason !5
  %bitcast56 = bitcast i8* %receive55 to double**, !reason !5
  %receive_load57 = load double*, double** %bitcast56, !reason !5
  %10 = load double, double* %receive_load57, align 8, !tbaa !8, !time !26
  %send_alloca58 = alloca double, !reason !5
  store double %10, double* %send_alloca58, !reason !5
  %send_cast59 = bitcast double* %send_alloca58 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast59, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 24, i8* %0), !reason !5
  %send_alloca60 = alloca double, !reason !5
  store double %9, double* %send_alloca60, !reason !5
  %send_cast61 = bitcast double* %send_alloca60 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast61, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 25, i8* %0), !reason !5
  %send_alloca62 = alloca i64, !reason !5
  store i64 %new_phi18, i64* %send_alloca62, !reason !5
  %send_cast63 = bitcast i64* %send_alloca62 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast63, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 26, i8* %0), !reason !5
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 27, i8* %0), !reason !6
  %bitcast64 = bitcast i8* %broadcast to i1*, !reason !6
  %receive_load65 = load i1, i1* %bitcast64, !reason !6
  %"repair phi108" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 44, i8* %0), !reason !6
  %bitcast109 = bitcast i8* %"repair phi108" to i64*, !reason !6
  %receive_load110 = load i64, i64* %bitcast109, !reason !6
  br i1 %receive_load65, label %l3, label %l4

l5:                                               ; preds = %l7, %l1
  %new_phi76 = phi i64 [ %receive_load113, %l7 ], [ 0, %l1 ], !time !4
  br label %l8

l6:                                               ; preds = %l7
  ret void

l7:                                               ; preds = %l8
  %send_alloca98 = alloca i64, !reason !5
  store i64 %new_phi76, i64* %send_alloca98, !reason !5
  %send_cast99 = bitcast i64* %send_alloca98 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast99, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 40, i8* %0), !reason !5
  %broadcast100 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 41, i8* %0), !reason !6
  %bitcast101 = bitcast i8* %broadcast100 to i1*, !reason !6
  %receive_load102 = load i1, i1* %bitcast101, !reason !6
  %"repair phi111" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 45, i8* %0), !reason !6
  %bitcast112 = bitcast i8* %"repair phi111" to i64*, !reason !6
  %receive_load113 = load i64, i64* %bitcast112, !reason !6
  br i1 %receive_load102, label %l6, label %l5

l8:                                               ; preds = %l8, %l5
  %new_phi77 = phi i64 [ 0, %l5 ], [ %receive_load116, %l8 ], !time !27
  %send_alloca78 = alloca i64, !reason !5
  store i64 %new_phi76, i64* %send_alloca78, !reason !5
  %send_cast79 = bitcast i64* %send_alloca78 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast79, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 32, i8* %0), !reason !5
  %send_alloca80 = alloca i64, !reason !5
  store i64 %new_phi77, i64* %send_alloca80, !reason !5
  %send_cast81 = bitcast i64* %send_alloca80 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast81, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 33, i8* %0), !reason !5
  %11 = getelementptr inbounds [3 x double], [3 x double]* %receive_load13, i64 %new_phi76, i64 %new_phi77, !time !28
  %send_alloca82 = alloca double*, !reason !5
  store double* %11, double** %send_alloca82, !reason !5
  %send_cast83 = bitcast double** %send_alloca82 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast83, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 34, i8* %0), !reason !5
  %12 = getelementptr inbounds [3 x double], [3 x double]* %receive_load86, i64 %new_phi76, i64 %new_phi77, !time !29
  %13 = load double, double* %12, align 8, !tbaa !8, !time !30
  %receive87 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 36, i8* %0), !reason !5
  %bitcast88 = bitcast i8* %receive87 to double*, !reason !5
  %receive_load89 = load double, double* %bitcast88, !reason !5
  %14 = fadd double %receive_load89, %13, !time !31
  %15 = getelementptr inbounds [3 x double], [3 x double]* %receive_load92, i64 %new_phi76, i64 %new_phi77, !time !32
  store double %14, double* %15, align 8, !tbaa !8, !time !17
  %send_alloca93 = alloca i64, !reason !5
  store i64 %new_phi77, i64* %send_alloca93, !reason !5
  %send_cast94 = bitcast i64* %send_alloca93 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast94, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 38, i8* %0), !reason !5
  %broadcast95 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 39, i8* %0), !reason !6
  %bitcast96 = bitcast i8* %broadcast95 to i1*, !reason !6
  %receive_load97 = load i1, i1* %bitcast96, !reason !6
  %"repair phi114" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 46, i8* %0), !reason !6
  %bitcast115 = bitcast i8* %"repair phi114" to i64*, !reason !6
  %receive_load116 = load i64, i64* %bitcast115, !reason !6
  br i1 %receive_load97, label %l7, label %l8
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #0

define void @multiply_1(i8*) {
entry:
  %argument26 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 10, i8* %0), !reason !3
  %bitcast27 = bitcast i8* %argument26 to [3 x double]**, !reason !3
  %receive_load28 = load [3 x double]*, [3 x double]** %bitcast27, !reason !3
  %argument14 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 5, i8* %0), !reason !3
  %bitcast15 = bitcast i8* %argument14 to [3 x double]**, !reason !3
  %receive_load16 = load [3 x double]*, [3 x double]** %bitcast15, !reason !3
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 0, i8* %0), !reason !3
  %bitcast = bitcast i8* %argument to [3 x double]**, !reason !3
  %receive_load = load [3 x double]*, [3 x double]** %bitcast, !reason !3
  br label %l

l:                                                ; preds = %l1, %entry
  br label %l2

l1:                                               ; preds = %l3
  %receive76 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 30, i8* %0), !reason !5
  %bitcast77 = bitcast i8* %receive76 to i64*, !reason !5
  %receive_load78 = load i64, i64* %bitcast77, !reason !5
  %1 = add nuw nsw i64 %receive_load78, 1, !time !33
  %2 = icmp eq i64 %1, 3, !time !34
  %send_alloca79 = alloca i1, !reason !35
  store i1 %2, i1* %send_alloca79, !reason !35
  %send_cast80 = bitcast i1* %send_alloca79 to i8*, !reason !35
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast80, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 31, i8* %0), !reason !35
  %send_alloca102 = alloca i64, !reason !36
  store i64 %1, i64* %send_alloca102, !reason !36
  %send_cast103 = bitcast i64* %send_alloca102 to i8*, !reason !36
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast103, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 42, i8* %0), !reason !36
  br i1 %2, label %l5, label %l

l2:                                               ; preds = %l3, %l
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 1, i8* %0), !reason !5
  %bitcast9 = bitcast i8* %receive to i64*, !reason !5
  %receive_load10 = load i64, i64* %bitcast9, !reason !5
  %receive11 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 2, i8* %0), !reason !5
  %bitcast12 = bitcast i8* %receive11 to i64*, !reason !5
  %receive_load13 = load i64, i64* %bitcast12, !reason !5
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load10, i64 %receive_load13, !time !16
  %send_alloca = alloca double*, !reason !5
  store double* %3, double** %send_alloca, !reason !5
  %send_cast = bitcast double** %send_alloca to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 3, i8* %0), !reason !5
  %receive17 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 6, i8* %0), !reason !5
  %bitcast18 = bitcast i8* %receive17 to i64*, !reason !5
  %receive_load19 = load i64, i64* %bitcast18, !reason !5
  %receive20 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 7, i8* %0), !reason !5
  %bitcast21 = bitcast i8* %receive20 to i64*, !reason !5
  %receive_load22 = load i64, i64* %bitcast21, !reason !5
  %4 = getelementptr inbounds [3 x double], [3 x double]* %receive_load16, i64 %receive_load19, i64 %receive_load22, !time !29
  store double 0.000000e+00, double* %4, align 8, !tbaa !8, !time !30
  br label %l4

l3:                                               ; preds = %l4
  %receive71 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 28, i8* %0), !reason !5
  %bitcast72 = bitcast i8* %receive71 to i64*, !reason !5
  %receive_load73 = load i64, i64* %bitcast72, !reason !5
  %5 = add nuw nsw i64 %receive_load73, 1, !time !33
  %6 = icmp eq i64 %5, 3, !time !34
  %send_alloca74 = alloca i1, !reason !35
  store i1 %6, i1* %send_alloca74, !reason !35
  %send_cast75 = bitcast i1* %send_alloca74 to i8*, !reason !35
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast75, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 29, i8* %0), !reason !35
  %send_alloca104 = alloca i64, !reason !36
  store i64 %5, i64* %send_alloca104, !reason !36
  %send_cast105 = bitcast i64* %send_alloca104 to i8*, !reason !36
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast105, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 43, i8* %0), !reason !36
  br i1 %6, label %l1, label %l2

l4:                                               ; preds = %l4, %l2
  %receive23 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 9, i8* %0), !reason !5
  %bitcast24 = bitcast i8* %receive23 to double**, !reason !5
  %receive_load25 = load double*, double** %bitcast24, !reason !5
  %7 = load double, double* %receive_load25, align 8, !tbaa !8, !time !26
  %receive29 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 11, i8* %0), !reason !5
  %bitcast30 = bitcast i8* %receive29 to i64*, !reason !5
  %receive_load31 = load i64, i64* %bitcast30, !reason !5
  %receive32 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 12, i8* %0), !reason !5
  %bitcast33 = bitcast i8* %receive32 to i64*, !reason !5
  %receive_load34 = load i64, i64* %bitcast33, !reason !5
  %8 = getelementptr inbounds [3 x double], [3 x double]* %receive_load28, i64 %receive_load31, i64 %receive_load34, !time !37
  %send_alloca35 = alloca double*, !reason !5
  store double* %8, double** %send_alloca35, !reason !5
  %send_cast36 = bitcast double** %send_alloca35 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast36, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 13, i8* %0), !reason !5
  %send_alloca37 = alloca double, !reason !5
  store double %7, double* %send_alloca37, !reason !5
  %send_cast38 = bitcast double* %send_alloca37 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast38, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 14, i8* %0), !reason !5
  %9 = load double, double* %3, align 8, !tbaa !8, !time !38
  %send_alloca39 = alloca double, !reason !5
  store double %9, double* %send_alloca39, !reason !5
  %send_cast40 = bitcast double* %send_alloca39 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast40, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 15, i8* %0), !reason !5
  %send_alloca41 = alloca double*, !reason !5
  store double* %3, double** %send_alloca41, !reason !5
  %send_cast42 = bitcast double** %send_alloca41 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast42, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 16, i8* %0), !reason !5
  %receive43 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 17, i8* %0), !reason !5
  %bitcast44 = bitcast i8* %receive43 to double**, !reason !5
  %receive_load45 = load double*, double** %bitcast44, !reason !5
  %10 = load double, double* %receive_load45, align 8, !tbaa !8, !time !25
  %send_alloca46 = alloca double, !reason !5
  store double %10, double* %send_alloca46, !reason !5
  %send_cast47 = bitcast double* %send_alloca46 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast47, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 18, i8* %0), !reason !5
  %11 = load double, double* %8, align 8, !tbaa !8, !time !39
  %receive48 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 19, i8* %0), !reason !5
  %bitcast49 = bitcast i8* %receive48 to double*, !reason !5
  %receive_load50 = load double, double* %bitcast49, !reason !5
  %12 = fmul double %receive_load50, %11, !time !40
  %receive51 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 20, i8* %0), !reason !5
  %bitcast52 = bitcast i8* %receive51 to double**, !reason !5
  %receive_load53 = load double*, double** %bitcast52, !reason !5
  %13 = load double, double* %receive_load53, align 8, !tbaa !8, !time !41
  %send_alloca54 = alloca double, !reason !5
  store double %13, double* %send_alloca54, !reason !5
  %send_cast55 = bitcast double* %send_alloca54 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast55, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 21, i8* %0), !reason !5
  %send_alloca56 = alloca double, !reason !5
  store double %12, double* %send_alloca56, !reason !5
  %send_cast57 = bitcast double* %send_alloca56 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast57, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 22, i8* %0), !reason !5
  %send_alloca58 = alloca double*, !reason !5
  store double* %8, double** %send_alloca58, !reason !5
  %send_cast59 = bitcast double** %send_alloca58 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast59, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 23, i8* %0), !reason !5
  %receive60 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 24, i8* %0), !reason !5
  %bitcast61 = bitcast i8* %receive60 to double*, !reason !5
  %receive_load62 = load double, double* %bitcast61, !reason !5
  %14 = tail call double @llvm.sqrt.f64(double %receive_load62), !time !42
  %receive63 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 25, i8* %0), !reason !5
  %bitcast64 = bitcast i8* %receive63 to double*, !reason !5
  %receive_load65 = load double, double* %bitcast64, !reason !5
  %15 = fmul double %receive_load65, %14, !time !43
  %16 = load double, double* %4, align 8, !tbaa !8, !time !44
  %17 = fadd double %16, %15, !time !45
  store double %17, double* %4, align 8, !tbaa !8, !time !24
  %receive66 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 26, i8* %0), !reason !5
  %bitcast67 = bitcast i8* %receive66 to i64*, !reason !5
  %receive_load68 = load i64, i64* %bitcast67, !reason !5
  %18 = add nuw nsw i64 %receive_load68, 1, !time !46
  %19 = icmp eq i64 %18, 3, !time !47
  %send_alloca69 = alloca i1, !reason !35
  store i1 %19, i1* %send_alloca69, !reason !35
  %send_cast70 = bitcast i1* %send_alloca69 to i8*, !reason !35
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast70, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 27, i8* %0), !reason !35
  %send_alloca106 = alloca i64, !reason !36
  store i64 %18, i64* %send_alloca106, !reason !36
  %send_cast107 = bitcast i64* %send_alloca106 to i8*, !reason !36
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast107, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 44, i8* %0), !reason !36
  br i1 %19, label %l3, label %l4

l5:                                               ; preds = %l7, %l1
  br label %l8

l6:                                               ; preds = %l7
  ret void

l7:                                               ; preds = %l8
  %receive97 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 40, i8* %0), !reason !5
  %bitcast98 = bitcast i8* %receive97 to i64*, !reason !5
  %receive_load99 = load i64, i64* %bitcast98, !reason !5
  %20 = add nuw nsw i64 %receive_load99, 1, !time !33
  %21 = icmp eq i64 %20, 3, !time !34
  %send_alloca100 = alloca i1, !reason !35
  store i1 %21, i1* %send_alloca100, !reason !35
  %send_cast101 = bitcast i1* %send_alloca100 to i8*, !reason !35
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast101, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 41, i8* %0), !reason !35
  %send_alloca108 = alloca i64, !reason !36
  store i64 %20, i64* %send_alloca108, !reason !36
  %send_cast109 = bitcast i64* %send_alloca108 to i8*, !reason !36
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast109, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 45, i8* %0), !reason !36
  br i1 %21, label %l6, label %l5

l8:                                               ; preds = %l8, %l5
  %receive81 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 32, i8* %0), !reason !5
  %bitcast82 = bitcast i8* %receive81 to i64*, !reason !5
  %receive_load83 = load i64, i64* %bitcast82, !reason !5
  %receive84 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 33, i8* %0), !reason !5
  %bitcast85 = bitcast i8* %receive84 to i64*, !reason !5
  %receive_load86 = load i64, i64* %bitcast85, !reason !5
  %22 = getelementptr inbounds [3 x double], [3 x double]* %receive_load, i64 %receive_load83, i64 %receive_load86, !time !48
  %23 = load double, double* %22, align 8, !tbaa !8, !time !49
  %receive87 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 34, i8* %0), !reason !5
  %bitcast88 = bitcast i8* %receive87 to double**, !reason !5
  %receive_load89 = load double*, double** %bitcast88, !reason !5
  %24 = load double, double* %receive_load89, align 8, !tbaa !8, !time !50
  %25 = fadd double %23, %24, !time !51
  %send_alloca90 = alloca double, !reason !5
  store double %25, double* %send_alloca90, !reason !5
  %send_cast91 = bitcast double* %send_alloca90 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast91, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 0, i32 36, i8* %0), !reason !5
  %receive92 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 38, i8* %0), !reason !5
  %bitcast93 = bitcast i8* %receive92 to i64*, !reason !5
  %receive_load94 = load i64, i64* %bitcast93, !reason !5
  %26 = add nuw nsw i64 %receive_load94, 1, !time !52
  %27 = icmp eq i64 %26, 3, !time !32
  %send_alloca95 = alloca i1, !reason !35
  store i1 %27, i1* %send_alloca95, !reason !35
  %send_cast96 = bitcast i1* %send_alloca95 to i8*, !reason !35
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast96, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 39, i8* %0), !reason !35
  %send_alloca110 = alloca i64, !reason !36
  store i64 %26, i64* %send_alloca110, !reason !36
  %send_cast111 = bitcast i64* %send_alloca110 to i8*, !reason !36
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast111, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 46, i8* %0), !reason !36
  br i1 %27, label %l7, label %l8
}

; Function Attrs: nounwind ssp uwtable
define void @multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture, [3 x double]* nocapture) local_unnamed_addr #1 {
  br label %7

; <label>:7:                                      ; preds = %9, %6
  %8 = phi i64 [ 0, %6 ], [ %10, %9 ]
  br label %12

; <label>:9:                                      ; preds = %17
  %10 = add nuw nsw i64 %8, 1
  %11 = icmp eq i64 %10, 3
  br i1 %11, label %44, label %7

; <label>:12:                                     ; preds = %17, %7
  %13 = phi i64 [ 0, %7 ], [ %18, %17 ]
  %14 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %8, i64 %13
  store double 0.000000e+00, double* %14, align 8, !tbaa !8
  %15 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %8, i64 %13
  store double 0.000000e+00, double* %15, align 8, !tbaa !8
  %16 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %8, i64 %13
  store double 0.000000e+00, double* %16, align 8, !tbaa !8
  br label %20

; <label>:17:                                     ; preds = %20
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, 3
  br i1 %19, label %9, label %12

; <label>:20:                                     ; preds = %20, %12
  %21 = phi i64 [ 0, %12 ], [ %42, %20 ]
  %22 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %8, i64 %21
  %23 = load double, double* %22, align 8, !tbaa !8
  %24 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %21, i64 %13
  %25 = load double, double* %24, align 8, !tbaa !8
  %26 = fmul double %23, %25
  %27 = tail call double @llvm.sqrt.f64(double %26)
  %28 = load double, double* %14, align 8, !tbaa !8
  %29 = fadd double %28, %27
  store double %29, double* %14, align 8, !tbaa !8
  %30 = load double, double* %22, align 8, !tbaa !8
  %31 = tail call double @llvm.sqrt.f64(double %30)
  %32 = load double, double* %24, align 8, !tbaa !8
  %33 = fmul double %31, %32
  %34 = load double, double* %15, align 8, !tbaa !8
  %35 = fadd double %34, %33
  store double %35, double* %15, align 8, !tbaa !8
  %36 = load double, double* %22, align 8, !tbaa !8
  %37 = load double, double* %24, align 8, !tbaa !8
  %38 = tail call double @llvm.sqrt.f64(double %37)
  %39 = fmul double %36, %38
  %40 = load double, double* %16, align 8, !tbaa !8
  %41 = fadd double %40, %39
  store double %41, double* %16, align 8, !tbaa !8
  %42 = add nuw nsw i64 %21, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %17, label %20

; <label>:44:                                     ; preds = %47, %9
  %45 = phi i64 [ %48, %47 ], [ 0, %9 ]
  br label %50

; <label>:46:                                     ; preds = %47
  ret void

; <label>:47:                                     ; preds = %50
  %48 = add nuw nsw i64 %45, 1
  %49 = icmp eq i64 %48, 3
  br i1 %49, label %46, label %44

; <label>:50:                                     ; preds = %50, %44
  %51 = phi i64 [ 0, %44 ], [ %61, %50 ]
  %52 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %45, i64 %51
  %53 = load double, double* %52, align 8, !tbaa !8
  %54 = getelementptr inbounds [3 x double], [3 x double]* %3, i64 %45, i64 %51
  %55 = load double, double* %54, align 8, !tbaa !8
  %56 = fadd double %53, %55
  %57 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 %45, i64 %51
  %58 = load double, double* %57, align 8, !tbaa !8
  %59 = fadd double %56, %58
  %60 = getelementptr inbounds [3 x double], [3 x double]* %5, i64 %45, i64 %51
  store double %59, double* %60, align 8, !tbaa !8
  %61 = add nuw nsw i64 %51, 1
  %62 = icmp eq i64 %61, 3
  br i1 %62, label %47, label %50
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = alloca [3 x [3 x double]], align 16
  %4 = alloca [3 x [3 x double]], align 16
  %5 = alloca [3 x [3 x double]], align 16
  %6 = alloca [3 x [3 x double]], align 16
  %7 = alloca [3 x [3 x double]], align 16
  %8 = alloca [3 x [3 x double]], align 16
  %9 = bitcast [3 x [3 x double]]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %9) #3
  %10 = bitcast [3 x [3 x double]]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %10) #3
  %11 = bitcast [3 x [3 x double]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %11) #3
  %12 = bitcast [3 x [3 x double]]* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %12) #3
  %13 = bitcast [3 x [3 x double]]* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %13) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %13, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a.1 to i8*), i64 72, i1 false)
  %14 = bitcast [3 x [3 x double]]* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %14) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %14, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b.2 to i8*), i64 72, i1 false)
  %15 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %16 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %8, i64 0, i64 0
  %17 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 0
  %18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %19 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %5, i64 0, i64 0
  %20 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %6, i64 0, i64 0
  call void @replace_multiply([3 x double]* nonnull %15, [3 x double]* nonnull %16, [3 x double]* nonnull %17, [3 x double]* nonnull %18, [3 x double]* nonnull %19, [3 x double]* nonnull %20)
  br label %21

; <label>:21:                                     ; preds = %24, %2
  %22 = phi i64 [ 0, %2 ], [ %26, %24 ]
  br label %28

; <label>:23:                                     ; preds = %24
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %14) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %13) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %12) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %11) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %10) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %9) #3
  ret i32 0

; <label>:24:                                     ; preds = %28
  %25 = tail call i32 @putchar(i32 10)
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %23, label %21

; <label>:28:                                     ; preds = %28, %21
  %29 = phi i64 [ 0, %21 ], [ %33, %28 ]
  %30 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %6, i64 0, i64 %22, i64 %29
  %31 = load double, double* %30, align 8, !tbaa !8
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %31)
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %24, label %28
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

define void @replace_multiply([3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %6 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %6)
  %send_alloca = alloca [3 x double]*, !reason !3
  store [3 x double]* %2, [3 x double]** %send_alloca, !reason !3
  %send_cast = bitcast [3 x double]** %send_alloca to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 0, i8* %6), !reason !3
  %send_alloca1 = alloca [3 x double]*, !reason !3
  store [3 x double]* %3, [3 x double]** %send_alloca1, !reason !3
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 4, i8* %6), !reason !3
  %send_alloca3 = alloca [3 x double]*, !reason !3
  store [3 x double]* %4, [3 x double]** %send_alloca3, !reason !3
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 5, i8* %6), !reason !3
  %send_alloca5 = alloca [3 x double]*, !reason !3
  store [3 x double]* %0, [3 x double]** %send_alloca5, !reason !3
  %send_cast6 = bitcast [3 x double]** %send_alloca5 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast6, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 8, i8* %6), !reason !3
  %send_alloca7 = alloca [3 x double]*, !reason !3
  store [3 x double]* %1, [3 x double]** %send_alloca7, !reason !3
  %send_cast8 = bitcast [3 x double]** %send_alloca7 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast8, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 10, i8* %6), !reason !3
  %send_alloca9 = alloca [3 x double]*, !reason !3
  store [3 x double]* %4, [3 x double]** %send_alloca9, !reason !3
  %send_cast10 = bitcast [3 x double]** %send_alloca9 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 35, i8* %6), !reason !3
  %send_alloca11 = alloca [3 x double]*, !reason !3
  store [3 x double]* %5, [3 x double]** %send_alloca11, !reason !3
  %send_cast12 = bitcast [3 x double]** %send_alloca11 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast12, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 37, i8* %6), !reason !3
  call void @join_partitioned_functions(i32 2, i8* %threads)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @putchar(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @init() #1 {
  %1 = tail call i8* @malloc(i64 208) #8
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !53
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #3
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #5

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !58
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !60
  tail call void %3(%struct.Context* %6) #3
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
  %17 = load i64, i64* %16, align 8, !tbaa !61
  %18 = bitcast i8* %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !58
  %19 = getelementptr inbounds i8, i8* %14, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %2, i8** %20, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %13
  %22 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %21, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %14) #3
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %12
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #6

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
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %10, align 8, !tbaa !61
  %12 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %11, i8** null) #3
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %5 = tail call i8* @malloc(i64 24) #8
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !62
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !65
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #8
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !66
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #3
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !67
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !53
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.Context* %3 to i8**
  br label %30

; <label>:22:                                     ; preds = %22, %4
  %23 = phi %struct.Comm* [ %25, %22 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !67
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !61
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #0

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !61
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !62
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !62
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
  %22 = load i64, i64* %21, align 8, !tbaa !67
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !67
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !53
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !61
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
  %9 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %6)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define i8* @_receive(i1 zeroext, i32, i32, i32, i8*) local_unnamed_addr #1 {
  %6 = bitcast i8* %4 to %struct.Context*
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to %struct._opaque_pthread_rwlock_t*
  br label %9

; <label>:9:                                      ; preds = %14, %5
  br i1 %0, label %10, label %12

; <label>:10:                                     ; preds = %9
  %11 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  br label %14

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = tail call %struct.Comm* @_find_channel(i1 zeroext %0, i32 %3, %struct.Context* %6)
  %16 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #3
  %17 = icmp eq %struct.Comm* %15, null
  br i1 %17, label %9, label %18

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i64 0, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !65
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0), i32 %3, i32 %1, i32 %20)
  br label %24

; <label>:24:                                     ; preds = %22, %18
  %25 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8, !tbaa !66
  ret i8* %26
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define i8* @receive(i32, i32, i32, i8*) #1 {
  %5 = tail call i8* @_receive(i1 zeroext true, i32 %0, i32 undef, i32 %2, i8* %3)
  ret i8* %5
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_argument(i32, i32, i32, i8*) #1 {
  %5 = tail call i8* @_receive(i1 zeroext false, i32 %0, i32 undef, i32 %2, i8* %3)
  ret i8* %5
}

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!"replace mapped op"}
!6 = !{!"receive"}
!7 = !{!"2", !"2"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"15", !"16"}
!13 = !{!"8", !"15"}
!14 = !{!"16", !"17"}
!15 = !{!"3", !"3"}
!16 = !{!"3", !"10"}
!17 = !{!"28", !"29"}
!18 = !{!"29", !"34"}
!19 = !{!"34", !"49"}
!20 = !{!"49", !"52"}
!21 = !{!"52", !"53"}
!22 = !{!"13", !"28"}
!23 = !{!"53", !"56"}
!24 = !{!"57", !"58"}
!25 = !{!"11", !"12"}
!26 = !{!"12", !"13"}
!27 = !{!"1", !"1"}
!28 = !{!"1", !"8"}
!29 = !{!"10", !"17"}
!30 = !{!"17", !"18"}
!31 = !{!"18", !"21"}
!32 = !{!"21", !"28"}
!33 = !{!"0", !"7"}
!34 = !{!"7", !"14"}
!35 = !{!"broadcast"}
!36 = !{!"repair phi"}
!37 = !{!"4", !"11"}
!38 = !{!"29", !"30"}
!39 = !{!"13", !"14"}
!40 = !{!"30", !"35"}
!41 = !{!"1", !"2"}
!42 = !{!"14", !"29"}
!43 = !{!"49", !"54"}
!44 = !{!"0", !"1"}
!45 = !{!"54", !"57"}
!46 = !{!"35", !"42"}
!47 = !{!"42", !"49"}
!48 = !{!"2", !"9"}
!49 = !{!"10", !"11"}
!50 = !{!"9", !"10"}
!51 = !{!"11", !"14"}
!52 = !{!"14", !"21"}
!53 = !{!54, !55, i64 0}
!54 = !{!"Context", !55, i64 0, !56, i64 8}
!55 = !{!"any pointer", !10, i64 0}
!56 = !{!"_opaque_pthread_rwlock_t", !57, i64 0, !10, i64 8}
!57 = !{!"long", !10, i64 0}
!58 = !{!59, !55, i64 0}
!59 = !{!"Closure", !55, i64 0, !55, i64 8}
!60 = !{!59, !55, i64 8}
!61 = !{!55, !55, i64 0}
!62 = !{!63, !64, i64 0}
!63 = !{!"Comm", !64, i64 0, !64, i64 4, !55, i64 8, !55, i64 16}
!64 = !{!"int", !10, i64 0}
!65 = !{!63, !64, i64 4}
!66 = !{!63, !55, i64 8}
!67 = !{!63, !55, i64 16}
