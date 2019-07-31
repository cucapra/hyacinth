; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Context = type {}
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@comms_0 = global { i32, i1, i32 } zeroinitializer
@comms_1 = global { i32, i1, i32 } zeroinitializer
@comms_2 = global { i32, i1, i32 } zeroinitializer
@comms_3 = global { i32, i1, i32 } zeroinitializer
@comms_4 = global { i64, i1, i32 } zeroinitializer
@comms_5 = global { i32*, i1, i32 } zeroinitializer
@comms_6 = global { i64, i1, i32 } zeroinitializer
@comms_7 = global { i64, i1, i32 } zeroinitializer
@comms_8 = global { i64, i1, i32 } zeroinitializer
@comms_9 = global { i32, i1, i32 } zeroinitializer
@comms_10 = global { i32, i1, i32 } zeroinitializer
@comms_11 = global { i32, i1, i32 } zeroinitializer
@comms_12 = global { i32, i1, i32 } zeroinitializer
@comms_13 = global { i32, i1, i32 } zeroinitializer
@comms_14 = global { i64, i1, i32 } zeroinitializer
@comms_15 = global { i32, i1, i32 } zeroinitializer
@comms_16 = global { i32, i1, i32 } zeroinitializer
@comms_17 = global { i64, i1, i32 } zeroinitializer
@comms_18 = global { i32, i1, i32 } zeroinitializer
@comms_19 = global { i32*, i1, i32 } zeroinitializer
@comms_20 = global { i32, i1, i32 } zeroinitializer
@comms_21 = global { i32*, i1, i32 } zeroinitializer
@comms_22 = global { i32*, i1, i32 } zeroinitializer
@comms_23 = global { i32, i1, i32 } zeroinitializer
@comms_24 = global { i64, i1, i32 } zeroinitializer
@comms_25 = global { i64, i1, i32 } zeroinitializer
@comms_26 = global { i32, i1, i32 } zeroinitializer
@comms_27 = global { i32, i1, i32 } zeroinitializer
@comms_28 = global { i64, i1, i32 } zeroinitializer
@comms_29 = global { i32, i1, i32 } zeroinitializer
@comms_30 = global { i32, i1, i32 } zeroinitializer
@comms_31 = global { i64, i1, i32 } zeroinitializer
@comms_32 = global { i32, i1, i32 } zeroinitializer
@comms_33 = global { i64, i1, i32 } zeroinitializer
@comms_34 = global { i32, i1, i32 } zeroinitializer
@comms_35 = global { i32, i1, i32 } zeroinitializer
@comms_36 = global { i32, i1, i32 } zeroinitializer
@comms_37 = global { i32, i1, i32 } zeroinitializer
@comms_38 = global { i32, i1, i32 } zeroinitializer
@comms_39 = global { i32, i1, i32 } zeroinitializer
@comms_40 = global { i64, i1, i32 } zeroinitializer
@comms_41 = global { i64, i1, i32 } zeroinitializer
@comms_42 = global { i32, i1, i32 } zeroinitializer
@comms_43 = global { i32, i1, i32 } zeroinitializer
@comms_44 = global { i1, i1, i32 } zeroinitializer
@comms_45 = global { i1, i1, i32 } zeroinitializer
@comms_46 = global { i1, i1, i32 } zeroinitializer
@comms_47 = global { i1, i1, i32 } zeroinitializer
@comms_48 = global { i1, i1, i32 } zeroinitializer
@comms_49 = global { i1, i1, i32 } zeroinitializer
@comms_50 = global { i1, i1, i32 } zeroinitializer
@comms_51 = global { i1, i1, i32 } zeroinitializer
@comms_52 = global { i1, i1, i32 } zeroinitializer
@comms_53 = global { i1, i1, i32 } zeroinitializer
@comms_54 = global { i1, i1, i32 } zeroinitializer
@comms_55 = global { i1, i1, i32 } zeroinitializer
@comms_56 = global { i1, i1, i32 } zeroinitializer
@return_struct = global { i1, i1, i32 } zeroinitializer
@funs = global [2 x void (i8*)*] [void (i8*)* @ms_mergesort_0, void (i8*)* @ms_mergesort_1]
@__const.main.a.2 = private unnamed_addr constant [256 x i32] [i32 8630, i32 2371, i32 2106, i32 7047, i32 9475, i32 9554, i32 7281, i32 6704, i32 1253, i32 2157, i32 2702, i32 5221, i32 549, i32 5266, i32 7151, i32 8215, i32 8118, i32 7034, i32 2088, i32 9135, i32 3332, i32 6269, i32 5470, i32 1887, i32 9323, i32 8378, i32 8971, i32 7937, i32 9515, i32 3476, i32 1646, i32 3823, i32 555, i32 2036, i32 5010, i32 2633, i32 6890, i32 6000, i32 3503, i32 4297, i32 8403, i32 1966, i32 4584, i32 296, i32 322, i32 5328, i32 9540, i32 4442, i32 8455, i32 1645, i32 918, i32 2763, i32 4392, i32 6305, i32 3658, i32 8480, i32 8317, i32 6815, i32 5122, i32 5437, i32 2203, i32 511, i32 5744, i32 7766, i32 2356, i32 2207, i32 9796, i32 3578, i32 7374, i32 2888, i32 9291, i32 7479, i32 5700, i32 1726, i32 1181, i32 4994, i32 9697, i32 5623, i32 9487, i32 8533, i32 5359, i32 5216, i32 1, i32 6160, i32 8711, i32 8220, i32 6721, i32 4251, i32 288, i32 1950, i32 4118, i32 8633, i32 7052, i32 5668, i32 9958, i32 9749, i32 3057, i32 163, i32 5420, i32 7122, i32 3599, i32 2192, i32 5139, i32 4181, i32 6943, i32 16, i32 2609, i32 144, i32 3845, i32 5201, i32 8248, i32 5315, i32 4539, i32 8064, i32 671, i32 7867, i32 3556, i32 6717, i32 5041, i32 7526, i32 2624, i32 2612, i32 1269, i32 6184, i32 5584, i32 4656, i32 4378, i32 1243, i32 7797, i32 9670, i32 3304, i32 5750, i32 3355, i32 8214, i32 2352, i32 5843, i32 770, i32 7960, i32 3927, i32 9337, i32 6192, i32 4939, i32 4203, i32 9404, i32 3437, i32 4012, i32 8768, i32 6298, i32 9854, i32 7487, i32 537, i32 6765, i32 8956, i32 292, i32 6868, i32 8865, i32 2349, i32 1272, i32 2426, i32 5098, i32 1587, i32 7189, i32 7336, i32 2419, i32 3763, i32 5662, i32 9479, i32 3154, i32 33, i32 4661, i32 4990, i32 7170, i32 6230, i32 5919, i32 2969, i32 1882, i32 4291, i32 6145, i32 9519, i32 2130, i32 3981, i32 6171, i32 7298, i32 8669, i32 1915, i32 1826, i32 520, i32 2619, i32 2685, i32 9032, i32 7117, i32 7485, i32 3923, i32 4877, i32 6452, i32 1773, i32 2854, i32 3782, i32 448, i32 6425, i32 1996, i32 1688, i32 7995, i32 8573, i32 7790, i32 4629, i32 3495, i32 3746, i32 8733, i32 7781, i32 8415, i32 526, i32 6759, i32 9079, i32 8943, i32 3982, i32 6409, i32 8583, i32 3020, i32 4513, i32 5015, i32 7657, i32 6111, i32 3815, i32 9629, i32 1856, i32 1560, i32 8332, i32 5885, i32 9471, i32 1330, i32 7337, i32 7486, i32 9288, i32 7380, i32 524, i32 4007, i32 9589, i32 9680, i32 4558, i32 3996, i32 9331, i32 2769, i32 4166, i32 1952, i32 8244, i32 434, i32 5746, i32 7112, i32 7613, i32 2348, i32 4351, i32 393, i32 4421, i32 6386, i32 8158], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__const.main.a = global [256 x i32] [i32 8630, i32 2371, i32 2106, i32 7047, i32 9475, i32 9554, i32 7281, i32 6704, i32 1253, i32 2157, i32 2702, i32 5221, i32 549, i32 5266, i32 7151, i32 8215, i32 8118, i32 7034, i32 2088, i32 9135, i32 3332, i32 6269, i32 5470, i32 1887, i32 9323, i32 8378, i32 8971, i32 7937, i32 9515, i32 3476, i32 1646, i32 3823, i32 555, i32 2036, i32 5010, i32 2633, i32 6890, i32 6000, i32 3503, i32 4297, i32 8403, i32 1966, i32 4584, i32 296, i32 322, i32 5328, i32 9540, i32 4442, i32 8455, i32 1645, i32 918, i32 2763, i32 4392, i32 6305, i32 3658, i32 8480, i32 8317, i32 6815, i32 5122, i32 5437, i32 2203, i32 511, i32 5744, i32 7766, i32 2356, i32 2207, i32 9796, i32 3578, i32 7374, i32 2888, i32 9291, i32 7479, i32 5700, i32 1726, i32 1181, i32 4994, i32 9697, i32 5623, i32 9487, i32 8533, i32 5359, i32 5216, i32 1, i32 6160, i32 8711, i32 8220, i32 6721, i32 4251, i32 288, i32 1950, i32 4118, i32 8633, i32 7052, i32 5668, i32 9958, i32 9749, i32 3057, i32 163, i32 5420, i32 7122, i32 3599, i32 2192, i32 5139, i32 4181, i32 6943, i32 16, i32 2609, i32 144, i32 3845, i32 5201, i32 8248, i32 5315, i32 4539, i32 8064, i32 671, i32 7867, i32 3556, i32 6717, i32 5041, i32 7526, i32 2624, i32 2612, i32 1269, i32 6184, i32 5584, i32 4656, i32 4378, i32 1243, i32 7797, i32 9670, i32 3304, i32 5750, i32 3355, i32 8214, i32 2352, i32 5843, i32 770, i32 7960, i32 3927, i32 9337, i32 6192, i32 4939, i32 4203, i32 9404, i32 3437, i32 4012, i32 8768, i32 6298, i32 9854, i32 7487, i32 537, i32 6765, i32 8956, i32 292, i32 6868, i32 8865, i32 2349, i32 1272, i32 2426, i32 5098, i32 1587, i32 7189, i32 7336, i32 2419, i32 3763, i32 5662, i32 9479, i32 3154, i32 33, i32 4661, i32 4990, i32 7170, i32 6230, i32 5919, i32 2969, i32 1882, i32 4291, i32 6145, i32 9519, i32 2130, i32 3981, i32 6171, i32 7298, i32 8669, i32 1915, i32 1826, i32 520, i32 2619, i32 2685, i32 9032, i32 7117, i32 7485, i32 3923, i32 4877, i32 6452, i32 1773, i32 2854, i32 3782, i32 448, i32 6425, i32 1996, i32 1688, i32 7995, i32 8573, i32 7790, i32 4629, i32 3495, i32 3746, i32 8733, i32 7781, i32 8415, i32 526, i32 6759, i32 9079, i32 8943, i32 3982, i32 6409, i32 8583, i32 3020, i32 4513, i32 5015, i32 7657, i32 6111, i32 3815, i32 9629, i32 1856, i32 1560, i32 8332, i32 5885, i32 9471, i32 1330, i32 7337, i32 7486, i32 9288, i32 7380, i32 524, i32 4007, i32 9589, i32 9680, i32 4558, i32 3996, i32 9331, i32 2769, i32 4166, i32 1952, i32 8244, i32 434, i32 5746, i32 7112, i32 7613, i32 2348, i32 4351, i32 393, i32 4421, i32 6386, i32 8158]
@.str = global [4 x i8] c"%d\0A\00"
@alloca = global [256 x i32] zeroinitializer
@alloca.1 = global [256 x i32] zeroinitializer

