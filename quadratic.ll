; ModuleID = 'c-examples/quadratic.c'
source_filename = "c-examples/quadratic.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: nounwind readnone ssp uwtable
define double @quadratic(double, double, double) local_unnamed_addr #0 {
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
declare double @llvm.sqrt.f64(double) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #2 {
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
  %15 = tail call double @quadratic(double %6, double %10, double %14)
  %16 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %15)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

attributes #0 = { nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.1 (tags/RELEASE_701/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
