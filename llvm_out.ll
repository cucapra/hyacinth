; ModuleID = 'new_module'
source_filename = "new_module"

@.str.3 = external global [4 x i8]
@str = external global [7 x i8]
@str.4 = external global [7 x i8]
@str.5 = external global [14 x i8]

declare void @send(double, i32, i32, i8*)

declare double @receive(i32, i32, i8*)

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
  %1 = fmul double %argument1, %argument1, !start !0, !end !1
  %2 = fmul double %argument, 4.000000e+00, !start !2, !end !3
  call void @send(double %2, i32 1, i32 3, i8* %0)
  call void @send(double %argument2, i32 1, i32 4, i8* %0)
  %receive = call double @receive(i32 1, i32 5, i8* %0)
  %3 = fsub double %1, %receive, !start !1, !end !4
  call void @send(double %argument, i32 1, i32 6, i8* %0)
  %4 = fsub double -0.000000e+00, %argument1, !start !5, !end !0
  %5 = tail call double @llvm.sqrt.f64(double %3), !start !4, !end !6
  call void @send(double %5, i32 1, i32 7, i8* %0)
  call void @send(double %argument1, i32 1, i32 8, i8* %0)
  %6 = fsub double %4, %5, !start !6, !end !7
  %receive3 = call double @receive(i32 1, i32 9, i8* %0)
  %7 = fdiv double %6, %receive3, !start !7, !end !8
  call void @send(double %7, i32 1, i32 10, i8* %0)
  ret void
}

define void @quadratic_1(i8*) {
entry:
  %receive = call double @receive(i32 0, i32 3, i8* %0)
  %receive1 = call double @receive(i32 0, i32 4, i8* %0)
  %1 = fmul double %receive, %receive1, !start !9, !end !10
  call void @send(double %1, i32 0, i32 5, i8* %0)
  %receive2 = call double @receive(i32 0, i32 6, i8* %0)
  %2 = fmul double %receive2, 2.000000e+00, !start !10, !end !11
  %receive3 = call double @receive(i32 0, i32 7, i8* %0)
  %receive4 = call double @receive(i32 0, i32 8, i8* %0)
  %3 = fsub double %receive3, %receive4, !start !12, !end !13
  %4 = fdiv double %3, %2, !start !13, !end !14
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0)), !start !11, !end !12
  call void @send(double %2, i32 0, i32 9, i8* %0)
  %6 = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.4, i64 0, i64 0)), !start !15, !end !9
  %7 = fcmp une double %4, 0.000000e+00, !start !14, !end !16
  %receive5 = call double @receive(i32 0, i32 10, i8* %0)
  %8 = select i1 %7, double %4, double %receive5, !start !16, !end !17
  call void @send(double %8, i32 -1, i32 11, i8* %0), !start !17, !end !18
  ret void
}

attributes #0 = { nounwind readnone speculatable }

!0 = !{!"11"}
!1 = !{!"16"}
!2 = !{!"1"}
!3 = !{!"6"}
!4 = !{!"19"}
!5 = !{!"8"}
!6 = !{!"29"}
!7 = !{!"32"}
!8 = !{!"42"}
!9 = !{!"10"}
!10 = !{!"15"}
!11 = !{!"20"}
!12 = !{!"30"}
!13 = !{!"33"}
!14 = !{!"43"}
!15 = !{!"0"}
!16 = !{!"44"}
!17 = !{!"45"}
!18 = !{!"46"}
