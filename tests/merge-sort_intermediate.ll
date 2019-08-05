; ModuleID = '<stdin>'
source_filename = "tests/merge-sort.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__const.main.a = private unnamed_addr constant [256 x i32] [i32 8630, i32 2371, i32 2106, i32 7047, i32 9475, i32 9554, i32 7281, i32 6704, i32 1253, i32 2157, i32 2702, i32 5221, i32 549, i32 5266, i32 7151, i32 8215, i32 8118, i32 7034, i32 2088, i32 9135, i32 3332, i32 6269, i32 5470, i32 1887, i32 9323, i32 8378, i32 8971, i32 7937, i32 9515, i32 3476, i32 1646, i32 3823, i32 555, i32 2036, i32 5010, i32 2633, i32 6890, i32 6000, i32 3503, i32 4297, i32 8403, i32 1966, i32 4584, i32 296, i32 322, i32 5328, i32 9540, i32 4442, i32 8455, i32 1645, i32 918, i32 2763, i32 4392, i32 6305, i32 3658, i32 8480, i32 8317, i32 6815, i32 5122, i32 5437, i32 2203, i32 511, i32 5744, i32 7766, i32 2356, i32 2207, i32 9796, i32 3578, i32 7374, i32 2888, i32 9291, i32 7479, i32 5700, i32 1726, i32 1181, i32 4994, i32 9697, i32 5623, i32 9487, i32 8533, i32 5359, i32 5216, i32 1, i32 6160, i32 8711, i32 8220, i32 6721, i32 4251, i32 288, i32 1950, i32 4118, i32 8633, i32 7052, i32 5668, i32 9958, i32 9749, i32 3057, i32 163, i32 5420, i32 7122, i32 3599, i32 2192, i32 5139, i32 4181, i32 6943, i32 16, i32 2609, i32 144, i32 3845, i32 5201, i32 8248, i32 5315, i32 4539, i32 8064, i32 671, i32 7867, i32 3556, i32 6717, i32 5041, i32 7526, i32 2624, i32 2612, i32 1269, i32 6184, i32 5584, i32 4656, i32 4378, i32 1243, i32 7797, i32 9670, i32 3304, i32 5750, i32 3355, i32 8214, i32 2352, i32 5843, i32 770, i32 7960, i32 3927, i32 9337, i32 6192, i32 4939, i32 4203, i32 9404, i32 3437, i32 4012, i32 8768, i32 6298, i32 9854, i32 7487, i32 537, i32 6765, i32 8956, i32 292, i32 6868, i32 8865, i32 2349, i32 1272, i32 2426, i32 5098, i32 1587, i32 7189, i32 7336, i32 2419, i32 3763, i32 5662, i32 9479, i32 3154, i32 33, i32 4661, i32 4990, i32 7170, i32 6230, i32 5919, i32 2969, i32 1882, i32 4291, i32 6145, i32 9519, i32 2130, i32 3981, i32 6171, i32 7298, i32 8669, i32 1915, i32 1826, i32 520, i32 2619, i32 2685, i32 9032, i32 7117, i32 7485, i32 3923, i32 4877, i32 6452, i32 1773, i32 2854, i32 3782, i32 448, i32 6425, i32 1996, i32 1688, i32 7995, i32 8573, i32 7790, i32 4629, i32 3495, i32 3746, i32 8733, i32 7781, i32 8415, i32 526, i32 6759, i32 9079, i32 8943, i32 3982, i32 6409, i32 8583, i32 3020, i32 4513, i32 5015, i32 7657, i32 6111, i32 3815, i32 9629, i32 1856, i32 1560, i32 8332, i32 5885, i32 9471, i32 1330, i32 7337, i32 7486, i32 9288, i32 7380, i32 524, i32 4007, i32 9589, i32 9680, i32 4558, i32 3996, i32 9331, i32 2769, i32 4166, i32 1952, i32 8244, i32 434, i32 5746, i32 7112, i32 7613, i32 2348, i32 4351, i32 393, i32 4421, i32 6386, i32 8158], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: norecurse nounwind ssp uwtable
define void @ms_mergesort(i32* nocapture) local_unnamed_addr #0 {
  %2 = alloca [256 x i32], align 16, !partition !3, !start !3, !end !4
  %3 = alloca [256 x i32], align 16, !partition !4, !start !3, !end !4
  br label %4

