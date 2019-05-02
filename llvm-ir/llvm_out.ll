; ModuleID = 'new_module'
source_filename = "new_module"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"

@.str.1 = external global [22 x i8]
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
  call void @send(double %argument1, i32 1, i32 3, i8* %0)
  call void @send(double %argument1, i32 1, i32 4, i8* %0)
  %1 = fmul double %argument, 4.000000e+00, !start !0, !end !1
  %2 = fmul double %1, %argument2, !start !2, !end !3
  call void @send(double %2, i32 3, i32 6, i8* %0)
  %3 = fmul double %argument, 2.000000e+00, !start !4, !end !5
  %4 = tail call i32 @"\01_sleep"(i32 1) #1, !start !3, !end !4
  %5 = tail call i32 @"\01_sleep"(i32 1) #1, !start !5, !end !6
  call void @send(double %argument1, i32 2, i32 7, i8* %0)
  call void @send(double %argument1, i32 3, i32 8, i8* %0)
  call void @send(double %3, i32 1, i32 10, i8* %0)
  call void @send(double %3, i32 3, i32 12, i8* %0)
  ret void
}

define void @quadratic_1(i8*) {
entry:
  %receive = call double @receive(i32 0, i32 3, i8* %0)
  %receive1 = call double @receive(i32 0, i32 4, i8* %0)
  %1 = fmul double %receive, %receive1, !start !0, !end !1
  call void @send(double %1, i32 3, i32 5, i8* %0)
  %2 = tail call i32 @"\01_sleep"(i32 1) #1, !start !1, !end !7
  %3 = tail call i32 @"\01_sleep"(i32 1) #1, !start !7, !end !8
  %receive2 = call double @receive(i32 3, i32 9, i8* %0)
  %receive3 = call double @receive(i32 0, i32 10, i8* %0)
  %4 = fdiv double %receive2, %receive3, !start !8, !end !9
  %5 = fcmp une double %4, 0.000000e+00, !start !9, !end !10
  call void @send(double 0.000000e+00, i32 3, i32 13, i8* %0)
  call void @send(double %4, i32 3, i32 14, i8* %0)
  ret void
}

define void @quadratic_3(i8*) {
entry:
  %receive = call double @receive(i32 1, i32 5, i8* %0)
  %receive1 = call double @receive(i32 0, i32 6, i8* %0)
  %1 = fsub double %receive, %receive1, !start !11, !end !12
  %2 = tail call i32 @"\01_sleep"(i32 1) #1, !start !13, !end !11
  %3 = tail call double @llvm.sqrt.f64(double %1), !start !12, !end !5
  %receive2 = call double @receive(i32 0, i32 8, i8* %0)
  %4 = fsub double %3, %receive2, !start !5, !end !14
  call void @send(double %4, i32 1, i32 9, i8* %0)
  %receive3 = call double @receive(i32 2, i32 11, i8* %0)
  %5 = fsub double %receive3, %3, !start !14, !end !15
  %receive4 = call double @receive(i32 0, i32 12, i8* %0)
  %6 = fdiv double %5, %receive4, !start !15, !end !16
  %receive5 = call double @receive(i32 1, i32 13, i8* %0)
  %receive6 = call double @receive(i32 1, i32 14, i8* %0)
  %7 = select double %receive5, double %receive6, double %6, !start !16, !end !17
  call void @send(double %7, i32 -1, i32 15, i8* %0), !start !17, !end !6
  ret void
}

define void @quadratic_2(i8*) {
entry:
  %1 = tail call i32 @"\01_sleep"(i32 1) #1, !start !12, !end !5
  %2 = tail call i32 @"\01_sleep"(i32 1) #1, !start !13, !end !11
  %3 = tail call i32 @"\01_sleep"(i32 1) #1, !start !5, !end !6
  %receive = call double @receive(i32 0, i32 7, i8* %0)
  %4 = fsub double -0.000000e+00, %receive, !start !11, !end !12
  call void @send(double %4, i32 3, i32 11, i8* %0)
  ret void
}

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { nounwind }

!0 = !{!"2"}
!1 = !{!"7"}
!2 = !{!"8"}
!3 = !{!"13"}
!4 = !{!"28"}
!5 = !{!"33"}
!6 = !{!"48"}
!7 = !{!"22"}
!8 = !{!"37"}
!9 = !{!"44"}
!10 = !{!"45"}
!11 = !{!"15"}
!12 = !{!"18"}
!13 = !{!"0"}
!14 = !{!"36"}
!15 = !{!"39"}
!16 = !{!"46"}
!17 = !{!"47"}
