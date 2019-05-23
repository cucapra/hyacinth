; ModuleID = 'new_module'
source_filename = "new_module"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

@__const.main.a = external global [3 x [3 x double]]
@__const.main.b = external global [3 x [3 x double]]
@.str = external global [4 x i8]

declare void @send(i8*, i64, i32, i32, i8*)

declare i8* @receive(i32, i32, i8*)

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

declare i32 @printf(i8*, ...)

declare i32 @putchar(i32)

declare i8* @init()

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare void @join_partitioned_functions(i32, i8*)

define void @multiply_0(i8*) {
entry:
  br label %b

b:                                                ; preds = %b2, %entry
  %1 = phi i64 [ 0, %3 ], [ %8, %7 ], !start !0, !end !0
  br label %b3

b1:                                               ; preds = %b2
  ret void

b2:                                               ; preds = %b4
  %send_alloca = alloca i64
  store i64 %1, i64* %send_alloca
  %send_cast = bitcast i64* %send_alloca to i8*
  call void @send(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 3, i32 0, i8* %0)
  %receive = call i8* @receive(i32 3, i32 1, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  br i1 %receive_load, label %b, label %b1

b3:                                               ; preds = %b4, %b
  %2 = phi i64 [ 0, %4 ], [ %14, %13 ], !start !0, !end !0
  %argument = call i8* @receive(i32 -1, i32 4, i8* %0)
  %bitcast6 = bitcast i8* %argument to [3 x double]**
  %receive_load7 = load [3 x double]*, [3 x double]** %bitcast6
  %3 = getelementptr inbounds [3 x double], [3 x double]* %receive_load7, i64 %1, i64 %2, !start !0, !end !0
  store double 0.000000e+00, double* %3, align 8, !tbaa !1, !start !0, !end !0
  br label %b5

b4:                                               ; preds = %b5
  %send_alloca8 = alloca i64
  store i64 %2, i64* %send_alloca8
  %send_cast9 = bitcast i64* %send_alloca8 to i8*
  call void @send(i8* %send_cast9, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 3, i32 5, i8* %0)
  %receive10 = call i8* @receive(i32 3, i32 6, i8* %0)
  %bitcast11 = bitcast i8* %receive10 to i1*
  %receive_load12 = load i1, i1* %bitcast11
  br i1 %receive_load12, label %b3, label %b2

b5:                                               ; preds = %b5, %b3
  %send_alloca13 = alloca i64
  store i64 %1, i64* %send_alloca13
  %send_cast14 = bitcast i64* %send_alloca13 to i8*
  call void @send(i8* %send_cast14, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 10, i8* %0)
  %argument15 = call i8* @receive(i32 -1, i32 12, i8* %0)
  %bitcast16 = bitcast i8* %argument15 to [3 x double]**
  %receive_load17 = load [3 x double]*, [3 x double]** %bitcast16
  %receive18 = call i8* @receive(i32 2, i32 13, i8* %0)
  %bitcast19 = bitcast i8* %receive18 to i64*
  %receive_load20 = load i64, i64* %bitcast19
  %4 = getelementptr inbounds [3 x double], [3 x double]* %receive_load17, i64 %receive_load20, i64 %2, !start !5, !end !6
  %5 = load double, double* %4, align 8, !tbaa !1, !start !6, !end !7
  %send_alloca21 = alloca double
  store double %5, double* %send_alloca21
  %send_cast22 = bitcast double* %send_alloca21 to i8*
  call void @send(i8* %send_cast22, i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i32 1, i32 14, i8* %0)
  %send_alloca23 = alloca double*
  store double* %3, double** %send_alloca23
  %send_cast24 = bitcast double** %send_alloca23 to i8*
  call void @send(i8* %send_cast24, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 15, i8* %0)
  %send_alloca25 = alloca double*
  store double* %3, double** %send_alloca25
  %send_cast26 = bitcast double** %send_alloca25 to i8*
  call void @send(i8* %send_cast26, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 16, i8* %0)
  %receive27 = call i8* @receive(i32 3, i32 18, i8* %0)
  %bitcast28 = bitcast i8* %receive27 to i1*
  %receive_load29 = load i1, i1* %bitcast28
  br i1 %receive_load29, label %b5, label %b4
}

define void @multiply_1(i8*) {
entry:
  br label %b

b:                                                ; preds = %b2, %entry
  br label %b3

b1:                                               ; preds = %b2
  ret void

b2:                                               ; preds = %b4
  %receive = call i8* @receive(i32 3, i32 2, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  br i1 %receive_load, label %b, label %b1

b3:                                               ; preds = %b4, %b
  br label %b5

b4:                                               ; preds = %b5
  %receive6 = call i8* @receive(i32 3, i32 7, i8* %0)
  %bitcast7 = bitcast i8* %receive6 to i1*
  %receive_load8 = load i1, i1* %bitcast7
  br i1 %receive_load8, label %b3, label %b2

b5:                                               ; preds = %b5, %b3
  %argument = call i8* @receive(i32 -1, i32 9, i8* %0)
  %bitcast9 = bitcast i8* %argument to [3 x double]**
  %receive_load10 = load [3 x double]*, [3 x double]** %bitcast9
  %receive11 = call i8* @receive(i32 0, i32 10, i8* %0)
  %bitcast12 = bitcast i8* %receive11 to i64*
  %receive_load13 = load i64, i64* %bitcast12
  %receive14 = call i8* @receive(i32 2, i32 11, i8* %0)
  %bitcast15 = bitcast i8* %receive14 to i64*
  %receive_load16 = load i64, i64* %bitcast15
  %1 = getelementptr inbounds [3 x double], [3 x double]* %receive_load10, i64 %receive_load13, i64 %receive_load16, !start !8, !end !7
  %2 = load double, double* %1, align 8, !tbaa !1, !start !7, !end !9
  %receive17 = call i8* @receive(i32 0, i32 14, i8* %0)
  %bitcast18 = bitcast i8* %receive17 to double*
  %receive_load19 = load double, double* %bitcast18
  %3 = fmul double %2, %receive_load19, !start !9, !end !10
  %receive20 = call i8* @receive(i32 0, i32 15, i8* %0)
  %bitcast21 = bitcast i8* %receive20 to double**
  %receive_load22 = load double*, double** %bitcast21
  %4 = load double, double* %receive_load22, align 8, !tbaa !1, !start !5, !end !8
  %5 = fadd double %4, %3, !start !10, !end !11
  %receive23 = call i8* @receive(i32 0, i32 16, i8* %0)
  %bitcast24 = bitcast i8* %receive23 to double**
  %receive_load25 = load double*, double** %bitcast24
  store double %5, double* %receive_load25, align 8, !tbaa !1, !start !11, !end !12
  %receive26 = call i8* @receive(i32 3, i32 19, i8* %0)
  %bitcast27 = bitcast i8* %receive26 to i1*
  %receive_load28 = load i1, i1* %bitcast27
  br i1 %receive_load28, label %b5, label %b4
}

define void @multiply_2(i8*) {
entry:
  br label %b

b:                                                ; preds = %b2, %entry
  br label %b3

b1:                                               ; preds = %b2
  ret void

b2:                                               ; preds = %b4
  %receive = call i8* @receive(i32 3, i32 3, i8* %0)
  %bitcast = bitcast i8* %receive to i1*
  %receive_load = load i1, i1* %bitcast
  br i1 %receive_load, label %b, label %b1

b3:                                               ; preds = %b4, %b
  br label %b5

b4:                                               ; preds = %b5
  %receive6 = call i8* @receive(i32 3, i32 8, i8* %0)
  %bitcast7 = bitcast i8* %receive6 to i1*
  %receive_load8 = load i1, i1* %bitcast7
  br i1 %receive_load8, label %b3, label %b2

b5:                                               ; preds = %b5, %b3
  %1 = phi i64 [ 0, %10 ], [ %25, %16 ], !start !13, !end !13
  %send_alloca = alloca i64
  store i64 %1, i64* %send_alloca
  %send_cast = bitcast i64* %send_alloca to i8*
  call void @send(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 11, i8* %0)
  %send_alloca9 = alloca i64
  store i64 %1, i64* %send_alloca9
  %send_cast10 = bitcast i64* %send_alloca9 to i8*
  call void @send(i8* %send_cast10, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 13, i8* %0)
  %send_alloca11 = alloca i64
  store i64 %1, i64* %send_alloca11
  %send_cast12 = bitcast i64* %send_alloca11 to i8*
  call void @send(i8* %send_cast12, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 3, i32 17, i8* %0)
  %receive13 = call i8* @receive(i32 3, i32 20, i8* %0)
  %bitcast14 = bitcast i8* %receive13 to i1*
  %receive_load15 = load i1, i1* %bitcast14
  br i1 %receive_load15, label %b5, label %b4
}

define void @multiply_3(i8*) {
entry:
  br label %b

b:                                                ; preds = %b2, %entry
  br label %b3

b1:                                               ; preds = %b2
  ret void

b2:                                               ; preds = %b4
  %receive = call i8* @receive(i32 0, i32 0, i8* %0)
  %bitcast = bitcast i8* %receive to i64*
  %receive_load = load i64, i64* %bitcast
  %1 = add nuw nsw i64 %receive_load, 1, !start !0, !end !14
  %2 = icmp eq i64 %1, 3, !start !14, !end !15
  %send_alloca = alloca i1
  store i1 %2, i1* %send_alloca
  %send_cast = bitcast i1* %send_alloca to i8*
  call void @send(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 1, i8* %0)
  call void @send(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 2, i8* %0)
  call void @send(i8* %send_cast, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 2, i32 3, i8* %0)
  br i1 %2, label %b, label %b1

b3:                                               ; preds = %b4, %b
  br label %b5

b4:                                               ; preds = %b5
  %receive6 = call i8* @receive(i32 0, i32 5, i8* %0)
  %bitcast7 = bitcast i8* %receive6 to i64*
  %receive_load8 = load i64, i64* %bitcast7
  %3 = add nuw nsw i64 %receive_load8, 1, !start !0, !end !14
  %4 = icmp eq i64 %3, 3, !start !14, !end !15
  %send_alloca9 = alloca i1
  store i1 %4, i1* %send_alloca9
  %send_cast10 = bitcast i1* %send_alloca9 to i8*
  call void @send(i8* %send_cast10, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 6, i8* %0)
  call void @send(i8* %send_cast10, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 7, i8* %0)
  call void @send(i8* %send_cast10, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 2, i32 8, i8* %0)
  br i1 %4, label %b3, label %b2

b5:                                               ; preds = %b5, %b3
  %receive11 = call i8* @receive(i32 2, i32 17, i8* %0)
  %bitcast12 = bitcast i8* %receive11 to i64*
  %receive_load13 = load i64, i64* %bitcast12
  %5 = add nuw nsw i64 %receive_load13, 1, !start !5, !end !6
  %6 = icmp eq i64 %5, 3, !start !6, !end !10
  %send_alloca14 = alloca i1
  store i1 %6, i1* %send_alloca14
  %send_cast15 = bitcast i1* %send_alloca14 to i8*
  call void @send(i8* %send_cast15, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 18, i8* %0)
  call void @send(i8* %send_cast15, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 19, i8* %0)
  call void @send(i8* %send_cast15, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 2, i32 20, i8* %0)
  br i1 %6, label %b5, label %b4
}

attributes #0 = { argmemonly nounwind }

!0 = !{!"0"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"3"}
!6 = !{!"10"}
!7 = !{!"11"}
!8 = !{!"4"}
!9 = !{!"12"}
!10 = !{!"17"}
!11 = !{!"20"}
!12 = !{!"21"}
!13 = !{!"2"}
!14 = !{!"7"}
!15 = !{!"14"}