; <label>:4:                                      ; preds = %1, %154
  %5 = phi i32 [ 1, %1 ], [ %155, %154 ], !partition !4, !start !3, !end !3
  %6 = shl i32 %5, 1, !partition !3, !start !4, !end !5
  %7 = sext i32 %6 to i64, !partition !4, !start !6, !end !7
  %8 = zext i32 %6 to i64, !partition !3, !start !8, !end !6
  %9 = mul i32 %5, -2, !partition !4, !start !5, !end !8
  %10 = zext i32 %6 to i64, !partition !4, !start !8, !end !6
  %11 = sext i32 %5 to i64, !partition !4, !start !4, !end !5
  %12 = sext i32 %5 to i64, !partition !3, !start !5, !end !8
  %13 = icmp sgt i32 %5, 0, !partition !3, !start !6, !end !7
  br label %14

; <label>:14:                                     ; preds = %4, %147
  %15 = phi i64 [ %7, %4 ], [ %153, %147 ], !partition !4, !start !9, !end !9
  %16 = phi i32 [ %5, %4 ], [ %152, %147 ], !partition !3, !start !10, !end !10
  %17 = phi i64 [ 0, %4 ], [ %151, %147 ], !partition !3, !start !3, !end !3
  %18 = phi i64 [ 0, %4 ], [ %148, %147 ], !partition !3, !start !11, !end !11
  %19 = phi i32 [ 0, %4 ], [ %149, %147 ], !partition !4, !start !12, !end !12
  %20 = sext i32 %16 to i64, !partition !3, !start !13, !end !14
  %21 = mul nsw i64 %17, %7, !partition !4, !start !15, !end !16
  %22 = getelementptr [256 x i32], [256 x i32]* %2, i64 0, i64 %21, !partition !4, !start !10, !end !17
  %23 = bitcast i32* %22 to i8*, !partition !4, !start !17, !end !18
  %24 = getelementptr i32, i32* %0, i64 %21, !partition !3, !start !19, !end !20
  %25 = bitcast i32* %24 to i8*, !partition !3, !start !20, !end !21
  %26 = mul nuw i64 %17, %10, !partition !4, !start !22, !end !23
  %27 = trunc i64 %26 to i32, !partition !3, !start !11, !end !15
  %28 = add i32 %5, %27, !partition !3, !start !21, !end !24
  %29 = trunc i64 %26 to i32, !partition !4, !start !25, !end !26
  %30 = or i32 %29, 1, !partition !3, !start !27, !end !28
  %31 = icmp sgt i32 %28, %30, !partition !3, !start !29, !end !30
  %32 = select i1 %31, i32 %28, i32 %30, !partition !3, !start !31, !end !32
  %33 = trunc i64 %17 to i32, !partition !4, !start !11, !end !15
  %34 = mul i32 %9, %33, !partition !4, !start !20, !end !21
  %35 = add i32 %34, -1, !partition !4, !start !24, !end !27
  %36 = add i32 %32, %35, !partition !3, !start !10, !end !17
  %37 = zext i32 %36 to i64, !partition !3, !start !33, !end !34
  %38 = shl nuw nsw i64 %37, 2, !partition !4, !start !35, !end !36
  %39 = add nuw nsw i64 %38, 4, !partition !3, !start !9, !end !13
  %40 = sext i32 %16 to i64, !partition !3, !start !37, !end !38
  %41 = mul nsw i64 %17, %7, !partition !4, !start !23, !end !25
  %42 = getelementptr [256 x i32], [256 x i32]* %3, i64 0, i64 %41, !partition !4, !start !26, !end !12
  %43 = bitcast i32* %42 to i8*, !partition !4, !start !12, !end !39
  %44 = getelementptr i32, i32* %0, i64 %41, !partition !4, !start !13, !end !14
  %45 = bitcast i32* %44 to i8*, !partition !4, !start !14, !end !40
  %46 = mul nuw i64 %17, %8, !partition !3, !start !4, !end !5
  %47 = trunc i64 %46 to i32, !partition !3, !start !23, !end !25
  %48 = add i32 %5, %47, !partition !4, !start !41, !end !29
  %49 = trunc i64 %46 to i32, !partition !3, !start !42, !end !22
  %50 = or i32 %49, 1, !partition !3, !start !39, !end !43
  %51 = icmp sgt i32 %48, %50, !partition !3, !start !34, !end !37
  %52 = select i1 %51, i32 %48, i32 %50, !partition !4, !start !36, !end !44
  %53 = trunc i64 %17 to i32, !partition !4, !start !43, !end !45
  %54 = mul i32 %9, %53, !partition !4, !start !46, !end !11
  %55 = add i32 %54, -1, !partition !4, !start !47, !end !9
  %56 = add i32 %52, %55, !partition !3, !start !14, !end !40
  %57 = zext i32 %56 to i64, !partition !4, !start !48, !end !49
  %58 = shl nuw nsw i64 %57, 2, !partition !4, !start !50, !end !51
  %59 = add nuw nsw i64 %58, 4, !partition !4, !start !52, !end !53
  %60 = add nsw i64 %18, %11, !partition !4, !start !29, !end !30
  %61 = add nsw i32 %19, %5, !partition !3, !start !54, !end !19
  %62 = add nsw i64 %60, %12, !partition !4, !start !44, !end !47
  %63 = add nsw i32 %61, %5, !partition !4, !start !21, !end !24
  %64 = add nsw i32 %63, -1, !partition !4, !start !30, !end !10
  %65 = icmp slt i64 %62, 257, !partition !4, !start !9, !end !13
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %14
  br i1 %13, label %108, label %109

