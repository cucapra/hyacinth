; ModuleID = 'tests/matrix_multiply_cores.ll'
source_filename = "new_module"
target datalayout = "e-m:e-p:32:32-i64:64-n32-S128"
target triple = "riscv32-unknown-elf"

@a = local_unnamed_addr global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], [3 x double] [double 2.000000e+00, double 2.000000e+00, double 2.000000e+00], [3 x double] [double 3.000000e+00, double 3.000000e+00, double 3.000000e+00]], section ".dram"
@b = local_unnamed_addr global [3 x [3 x double]] [[3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00], [3 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00]], section ".dram"
@res = local_unnamed_addr global [3 x [3 x double]] zeroinitializer, section ".dram"
@.str = local_unnamed_addr global [4 x i8] c"%f \00", section ".dram"

; Function Attrs: norecurse nounwind
define void @multiply_0(i8* nocapture readnone) local_unnamed_addr #0 {
entry:
  %1 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 0, i32 0), align 16, !tbaa !0
  %2 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 0, i32 0), align 16, !tbaa !0
  %3 = fmul double %1, %2, !time !4
  %4 = fadd double %3, 0.000000e+00, !time !4
  %5 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 0, i32 1), align 8, !tbaa !0
  %6 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 1, i32 0), align 8, !tbaa !0
  %7 = fmul double %5, %6, !time !4
  %8 = fadd double %4, %7, !time !4
  %9 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 0, i32 2), align 16, !tbaa !0
  %10 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 2, i32 0), align 16, !tbaa !0
  %11 = fmul double %9, %10, !time !4
  %12 = fadd double %8, %11, !time !4
  store double %12, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 0, i32 0), align 16, !tbaa !0, !time !5
  %13 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 0, i32 1), align 8, !tbaa !0
  %14 = fmul double %1, %13, !time !4
  %15 = fadd double %14, 0.000000e+00, !time !4
  %16 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 1, i32 1), align 8, !tbaa !0
  %17 = fmul double %5, %16, !time !4
  %18 = fadd double %15, %17, !time !4
  %19 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 2, i32 1), align 8, !tbaa !0
  %20 = fmul double %9, %19, !time !4
  %21 = fadd double %18, %20, !time !4
  store double %21, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 0, i32 1), align 8, !tbaa !0, !time !5
  %22 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 0, i32 2), align 16, !tbaa !0
  %23 = fmul double %1, %22, !time !4
  %24 = fadd double %23, 0.000000e+00, !time !4
  %25 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 1, i32 2), align 8, !tbaa !0
  %26 = fmul double %5, %25, !time !4
  %27 = fadd double %24, %26, !time !4
  %28 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @b, i32 0, i32 2, i32 2), align 16, !tbaa !0
  %29 = fmul double %9, %28, !time !4
  %30 = fadd double %27, %29, !time !4
  store double %30, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 0, i32 2), align 16, !tbaa !0, !time !5
  %31 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 1, i32 0), align 8, !tbaa !0
  %32 = fmul double %31, %2, !time !4
  %33 = fadd double %32, 0.000000e+00, !time !4
  %34 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 1, i32 1), align 8, !tbaa !0
  %35 = fmul double %34, %6, !time !4
  %36 = fadd double %33, %35, !time !4
  %37 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 1, i32 2), align 8, !tbaa !0
  %38 = fmul double %37, %10, !time !4
  %39 = fadd double %36, %38, !time !4
  store double %39, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 1, i32 0), align 8, !tbaa !0, !time !5
  %40 = fmul double %31, %13, !time !4
  %41 = fadd double %40, 0.000000e+00, !time !4
  %42 = fmul double %34, %16, !time !4
  %43 = fadd double %41, %42, !time !4
  %44 = fmul double %37, %19, !time !4
  %45 = fadd double %43, %44, !time !4
  store double %45, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 1, i32 1), align 8, !tbaa !0, !time !5
  %46 = fmul double %31, %22, !time !4
  %47 = fadd double %46, 0.000000e+00, !time !4
  %48 = fmul double %34, %25, !time !4
  %49 = fadd double %47, %48, !time !4
  %50 = fmul double %37, %28, !time !4
  %51 = fadd double %49, %50, !time !4
  store double %51, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 1, i32 2), align 8, !tbaa !0, !time !5
  %52 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 2, i32 0), align 16, !tbaa !0
  %53 = fmul double %52, %2, !time !4
  %54 = fadd double %53, 0.000000e+00, !time !4
  %55 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 2, i32 1), align 8, !tbaa !0
  %56 = fmul double %55, %6, !time !4
  %57 = fadd double %54, %56, !time !4
  %58 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @a, i32 0, i32 2, i32 2), align 16, !tbaa !0
  %59 = fmul double %58, %10, !time !4
  %60 = fadd double %57, %59, !time !4
  store double %60, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 2, i32 0), align 16, !tbaa !0, !time !5
  %61 = fmul double %52, %13, !time !4
  %62 = fadd double %61, 0.000000e+00, !time !4
  %63 = fmul double %55, %16, !time !4
  %64 = fadd double %62, %63, !time !4
  %65 = fmul double %58, %19, !time !4
  %66 = fadd double %64, %65, !time !4
  store double %66, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 2, i32 1), align 8, !tbaa !0, !time !5
  %67 = fmul double %52, %22, !time !4
  %68 = fadd double %67, 0.000000e+00, !time !4
  %69 = fmul double %55, %25, !time !4
  %70 = fadd double %68, %69, !time !4
  %71 = fmul double %58, %28, !time !4
  %72 = fadd double %70, %71, !time !4
  store double %72, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @res, i32 0, i32 2, i32 2), align 16, !tbaa !0, !time !5
  ret void
}

attributes #0 = { norecurse nounwind }

!0 = !{!1, !1, i64 0}
!1 = !{!"double", !2, i64 0}
!2 = !{!"omnipotent char", !3, i64 0}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"0", !"0"}
!5 = !{!"6", !"7"}
