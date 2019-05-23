; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.Comm = type { i32, i8*, %struct.Comm* }
%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }
%struct._opaque_pthread_rwlockattr_t = type { i64, [16 x i8] }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct.Context = type { %struct.Comm*, %struct._opaque_pthread_rwlock_t }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@funs = global [4 x void (i8*)*] [void (i8*)* @multiply_0, void (i8*)* @multiply_1, void (i8*)* @multiply_2, void (i8*)* @multiply_3]
@__const.main.a = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], align 16
@__const.main.b = private unnamed_addr constant [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"calling function with thread id = %d\0A\00", align 1

define void @multiply_0(i8*) {
entry:
  br label %l

l:                                                ; preds = %l2, %entry
  %new_phi = phi i64 [ 0, %entry ], [ %receive_load32, %l2 ]
  br label %l3

l1:                                               ; preds = %l2
  ret void

l2:                                               ; preds = %l4
  %send_alloca = alloca i64
  store i64 %new_phi, i64* %send_alloca
  %send_cast = bitcast i64* %send_alloca to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 3, i32 0, i8* %0)
  %receive = call i8* @receive(i32 3, i32 1, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  %receive30 = call i8* @receive(i32 3, i32 21, i8* %0)
  %bitcast31 = bitcast i8* %receive30 to i64*
  %receive_load32 = load i64, i64* %bitcast31
  br i1 %receive_load, label %l, label %l1

l3:                                               ; preds = %l4, %l
  %new_phi36 = phi i64 [ 0, %l ], [ %receive_load35, %l4 ]
  %argument = call i8* @receive(i32 -1, i32 4, i8* %0)
  %bitcast6 = bitcast i8* %argument to [3 x double]**
  %receive_load7 = load [3 x double]*, [3 x double]** %bitcast6
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load7, i64 %new_phi, i64 %new_phi36, !start !3, !end !3
  store double 0.000000e+00, double* %1, align 8, !tbaa !4, !start !3, !end !3
  br label %l5

l4:                                               ; preds = %l5
  %send_alloca8 = alloca i64
  store i64 %new_phi36, i64* %send_alloca8
  %send_cast9 = bitcast i64* %send_alloca8 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast9, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 3, i32 5, i8* %0)
  %receive10 = call i8* @receive(i32 3, i32 6, i8* %0)
  %bitcast11 = bitcast i8* %receive10 to i1*
  %receive_load12 = load i1, i1* %bitcast11
  %receive33 = call i8* @receive(i32 3, i32 22, i8* %0)
  %bitcast34 = bitcast i8* %receive33 to i64*
  %receive_load35 = load i64, i64* %bitcast34
  br i1 %receive_load12, label %l3, label %l2

l5:                                               ; preds = %l5, %l3
  %send_alloca13 = alloca i64
  store i64 %new_phi, i64* %send_alloca13
  %send_cast14 = bitcast i64* %send_alloca13 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast14, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 10, i8* %0)
  %argument15 = call i8* @receive(i32 -1, i32 12, i8* %0)
  %bitcast16 = bitcast i8* %argument15 to [3 x double]**
  %receive_load17 = load [3 x double]*, [3 x double]** %bitcast16
  %receive18 = call i8* @receive(i32 2, i32 13, i8* %0)
  %bitcast19 = bitcast i8* %receive18 to i64*
  %receive_load20 = load i64, i64* %bitcast19
  %2 = getelementptr inbounds [3 x double], [3 x double]* %receive_load17, i64 %receive_load20, i64 %new_phi36, !start !8, !end !9
  %3 = load double, double* %2, align 8, !tbaa !4, !start !9, !end !10
  %send_alloca21 = alloca double
  store double %3, double* %send_alloca21
  %send_cast22 = bitcast double* %send_alloca21 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast22, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 14, i8* %0)
  %send_alloca23 = alloca double*
  store double* %1, double** %send_alloca23
  %send_cast24 = bitcast double** %send_alloca23 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast24, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 15, i8* %0)
  %send_alloca25 = alloca double*
  store double* %1, double** %send_alloca25
  %send_cast26 = bitcast double** %send_alloca25 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast26, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 16, i8* %0)
  %receive27 = call i8* @receive(i32 3, i32 18, i8* %0)
  %bitcast28 = bitcast i8* %receive27 to i1*
  %receive_load29 = load i1, i1* %bitcast28
  br i1 %receive_load29, label %l5, label %l4
}