; Function Attrs: norecurse nounwind ssp uwtable
define void @ms_mergesort(i32* nocapture) local_unnamed_addr #0 {
  %2 = alloca [256 x i32], align 16, !partition !3
  %3 = alloca [256 x i32], align 16, !partition !4
  br label %4

; <label>:4:                                      ; preds = %154, %1
  %5 = phi i32 [ 1, %1 ], [ %155, %154 ], !partition !3
  %6 = shl i32 %5, 1, !partition !3
  %7 = sext i32 %6 to i64, !partition !4
  %8 = zext i32 %6 to i64, !partition !3
  %9 = mul i32 %5, -2, !partition !3
  %10 = zext i32 %6 to i64, !partition !3
  %11 = sext i32 %5 to i64, !partition !4
  %12 = sext i32 %5 to i64, !partition !4
  %13 = icmp sgt i32 %5, 0, !partition !4
  br label %14

; <label>:14:                                     ; preds = %147, %4
  %15 = phi i64 [ %7, %4 ], [ %153, %147 ], !partition !3
  %16 = phi i32 [ %5, %4 ], [ %152, %147 ], !partition !3
  %17 = phi i64 [ 0, %4 ], [ %151, %147 ], !partition !3
  %18 = phi i64 [ 0, %4 ], [ %148, %147 ], !partition !3
  %19 = phi i32 [ 0, %4 ], [ %149, %147 ], !partition !3
  %20 = sext i32 %16 to i64, !partition !3
  %21 = mul nsw i64 %17, %7, !partition !3
  %22 = getelementptr [256 x i32], [256 x i32]* %2, i64 0, i64 %21, !partition !3
  %23 = bitcast i32* %22 to i8*, !partition !3
  %24 = getelementptr i32, i32* %0, i64 %21, !partition !3
  %25 = bitcast i32* %24 to i8*, !partition !3
  %26 = mul nuw i64 %17, %10, !partition !3
  %27 = trunc i64 %26 to i32, !partition !3
  %28 = add i32 %5, %27, !partition !3
  %29 = trunc i64 %26 to i32, !partition !3
  %30 = or i32 %29, 1, !partition !3
  %31 = icmp sgt i32 %28, %30, !partition !3
  %32 = select i1 %31, i32 %28, i32 %30, !partition !3
  %33 = trunc i64 %17 to i32, !partition !3
  %34 = mul i32 %9, %33, !partition !3
  %35 = add i32 %34, -1, !partition !3
  %36 = add i32 %32, %35, !partition !3
  %37 = zext i32 %36 to i64, !partition !3
  %38 = shl nuw nsw i64 %37, 2, !partition !3
  %39 = add nuw nsw i64 %38, 4, !partition !3
  %40 = sext i32 %16 to i64, !partition !3
  %41 = mul nsw i64 %17, %7, !partition !3
  %42 = getelementptr [256 x i32], [256 x i32]* %3, i64 0, i64 %41, !partition !3
  %43 = bitcast i32* %42 to i8*, !partition !3
  %44 = getelementptr i32, i32* %0, i64 %41, !partition !3
  %45 = bitcast i32* %44 to i8*, !partition !3
  %46 = mul nuw i64 %17, %8, !partition !3
  %47 = trunc i64 %46 to i32, !partition !3
  %48 = add i32 %5, %47, !partition !3
  %49 = trunc i64 %46 to i32, !partition !3
  %50 = or i32 %49, 1, !partition !3
  %51 = icmp sgt i32 %48, %50, !partition !3
  %52 = select i1 %51, i32 %48, i32 %50, !partition !3
  %53 = trunc i64 %17 to i32, !partition !3
  %54 = mul i32 %9, %53, !partition !3
  %55 = add i32 %54, -1, !partition !3
  %56 = add i32 %52, %55, !partition !3
  %57 = zext i32 %56 to i64, !partition !3
  %58 = shl nuw nsw i64 %57, 2, !partition !3
  %59 = add nuw nsw i64 %58, 4, !partition !3
  %60 = add nsw i64 %18, %11, !partition !3
  %61 = add nsw i32 %19, %5, !partition !3
  %62 = add nsw i64 %60, %12, !partition !3
  %63 = add nsw i32 %61, %5, !partition !3
  %64 = add nsw i32 %63, -1, !partition !3
  %65 = icmp slt i64 %62, 257, !partition !3
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %14
  br i1 %13, label %108, label %109

; <label>:67:                                     ; preds = %14
  br i1 %13, label %68, label %71

