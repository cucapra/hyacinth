; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@str = external global [7 x i8]
@str.4 = external global [7 x i8]
@funs = global [2 x void (i8*)*] [void (i8*)* @quadratic_0, void (i8*)* @quadratic_1]
@str.1 = private unnamed_addr constant [7 x i8] c"print1\00", align 1
@str.4.2 = private unnamed_addr constant [7 x i8] c"print2\00", align 1
@str.5 = private unnamed_addr constant [14 x i8] c"starting main\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @init() #0 {
  ret i8* null
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)**, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca void (i8*)**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store void (i8*)** %1, void (i8*)*** %5, align 8
  store i8* %2, i8** %6, align 8
  ret i8* null
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @join_partitioned_functions(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @send(double, i32, i32, i8*) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store double %0, double* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define double @receive(i32, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  ret double 0.000000e+00
}

define void @quadratic_0(i8*) {
entry:
  %argument = call double @receive(i32 -1, i32 0, i8* %0)
  %argument1 = call double @receive(i32 -1, i32 1, i8* %0)
  %argument2 = call double @receive(i32 -1, i32 2, i8* %0)
  %1 = fmul double %argument1, %argument1, !start !3, !end !4
  %2 = fmul double %argument, 4.000000e+00, !start !5, !end !6
  call void @send(double %2, i32 1, i32 3, i8* %0)
  call void @send(double %argument2, i32 1, i32 4, i8* %0)
  %receive = call double @receive(i32 1, i32 5, i8* %0)
  %3 = fsub double %1, %receive, !start !4, !end !7
  call void @send(double %argument, i32 1, i32 6, i8* %0)
  %4 = fsub double -0.000000e+00, %argument1, !start !8, !end !3
  %5 = tail call double @llvm.sqrt.f64(double %3), !start !7, !end !9
  call void @send(double %5, i32 1, i32 7, i8* %0)
  call void @send(double %argument1, i32 1, i32 8, i8* %0)
  %6 = fsub double %4, %5, !start !9, !end !10
  %receive3 = call double @receive(i32 1, i32 9, i8* %0)
  %7 = fdiv double %6, %receive3, !start !10, !end !11
  call void @send(double %7, i32 1, i32 10, i8* %0)
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sqrt.f64(double) #1

define void @quadratic_1(i8*) {
entry:
  %receive = call double @receive(i32 0, i32 3, i8* %0)
  %receive1 = call double @receive(i32 0, i32 4, i8* %0)
  %1 = fmul double %receive, %receive1, !start !12, !end !13
  call void @send(double %1, i32 0, i32 5, i8* %0)
  %receive2 = call double @receive(i32 0, i32 6, i8* %0)
  %2 = fmul double %receive2, 2.000000e+00, !start !13, !end !14
  %receive3 = call double @receive(i32 0, i32 7, i8* %0)
  %receive4 = call double @receive(i32 0, i32 8, i8* %0)
  %3 = fsub double %receive3, %receive4, !start !15, !end !16
  %4 = fdiv double %3, %2, !start !16, !end !17
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str, i64 0, i64 0)), !start !14, !end !15
  call void @send(double %2, i32 0, i32 9, i8* %0)
  %6 = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.4, i64 0, i64 0)), !start !18, !end !12
  %7 = fcmp une double %4, 0.000000e+00, !start !17, !end !19
  %receive5 = call double @receive(i32 0, i32 10, i8* %0)
  %8 = select i1 %7, double %4, double %receive5, !start !19, !end !20
  call void @send(double %8, i32 -1, i32 11, i8* %0), !start !20, !end !21
  ret void
}

declare i32 @puts(i8*)

; Function Attrs: nounwind ssp uwtable
define double @quadratic(double, double, double) local_unnamed_addr #2 {
  %4 = fmul double %1, %1
  %5 = fmul double %0, 4.000000e+00
  %6 = fmul double %5, %2
  %7 = fsub double %4, %6
  %8 = fmul double %0, 2.000000e+00
  %9 = fsub double -0.000000e+00, %1
  %10 = tail call double @llvm.sqrt.f64(double %7)
  %11 = fsub double %10, %1
  %12 = fdiv double %11, %8
  %13 = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.1, i64 0, i64 0))
  %14 = fsub double %9, %10
  %15 = fdiv double %14, %8
  %16 = tail call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @str.4.2, i64 0, i64 0))
  %17 = fcmp une double %12, 0.000000e+00
  %18 = select i1 %17, double %12, double %15
  ret double %18
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #2 {
  %4 = getelementptr inbounds i8*, i8** %1, i64 1
  %5 = load i8*, i8** %4, align 8, !tbaa !22
  %6 = tail call i32 @atoi(i8* %5)
  %7 = sitofp i32 %6 to double
  %8 = getelementptr inbounds i8*, i8** %1, i64 2
  %9 = load i8*, i8** %8, align 8, !tbaa !22
  %10 = tail call i32 @atoi(i8* %9)
  %11 = sitofp i32 %10 to double
  %12 = getelementptr inbounds i8*, i8** %1, i64 3
  %13 = load i8*, i8** %12, align 8, !tbaa !22
  %14 = tail call i32 @atoi(i8* %13)
  %15 = sitofp i32 %14 to double
  %16 = tail call double @replace_quadratic(double %7, double %11, double %15)
  %17 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %16)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #3

define double @replace_quadratic(double, double, double) {
entry:
  %3 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 1), i8* %3)
  call void @send(double %0, i32 0, i32 0, i8* %3)
  call void @send(double %1, i32 0, i32 1, i8* %3)
  call void @send(double %2, i32 0, i32 2, i8* %3)
  %return = call double @receive(i32 -1, i32 11, i8* %3)
  call void @join_partitioned_functions(i32 2, i8* %threads)
  ret double %return
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"11"}
!4 = !{!"16"}
!5 = !{!"1"}
!6 = !{!"6"}
!7 = !{!"19"}
!8 = !{!"8"}
!9 = !{!"29"}
!10 = !{!"32"}
!11 = !{!"42"}
!12 = !{!"10"}
!13 = !{!"15"}
!14 = !{!"20"}
!15 = !{!"30"}
!16 = !{!"33"}
!17 = !{!"43"}
!18 = !{!"0"}
!19 = !{!"44"}
!20 = !{!"45"}
!21 = !{!"46"}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