define void @multiply_1(i8*) {
entry:
  br label %l

l:                                                ; preds = %l2, %entry
  br label %l3

l1:                                               ; preds = %l2
  ret void

l2:                                               ; preds = %l4
  %receive = call i8* @receive(i32 3, i32 2, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  br i1 %receive_load, label %l, label %l1

l3:                                               ; preds = %l4, %l
  br label %l5

l4:                                               ; preds = %l5
  %receive6 = call i8* @receive(i32 3, i32 7, i8* %0)
  %bitcast7 = bitcast i8* %receive6 to i1*
  %receive_load8 = load i1, i1* %bitcast7
  br i1 %receive_load8, label %l3, label %l2

l5:                                               ; preds = %l5, %l3
  %argument = call i8* @receive(i32 -1, i32 9, i8* %0)
  %bitcast9 = bitcast i8* %argument to [3 x double]**
  %receive_load10 = load [3 x double]*, [3 x double]** %bitcast9
  %receive11 = call i8* @receive(i32 0, i32 10, i8* %0)
  %bitcast12 = bitcast i8* %receive11 to i64*
  %receive_load13 = load i64, i64* %bitcast12
  %receive14 = call i8* @receive(i32 2, i32 11, i8* %0)
  %bitcast15 = bitcast i8* %receive14 to i64*
  %receive_load16 = load i64, i64* %bitcast15
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load10, i64 %receive_load13, i64 %receive_load16, !start !11, !end !10
  %2 = load double, double* %1, align 8, !tbaa !4, !start !10, !end !12
  %receive17 = call i8* @receive(i32 0, i32 14, i8* %0)
  %bitcast18 = bitcast i8* %receive17 to double*
  %receive_load19 = load double, double* %bitcast18
  %3 = fmul double %2, %receive_load19, !start !12, !end !13
  %receive20 = call i8* @receive(i32 0, i32 15, i8* %0)
  %bitcast21 = bitcast i8* %receive20 to double**
  %receive_load22 = load double*, double** %bitcast21
  %4 = load double, double* %receive_load22, align 8, !tbaa !4, !start !8, !end !11
  %5 = fadd double %4, %3, !start !13, !end !14
  %receive23 = call i8* @receive(i32 0, i32 16, i8* %0)
  %bitcast24 = bitcast i8* %receive23 to double**
  %receive_load25 = load double*, double** %bitcast24
  store double %5, double* %receive_load25, align 8, !tbaa !4, !start !14, !end !15
  %receive26 = call i8* @receive(i32 3, i32 19, i8* %0)
  %bitcast27 = bitcast i8* %receive26 to i1*
  %receive_load28 = load i1, i1* %bitcast27
  br i1 %receive_load28, label %l5, label %l4
}

define void @multiply_2(i8*) {
entry:
  br label %l

l:                                                ; preds = %l2, %entry
  br label %l3

l1:                                               ; preds = %l2
  ret void

l2:                                               ; preds = %l4
  %receive = call i8* @receive(i32 3, i32 3, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  br i1 %receive_load, label %l, label %l1

l3:                                               ; preds = %l4, %l
  br label %l5

l4:                                               ; preds = %l5
  %receive6 = call i8* @receive(i32 3, i32 8, i8* %0)
  %bitcast7 = bitcast i8* %receive6 to i1*
  %receive_load8 = load i1, i1* %bitcast7
  br i1 %receive_load8, label %l3, label %l2

l5:                                               ; preds = %l5, %l3
  %new_phi = phi i64 [ 0, %l3 ], [ %receive_load18, %l5 ]
  %send_alloca = alloca i64
  store i64 %new_phi, i64* %send_alloca
  %send_cast = bitcast i64* %send_alloca to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 11, i8* %0)
  %send_alloca9 = alloca i64
  store i64 %new_phi, i64* %send_alloca9
  %send_cast10 = bitcast i64* %send_alloca9 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast10, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 13, i8* %0)
  %send_alloca11 = alloca i64
  store i64 %new_phi, i64* %send_alloca11
  %send_cast12 = bitcast i64* %send_alloca11 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast12, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 3, i32 17, i8* %0)
  %receive13 = call i8* @receive(i32 3, i32 20, i8* %0)
  %bitcast14 = bitcast i8* %receive13 to i1*
  %receive_load15 = load i1, i1* %bitcast14
  %receive16 = call i8* @receive(i32 3, i32 23, i8* %0)
  %bitcast17 = bitcast i8* %receive16 to i64*
  %receive_load18 = load i64, i64* %bitcast17
  br i1 %receive_load15, label %l5, label %l4
}