; <label>:68:                                     ; preds = %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 %25, i64 %39, i1 false), !partition !3
  %69 = trunc i64 %60 to i32, !partition !4
  %70 = add nsw i32 %64, %69, !partition !4
  br label %77

; <label>:71:                                     ; preds = %77, %67
  %72 = icmp slt i64 %18, %62, !partition !3
  br i1 %72, label %73, label %147

; <label>:73:                                     ; preds = %71
  %74 = trunc i64 %62 to i32, !partition !3
  %75 = add i32 %74, -1, !partition !3
  %76 = trunc i64 %18 to i32, !partition !4
  br label %87

; <label>:77:                                     ; preds = %77, %68
  %78 = phi i64 [ %20, %68 ], [ %85, %77 ], !partition !3
  %79 = getelementptr inbounds i32, i32* %0, i64 %78, !partition !3
  %80 = load i32, i32* %79, align 4, !tbaa !5, !partition !3
  %81 = trunc i64 %78 to i32, !partition !3
  %82 = sub i32 %70, %81, !partition !3
  %83 = sext i32 %82 to i64, !partition !3
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %83, !partition !3
  store i32 %80, i32* %84, align 4, !tbaa !5, !partition !3
  %85 = add nsw i64 %78, 1, !partition !3
  %86 = icmp slt i64 %85, %62, !partition !3
  br i1 %86, label %77, label %71

; <label>:87:                                     ; preds = %103, %73
  %88 = phi i64 [ %18, %73 ], [ %106, %103 ], !partition !4
  %89 = phi i32 [ %76, %73 ], [ %105, %103 ], !partition !4
  %90 = phi i32 [ %75, %73 ], [ %104, %103 ], !partition !3
  %91 = sext i32 %90 to i64, !partition !3
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %91, !partition !3
  %93 = load i32, i32* %92, align 4, !tbaa !5, !partition !3
  %94 = sext i32 %89 to i64, !partition !4
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %94, !partition !4
  %96 = load i32, i32* %95, align 4, !tbaa !5, !partition !4
  %97 = icmp slt i32 %93, %96, !partition !3
  %98 = getelementptr inbounds i32, i32* %0, i64 %88, !partition !4
  br i1 %97, label %99, label %101

; <label>:99:                                     ; preds = %87
  store i32 %93, i32* %98, align 4, !tbaa !5, !partition !3
  %100 = add nsw i32 %90, -1, !partition !4
  br label %103

; <label>:101:                                    ; preds = %87
  store i32 %96, i32* %98, align 4, !tbaa !5, !partition !3
  %102 = add nsw i32 %89, 1, !partition !4
  br label %103

; <label>:103:                                    ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %90, %101 ], !partition !4
  %105 = phi i32 [ %89, %99 ], [ %102, %101 ], !partition !4
  %106 = add nsw i64 %88, 1, !partition !3
  %107 = icmp eq i64 %106, %15, !partition !3
  br i1 %107, label %147, label %87

; <label>:108:                                    ; preds = %66
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %45, i64 %59, i1 false), !partition !3
  br label %109

; <label>:109:                                    ; preds = %108, %66
  %110 = icmp slt i64 %60, 257, !partition !3
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %109
  %112 = add i64 %60, 256, !partition !3
  br label %115

; <label>:113:                                    ; preds = %115, %109
  %114 = trunc i64 %18 to i32, !partition !3
  br label %126

; <label>:115:                                    ; preds = %115, %111
  %116 = phi i64 [ %40, %111 ], [ %123, %115 ], !partition !3
  %117 = getelementptr inbounds i32, i32* %0, i64 %116, !partition !3
  %118 = load i32, i32* %117, align 4, !tbaa !5, !partition !3
  %119 = sub i64 %112, %116, !partition !3
  %120 = shl i64 %119, 32, !partition !3
  %121 = ashr exact i64 %120, 32, !partition !3
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %121, !partition !3
  store i32 %118, i32* %122, align 4, !tbaa !5, !partition !3
  %123 = add nsw i64 %116, 1, !partition !3
  %124 = trunc i64 %123 to i32, !partition !3
  %125 = icmp eq i32 %124, 257, !partition !3
  br i1 %125, label %113, label %115

; <label>:126:                                    ; preds = %142, %113
  %127 = phi i64 [ %18, %113 ], [ %145, %142 ], !partition !3
  %128 = phi i32 [ 256, %113 ], [ %144, %142 ], !partition !3
  %129 = phi i32 [ %114, %113 ], [ %143, %142 ], !partition !3
  %130 = sext i32 %128 to i64, !partition !3
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %130, !partition !3
  %132 = load i32, i32* %131, align 4, !tbaa !5, !partition !3
  %133 = sext i32 %129 to i64, !partition !4
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %133, !partition !4
  %135 = load i32, i32* %134, align 4, !tbaa !5, !partition !4
  %136 = icmp slt i32 %132, %135, !partition !4
  %137 = getelementptr inbounds i32, i32* %0, i64 %127, !partition !3
  br i1 %136, label %138, label %140

; <label>:138:                                    ; preds = %126
  store i32 %132, i32* %137, align 4, !tbaa !5, !partition !3
  %139 = add nsw i32 %128, -1, !partition !4
  br label %142

; <label>:140:                                    ; preds = %126
  store i32 %135, i32* %137, align 4, !tbaa !5, !partition !3
  %141 = add nsw i32 %129, 1, !partition !4
  br label %142

; <label>:142:                                    ; preds = %140, %138
  %143 = phi i32 [ %129, %138 ], [ %141, %140 ], !partition !4
  %144 = phi i32 [ %139, %138 ], [ %128, %140 ], !partition !4
  %145 = add nsw i64 %127, 1, !partition !3
  %146 = icmp eq i64 %145, 257, !partition !3
  br i1 %146, label %147, label %126

; <label>:147:                                    ; preds = %142, %103, %71
  %148 = add nsw i64 %18, %7, !partition !3
  %149 = add nsw i32 %19, %6, !partition !4
  %150 = icmp slt i64 %148, 256, !partition !4
  %151 = add nuw nsw i64 %17, 1, !partition !3
  %152 = add i32 %16, %6, !partition !4
  %153 = add i64 %15, %7, !partition !3
  br i1 %150, label %14, label %154

; <label>:154:                                    ; preds = %147
  %155 = shl nsw i32 %5, 1, !partition !3
  %156 = icmp slt i32 %5, 128, !partition !4
  br i1 %156, label %4, label %157

; <label>:157:                                    ; preds = %154
  ret void, !partition !3
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #2 {
  %3 = alloca [256 x i32], align 16
  %4 = bitcast [256 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %4, i8* align 16 bitcast ([256 x i32]* @__const.main.a.2 to i8*), i64 1024, i1 false)
  %5 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  call void @replace_ms_mergesort(i32* nonnull %5)
  br label %6

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !5
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 256
  br i1 %12, label %13, label %6

; <label>:13:                                     ; preds = %6
  ret i32 0
}

define void @replace_ms_mergesort(i32*) {
entry:
  %1 = call i8* @init()
  %call_partitioned_functions = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %1)
  %send_alloca = alloca i32*, !reason !9
  store i32* %0, i32** %send_alloca, !reason !9
  %send_cast = bitcast i32** %send_alloca to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32*, i1, i32 }* @comms_5 to i64), i8* %1), !reason !9
  %send_alloca1 = alloca i32*, !reason !9
  store i32* %0, i32** %send_alloca1, !reason !9
  %send_cast2 = bitcast i32** %send_alloca1 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32*, i1, i32 }* @comms_19 to i64), i8* %1), !reason !9
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

define void @ms_mergesort_0(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ i32*, i1, i32 }* @comms_5 to i64), i8* %0), !reason !9
  %bitcast35 = bitcast i8* %argument to i32**, !reason !9
  %receive_load36 = load i32*, i32** %bitcast35, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_5 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  br label %l

