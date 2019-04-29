; ModuleID = 'new_module'
source_filename = "new_module"

declare void @send(double, i32, i32, i8*)

declare double @receive(i32, i32, i8*)

declare double @llvm.sqrt.f64(double) #1

declare i32 @atoi(i8* nocapture) local_unnamed_addr #3

declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

define void @quadratic_0(i8*) {
entry:
  %argument = call double @receive(i32 -1, i32 0, i8* %0)
  %argument1 = call double @receive(i32 -1, i32 1, i8* %0)
  %argument2 = call double @receive(i32 -1, i32 2, i8* %0)
  %1 = fmul double %argument1, %argument1, !start !0, !end !1
  call void @send(double %argument, i32 1, i32 3, i8* %0)
  call void @send(double %argument2, i32 1, i32 4, i8* %0)
  call void @send(double %1, i32 1, i32 5, i8* %0)
  %2 = fmul double %argument, 2.000000e+00, !start !2, !end !3
  %3 = fsub double -0.000000e+00, %argument1, !start !4, !end !5
  call void @send(double %argument1, i32 1, i32 6, i8* %0)
  call void @send(double %2, i32 1, i32 7, i8* %0)
  %receive = call double @receive(i32 1, i32 8, i8* %0)
  %4 = fsub double %3, %receive, !start !3, !end !6
  %5 = fdiv double %4, %2, !start !6, !end !7
  call void @send(double %5, i32 1, i32 9, i8* %0)
  ret void
}

define void @quadratic_1(i8*) {
entry:
  %receive = call double @receive(i32 0, i32 3, i8* %0)
  %1 = fmul double %receive, 4.000000e+00, !start !8, !end !9
  %receive1 = call double @receive(i32 0, i32 4, i8* %0)
  %2 = fmul double %1, %receive1, !start !9, !end !4
  %receive2 = call double @receive(i32 0, i32 5, i8* %0)
  %3 = fsub double %receive2, %2, !start !4, !end !5
  %4 = tail call double @llvm.sqrt.f64(double %3), !start !5, !end !10
  %receive3 = call double @receive(i32 0, i32 6, i8* %0)
  %5 = fsub double %4, %receive3, !start !3, !end !6
  %receive4 = call double @receive(i32 0, i32 7, i8* %0)
  %6 = fdiv double %5, %receive4, !start !6, !end !7
  call void @send(double %4, i32 0, i32 8, i8* %0)
  %7 = fcmp une double %6, 0.000000e+00, !start !7, !end !11
  %receive5 = call double @receive(i32 0, i32 9, i8* %0)
  %8 = select i1 %7, double %6, double %receive5, !start !11, !end !12
  call void @send(double %8, i32 -1, i32 10, i8* %0), !start !12, !end !13
  ret void
}

!0 = !{!"4"}
!1 = !{!"9"}
!2 = !{!"21"}
!3 = !{!"26"}
!4 = !{!"12"}
!5 = !{!"15"}
!6 = !{!"29"}
!7 = !{!"39"}
!8 = !{!"2"}
!9 = !{!"7"}
!10 = !{!"25"}
!11 = !{!"40"}
!12 = !{!"41"}
!13 = !{!"42"}