define void @multiply_3(i8*) {
entry:
  br label %l

l:                                                ; preds = %l2, %entry
  br label %l3

l1:                                               ; preds = %l2
  ret void

l2:                                               ; preds = %l4
  %receive = call i8* @receive(i32 0, i32 0, i8* %0)
  %bitcast = bitcast i8* %receive to i64*
  %receive_load = load i64, i64* %bitcast
  %1 = add nuw nsw i64 %receive_load, 1, !start !3, !end !16
  %2 = icmp eq i64 %1, 3, !start !16, !end !17
  %send_alloca = alloca i1
  store i1 %2, i1* %send_alloca
  %send_cast = bitcast i1* %send_alloca to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 1, i8* %0)
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 2, i8* %0)
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 2, i32 3, i8* %0)
  %send_alloca16 = alloca i64
  store i64 %1, i64* %send_alloca16
  %send_cast17 = bitcast i64* %send_alloca16 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast17, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 21, i8* %0)
  br i1 %2, label %l, label %l1

l3:                                               ; preds = %l4, %l
  br label %l5

l4:                                               ; preds = %l5
  %receive6 = call i8* @receive(i32 0, i32 5, i8* %0)
  %bitcast7 = bitcast i8* %receive6 to i64*
  %receive_load8 = load i64, i64* %bitcast7
  %3 = add nuw nsw i64 %receive_load8, 1, !start !3, !end !16
  %4 = icmp eq i64 %3, 3, !start !16, !end !17
  %send_alloca9 = alloca i1
  store i1 %4, i1* %send_alloca9
  %send_cast10 = bitcast i1* %send_alloca9 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 6, i8* %0)
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 7, i8* %0)
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast10, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 2, i32 8, i8* %0)
  %send_alloca18 = alloca i64
  store i64 %3, i64* %send_alloca18
  %send_cast19 = bitcast i64* %send_alloca18 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast19, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 22, i8* %0)
  br i1 %4, label %l3, label %l2

l5:                                               ; preds = %l5, %l3
  %receive11 = call i8* @receive(i32 2, i32 17, i8* %0)
  %bitcast12 = bitcast i8* %receive11 to i64*
  %receive_load13 = load i64, i64* %bitcast12
  %5 = add nuw nsw i64 %receive_load13, 1, !start !8, !end !9
  %6 = icmp eq i64 %5, 3, !start !9, !end !13
  %send_alloca14 = alloca i1
  store i1 %6, i1* %send_alloca14
  %send_cast15 = bitcast i1* %send_alloca14 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast15, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 18, i8* %0)
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast15, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 19, i8* %0)
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast15, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 2, i32 20, i8* %0)
  %send_alloca20 = alloca i64
  store i64 %5, i64* %send_alloca20
  %send_cast21 = bitcast i64* %send_alloca20 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast21, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 2, i32 23, i8* %0)
  br i1 %6, label %l5, label %l4
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @multiply([3 x double]* nocapture readonly, [3 x double]* nocapture readonly, [3 x double]* nocapture) local_unnamed_addr #0 {
  br label %4

; <label>:4:                                      ; preds = %7, %3
  %5 = phi i64 [ 0, %3 ], [ %8, %7 ]
  br label %10

; <label>:6:                                      ; preds = %7
  ret void

; <label>:7:                                      ; preds = %13
  %8 = add nuw nsw i64 %5, 1
  %9 = icmp eq i64 %8, 3
  br i1 %9, label %6, label %4

; <label>:10:                                     ; preds = %13, %4
  %11 = phi i64 [ 0, %4 ], [ %14, %13 ]
  %12 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 %5, i64 %11
  store double 0.000000e+00, double* %12, align 8, !tbaa !4
  br label %16

; <label>:13:                                     ; preds = %16
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, 3
  br i1 %15, label %7, label %10