l:                                                ; preds = %l22, %entry
  %new_phi = phi i32 [ 1, %entry ], [ %89, %l22 ]
  %1 = shl i32 %new_phi, 1, !partition !3
  %send_alloca = alloca i32, !reason !10
  store i32 %1, i32* %send_alloca, !reason !10
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_0 to i64), i8* %0), !reason !10
  %2 = zext i32 %1 to i64, !partition !3
  %3 = mul i32 %new_phi, -2, !partition !3
  %4 = zext i32 %1 to i64, !partition !3
  %send_alloca24 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca24, !reason !10
  %send_cast25 = bitcast i32* %send_alloca24 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast25, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i8* %0), !reason !10
  %send_alloca26 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca26, !reason !10
  %send_cast27 = bitcast i32* %send_alloca26 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast27, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i8* %0), !reason !10
  %send_alloca28 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca28, !reason !10
  %send_cast29 = bitcast i32* %send_alloca28 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast29, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i8* %0), !reason !10
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i8* %0), !reason !11
  %bitcast107 = bitcast i8* %repair_phi to i64*, !reason !11
  %receive_load108 = load i64, i64* %bitcast107, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !11
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi30 = phi i64 [ %receive_load108, %l ], [ %88, %l21 ]
  %new_phi31 = phi i32 [ %new_phi, %l ], [ %receive_load111, %l21 ]
  %new_phi32 = phi i64 [ 0, %l ], [ %87, %l21 ]
  %new_phi33 = phi i64 [ 0, %l ], [ %86, %l21 ]
  %new_phi34 = phi i32 [ 0, %l ], [ %receive_load114, %l21 ]
  %5 = sext i32 %new_phi31 to i64, !partition !3
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i8* %0), !reason !10
  %bitcast = bitcast i8* %receive to i64*, !reason !10
  %receive_load = load i64, i64* %bitcast, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %6 = mul nsw i64 %new_phi32, %receive_load, !partition !3
  %7 = getelementptr [256 x i32], [256 x i32]* @alloca, i64 0, i64 %6, !partition !3
  %8 = bitcast i32* %7 to i8*, !partition !3
  %9 = getelementptr i32, i32* %receive_load36, i64 %6, !partition !3
  %10 = bitcast i32* %9 to i8*, !partition !3
  %11 = mul nuw i64 %new_phi32, %4, !partition !3
  %12 = trunc i64 %11 to i32, !partition !3
  %13 = add i32 %new_phi, %12, !partition !3
  %14 = trunc i64 %11 to i32, !partition !3
  %15 = or i32 %14, 1, !partition !3
  %16 = icmp sgt i32 %13, %15, !partition !3
  %17 = select i1 %16, i32 %13, i32 %15, !partition !3
  %18 = trunc i64 %new_phi32 to i32, !partition !3
  %19 = mul i32 %3, %18, !partition !3
  %20 = add i32 %19, -1, !partition !3
  %21 = add i32 %17, %20, !partition !3
  %22 = zext i32 %21 to i64, !partition !3
  %23 = shl nuw nsw i64 %22, 2, !partition !3
  %24 = add nuw nsw i64 %23, 4, !partition !3
  %25 = sext i32 %new_phi31 to i64, !partition !3
  %receive37 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i8* %0), !reason !10
  %bitcast38 = bitcast i8* %receive37 to i64*, !reason !10
  %receive_load39 = load i64, i64* %bitcast38, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %26 = mul nsw i64 %new_phi32, %receive_load39, !partition !3
  %27 = getelementptr [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %26, !partition !3
  %28 = bitcast i32* %27 to i8*, !partition !3
  %29 = getelementptr i32, i32* %receive_load36, i64 %26, !partition !3
  %30 = bitcast i32* %29 to i8*, !partition !3
  %31 = mul nuw i64 %new_phi32, %2, !partition !3
  %32 = trunc i64 %31 to i32, !partition !3
  %33 = add i32 %new_phi, %32, !partition !3
  %34 = trunc i64 %31 to i32, !partition !3
  %35 = or i32 %34, 1, !partition !3
  %36 = icmp sgt i32 %33, %35, !partition !3
  %37 = select i1 %36, i32 %33, i32 %35, !partition !3
  %38 = trunc i64 %new_phi32 to i32, !partition !3
  %39 = mul i32 %3, %38, !partition !3
  %40 = add i32 %39, -1, !partition !3
  %41 = add i32 %37, %40, !partition !3
  %42 = zext i32 %41 to i64, !partition !3
  %43 = shl nuw nsw i64 %42, 2, !partition !3
  %44 = add nuw nsw i64 %43, 4, !partition !3
  %receive40 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !10
  %bitcast41 = bitcast i8* %receive40 to i64*, !reason !10
  %receive_load42 = load i64, i64* %bitcast41, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %45 = add nsw i64 %new_phi33, %receive_load42, !partition !3
  %46 = add nsw i32 %new_phi34, %new_phi, !partition !3
  %receive43 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !10
  %bitcast44 = bitcast i8* %receive43 to i64*, !reason !10
  %receive_load45 = load i64, i64* %bitcast44, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %47 = add nsw i64 %45, %receive_load45, !partition !3
  %48 = add nsw i32 %46, %new_phi, !partition !3
  %49 = add nsw i32 %48, -1, !partition !3
  %50 = icmp slt i64 %47, 257, !partition !3
  %send_alloca134 = alloca i1, !reason !12
  store i1 %50, i1* %send_alloca134, !reason !12
  %send_cast135 = bitcast i1* %send_alloca134 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast135, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_44 to i64), i8* %0), !reason !12
  br i1 %50, label %l3, label %l2

l2:                                               ; preds = %l1
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_45 to i64), i8* %0), !reason !11
  %bitcast136 = bitcast i8* %broadcast to i1*, !reason !11
  %receive_load137 = load i1, i1* %bitcast136, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_45 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load137, label %l12, label %l13

l3:                                               ; preds = %l1
  %broadcast147 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i8* %0), !reason !11
  %bitcast148 = bitcast i8* %broadcast147 to i1*, !reason !11
  %receive_load149 = load i1, i1* %bitcast148, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load149, label %l4, label %l5

l4:                                               ; preds = %l3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 4 %10, i64 %24, i1 false), !partition !3
  %send_alloca61 = alloca i64, !reason !10
  store i64 %45, i64* %send_alloca61, !reason !10
  %send_cast62 = bitcast i64* %send_alloca61 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast62, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_14 to i64), i8* %0), !reason !10
  %send_alloca63 = alloca i32, !reason !10
  store i32 %49, i32* %send_alloca63, !reason !10
  %send_cast64 = bitcast i32* %send_alloca63 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast64, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_15 to i64), i8* %0), !reason !10
  br label %l7

l5:                                               ; preds = %l7, %l3
  %51 = icmp slt i64 %new_phi33, %47, !partition !3
  %send_alloca152 = alloca i1, !reason !12
  store i1 %51, i1* %send_alloca152, !reason !12
  %send_cast153 = bitcast i1* %send_alloca152 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast153, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i8* %0), !reason !12
  br i1 %51, label %l6, label %l21

l6:                                               ; preds = %l5
  %52 = trunc i64 %47 to i32, !partition !3
  %53 = add i32 %52, -1, !partition !3
  %send_alloca69 = alloca i64, !reason !10
  store i64 %new_phi33, i64* %send_alloca69, !reason !10
  %send_cast70 = bitcast i64* %send_alloca69 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast70, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_17 to i64), i8* %0), !reason !10
  %send_alloca125 = alloca i64, !reason !13
  store i64 %new_phi33, i64* %send_alloca125, !reason !13
  %send_cast126 = bitcast i64* %send_alloca125 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast126, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_40 to i64), i8* %0), !reason !13
  br label %l8

