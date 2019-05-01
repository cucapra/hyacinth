; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

%struct.Comm = type { i32, double, %struct.Comm* }
%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }
%struct._opaque_pthread_rwlockattr_t = type { i64, [16 x i8] }
%struct.Context = type { %struct.Comm*, %struct._opaque_pthread_rwlock_t }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@funs = global [2 x void (i8*)*] [void (i8*)* @quadratic_0, void (i8*)* @quadratic_1]

; Function Attrs: nounwind ssp uwtable
define i8* @init() #0 {
  %1 = tail call i8* @malloc(i64 208) #6
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !3
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #7
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #1

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #0 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !10
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !12
  tail call void %3(%struct.Context* %6) #7
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #0 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #6
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
  %14 = tail call i8* @malloc(i64 16) #6
  %15 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %13
  %16 = bitcast void (i8*)** %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !13
  %18 = bitcast i8* %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !10
  %19 = getelementptr inbounds i8, i8* %14, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %2, i8** %20, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %13
  %22 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %21, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %14) #7
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %12
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define void @join_partitioned_functions(i32, i8* nocapture readonly) #0 {
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
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %10, align 8, !tbaa !13
  %12 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %11, i8** null) #7
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #2

; Function Attrs: norecurse nounwind readnone ssp uwtable
define void @send(double, i32, i32, i8* nocapture) #3 {
  ret void
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define double @receive(i32, i32, i8* nocapture readnone) #3 {
  ret double 0.000000e+00
}

define void @quadratic_0(i8*) {
entry:
  %argument = call double @receive(i32 -1, i32 0, i8* %0)
  %argument1 = call double @receive(i32 -1, i32 1, i8* %0)
  %argument2 = call double @receive(i32 -1, i32 2, i8* %0)
  %1 = fmul double %argument1, %argument1, !start !14, !end !15
  %2 = fmul double %argument, 4.000000e+00, !start !16, !end !14
  call void @send(double %2, i32 1, i32 3, i8* %0)
  call void @send(double %argument2, i32 1, i32 4, i8* %0)
  call void @send(double %1, i32 1, i32 5, i8* %0)
  %3 = fmul double %argument, 2.000000e+00, !start !15, !end !17
  %4 = tail call i32 @"\01_sleep"(i32 1) #7, !start !17, !end !18
  %5 = tail call i32 @"\01_sleep"(i32 1) #7, !start !19, !end !20
  %6 = fsub double -0.000000e+00, %argument1, !start !18, !end !21
  call void @send(double %argument1, i32 1, i32 6, i8* %0)
  call void @send(double %3, i32 1, i32 7, i8* %0)
  %receive = call double @receive(i32 1, i32 8, i8* %0)
  %7 = fsub double %6, %receive, !start !21, !end !22
  %8 = fdiv double %7, %3, !start !22, !end !19
  call void @send(double %8, i32 1, i32 9, i8* %0)
  ret void
}

declare i32 @"\01_sleep"(i32)

define void @quadratic_1(i8*) {
entry:
  %receive = call double @receive(i32 0, i32 3, i8* %0)
  %receive1 = call double @receive(i32 0, i32 4, i8* %0)
  %1 = fmul double %receive, %receive1, !start !23, !end !24
  %receive2 = call double @receive(i32 0, i32 5, i8* %0)
  %2 = fsub double %receive2, %1, !start !24, !end !17
  %3 = tail call i32 @"\01_sleep"(i32 1) #7, !start !25, !end !26
  %4 = tail call i32 @"\01_sleep"(i32 1) #7, !start !27, !end !23
  %5 = tail call double @llvm.sqrt.f64(double %2), !start !17, !end !18
  %receive3 = call double @receive(i32 0, i32 6, i8* %0)
  %6 = fsub double %5, %receive3, !start !18, !end !21
  %receive4 = call double @receive(i32 0, i32 7, i8* %0)
  %7 = fdiv double %6, %receive4, !start !21, !end !25
  call void @send(double %5, i32 0, i32 8, i8* %0)
  %8 = fcmp une double %7, 0.000000e+00, !start !26, !end !28
  %receive5 = call double @receive(i32 0, i32 9, i8* %0)
  %9 = select i1 %8, double %7, double %receive5, !start !28, !end !29
  call void @send(double %9, i32 -1, i32 10, i8* %0), !start !29, !end !20
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nounwind ssp uwtable
define double @quadratic(double, double, double) local_unnamed_addr #0 {
  %4 = fmul double %1, %1
  %5 = fmul double %0, 4.000000e+00
  %6 = fmul double %5, %2
  %7 = fsub double %4, %6
  %8 = fmul double %0, 2.000000e+00
  %9 = tail call i32 @"\01_sleep"(i32 1) #7
  %10 = tail call i32 @"\01_sleep"(i32 1) #7
  %11 = tail call i32 @"\01_sleep"(i32 1) #7
  %12 = tail call i32 @"\01_sleep"(i32 1) #7
  %13 = fsub double -0.000000e+00, %1
  %14 = tail call double @llvm.sqrt.f64(double %7)
  %15 = fsub double %14, %1
  %16 = fdiv double %15, %8
  %17 = fsub double %13, %14
  %18 = fdiv double %17, %8
  %19 = fcmp une double %16, 0.000000e+00
  %20 = select i1 %19, double %16, double %18
  ret double %20
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !13
  %5 = tail call i32 @atoi(i8* %4)
  %6 = sitofp i32 %5 to double
  %7 = getelementptr inbounds i8*, i8** %1, i64 2
  %8 = load i8*, i8** %7, align 8, !tbaa !13
  %9 = tail call i32 @atoi(i8* %8)
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds i8*, i8** %1, i64 3
  %12 = load i8*, i8** %11, align 8, !tbaa !13
  %13 = tail call i32 @atoi(i8* %12)
  %14 = sitofp i32 %13 to double
  %15 = tail call double @replace_quadratic(double %6, double %10, double %14)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #5

define double @replace_quadratic(double, double, double) {
entry:
  %3 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %3)
  call void @send(double %0, i32 0, i32 0, i8* %3)
  call void @send(double %1, i32 0, i32 1, i8* %3)
  call void @send(double %2, i32 0, i32 2, i8* %3)
  %return = call double @receive(i32 -1, i32 10, i8* %3)
  call void @join_partitioned_functions(i32 2, i8* %threads)
  ret double %return
}

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!4, !5, i64 0}
!4 = !{!"Context", !5, i64 0, !8, i64 8}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"_opaque_pthread_rwlock_t", !9, i64 0, !6, i64 8}
!9 = !{!"long", !6, i64 0}
!10 = !{!11, !5, i64 0}
!11 = !{!"Closure", !5, i64 0, !5, i64 8}
!12 = !{!11, !5, i64 8}
!13 = !{!5, !5, i64 0}
!14 = !{!"8"}
!15 = !{!"13"}
!16 = !{!"3"}
!17 = !{!"18"}
!18 = !{!"28"}
!19 = !{!"44"}
!20 = !{!"54"}
!21 = !{!"31"}
!22 = !{!"34"}
!23 = !{!"10"}
!24 = !{!"15"}
!25 = !{!"41"}
!26 = !{!"51"}
!27 = !{!"0"}
!28 = !{!"52"}
!29 = !{!"53"}