; <label>:16:                                     ; preds = %16, %10
  %17 = phi i64 [ 0, %10 ], [ %25, %16 ]
  %18 = getelementptr inbounds [3 x double], [3 x double]* %0, i64 %5, i64 %17
  %19 = load double, double* %18, align 8, !tbaa !4
  %20 = getelementptr inbounds [3 x double], [3 x double]* %1, i64 %17, i64 %11
  %21 = load double, double* %20, align 8, !tbaa !4
  %22 = fmul double %19, %21
  %23 = load double, double* %12, align 8, !tbaa !4
  %24 = fadd double %23, %22
  store double %24, double* %12, align 8, !tbaa !4
  %25 = add nuw nsw i64 %17, 1
  %26 = icmp eq i64 %25, 3
  br i1 %26, label %13, label %16
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = alloca [3 x [3 x double]], align 16
  %4 = alloca [3 x [3 x double]], align 16
  %5 = alloca [3 x [3 x double]], align 16
  %6 = bitcast [3 x [3 x double]]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %6) #3
  %7 = bitcast [3 x [3 x double]]* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %7) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %7, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.a to i8*), i64 72, i1 false)
  %8 = bitcast [3 x [3 x double]]* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 72, i8* nonnull %8) #3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %8, i8* align 16 bitcast ([3 x [3 x double]]* @__const.main.b to i8*), i64 72, i1 false)
  %9 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %4, i64 0, i64 0
  %10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %5, i64 0, i64 0
  %11 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 0
  call void @replace_multiply([3 x double]* nonnull %9, [3 x double]* nonnull %10, [3 x double]* nonnull %11)
  br label %12

; <label>:12:                                     ; preds = %15, %2
  %13 = phi i64 [ 0, %2 ], [ %17, %15 ]
  br label %19

; <label>:14:                                     ; preds = %15
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %7) #3
  call void @llvm.lifetime.end.p0i8(i64 72, i8* nonnull %6) #3
  ret i32 0

; <label>:15:                                     ; preds = %19
  %16 = tail call i32 @putchar(i32 10)
  %17 = add nuw nsw i64 %13, 1
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %14, label %12

; <label>:19:                                     ; preds = %19, %12
  %20 = phi i64 [ 0, %12 ], [ %24, %19 ]
  %21 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %3, i64 0, i64 %13, i64 %20
  %22 = load double, double* %21, align 8, !tbaa !4
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %22)
  %24 = add nuw nsw i64 %20, 1
  %25 = icmp eq i64 %24, 3
  br i1 %25, label %15, label %19
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

define void @replace_multiply([3 x double]*, [3 x double]*, [3 x double]*) {
entry:
  %3 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 4, void (i8*)** getelementptr inbounds ([4 x void (i8*)*], [4 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  %send_alloca = alloca [3 x double]*
  store [3 x double]* %2, [3 x double]** %send_alloca
  %send_cast = bitcast [3 x double]** %send_alloca to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 4, i8* %3)
  %send_alloca1 = alloca [3 x double]*
  store [3 x double]* %0, [3 x double]** %send_alloca1
  %send_cast2 = bitcast [3 x double]** %send_alloca1 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 9, i8* %3)
  %send_alloca3 = alloca [3 x double]*
  store [3 x double]* %1, [3 x double]** %send_alloca3
  %send_cast4 = bitcast [3 x double]** %send_alloca3 to i8*
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast4, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 12, i8* %3)
  call void @join_partitioned_functions(i32 4, i8* %threads)
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
  %1 = tail call i8* @malloc(i64 208) #9
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !18
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
  %2 = tail call %struct._opaque_pthread_t* @pthread_self() #3
  %3 = ptrtoint %struct._opaque_pthread_t* %2 to i64
  %4 = trunc i64 %3 to i32
  %5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %4)
  %6 = bitcast i8* %0 to void (%struct.Context*)**
  %7 = load void (%struct.Context*)*, void (%struct.Context*)** %6, align 8, !tbaa !23
  %8 = getelementptr inbounds i8, i8* %0, i64 8
  %9 = bitcast i8* %8 to %struct.Context**
  %10 = load %struct.Context*, %struct.Context** %9, align 8, !tbaa !25
  tail call void %7(%struct.Context* %10) #3
  ret i8* null
}