l7:                                               ; preds = %l7, %l4
  %new_phi65 = phi i64 [ %5, %l4 ], [ %60, %l7 ]
  %54 = getelementptr inbounds i32, i32* %receive_load36, i64 %new_phi65, !partition !3
  %55 = load i32, i32* %54, align 4, !tbaa !5, !partition !3
  %56 = trunc i64 %new_phi65 to i32, !partition !3
  %receive66 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_16 to i64), i8* %0), !reason !10
  %bitcast67 = bitcast i8* %receive66 to i32*, !reason !10
  %receive_load68 = load i32, i32* %bitcast67, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_16 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %57 = sub i32 %receive_load68, %56, !partition !3
  %58 = sext i32 %57 to i64, !partition !3
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %58, !partition !3
  store i32 %55, i32* %59, align 4, !tbaa !5, !partition !3
  %60 = add nsw i64 %new_phi65, 1, !partition !3
  %61 = icmp slt i64 %60, %47, !partition !3
  %send_alloca150 = alloca i1, !reason !12
  store i1 %61, i1* %send_alloca150, !reason !12
  %send_cast151 = bitcast i1* %send_alloca150 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast151, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i8* %0), !reason !12
  br i1 %61, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi71 = phi i32 [ %53, %l6 ], [ %receive_load131, %l11 ]
  %62 = sext i32 %new_phi71 to i64, !partition !3
  %63 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %62, !partition !3
  %64 = load i32, i32* %63, align 4, !tbaa !5, !partition !3
  %receive72 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_18 to i64), i8* %0), !reason !10
  %bitcast73 = bitcast i8* %receive72 to i32*, !reason !10
  %receive_load74 = load i32, i32* %bitcast73, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_18 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %65 = icmp slt i32 %64, %receive_load74, !partition !3
  %send_alloca154 = alloca i1, !reason !12
  store i1 %65, i1* %send_alloca154, !reason !12
  %send_cast155 = bitcast i1* %send_alloca154 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast155, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i8* %0), !reason !12
  br i1 %65, label %l9, label %l10

l9:                                               ; preds = %l8
  %receive81 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32*, i1, i32 }* @comms_22 to i64), i8* %0), !reason !10
  %bitcast82 = bitcast i8* %receive81 to i32**, !reason !10
  %receive_load83 = load i32*, i32** %bitcast82, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_22 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !10
  store i32 %64, i32* %receive_load83, align 4, !tbaa !5, !partition !3
  %send_alloca84 = alloca i32, !reason !10
  store i32 %new_phi71, i32* %send_alloca84, !reason !10
  %send_cast85 = bitcast i32* %send_alloca84 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast85, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_23 to i64), i8* %0), !reason !10
  br label %l11

l10:                                              ; preds = %l8
  %receive75 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_20 to i64), i8* %0), !reason !10
  %bitcast76 = bitcast i8* %receive75 to i32*, !reason !10
  %receive_load77 = load i32, i32* %bitcast76, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_20 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %receive78 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32*, i1, i32 }* @comms_21 to i64), i8* %0), !reason !10
  %bitcast79 = bitcast i8* %receive78 to i32**, !reason !10
  %receive_load80 = load i32*, i32** %bitcast79, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_21 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !10
  store i32 %receive_load77, i32* %receive_load80, align 4, !tbaa !5, !partition !3
  %send_alloca132 = alloca i32, !reason !13
  store i32 %new_phi71, i32* %send_alloca132, !reason !13
  %send_cast133 = bitcast i32* %send_alloca132 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast133, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_43 to i64), i8* %0), !reason !13
  br label %l11

l11:                                              ; preds = %l10, %l9
  %receive86 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i8* %0), !reason !10
  %bitcast87 = bitcast i8* %receive86 to i64*, !reason !10
  %receive_load88 = load i64, i64* %bitcast87, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %66 = add nsw i64 %receive_load88, 1, !partition !3
  %67 = icmp eq i64 %66, %new_phi30, !partition !3
  %send_alloca127 = alloca i64, !reason !13
  store i64 %66, i64* %send_alloca127, !reason !13
  %send_cast128 = bitcast i64* %send_alloca127 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast128, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i8* %0), !reason !13
  %repair_phi129 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_42 to i64), i8* %0), !reason !11
  %bitcast130 = bitcast i8* %repair_phi129 to i32*, !reason !11
  %receive_load131 = load i32, i32* %bitcast130, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_42 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !11
  %send_alloca156 = alloca i1, !reason !12
  store i1 %67, i1* %send_alloca156, !reason !12
  %send_cast157 = bitcast i1* %send_alloca156 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast157, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_54 to i64), i8* %0), !reason !12
  br i1 %67, label %l21, label %l8

l12:                                              ; preds = %l2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 4 %30, i64 %44, i1 false), !partition !3
  br label %l13

l13:                                              ; preds = %l12, %l2
  %68 = icmp slt i64 %45, 257, !partition !3
  %send_alloca138 = alloca i1, !reason !12
  store i1 %68, i1* %send_alloca138, !reason !12
  %send_cast139 = bitcast i1* %send_alloca138 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast139, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_46 to i64), i8* %0), !reason !12
  br i1 %68, label %l14, label %l15

l14:                                              ; preds = %l13
  %69 = add i64 %45, 256, !partition !3
  br label %l16

l15:                                              ; preds = %l16, %l13
  %70 = trunc i64 %new_phi33 to i32, !partition !3
  br label %l17

l16:                                              ; preds = %l16, %l14
  %new_phi46 = phi i64 [ %25, %l14 ], [ %77, %l16 ]
  %71 = getelementptr inbounds i32, i32* %receive_load36, i64 %new_phi46, !partition !3
  %72 = load i32, i32* %71, align 4, !tbaa !5, !partition !3
  %73 = sub i64 %69, %new_phi46, !partition !3
  %74 = shl i64 %73, 32, !partition !3
  %75 = ashr exact i64 %74, 32, !partition !3
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %75, !partition !3
  store i32 %72, i32* %76, align 4, !tbaa !5, !partition !3
  %77 = add nsw i64 %new_phi46, 1, !partition !3
  %78 = trunc i64 %77 to i32, !partition !3
  %79 = icmp eq i32 %78, 257, !partition !3
  %send_alloca140 = alloca i1, !reason !12
  store i1 %79, i1* %send_alloca140, !reason !12
  %send_cast141 = bitcast i1* %send_alloca140 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast141, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i8* %0), !reason !12
  br i1 %79, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi47 = phi i64 [ %new_phi33, %l15 ], [ %84, %l20 ]
  %new_phi48 = phi i32 [ 256, %l15 ], [ %receive_load117, %l20 ]
  %new_phi49 = phi i32 [ %70, %l15 ], [ %receive_load120, %l20 ]
  %80 = sext i32 %new_phi48 to i64, !partition !3
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %80, !partition !3
  %82 = load i32, i32* %81, align 4, !tbaa !5, !partition !3
  %send_alloca50 = alloca i32, !reason !10
  store i32 %new_phi49, i32* %send_alloca50, !reason !10
  %send_cast51 = bitcast i32* %send_alloca50 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast51, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_9 to i64), i8* %0), !reason !10
  %send_alloca52 = alloca i32, !reason !10
  store i32 %82, i32* %send_alloca52, !reason !10
  %send_cast53 = bitcast i32* %send_alloca52 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast53, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i8* %0), !reason !10
  %83 = getelementptr inbounds i32, i32* %receive_load36, i64 %new_phi47, !partition !3
  %broadcast142 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_48 to i64), i8* %0), !reason !11
  %bitcast143 = bitcast i8* %broadcast142 to i1*, !reason !11
  %receive_load144 = load i1, i1* %bitcast143, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_48 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load144, label %l18, label %l19

l18:                                              ; preds = %l17
  store i32 %82, i32* %83, align 4, !tbaa !5, !partition !3
  %send_alloca59 = alloca i32, !reason !10
  store i32 %new_phi48, i32* %send_alloca59, !reason !10
  %send_cast60 = bitcast i32* %send_alloca59 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast60, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_13 to i64), i8* %0), !reason !10
  %send_alloca121 = alloca i32, !reason !13
  store i32 %new_phi49, i32* %send_alloca121, !reason !13
  %send_cast122 = bitcast i32* %send_alloca121 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast122, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_38 to i64), i8* %0), !reason !13
  br label %l20

l19:                                              ; preds = %l17
  %receive54 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i8* %0), !reason !10
  %bitcast55 = bitcast i8* %receive54 to i32*, !reason !10
  %receive_load56 = load i32, i32* %bitcast55, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  store i32 %receive_load56, i32* %83, align 4, !tbaa !5, !partition !3
  %send_alloca57 = alloca i32, !reason !10
  store i32 %new_phi49, i32* %send_alloca57, !reason !10
  %send_cast58 = bitcast i32* %send_alloca57 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast58, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_12 to i64), i8* %0), !reason !10
  %send_alloca123 = alloca i32, !reason !13
  store i32 %new_phi48, i32* %send_alloca123, !reason !13
  %send_cast124 = bitcast i32* %send_alloca123 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast124, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_39 to i64), i8* %0), !reason !13
  br label %l20