; <label>:67:                                     ; preds = %14
  br i1 %13, label %68, label %71

; <label>:68:                                     ; preds = %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 %25, i64 %39, i1 false), !partition !3, !start !55, !end !56
  %69 = trunc i64 %60 to i32, !partition !3, !start !3, !end !55
  %70 = add nsw i32 %64, %69, !partition !4, !start !5, !end !8
  br label %77

; <label>:71:                                     ; preds = %77, %67
  %72 = icmp slt i64 %18, %62, !partition !3, !start !3, !end !55
  br i1 %72, label %73, label %147

; <label>:73:                                     ; preds = %71
  %74 = trunc i64 %62 to i32, !partition !3, !start !3, !end !55
  %75 = add i32 %74, -1, !partition !3, !start !5, !end !8
  %76 = trunc i64 %18 to i32, !partition !4, !start !3, !end !55
  br label %87

; <label>:77:                                     ; preds = %68, %77
  %78 = phi i64 [ %20, %68 ], [ %85, %77 ], !partition !3, !start !3, !end !3
  %79 = getelementptr inbounds i32, i32* %0, i64 %78, !partition !4, !start !42, !end !22
  %80 = load i32, i32* %79, align 4, !tbaa !57, !partition !4, !start !22, !end !61
  %81 = trunc i64 %78 to i32, !partition !4, !start !4, !end !5
  %82 = sub i32 %70, %81, !partition !3, !start !42, !end !22
  %83 = sext i32 %82 to i64, !partition !4, !start !61, !end !62
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %83, !partition !4, !start !7, !end !63
  store i32 %80, i32* %84, align 4, !tbaa !57, !partition !4, !start !63, !end !26
  %85 = add nsw i64 %78, 1, !partition !3, !start !64, !end !42
  %86 = icmp slt i64 %85, %62, !partition !3, !start !22, !end !23
  br i1 %86, label %77, label %71

; <label>:87:                                     ; preds = %103, %73
  %88 = phi i64 [ %18, %73 ], [ %106, %103 ], !partition !4, !start !3, !end !3
  %89 = phi i32 [ %76, %73 ], [ %105, %103 ], !partition !3, !start !3, !end !3
  %90 = phi i32 [ %75, %73 ], [ %104, %103 ], !partition !3, !start !3, !end !3
  %91 = sext i32 %90 to i64, !partition !3, !start !4, !end !5
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %91, !partition !4, !start !42, !end !22
  %93 = load i32, i32* %92, align 4, !tbaa !57, !partition !4, !start !22, !end !61
  %94 = sext i32 %89 to i64, !partition !4, !start !4, !end !5
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %94, !partition !3, !start !42, !end !22
  %96 = load i32, i32* %95, align 4, !tbaa !57, !partition !3, !start !22, !end !61
  %97 = icmp slt i32 %93, %96, !partition !3, !start !6, !end !7
  %98 = getelementptr inbounds i32, i32* %0, i64 %88, !partition !4, !start !61, !end !62
  br i1 %97, label %99, label %101

