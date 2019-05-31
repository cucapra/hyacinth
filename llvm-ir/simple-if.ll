; ModuleID = 'examples/c-examples/simple-if.c'
source_filename = "examples/c-examples/simple-if.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.13.0"

@str = private unnamed_addr constant [2 x i8] c"3\00", align 1
@str.4 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: nounwind ssp uwtable
define void @if_f(i32) local_unnamed_addr #0 {
  %2 = icmp slt i32 %0, 5
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.5, i64 0, i64 0))
  %5 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.6, i64 0, i64 0))
  br label %9

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str, i64 0, i64 0))
  %8 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.4, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !3
  %5 = tail call i32 @atoi(i8* %4)
  %6 = icmp slt i32 %5, 5
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.5, i64 0, i64 0)) #2
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.6, i64 0, i64 0)) #2
  br label %13

; <label>:10:                                     ; preds = %2
  %11 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str, i64 0, i64 0)) #2
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str.4, i64 0, i64 0)) #2
  br label %13

; <label>:13:                                     ; preds = %7, %10
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

attributes #0 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