l20:                                              ; preds = %l19, %l18
  %84 = add nsw i64 %new_phi47, 1, !partition !3
  %85 = icmp eq i64 %84, 257, !partition !3
  %repair_phi115 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_36 to i64), i8* %0), !reason !11
  %bitcast116 = bitcast i8* %repair_phi115 to i32*, !reason !11
  %receive_load117 = load i32, i32* %bitcast116, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_36 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !11
  %repair_phi118 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_37 to i64), i8* %0), !reason !11
  %bitcast119 = bitcast i8* %repair_phi118 to i32*, !reason !11
  %receive_load120 = load i32, i32* %bitcast119, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_37 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !11
  %send_alloca145 = alloca i1, !reason !12
  store i1 %85, i1* %send_alloca145, !reason !12
  %send_cast146 = bitcast i1* %send_alloca145 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast146, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i8* %0), !reason !12
  br i1 %85, label %l21, label %l17

l21:                                              ; preds = %l20, %l11, %l5
  %receive89 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i8* %0), !reason !10
  %bitcast90 = bitcast i8* %receive89 to i64*, !reason !10
  %receive_load91 = load i64, i64* %bitcast90, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %86 = add nsw i64 %new_phi33, %receive_load91, !partition !3
  %send_alloca92 = alloca i32, !reason !10
  store i32 %new_phi34, i32* %send_alloca92, !reason !10
  %send_cast93 = bitcast i32* %send_alloca92 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast93, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_26 to i64), i8* %0), !reason !10
  %send_alloca94 = alloca i32, !reason !10
  store i32 %1, i32* %send_alloca94, !reason !10
  %send_cast95 = bitcast i32* %send_alloca94 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast95, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_27 to i64), i8* %0), !reason !10
  %send_alloca96 = alloca i64, !reason !10
  store i64 %86, i64* %send_alloca96, !reason !10
  %send_cast97 = bitcast i64* %send_alloca96 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast97, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i8* %0), !reason !10
  %87 = add nuw nsw i64 %new_phi32, 1, !partition !3
  %send_alloca98 = alloca i32, !reason !10
  store i32 %new_phi31, i32* %send_alloca98, !reason !10
  %send_cast99 = bitcast i32* %send_alloca98 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast99, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_29 to i64), i8* %0), !reason !10
  %send_alloca100 = alloca i32, !reason !10
  store i32 %1, i32* %send_alloca100, !reason !10
  %send_cast101 = bitcast i32* %send_alloca100 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast101, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_30 to i64), i8* %0), !reason !10
  %receive102 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i8* %0), !reason !10
  %bitcast103 = bitcast i8* %receive102 to i64*, !reason !10
  %receive_load104 = load i64, i64* %bitcast103, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %88 = add i64 %new_phi30, %receive_load104, !partition !3
  %repair_phi109 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_34 to i64), i8* %0), !reason !11
  %bitcast110 = bitcast i8* %repair_phi109 to i32*, !reason !11
  %receive_load111 = load i32, i32* %bitcast110, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_34 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !11
  %repair_phi112 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_35 to i64), i8* %0), !reason !11
  %bitcast113 = bitcast i8* %repair_phi112 to i32*, !reason !11
  %receive_load114 = load i32, i32* %bitcast113, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_35 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !11
  %broadcast158 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_55 to i64), i8* %0), !reason !11
  %bitcast159 = bitcast i8* %broadcast158 to i1*, !reason !11
  %receive_load160 = load i1, i1* %bitcast159, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_55 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load160, label %l1, label %l22

l22:                                              ; preds = %l21
  %89 = shl nsw i32 %new_phi, 1, !partition !3
  %send_alloca105 = alloca i32, !reason !10
  store i32 %new_phi, i32* %send_alloca105, !reason !10
  %send_cast106 = bitcast i32* %send_alloca105 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast106, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_32 to i64), i8* %0), !reason !10
  %broadcast161 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_56 to i64), i8* %0), !reason !11
  %bitcast162 = bitcast i8* %broadcast161 to i1*, !reason !11
  %receive_load163 = load i1, i1* %bitcast162, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_56 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load163, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

define void @ms_mergesort_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ i32*, i1, i32 }* @comms_19 to i64), i8* %0), !reason !9
  %bitcast69 = bitcast i8* %argument to i32**, !reason !9
  %receive_load70 = load i32*, i32** %bitcast69, !reason !9
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_19 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !9
  br label %l

l:                                                ; preds = %l22, %entry
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_0 to i64), i8* %0), !reason !10
  %bitcast = bitcast i8* %receive to i32*, !reason !10
  %receive_load = load i32, i32* %bitcast, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_0 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %1 = sext i32 %receive_load to i64, !partition !4
  %receive24 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i8* %0), !reason !10
  %bitcast25 = bitcast i8* %receive24 to i32*, !reason !10
  %receive_load26 = load i32, i32* %bitcast25, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %2 = sext i32 %receive_load26 to i64, !partition !4
  %receive27 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i8* %0), !reason !10
  %bitcast28 = bitcast i8* %receive27 to i32*, !reason !10
  %receive_load29 = load i32, i32* %bitcast28, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %3 = sext i32 %receive_load29 to i64, !partition !4
  %receive30 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i8* %0), !reason !10
  %bitcast31 = bitcast i8* %receive30 to i32*, !reason !10
  %receive_load32 = load i32, i32* %bitcast31, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %4 = icmp sgt i32 %receive_load32, 0, !partition !4
  %send_alloca106 = alloca i64, !reason !13
  store i64 %1, i64* %send_alloca106, !reason !13
  %send_cast107 = bitcast i64* %send_alloca106 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast107, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_33 to i64), i8* %0), !reason !13
  br label %l1

l1:                                               ; preds = %l21, %l
  %send_alloca = alloca i64, !reason !10
  store i64 %1, i64* %send_alloca, !reason !10
  %send_cast = bitcast i64* %send_alloca to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i8* %0), !reason !10
  %send_alloca33 = alloca i64, !reason !10
  store i64 %1, i64* %send_alloca33, !reason !10
  %send_cast34 = bitcast i64* %send_alloca33 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast34, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i8* %0), !reason !10
  %send_alloca35 = alloca i64, !reason !10
  store i64 %2, i64* %send_alloca35, !reason !10
  %send_cast36 = bitcast i64* %send_alloca35 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast36, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_7 to i64), i8* %0), !reason !10
  %send_alloca37 = alloca i64, !reason !10
  store i64 %3, i64* %send_alloca37, !reason !10
  %send_cast38 = bitcast i64* %send_alloca37 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast38, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !10
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_44 to i64), i8* %0), !reason !11
  %bitcast132 = bitcast i8* %broadcast to i1*, !reason !11
  %receive_load133 = load i1, i1* %bitcast132, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_44 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load133, label %l3, label %l2

l2:                                               ; preds = %l1
  %send_alloca134 = alloca i1, !reason !12
  store i1 %4, i1* %send_alloca134, !reason !12
  %send_cast135 = bitcast i1* %send_alloca134 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast135, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_45 to i64), i8* %0), !reason !12
  br i1 %4, label %l12, label %l13

l3:                                               ; preds = %l1
  %send_alloca147 = alloca i1, !reason !12
  store i1 %4, i1* %send_alloca147, !reason !12
  %send_cast148 = bitcast i1* %send_alloca147 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast148, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_50 to i64), i8* %0), !reason !12
  br i1 %4, label %l4, label %l5

l4:                                               ; preds = %l3
  %receive54 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_14 to i64), i8* %0), !reason !10
  %bitcast55 = bitcast i8* %receive54 to i64*, !reason !10
  %receive_load56 = load i64, i64* %bitcast55, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_14 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %5 = trunc i64 %receive_load56 to i32, !partition !4
  %receive57 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_15 to i64), i8* %0), !reason !10
  %bitcast58 = bitcast i8* %receive57 to i32*, !reason !10
  %receive_load59 = load i32, i32* %bitcast58, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_15 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %6 = add nsw i32 %receive_load59, %5, !partition !4
  br label %l7

