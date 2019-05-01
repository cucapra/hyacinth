; ModuleID = 'new_module'
source_filename = "new_module"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

@.str.1 = external global [4 x i8]
@str = external global [14 x i8]

declare void @send(double, i32, i32, i8*)

declare double @receive(i32, i32, i8*)

declare i32 @"\01_sleep"(i32)

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #0

declare i32 @printf(i8*, ...)

declare i32 @atoi(i8*)

declare i32 @puts(i8*)

declare i8* @init()

declare i8* @call_partitioned_functions(i32, void (i8*)**, i8*)

declare void @join_partitioned_functions(i32, i8*)

define void @quadratic_0(i8*) {
entry:
  %argument = call double @receive(i32 -1, i32 0, i8* %0)
  %argument1 = call double @receive(i32 -1, i32 1, i8* %0)
  %argument2 = call double @receive(i32 -1, i32 2, i8* %0)
  call void @send(double %argument1, i32 3, i32 3, i8* %0)
  call void @send(double %argument1, i32 3, i32 4, i8* %0)
  call void @send(double %argument, i32 1, i32 5, i8* %0)
  call void @send(double %argument2, i32 1, i32 6, i8* %0)
  call void @send(double %argument, i32 3, i32 8, i8* %0)
  %1 = tail call i32 @"\01_sleep"(i32 1) #1, !start !0, !end !1
  %2 = tail call i32 @"\01_sleep"(i32 1) #1, !start !2, !end !3
  %3 = fsub double -0.000000e+00, %argument1, !start !1, !end !4
  call void @send(double %argument1, i32 3, i32 10, i8* %0)
  call void @send(double %3, i32 1, i32 11, i8* %0)
  ret void
}

define void @quadratic_3(i8*) {
entry:
  %receive = call double @receive(i32 0, i32 3, i8* %0)
  %receive1 = call double @receive(i32 0, i32 4, i8* %0)
  %1 = fmul double %receive, %receive1, !start !5, !end !0
  call void @send(double %1, i32 1, i32 7, i8* %0)
  %receive2 = call double @receive(i32 0, i32 8, i8* %0)
  %2 = fmul double %receive2, 2.000000e+00, !start !1, !end !6
  %3 = tail call i32 @"\01_sleep"(i32 1) #1, !start !0, !end !1
  %receive3 = call double @receive(i32 1, i32 9, i8* %0)
  %receive4 = call double @receive(i32 0, i32 10, i8* %0)
  %4 = fsub double %receive3, %receive4, !start !6, !end !7
  %5 = fdiv double %4, %2, !start !7, !end !8
  call void @send(double %2, i32 1, i32 12, i8* %0)
  %6 = fcmp une double %5, 0.000000e+00, !start !8, !end !9
  %receive5 = call double @receive(i32 1, i32 13, i8* %0)
  %7 = select i1 %6, double %5, double %receive5, !start !9, !end !3
  call void @send(double %7, i32 -1, i32 14, i8* %0), !start !3, !end !10
  ret void
}

define void @quadratic_1(i8*) {
entry:
  %receive = call double @receive(i32 0, i32 5, i8* %0)
  %1 = fmul double %receive, 4.000000e+00, !start !11, !end !12
  %receive1 = call double @receive(i32 0, i32 6, i8* %0)
  %2 = fmul double %1, %receive1, !start !12, !end !13
  %receive2 = call double @receive(i32 3, i32 7, i8* %0)
  %3 = fsub double %receive2, %2, !start !13, !end !14
  %4 = tail call double @llvm.sqrt.f64(double %3), !start !14, !end !15
  call void @send(double %4, i32 3, i32 9, i8* %0)
  %receive3 = call double @receive(i32 0, i32 11, i8* %0)
  %5 = fsub double %receive3, %4, !start !15, !end !16
  %receive4 = call double @receive(i32 3, i32 12, i8* %0)
  %6 = fdiv double %5, %receive4, !start !16, !end !17
  call void @send(double %6, i32 3, i32 13, i8* %0)
  ret void
}

define void @quadratic_2(i8*) {
entry:
  %1 = tail call i32 @"\01_sleep"(i32 1) #1, !start !16, !end !17
  ret void
}

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { nounwind }

!0 = !{!"11"}
!1 = !{!"21"}
!2 = !{!"31"}
!3 = !{!"41"}
!4 = !{!"24"}
!5 = !{!"6"}
!6 = !{!"26"}
!7 = !{!"29"}
!8 = !{!"39"}
!9 = !{!"40"}
!10 = !{!"42"}
!11 = !{!"2"}
!12 = !{!"7"}
!13 = !{!"12"}
!14 = !{!"15"}
!15 = !{!"25"}
!16 = !{!"28"}
!17 = !{!"38"}