declare %struct._opaque_pthread_t* @pthread_self() local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #1 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #9
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
  %14 = tail call i8* @malloc(i64 16) #9
  %15 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %13
  %16 = bitcast void (i8*)** %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !26
  %18 = bitcast i8* %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !23
  %19 = getelementptr inbounds i8, i8* %14, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %2, i8** %20, align 8, !tbaa !25
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
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %10, align 8, !tbaa !26
  %12 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %11, i8** null) #3
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %5 = tail call i8* @malloc(i64 24) #9
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !27
  %7 = sext i32 %1 to i64
  %8 = tail call i8* @malloc(i64 %7) #9
  %9 = getelementptr inbounds i8, i8* %5, i64 8
  %10 = bitcast i8* %9 to i8**
  store i8* %8, i8** %10, align 8, !tbaa !30
  %11 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %8, i1 false, i1 true)
  %12 = tail call i8* @__memcpy_chk(i8* %8, i8* %0, i64 %7, i64 %11) #3
  %13 = getelementptr inbounds i8, i8* %5, i64 16
  %14 = bitcast i8* %13 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %14, align 8, !tbaa !31
  %15 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %16 = load %struct.Comm*, %struct.Comm** %15, align 8, !tbaa !18
  %17 = icmp eq %struct.Comm* %16, null
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %4
  %19 = bitcast %struct.Context* %3 to i8**
  br label %28

; <label>:20:                                     ; preds = %20, %4
  %21 = phi %struct.Comm* [ %23, %20 ], [ %16, %4 ]
  %22 = getelementptr inbounds %struct.Comm, %struct.Comm* %21, i64 0, i32 2
  %23 = load %struct.Comm*, %struct.Comm** %22, align 8, !tbaa !31
  %24 = icmp eq %struct.Comm* %23, null
  br i1 %24, label %25, label %20

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.Comm, %struct.Comm* %21, i64 0, i32 2
  %27 = bitcast %struct.Comm** %26 to i8**
  br label %28

; <label>:28:                                     ; preds = %25, %18
  %29 = phi i8** [ %27, %25 ], [ %19, %18 ]
  store i8* %5, i8** %29, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #7

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #4

; Function Attrs: norecurse nounwind readonly ssp uwtable
define i8* @_find_channel(i32, %struct.Context* nocapture readonly) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Context, %struct.Context* %1, i64 0, i32 0
  %4 = load %struct.Comm*, %struct.Comm** %3, align 8, !tbaa !26
  %5 = icmp eq %struct.Comm* %4, null
  br i1 %5, label %18, label %6

; <label>:6:                                      ; preds = %14, %2
  %7 = phi %struct.Comm* [ %16, %14 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %7, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !27
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %14

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %7, i64 0, i32 1
  %13 = load i8*, i8** %12, align 8, !tbaa !30
  br label %18

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds %struct.Comm, %struct.Comm* %7, i64 0, i32 2
  %16 = load %struct.Comm*, %struct.Comm** %15, align 8, !tbaa !26
  %17 = icmp eq %struct.Comm* %16, null
  br i1 %17, label %18, label %6

; <label>:18:                                     ; preds = %14, %11, %2
  %19 = phi i8* [ %13, %11 ], [ null, %2 ], [ null, %14 ]
  ret i8* %19
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
define i8* @receive(i32, i32, i8*) #1 {
  %4 = bitcast i8* %2 to %struct.Context*
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to %struct._opaque_pthread_rwlock_t*
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %6) #3
  %9 = tail call i8* @_find_channel(i32 %1, %struct.Context* %4)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %6) #3
  %11 = icmp eq i8* %9, null
  br i1 %11, label %7, label %12

; <label>:12:                                     ; preds = %7
  ret i8* %9
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #6

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable }
attributes #8 = { norecurse nounwind readonly ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"0"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"3"}
!9 = !{!"10"}
!10 = !{!"11"}
!11 = !{!"4"}
!12 = !{!"12"}
!13 = !{!"17"}
!14 = !{!"20"}
!15 = !{!"21"}
!16 = !{!"7"}
!17 = !{!"14"}
!18 = !{!19, !20, i64 0}
!19 = !{!"Context", !20, i64 0, !21, i64 8}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"_opaque_pthread_rwlock_t", !22, i64 0, !6, i64 8}
!22 = !{!"long", !6, i64 0}
!23 = !{!24, !20, i64 0}
!24 = !{!"Closure", !20, i64 0, !20, i64 8}
!25 = !{!24, !20, i64 8}
!26 = !{!20, !20, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"Comm", !29, i64 0, !20, i64 8, !20, i64 16}
!29 = !{!"int", !6, i64 0}
!30 = !{!28, !20, i64 8}
!31 = !{!28, !20, i64 16}