l5:                                               ; preds = %l7, %l3
  %broadcast152 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i8* %0), !reason !11
  %bitcast153 = bitcast i8* %broadcast152 to i1*, !reason !11
  %receive_load154 = load i1, i1* %bitcast153, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_52 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load154, label %l6, label %l21

l6:                                               ; preds = %l5
  %receive62 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_17 to i64), i8* %0), !reason !10
  %bitcast63 = bitcast i8* %receive62 to i64*, !reason !10
  %receive_load64 = load i64, i64* %bitcast63, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_17 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %7 = trunc i64 %receive_load64 to i32, !partition !4
  %repair_phi121 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_40 to i64), i8* %0), !reason !11
  %bitcast122 = bitcast i8* %repair_phi121 to i64*, !reason !11
  %receive_load123 = load i64, i64* %bitcast122, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_40 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !11
  br label %l8

l7:                                               ; preds = %l7, %l4
  %send_alloca60 = alloca i32, !reason !10
  store i32 %6, i32* %send_alloca60, !reason !10
  %send_cast61 = bitcast i32* %send_alloca60 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast61, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_16 to i64), i8* %0), !reason !10
  %broadcast149 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i8* %0), !reason !11
  %bitcast150 = bitcast i8* %broadcast149 to i1*, !reason !11
  %receive_load151 = load i1, i1* %bitcast150, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_51 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load151, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi65 = phi i64 [ %receive_load123, %l6 ], [ %receive_load126, %l11 ]
  %new_phi66 = phi i32 [ %7, %l6 ], [ %new_phi81, %l11 ]
  %8 = sext i32 %new_phi66 to i64, !partition !4
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %8, !partition !4
  %10 = load i32, i32* %9, align 4, !tbaa !5, !partition !4
  %send_alloca67 = alloca i32, !reason !10
  store i32 %10, i32* %send_alloca67, !reason !10
  %send_cast68 = bitcast i32* %send_alloca67 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast68, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_18 to i64), i8* %0), !reason !10
  %11 = getelementptr inbounds i32, i32* %receive_load70, i64 %new_phi65, !partition !4
  %broadcast155 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i8* %0), !reason !11
  %bitcast156 = bitcast i8* %broadcast155 to i1*, !reason !11
  %receive_load157 = load i1, i1* %bitcast156, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_53 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load157, label %l9, label %l10

l9:                                               ; preds = %l8
  %send_alloca75 = alloca i32*, !reason !10
  store i32* %11, i32** %send_alloca75, !reason !10
  %send_cast76 = bitcast i32** %send_alloca75 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast76, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32*, i1, i32 }* @comms_22 to i64), i8* %0), !reason !10
  %receive77 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_23 to i64), i8* %0), !reason !10
  %bitcast78 = bitcast i8* %receive77 to i32*, !reason !10
  %receive_load79 = load i32, i32* %bitcast78, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_23 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %12 = add nsw i32 %receive_load79, -1, !partition !4
  br label %l11

l10:                                              ; preds = %l8
  %send_alloca71 = alloca i32, !reason !10
  store i32 %10, i32* %send_alloca71, !reason !10
  %send_cast72 = bitcast i32* %send_alloca71 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast72, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_20 to i64), i8* %0), !reason !10
  %send_alloca73 = alloca i32*, !reason !10
  store i32* %11, i32** %send_alloca73, !reason !10
  %send_cast74 = bitcast i32** %send_alloca73 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast74, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32*, i1, i32 }* @comms_21 to i64), i8* %0), !reason !10
  %13 = add nsw i32 %new_phi66, 1, !partition !4
  %repair_phi129 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_43 to i64), i8* %0), !reason !11
  %bitcast130 = bitcast i8* %repair_phi129 to i32*, !reason !11
  %receive_load131 = load i32, i32* %bitcast130, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_43 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !11
  br label %l11

l11:                                              ; preds = %l10, %l9
  %new_phi80 = phi i32 [ %12, %l9 ], [ %receive_load131, %l10 ]
  %new_phi81 = phi i32 [ %new_phi66, %l9 ], [ %13, %l10 ]
  %send_alloca82 = alloca i64, !reason !10
  store i64 %new_phi65, i64* %send_alloca82, !reason !10
  %send_cast83 = bitcast i64* %send_alloca82 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast83, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_24 to i64), i8* %0), !reason !10
  %repair_phi124 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i8* %0), !reason !11
  %bitcast125 = bitcast i8* %repair_phi124 to i64*, !reason !11
  %receive_load126 = load i64, i64* %bitcast125, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_41 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !11
  %send_alloca127 = alloca i32, !reason !13
  store i32 %new_phi80, i32* %send_alloca127, !reason !13
  %send_cast128 = bitcast i32* %send_alloca127 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast128, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_42 to i64), i8* %0), !reason !13
  %broadcast158 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_54 to i64), i8* %0), !reason !11
  %bitcast159 = bitcast i8* %broadcast158 to i1*, !reason !11
  %receive_load160 = load i1, i1* %bitcast159, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_54 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load160, label %l21, label %l8

l12:                                              ; preds = %l2
  br label %l13

l13:                                              ; preds = %l12, %l2
  %broadcast136 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_46 to i64), i8* %0), !reason !11
  %bitcast137 = bitcast i8* %broadcast136 to i1*, !reason !11
  %receive_load138 = load i1, i1* %bitcast137, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_46 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load138, label %l14, label %l15

l14:                                              ; preds = %l13
  br label %l16

l15:                                              ; preds = %l16, %l13
  br label %l17

l16:                                              ; preds = %l16, %l14
  %broadcast139 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i8* %0), !reason !11
  %bitcast140 = bitcast i8* %broadcast139 to i1*, !reason !11
  %receive_load141 = load i1, i1* %bitcast140, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_47 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load141, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %receive39 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_9 to i64), i8* %0), !reason !10
  %bitcast40 = bitcast i8* %receive39 to i32*, !reason !10
  %receive_load41 = load i32, i32* %bitcast40, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_9 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %14 = sext i32 %receive_load41 to i64, !partition !4
  %15 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %14, !partition !4
  %16 = load i32, i32* %15, align 4, !tbaa !5, !partition !4
  %receive42 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i8* %0), !reason !10
  %bitcast43 = bitcast i8* %receive42 to i32*, !reason !10
  %receive_load44 = load i32, i32* %bitcast43, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %17 = icmp slt i32 %receive_load44, %16, !partition !4
  %send_alloca142 = alloca i1, !reason !12
  store i1 %17, i1* %send_alloca142, !reason !12
  %send_cast143 = bitcast i1* %send_alloca142 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast143, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_48 to i64), i8* %0), !reason !12
  br i1 %17, label %l18, label %l19

l18:                                              ; preds = %l17
  %receive50 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_13 to i64), i8* %0), !reason !10
  %bitcast51 = bitcast i8* %receive50 to i32*, !reason !10
  %receive_load52 = load i32, i32* %bitcast51, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_13 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %18 = add nsw i32 %receive_load52, -1, !partition !4
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_38 to i64), i8* %0), !reason !11
  %bitcast116 = bitcast i8* %repair_phi to i32*, !reason !11
  %receive_load117 = load i32, i32* %bitcast116, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_38 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !11
  br label %l20

l19:                                              ; preds = %l17
  %send_alloca45 = alloca i32, !reason !10
  store i32 %16, i32* %send_alloca45, !reason !10
  %send_cast46 = bitcast i32* %send_alloca45 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast46, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_11 to i64), i8* %0), !reason !10
  %receive47 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_12 to i64), i8* %0), !reason !10
  %bitcast48 = bitcast i8* %receive47 to i32*, !reason !10
  %receive_load49 = load i32, i32* %bitcast48, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_12 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %19 = add nsw i32 %receive_load49, 1, !partition !4
  %repair_phi118 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_39 to i64), i8* %0), !reason !11
  %bitcast119 = bitcast i8* %repair_phi118 to i32*, !reason !11
  %receive_load120 = load i32, i32* %bitcast119, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_39 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !11
  br label %l20