; <label>:99:                                     ; preds = %87
  store i32 %93, i32* %98, align 4, !tbaa !57, !partition !3, !start !3, !end !4
  %100 = add nsw i32 %90, -1, !partition !4, !start !3, !end !55
  br label %103

; <label>:101:                                    ; preds = %87
  store i32 %96, i32* %98, align 4, !tbaa !57, !partition !3, !start !3, !end !4
  %102 = add nsw i32 %89, 1, !partition !4, !start !3, !end !55
  br label %103

; <label>:103:                                    ; preds = %99, %101
  %104 = phi i32 [ %100, %99 ], [ %90, %101 ], !partition !3, !start !3, !end !3
  %105 = phi i32 [ %89, %99 ], [ %102, %101 ], !partition !3, !start !3, !end !3
  %106 = add nsw i64 %88, 1, !partition !3, !start !3, !end !3
  %107 = icmp eq i64 %106, %15, !partition !3, !start !3, !end !3
  br i1 %107, label %147, label %87

; <label>:108:                                    ; preds = %66
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %45, i64 %59, i1 false), !partition !3, !start !3, !end !55
  br label %109

; <label>:109:                                    ; preds = %108, %66
  %110 = icmp slt i64 %60, 257, !partition !3, !start !3, !end !55
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %109
  %112 = add i64 %60, 256, !partition !3, !start !3, !end !55
  br label %115

; <label>:113:                                    ; preds = %115, %109
  %114 = trunc i64 %18 to i32, !partition !3, !start !3, !end !55
  br label %126

; <label>:115:                                    ; preds = %115, %111
  %116 = phi i64 [ %40, %111 ], [ %123, %115 ], !partition !4, !start !3, !end !3
  %117 = getelementptr inbounds i32, i32* %0, i64 %116, !partition !3, !start !5, !end !8
  %118 = load i32, i32* %117, align 4, !tbaa !57, !partition !3, !start !8, !end !22
  %119 = sub i64 %112, %116, !partition !3, !start !4, !end !5
  %120 = shl i64 %119, 32, !partition !4, !start !42, !end !22
  %121 = ashr exact i64 %120, 32, !partition !3, !start !61, !end !62
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %121, !partition !4, !start !7, !end !63
  store i32 %118, i32* %122, align 4, !tbaa !57, !partition !4, !start !63, !end !26
  %123 = add nsw i64 %116, 1, !partition !4, !start !64, !end !42
  %124 = trunc i64 %123 to i32, !partition !4, !start !61, !end !62
  %125 = icmp eq i32 %124, 257, !partition !3, !start !7, !end !63
  br i1 %125, label %113, label %115

; <label>:126:                                    ; preds = %142, %113
  %127 = phi i64 [ %18, %113 ], [ %145, %142 ], !partition !3, !start !5, !end !5
  %128 = phi i32 [ 256, %113 ], [ %144, %142 ], !partition !4, !start !3, !end !3
  %129 = phi i32 [ %114, %113 ], [ %143, %142 ], !partition !3, !start !3, !end !3
  %130 = sext i32 %128 to i64, !partition !3, !start !4, !end !5
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %130, !partition !3, !start !42, !end !22
  %132 = load i32, i32* %131, align 4, !tbaa !57, !partition !3, !start !22, !end !61
  %133 = sext i32 %129 to i64, !partition !4, !start !4, !end !5
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %133, !partition !4, !start !42, !end !22
  %135 = load i32, i32* %134, align 4, !tbaa !57, !partition !4, !start !22, !end !61
  %136 = icmp slt i32 %132, %135, !partition !4, !start !6, !end !7
  %137 = getelementptr inbounds i32, i32* %0, i64 %127, !partition !3, !start !61, !end !62
  br i1 %136, label %138, label %140

