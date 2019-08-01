; ModuleID = '<stdin>'
source_filename = "tests/fibonacci-loop.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @fib(i32) local_unnamed_addr #0 {
  %2 = icmp sgt i32 %0, 0, !partition !3, !start !3, !end !4
  br i1 %2, label %3, label %16

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i32 [ %11, %3 ], [ 0, %1 ], !partition !3, !start !3, !end !3
  %5 = phi i32 [ %10, %3 ], [ 1, %1 ], !partition !5, !start !3, !end !3
  %6 = phi i32 [ %9, %3 ], [ 0, %1 ], !partition !5, !start !3, !end !3
  %7 = icmp ult i32 %4, 2, !partition !5, !start !6, !end !7
  %8 = add nsw i32 %5, %6, !partition !3, !start !8, !end !9
  %9 = select i1 %7, i32 %6, i32 %5, !partition !3, !start !9, !end !10
  %10 = select i1 %7, i32 %5, i32 %8, !partition !5, !start !10, !end !11
  %11 = add nuw nsw i32 %4, 1, !partition !3, !start !5, !end !8
  %12 = icmp eq i32 %11, %0, !partition !5, !start !7, !end !10
  br i1 %12, label %13, label %3

; <label>:13:                                     ; preds = %3
  %14 = add i32 %0, -1, !partition !3, !start !3, !end !3
  %15 = select i1 %7, i32 %14, i32 %8, !partition !3, !start !3, !end !3
  br label %16

; <label>:16:                                     ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ], !partition !3, !start !3, !end !3
  ret i32 %17, !partition !3, !start !3, !end !3
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #1 {
  %3 = getelementptr inbounds i8*, i8** %1, i64 1
  %4 = load i8*, i8** %3, align 8, !tbaa !12
  %5 = tail call i32 @atoi(i8* %4)
  %6 = tail call i32 @fib(i32 %5)
  %7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!3 = !{!"0"}
!4 = !{!"3"}
!5 = !{!"1"}
!6 = !{!"2"}
!7 = !{!"5"}
!8 = !{!"4"}
!9 = !{!"7"}
!10 = !{!"8"}
!11 = !{!"9"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