l20:                                              ; preds = %l19, %l18
  %new_phi = phi i32 [ %receive_load117, %l18 ], [ %19, %l19 ]
  %new_phi53 = phi i32 [ %18, %l18 ], [ %receive_load120, %l19 ]
  %send_alloca112 = alloca i32, !reason !13
  store i32 %new_phi53, i32* %send_alloca112, !reason !13
  %send_cast113 = bitcast i32* %send_alloca112 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast113, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_36 to i64), i8* %0), !reason !13
  %send_alloca114 = alloca i32, !reason !13
  store i32 %new_phi, i32* %send_alloca114, !reason !13
  %send_cast115 = bitcast i32* %send_alloca114 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast115, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_37 to i64), i8* %0), !reason !13
  %broadcast144 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i8* %0), !reason !11
  %bitcast145 = bitcast i8* %broadcast144 to i1*, !reason !11
  %receive_load146 = load i1, i1* %bitcast145, !reason !11
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_49 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !11
  br i1 %receive_load146, label %l21, label %l17

l21:                                              ; preds = %l20, %l11, %l5
  %send_alloca84 = alloca i64, !reason !10
  store i64 %1, i64* %send_alloca84, !reason !10
  %send_cast85 = bitcast i64* %send_alloca84 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast85, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_25 to i64), i8* %0), !reason !10
  %receive86 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_26 to i64), i8* %0), !reason !10
  %bitcast87 = bitcast i8* %receive86 to i32*, !reason !10
  %receive_load88 = load i32, i32* %bitcast87, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_26 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %receive89 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_27 to i64), i8* %0), !reason !10
  %bitcast90 = bitcast i8* %receive89 to i32*, !reason !10
  %receive_load91 = load i32, i32* %bitcast90, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_27 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %20 = add nsw i32 %receive_load88, %receive_load91, !partition !4
  %receive92 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i8* %0), !reason !10
  %bitcast93 = bitcast i8* %receive92 to i64*, !reason !10
  %receive_load94 = load i64, i64* %bitcast93, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %21 = icmp slt i64 %receive_load94, 256, !partition !4
  %receive95 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_29 to i64), i8* %0), !reason !10
  %bitcast96 = bitcast i8* %receive95 to i32*, !reason !10
  %receive_load97 = load i32, i32* %bitcast96, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_29 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %receive98 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_30 to i64), i8* %0), !reason !10
  %bitcast99 = bitcast i8* %receive98 to i32*, !reason !10
  %receive_load100 = load i32, i32* %bitcast99, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_30 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %22 = add i32 %receive_load97, %receive_load100, !partition !4
  %send_alloca101 = alloca i64, !reason !10
  store i64 %1, i64* %send_alloca101, !reason !10
  %send_cast102 = bitcast i64* %send_alloca101 to i8*, !reason !10
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast102, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i8* %0), !reason !10
  %send_alloca108 = alloca i32, !reason !13
  store i32 %22, i32* %send_alloca108, !reason !13
  %send_cast109 = bitcast i32* %send_alloca108 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast109, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_34 to i64), i8* %0), !reason !13
  %send_alloca110 = alloca i32, !reason !13
  store i32 %20, i32* %send_alloca110, !reason !13
  %send_cast111 = bitcast i32* %send_alloca110 to i8*, !reason !13
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast111, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_35 to i64), i8* %0), !reason !13
  %send_alloca161 = alloca i1, !reason !12
  store i1 %21, i1* %send_alloca161, !reason !12
  %send_cast162 = bitcast i1* %send_alloca161 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast162, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_55 to i64), i8* %0), !reason !12
  br i1 %21, label %l1, label %l22

l22:                                              ; preds = %l21
  %receive103 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_32 to i64), i8* %0), !reason !10
  %bitcast104 = bitcast i8* %receive103 to i32*, !reason !10
  %receive_load105 = load i32, i32* %bitcast104, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_32 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %23 = icmp slt i32 %receive_load105, 128, !partition !4
  %send_alloca163 = alloca i1, !reason !12
  store i1 %23, i1* %send_alloca163, !reason !12
  %send_cast164 = bitcast i1* %send_alloca163 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast164, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_56 to i64), i8* %0), !reason !12
  br i1 %23, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @volatile_copy(i8*, i8*, i32) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

; <label>:5:                                      ; preds = %5, %3
  %6 = phi i32 [ %12, %5 ], [ %2, %3 ]
  %7 = phi i8* [ %11, %5 ], [ %1, %3 ]
  %8 = phi i8* [ %10, %5 ], [ %0, %3 ]
  %9 = load volatile i8, i8* %7, align 1, !tbaa !14
  store volatile i8 %9, i8* %8, align 1, !tbaa !14
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  %11 = getelementptr inbounds i8, i8* %7, i64 1
  %12 = add i32 %6, -1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5

; <label>:14:                                     ; preds = %5, %3
  ret void
}

; Function Attrs: norecurse nounwind readnone ssp uwtable
define noalias i8* @init() #4 {
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #2 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !15
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !18
  tail call void %3(%struct.Context* %6) #7
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #2 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_t**
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %11

; <label>:11:                                     ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %22, %11 ]
  %13 = tail call i8* @malloc(i64 16) #8
  %14 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %12
  %15 = bitcast void (i8*)** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !19
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !15
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %12
  %21 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %20, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #7
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #5

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define void @join_partitioned_functions(i32, i8* nocapture readonly) #2 {
  %3 = bitcast i8* %1 to %struct._opaque_pthread_t**
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %14

; <label>:5:                                      ; preds = %2
  %6 = zext i32 %0 to i64
  br label %7

; <label>:7:                                      ; preds = %7, %5
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %3, i64 %8
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !19
  %11 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %10, i8** null) #7
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #6

; Function Attrs: norecurse nounwind ssp uwtable
define void @send(i8*, i32, i32, i64, i8* nocapture readnone) #0 {
  %6 = inttoptr i64 %3 to i8*
  %7 = sext i32 %1 to i64
  %8 = getelementptr i8, i8* %6, i64 %7
  br label %9

; <label>:9:                                      ; preds = %9, %5
  %10 = load volatile i8, i8* %8, align 1, !tbaa !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !14
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #0 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %7, label %10

; <label>:10:                                     ; preds = %7
  %11 = inttoptr i64 %1 to i8*
  ret i8* %11
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive(i32, i32, i64, i8* nocapture readnone) #0 {
  %5 = tail call i8* @_receive(i32 %0, i64 %2, i8* undef)
  ret i8* %5
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @free_comms(i64, i32, i8* nocapture readnone) #0 {
  %4 = inttoptr i64 %0 to i8*
  %5 = sext i32 %1 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  store volatile i8 0, i8* %6, align 1, !tbaa !14
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_argument(i8*, i32, i32, i64, i8* nocapture readnone) #0 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 %3, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_argument(i32, i64, i8* nocapture readnone) #0 {
  %4 = tail call i8* @_receive(i32 %0, i64 %1, i8* undef)
  ret i8* %4
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_return(i8*, i32, i8* nocapture readnone) local_unnamed_addr #0 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i64 ptrtoint ({ i1, i1, i32 }* @return_struct to i64), i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @receive_return(i32, i8* nocapture readnone) local_unnamed_addr #0 {
  %3 = tail call i8* @_receive(i32 %0, i64 ptrtoint ({ i1, i1, i32 }* @return_struct to i64), i8* undef)
  ret i8* %3
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @send_token(i32, i64, i8* nocapture readnone) local_unnamed_addr #0 {
  tail call void @send(i8* null, i32 0, i32 undef, i64 %1, i8* undef)
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @receive_token(i64, i8* nocapture readnone) local_unnamed_addr #0 {
  %3 = tail call i8* @_receive(i32 0, i64 %0, i8* undef)
  ret void
}

attributes #0 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"0"}
!4 = !{!"1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"replace argument"}
!10 = !{!"replace mapped op"}
!11 = !{!"receive"}
!12 = !{!"broadcast"}
!13 = !{!"repair_phi"}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"Closure", !17, i64 0, !17, i64 8}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!16, !17, i64 8}
!19 = !{!17, !17, i64 0}