; <label>:138:                                    ; preds = %126
  store i32 %132, i32* %137, align 4, !tbaa !57, !partition !3, !start !3, !end !4
  %139 = add nsw i32 %128, -1, !partition !4, !start !3, !end !55
  br label %142

; <label>:140:                                    ; preds = %126
  store i32 %135, i32* %137, align 4, !tbaa !57, !partition !3, !start !3, !end !4
  %141 = add nsw i32 %129, 1, !partition !4, !start !3, !end !55
  br label %142

; <label>:142:                                    ; preds = %138, %140
  %143 = phi i32 [ %129, %138 ], [ %141, %140 ], !partition !3, !start !3, !end !3
  %144 = phi i32 [ %139, %138 ], [ %128, %140 ], !partition !3, !start !3, !end !3
  %145 = add nsw i64 %127, 1, !partition !3, !start !3, !end !3
  %146 = icmp eq i64 %145, 257, !partition !3, !start !3, !end !3
  br i1 %146, label %147, label %126

; <label>:147:                                    ; preds = %142, %103, %71
  %148 = add nsw i64 %18, %7, !partition !3, !start !3, !end !55
  %149 = add nsw i32 %19, %6, !partition !4, !start !55, !end !56
  %150 = icmp slt i64 %148, 256, !partition !4, !start !56, !end !61
  %151 = add nuw nsw i64 %17, 1, !partition !3, !start !55, !end !56
  %152 = add i32 %16, %6, !partition !4, !start !3, !end !55
  %153 = add i64 %15, %7, !partition !3, !start !56, !end !61
  br i1 %150, label %14, label %154

; <label>:154:                                    ; preds = %147
  %155 = shl nsw i32 %5, 1, !partition !3, !start !3, !end !55
  %156 = icmp slt i32 %5, 128, !partition !4, !start !3, !end !55
  br i1 %156, label %4, label %157

; <label>:157:                                    ; preds = %154
  ret void, !partition !3, !start !3, !end !4
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = alloca [256 x i32], align 16
  %4 = bitcast [256 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %4, i8* align 16 bitcast ([256 x i32]* @__const.main.a to i8*), i64 1024, i1 false)
  %5 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  call void @ms_mergesort(i32* nonnull %5)
  br label %6

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !57
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 256
  br i1 %12, label %13, label %6

; <label>:13:                                     ; preds = %6
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!3 = !{!"0"}
!4 = !{!"1"}
!5 = !{!"4"}
!6 = !{!"10"}
!7 = !{!"13"}
!8 = !{!"7"}
!9 = !{!"80"}
!10 = !{!"62"}
!11 = !{!"33"}
!12 = !{!"20"}
!13 = !{!"83"}
!14 = !{!"86"}
!15 = !{!"36"}
!16 = !{!"39"}
!17 = !{!"65"}
!18 = !{!"68"}
!19 = !{!"40"}
!20 = !{!"43"}
!21 = !{!"46"}
!22 = !{!"8"}
!23 = !{!"11"}
!24 = !{!"49"}
!25 = !{!"14"}
!26 = !{!"17"}
!27 = !{!"52"}
!28 = !{!"55"}
!29 = !{!"56"}
!30 = !{!"59"}
!31 = !{!"60"}
!32 = !{!"61"}
!33 = !{!"66"}
!34 = !{!"69"}
!35 = !{!"70"}
!36 = !{!"73"}
!37 = !{!"72"}
!38 = !{!"75"}
!39 = !{!"23"}
!40 = !{!"89"}
!41 = !{!"53"}
!42 = !{!"5"}
!43 = !{!"26"}
!44 = !{!"74"}
!45 = !{!"29"}
!46 = !{!"30"}
!47 = !{!"77"}
!48 = !{!"90"}
!49 = !{!"93"}
!50 = !{!"94"}
!51 = !{!"97"}
!52 = !{!"98"}
!53 = !{!"101"}
!54 = !{!"37"}
!55 = !{!"3"}
!56 = !{!"6"}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !{!"9"}
!62 = !{!"12"}
!63 = !{!"16"}
!64 = !{!"2"}
