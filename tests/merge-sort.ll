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
@comms_3 = global { i64, i1, i32 } zeroinitializer
@comms_4 = global { i64, i1, i32 } zeroinitializer
@comms_5 = global { i32*, i1, i32 } zeroinitializer
@comms_6 = global { i64, i1, i32 } zeroinitializer
@comms_7 = global { i32*, i1, i32 } zeroinitializer
@comms_8 = global { i64, i1, i32 } zeroinitializer
@comms_9 = global { i64, i1, i32 } zeroinitializer
@comms_10 = global { i32, i1, i32 } zeroinitializer
@comms_11 = global { i64, i1, i32 } zeroinitializer
@comms_12 = global { i32, i1, i32 } zeroinitializer
@comms_13 = global { i32, i1, i32 } zeroinitializer
@comms_14 = global { i64, i1, i32 } zeroinitializer
@comms_15 = global { i32*, i1, i32 } zeroinitializer
@comms_16 = global { i64, i1, i32 } zeroinitializer
@comms_17 = global { i64, i1, i32 } zeroinitializer
@comms_18 = global { i64, i1, i32 } zeroinitializer
@comms_19 = global { i32, i1, i32 } zeroinitializer
@comms_20 = global { i32, i1, i32 } zeroinitializer
@comms_21 = global { i32, i1, i32 } zeroinitializer
@comms_22 = global { i32, i1, i32 } zeroinitializer
@comms_23 = global { i64, i1, i32 } zeroinitializer
@comms_24 = global { i32, i1, i32 } zeroinitializer
@comms_25 = global { i32, i1, i32 } zeroinitializer
@comms_26 = global { i8*, i1, i32 } zeroinitializer
@comms_27 = global { i8*, i1, i32 } zeroinitializer
@comms_28 = global { i64, i1, i32 } zeroinitializer
@comms_29 = global { i32*, i1, i32 } zeroinitializer
@comms_30 = global { i64, i1, i32 } zeroinitializer
@comms_31 = global { i64, i1, i32 } zeroinitializer
@comms_32 = global { i32, i1, i32 } zeroinitializer
@comms_33 = global { i32*, i1, i32 } zeroinitializer
@comms_34 = global { i32, i1, i32 } zeroinitializer
@comms_35 = global { i32, i1, i32 } zeroinitializer
@comms_36 = global { i8*, i1, i32 } zeroinitializer
@comms_37 = global { i64, i1, i32 } zeroinitializer
@comms_38 = global { i64, i1, i32 } zeroinitializer
@comms_39 = global { i64, i1, i32 } zeroinitializer
@comms_40 = global { i32, i1, i32 } zeroinitializer
@comms_41 = global { i32, i1, i32 } zeroinitializer
@comms_42 = global { i64, i1, i32 } zeroinitializer
@comms_43 = global { i64, i1, i32 } zeroinitializer
@comms_44 = global { i64, i1, i32 } zeroinitializer
@comms_45 = global { i32, i1, i32 } zeroinitializer
@comms_46 = global { i32, i1, i32 } zeroinitializer
@comms_47 = global { i32, i1, i32 } zeroinitializer
@comms_48 = global { i64, i1, i32 } zeroinitializer
@comms_49 = global { i64, i1, i32 } zeroinitializer
@comms_50 = global { i64, i1, i32 } zeroinitializer
@comms_51 = global { i64, i1, i32 } zeroinitializer
@comms_52 = global { i32, i1, i32 } zeroinitializer
@comms_53 = global { i64, i1, i32 } zeroinitializer
@comms_54 = global { i64, i1, i32 } zeroinitializer
@comms_55 = global { i32, i1, i32 } zeroinitializer
@comms_56 = global { i64, i1, i32 } zeroinitializer
@comms_57 = global { i32, i1, i32 } zeroinitializer
@comms_58 = global { i64, i1, i32 } zeroinitializer
@comms_59 = global { i64, i1, i32 } zeroinitializer
@comms_60 = global { i64, i1, i32 } zeroinitializer
@comms_61 = global { i32, i1, i32 } zeroinitializer
@comms_62 = global { i32, i1, i32 } zeroinitializer
@comms_63 = global { i64, i1, i32 } zeroinitializer
@comms_64 = global { i64, i1, i32 } zeroinitializer
@comms_65 = global { i32, i1, i32 } zeroinitializer
@comms_66 = global { i32, i1, i32 } zeroinitializer
@comms_67 = global { i32, i1, i32 } zeroinitializer
@comms_68 = global { i32, i1, i32 } zeroinitializer
@comms_69 = global { i1, i1, i32 } zeroinitializer
@comms_70 = global { i1, i1, i32 } zeroinitializer
@comms_71 = global { i1, i1, i32 } zeroinitializer
@comms_72 = global { i1, i1, i32 } zeroinitializer
@comms_73 = global { i1, i1, i32 } zeroinitializer
@comms_74 = global { i1, i1, i32 } zeroinitializer
@comms_75 = global { i1, i1, i32 } zeroinitializer
@comms_76 = global { i1, i1, i32 } zeroinitializer
@comms_77 = global { i1, i1, i32 } zeroinitializer
@comms_78 = global { i1, i1, i32 } zeroinitializer
@comms_79 = global { i1, i1, i32 } zeroinitializer
@comms_80 = global { i1, i1, i32 } zeroinitializer
@comms_81 = global { i1, i1, i32 } zeroinitializer
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
  %2 = alloca [256 x i32], align 16
  %3 = alloca [256 x i32], align 16
  br label %4

; <label>:4:                                      ; preds = %154, %1
  %5 = phi i32 [ 1, %1 ], [ %155, %154 ]
  %6 = shl i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = zext i32 %6 to i64
  %9 = mul i32 %5, -2
  %10 = zext i32 %6 to i64
  %11 = sext i32 %5 to i64
  %12 = sext i32 %5 to i64
  %13 = icmp sgt i32 %5, 0
  br label %14

; <label>:14:                                     ; preds = %147, %4
  %15 = phi i64 [ %7, %4 ], [ %153, %147 ]
  %16 = phi i32 [ %5, %4 ], [ %152, %147 ]
  %17 = phi i64 [ 0, %4 ], [ %151, %147 ]
  %18 = phi i64 [ 0, %4 ], [ %148, %147 ]
  %19 = phi i32 [ 0, %4 ], [ %149, %147 ]
  %20 = sext i32 %16 to i64
  %21 = mul nsw i64 %17, %7
  %22 = getelementptr [256 x i32], [256 x i32]* %2, i64 0, i64 %21
  %23 = bitcast i32* %22 to i8*
  %24 = getelementptr i32, i32* %0, i64 %21
  %25 = bitcast i32* %24 to i8*
  %26 = mul nuw i64 %17, %10
  %27 = trunc i64 %26 to i32
  %28 = add i32 %5, %27
  %29 = trunc i64 %26 to i32
  %30 = or i32 %29, 1
  %31 = icmp sgt i32 %28, %30
  %32 = select i1 %31, i32 %28, i32 %30
  %33 = trunc i64 %17 to i32
  %34 = mul i32 %9, %33
  %35 = add i32 %34, -1
  %36 = add i32 %32, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 2
  %39 = add nuw nsw i64 %38, 4
  %40 = sext i32 %16 to i64
  %41 = mul nsw i64 %17, %7
  %42 = getelementptr [256 x i32], [256 x i32]* %3, i64 0, i64 %41
  %43 = bitcast i32* %42 to i8*
  %44 = getelementptr i32, i32* %0, i64 %41
  %45 = bitcast i32* %44 to i8*
  %46 = mul nuw i64 %17, %8
  %47 = trunc i64 %46 to i32
  %48 = add i32 %5, %47
  %49 = trunc i64 %46 to i32
  %50 = or i32 %49, 1
  %51 = icmp sgt i32 %48, %50
  %52 = select i1 %51, i32 %48, i32 %50
  %53 = trunc i64 %17 to i32
  %54 = mul i32 %9, %53
  %55 = add i32 %54, -1
  %56 = add i32 %52, %55
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %57, 2
  %59 = add nuw nsw i64 %58, 4
  %60 = add nsw i64 %18, %11
  %61 = add nsw i32 %19, %5
  %62 = add nsw i64 %60, %12
  %63 = add nsw i32 %61, %5
  %64 = add nsw i32 %63, -1
  %65 = icmp slt i64 %62, 257
  br i1 %65, label %67, label %66

; <label>:66:                                     ; preds = %14
  br i1 %13, label %108, label %109

; <label>:67:                                     ; preds = %14
  br i1 %13, label %68, label %71

; <label>:68:                                     ; preds = %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 %25, i64 %39, i1 false)
  %69 = trunc i64 %60 to i32
  %70 = add nsw i32 %64, %69
  br label %77

; <label>:71:                                     ; preds = %77, %67
  %72 = icmp slt i64 %18, %62
  br i1 %72, label %73, label %147

; <label>:73:                                     ; preds = %71
  %74 = trunc i64 %62 to i32
  %75 = add i32 %74, -1
  %76 = trunc i64 %18 to i32
  br label %87

; <label>:77:                                     ; preds = %77, %68
  %78 = phi i64 [ %20, %68 ], [ %85, %77 ]
  %79 = getelementptr inbounds i32, i32* %0, i64 %78
  %80 = load i32, i32* %79, align 4, !tbaa !3
  %81 = trunc i64 %78 to i32
  %82 = sub i32 %70, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %83
  store i32 %80, i32* %84, align 4, !tbaa !3
  %85 = add nsw i64 %78, 1
  %86 = icmp slt i64 %85, %62
  br i1 %86, label %77, label %71

; <label>:87:                                     ; preds = %103, %73
  %88 = phi i64 [ %18, %73 ], [ %106, %103 ]
  %89 = phi i32 [ %76, %73 ], [ %105, %103 ]
  %90 = phi i32 [ %75, %73 ], [ %104, %103 ]
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !3
  %94 = sext i32 %89 to i64
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !3
  %97 = icmp slt i32 %93, %96
  %98 = getelementptr inbounds i32, i32* %0, i64 %88
  br i1 %97, label %99, label %101

; <label>:99:                                     ; preds = %87
  store i32 %93, i32* %98, align 4, !tbaa !3
  %100 = add nsw i32 %90, -1
  br label %103

; <label>:101:                                    ; preds = %87
  store i32 %96, i32* %98, align 4, !tbaa !3
  %102 = add nsw i32 %89, 1
  br label %103

; <label>:103:                                    ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %90, %101 ]
  %105 = phi i32 [ %89, %99 ], [ %102, %101 ]
  %106 = add nsw i64 %88, 1
  %107 = icmp eq i64 %106, %15
  br i1 %107, label %147, label %87

; <label>:108:                                    ; preds = %66
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %45, i64 %59, i1 false)
  br label %109

; <label>:109:                                    ; preds = %108, %66
  %110 = icmp slt i64 %60, 257
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %109
  %112 = add i64 %60, 256
  br label %115

; <label>:113:                                    ; preds = %115, %109
  %114 = trunc i64 %18 to i32
  br label %126

; <label>:115:                                    ; preds = %115, %111
  %116 = phi i64 [ %40, %111 ], [ %123, %115 ]
  %117 = getelementptr inbounds i32, i32* %0, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !3
  %119 = sub i64 %112, %116
  %120 = shl i64 %119, 32
  %121 = ashr exact i64 %120, 32
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %121
  store i32 %118, i32* %122, align 4, !tbaa !3
  %123 = add nsw i64 %116, 1
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 257
  br i1 %125, label %113, label %115

; <label>:126:                                    ; preds = %142, %113
  %127 = phi i64 [ %18, %113 ], [ %145, %142 ]
  %128 = phi i32 [ 256, %113 ], [ %144, %142 ]
  %129 = phi i32 [ %114, %113 ], [ %143, %142 ]
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4, !tbaa !3
  %133 = sext i32 %129 to i64
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4, !tbaa !3
  %136 = icmp slt i32 %132, %135
  %137 = getelementptr inbounds i32, i32* %0, i64 %127
  br i1 %136, label %138, label %140

; <label>:138:                                    ; preds = %126
  store i32 %132, i32* %137, align 4, !tbaa !3
  %139 = add nsw i32 %128, -1
  br label %142

; <label>:140:                                    ; preds = %126
  store i32 %135, i32* %137, align 4, !tbaa !3
  %141 = add nsw i32 %129, 1
  br label %142

; <label>:142:                                    ; preds = %140, %138
  %143 = phi i32 [ %129, %138 ], [ %141, %140 ]
  %144 = phi i32 [ %139, %138 ], [ %128, %140 ]
  %145 = add nsw i64 %127, 1
  %146 = icmp eq i64 %145, 257
  br i1 %146, label %147, label %126

; <label>:147:                                    ; preds = %142, %103, %71
  %148 = add nsw i64 %18, %7
  %149 = add nsw i32 %19, %6
  %150 = icmp slt i64 %148, 256
  %151 = add nuw nsw i64 %17, 1
  %152 = add i32 %16, %6
  %153 = add i64 %15, %7
  br i1 %150, label %14, label %154

; <label>:154:                                    ; preds = %147
  %155 = shl nsw i32 %5, 1
  %156 = icmp slt i32 %5, 128
  br i1 %156, label %4, label %157

; <label>:157:                                    ; preds = %154
  ret void
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
  %9 = load i32, i32* %8, align 4, !tbaa !3
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
  %send_alloca = alloca i32*, !reason !7
  store i32* %0, i32** %send_alloca, !reason !7
  %send_cast = bitcast i32** %send_alloca to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32*, i1, i32 }* @comms_5 to i64), i8* %1), !reason !7
  %send_alloca1 = alloca i32*, !reason !7
  store i32* %0, i32** %send_alloca1, !reason !7
  %send_cast2 = bitcast i32** %send_alloca1 to i8*, !reason !7
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send_argument to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32*, i1, i32 }* @comms_33 to i64), i8* %1), !reason !7
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #3

define void @ms_mergesort_0(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ i32*, i1, i32 }* @comms_33 to i64), i8* %0), !reason !7
  %bitcast100 = bitcast i8* %argument to i32**, !reason !7
  %receive_load101 = load i32*, i32** %bitcast100, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_33 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  br label %l

l:                                                ; preds = %l22, %entry
  %new_phi = phi i32 [ 1, %entry ], [ %57, %l22 ]
  %send_alloca = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca, !reason !8
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_0 to i64), i8* %0), !reason !8
  %1 = mul i32 %new_phi, -2
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i8* %0), !reason !8
  %bitcast = bitcast i8* %receive to i32*, !reason !8
  %receive_load = load i32, i32* %bitcast, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %2 = zext i32 %receive_load to i64
  %3 = sext i32 %new_phi to i64
  %4 = sext i32 %new_phi to i64
  %send_alloca24 = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca24, !reason !8
  %send_cast25 = bitcast i32* %send_alloca24 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast25, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i8* %0), !reason !8
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi26 = phi i32 [ %new_phi, %l ], [ %receive_load164, %l21 ]
  %new_phi27 = phi i64 [ 0, %l ], [ %55, %l21 ]
  %5 = sext i32 %new_phi26 to i64
  %receive28 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !8
  %bitcast29 = bitcast i8* %receive28 to i64*, !reason !8
  %receive_load30 = load i64, i64* %bitcast29, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %6 = mul nsw i64 %new_phi27, %receive_load30
  %send_alloca31 = alloca i64, !reason !8
  store i64 %6, i64* %send_alloca31, !reason !8
  %send_cast32 = bitcast i64* %send_alloca31 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast32, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i8* %0), !reason !8
  %send_alloca33 = alloca i64, !reason !8
  store i64 %6, i64* %send_alloca33, !reason !8
  %send_cast34 = bitcast i64* %send_alloca33 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast34, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i8* %0), !reason !8
  %receive35 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32*, i1, i32 }* @comms_7 to i64), i8* %0), !reason !8
  %bitcast36 = bitcast i8* %receive35 to i32**, !reason !8
  %receive_load37 = load i32*, i32** %bitcast36, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_7 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !8
  %7 = bitcast i32* %receive_load37 to i8*
  %send_alloca38 = alloca i64, !reason !8
  store i64 %new_phi27, i64* %send_alloca38, !reason !8
  %send_cast39 = bitcast i64* %send_alloca38 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast39, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !8
  %send_alloca40 = alloca i64, !reason !8
  store i64 %2, i64* %send_alloca40, !reason !8
  %send_cast41 = bitcast i64* %send_alloca40 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast41, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i8* %0), !reason !8
  %send_alloca42 = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca42, !reason !8
  %send_cast43 = bitcast i32* %send_alloca42 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast43, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i8* %0), !reason !8
  %receive44 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_11 to i64), i8* %0), !reason !8
  %bitcast45 = bitcast i8* %receive44 to i64*, !reason !8
  %receive_load46 = load i64, i64* %bitcast45, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_11 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %8 = trunc i64 %receive_load46 to i32
  %send_alloca47 = alloca i32, !reason !8
  store i32 %8, i32* %send_alloca47, !reason !8
  %send_cast48 = bitcast i32* %send_alloca47 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast48, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_12 to i64), i8* %0), !reason !8
  %9 = trunc i64 %new_phi27 to i32
  %10 = mul i32 %1, %9
  %send_alloca49 = alloca i32, !reason !8
  store i32 %10, i32* %send_alloca49, !reason !8
  %send_cast50 = bitcast i32* %send_alloca49 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast50, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_13 to i64), i8* %0), !reason !8
  %11 = sext i32 %new_phi26 to i64
  %receive51 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_14 to i64), i8* %0), !reason !8
  %bitcast52 = bitcast i8* %receive51 to i64*, !reason !8
  %receive_load53 = load i64, i64* %bitcast52, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_14 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %12 = mul nsw i64 %new_phi27, %receive_load53
  %13 = getelementptr [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %12
  %send_alloca54 = alloca i32*, !reason !8
  store i32* %13, i32** %send_alloca54, !reason !8
  %send_cast55 = bitcast i32** %send_alloca54 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast55, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32*, i1, i32 }* @comms_15 to i64), i8* %0), !reason !8
  %send_alloca56 = alloca i64, !reason !8
  store i64 %12, i64* %send_alloca56, !reason !8
  %send_cast57 = bitcast i64* %send_alloca56 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast57, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_16 to i64), i8* %0), !reason !8
  %receive58 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_17 to i64), i8* %0), !reason !8
  %bitcast59 = bitcast i8* %receive58 to i64*, !reason !8
  %receive_load60 = load i64, i64* %bitcast59, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_17 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %14 = mul nuw i64 %new_phi27, %receive_load60
  %send_alloca61 = alloca i64, !reason !8
  store i64 %14, i64* %send_alloca61, !reason !8
  %send_cast62 = bitcast i64* %send_alloca61 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast62, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_18 to i64), i8* %0), !reason !8
  %send_alloca63 = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca63, !reason !8
  %send_cast64 = bitcast i32* %send_alloca63 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast64, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_19 to i64), i8* %0), !reason !8
  %15 = trunc i64 %14 to i32
  %16 = or i32 %15, 1
  %send_alloca65 = alloca i32, !reason !8
  store i32 %16, i32* %send_alloca65, !reason !8
  %send_cast66 = bitcast i32* %send_alloca65 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast66, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_20 to i64), i8* %0), !reason !8
  %send_alloca67 = alloca i32, !reason !8
  store i32 %16, i32* %send_alloca67, !reason !8
  %send_cast68 = bitcast i32* %send_alloca67 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast68, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_21 to i64), i8* %0), !reason !8
  %17 = trunc i64 %new_phi27 to i32
  %18 = mul i32 %1, %17
  %19 = add i32 %18, -1
  %receive69 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_22 to i64), i8* %0), !reason !8
  %bitcast70 = bitcast i8* %receive69 to i32*, !reason !8
  %receive_load71 = load i32, i32* %bitcast70, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_22 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %20 = add i32 %receive_load71, %19
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  %23 = add nuw nsw i64 %22, 4
  %receive72 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i8* %0), !reason !8
  %bitcast73 = bitcast i8* %receive72 to i64*, !reason !8
  %receive_load74 = load i64, i64* %bitcast73, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %24 = add nsw i64 %receive_load74, %3
  %send_alloca75 = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca75, !reason !8
  %send_cast76 = bitcast i32* %send_alloca75 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast76, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_24 to i64), i8* %0), !reason !8
  %25 = add nsw i64 %24, %4
  %send_alloca77 = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca77, !reason !8
  %send_cast78 = bitcast i32* %send_alloca77 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast78, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_25 to i64), i8* %0), !reason !8
  %26 = icmp slt i64 %25, 257
  %send_alloca194 = alloca i1, !reason !9
  store i1 %26, i1* %send_alloca194, !reason !9
  %send_cast195 = bitcast i1* %send_alloca194 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast195, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_69 to i64), i8* %0), !reason !9
  br i1 %26, label %l3, label %l2

l2:                                               ; preds = %l1
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_70 to i64), i8* %0), !reason !10
  %bitcast196 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load197 = load i1, i1* %bitcast196, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_70 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load197, label %l12, label %l13

l3:                                               ; preds = %l1
  %broadcast208 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_75 to i64), i8* %0), !reason !10
  %bitcast209 = bitcast i8* %broadcast208 to i1*, !reason !10
  %receive_load210 = load i1, i1* %bitcast209, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_75 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load210, label %l4, label %l5

l4:                                               ; preds = %l3
  %receive107 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i8*, i1, i32 }* @comms_36 to i64), i8* %0), !reason !8
  %bitcast108 = bitcast i8* %receive107 to i8**, !reason !8
  %receive_load109 = load i8*, i8** %bitcast108, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i8*, i1, i32 }* @comms_36 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !8
  %receive110 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i8* %0), !reason !8
  %bitcast111 = bitcast i8* %receive110 to i64*, !reason !8
  %receive_load112 = load i64, i64* %bitcast111, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %receive_load109, i8* align 4 %7, i64 %receive_load112, i1 false)
  %send_alloca113 = alloca i64, !reason !8
  store i64 %24, i64* %send_alloca113, !reason !8
  %send_cast114 = bitcast i64* %send_alloca113 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast114, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i8* %0), !reason !8
  br label %l7

l5:                                               ; preds = %l7, %l3
  %receive128 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_44 to i64), i8* %0), !reason !8
  %bitcast129 = bitcast i8* %receive128 to i64*, !reason !8
  %receive_load130 = load i64, i64* %bitcast129, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_44 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %27 = icmp slt i64 %receive_load130, %25
  %send_alloca214 = alloca i1, !reason !9
  store i1 %27, i1* %send_alloca214, !reason !9
  %send_cast215 = bitcast i1* %send_alloca214 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast215, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_77 to i64), i8* %0), !reason !9
  br i1 %27, label %l6, label %l21

l6:                                               ; preds = %l5
  %28 = trunc i64 %25 to i32
  %29 = add i32 %28, -1
  %repair_phi181 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_64 to i64), i8* %0), !reason !10
  %bitcast182 = bitcast i8* %repair_phi181 to i64*, !reason !10
  %receive_load183 = load i64, i64* %bitcast182, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_64 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %repair_phi184 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_65 to i64), i8* %0), !reason !10
  %bitcast185 = bitcast i8* %repair_phi184 to i32*, !reason !10
  %receive_load186 = load i32, i32* %bitcast185, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_65 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %send_alloca190 = alloca i32, !reason !11
  store i32 %29, i32* %send_alloca190, !reason !11
  %send_cast191 = bitcast i32* %send_alloca190 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast191, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_67 to i64), i8* %0), !reason !11
  br label %l8

l7:                                               ; preds = %l7, %l4
  %new_phi115 = phi i64 [ %5, %l4 ], [ %receive_load180, %l7 ]
  %send_alloca116 = alloca i64, !reason !8
  store i64 %new_phi115, i64* %send_alloca116, !reason !8
  %send_cast117 = bitcast i64* %send_alloca116 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast117, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i8* %0), !reason !8
  %30 = trunc i64 %new_phi115 to i32
  %receive118 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_40 to i64), i8* %0), !reason !8
  %bitcast119 = bitcast i8* %receive118 to i32*, !reason !8
  %receive_load120 = load i32, i32* %bitcast119, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_40 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %31 = sub i32 %receive_load120, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %32
  %receive121 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_41 to i64), i8* %0), !reason !8
  %bitcast122 = bitcast i8* %receive121 to i32*, !reason !8
  %receive_load123 = load i32, i32* %bitcast122, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_41 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  store i32 %receive_load123, i32* %33, align 4, !tbaa !3
  %send_alloca124 = alloca i64, !reason !8
  store i64 %new_phi115, i64* %send_alloca124, !reason !8
  %send_cast125 = bitcast i64* %send_alloca124 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast125, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i8* %0), !reason !8
  %send_alloca126 = alloca i64, !reason !8
  store i64 %25, i64* %send_alloca126, !reason !8
  %send_cast127 = bitcast i64* %send_alloca126 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast127, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i8* %0), !reason !8
  %repair_phi178 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_63 to i64), i8* %0), !reason !10
  %bitcast179 = bitcast i8* %repair_phi178 to i64*, !reason !10
  %receive_load180 = load i64, i64* %bitcast179, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_63 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %broadcast211 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_76 to i64), i8* %0), !reason !10
  %bitcast212 = bitcast i8* %broadcast211 to i1*, !reason !10
  %receive_load213 = load i1, i1* %bitcast212, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_76 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load213, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi131 = phi i64 [ %receive_load183, %l6 ], [ %38, %l11 ]
  %new_phi132 = phi i32 [ %receive_load186, %l6 ], [ %receive_load189, %l11 ]
  %34 = sext i32 %new_phi132 to i64
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4, !tbaa !3
  %send_alloca133 = alloca i32, !reason !8
  store i32 %36, i32* %send_alloca133, !reason !8
  %send_cast134 = bitcast i32* %send_alloca133 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast134, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_45 to i64), i8* %0), !reason !8
  %37 = getelementptr inbounds i32, i32* %receive_load101, i64 %new_phi131
  %broadcast216 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_78 to i64), i8* %0), !reason !10
  %bitcast217 = bitcast i8* %broadcast216 to i1*, !reason !10
  %receive_load218 = load i1, i1* %bitcast217, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_78 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load218, label %l9, label %l10

l9:                                               ; preds = %l8
  %receive137 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_47 to i64), i8* %0), !reason !8
  %bitcast138 = bitcast i8* %receive137 to i32*, !reason !8
  %receive_load139 = load i32, i32* %bitcast138, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_47 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  store i32 %receive_load139, i32* %37, align 4, !tbaa !3
  %send_alloca192 = alloca i32, !reason !11
  store i32 %new_phi132, i32* %send_alloca192, !reason !11
  %send_cast193 = bitcast i32* %send_alloca192 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast193, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_68 to i64), i8* %0), !reason !11
  br label %l11

l10:                                              ; preds = %l8
  store i32 %36, i32* %37, align 4, !tbaa !3
  %send_alloca135 = alloca i32, !reason !8
  store i32 %new_phi132, i32* %send_alloca135, !reason !8
  %send_cast136 = bitcast i32* %send_alloca135 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast136, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_46 to i64), i8* %0), !reason !8
  br label %l11

l11:                                              ; preds = %l10, %l9
  %38 = add nsw i64 %new_phi131, 1
  %receive140 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i8* %0), !reason !8
  %bitcast141 = bitcast i8* %receive140 to i64*, !reason !8
  %receive_load142 = load i64, i64* %bitcast141, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %39 = icmp eq i64 %38, %receive_load142
  %repair_phi187 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_66 to i64), i8* %0), !reason !10
  %bitcast188 = bitcast i8* %repair_phi187 to i32*, !reason !10
  %receive_load189 = load i32, i32* %bitcast188, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_66 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %send_alloca219 = alloca i1, !reason !9
  store i1 %39, i1* %send_alloca219, !reason !9
  %send_cast220 = bitcast i1* %send_alloca219 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast220, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_79 to i64), i8* %0), !reason !9
  br i1 %39, label %l21, label %l8

l12:                                              ; preds = %l2
  %receive79 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i8*, i1, i32 }* @comms_26 to i64), i8* %0), !reason !8
  %bitcast80 = bitcast i8* %receive79 to i8**, !reason !8
  %receive_load81 = load i8*, i8** %bitcast80, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i8*, i1, i32 }* @comms_26 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !8
  %receive82 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i8*, i1, i32 }* @comms_27 to i64), i8* %0), !reason !8
  %bitcast83 = bitcast i8* %receive82 to i8**, !reason !8
  %receive_load84 = load i8*, i8** %bitcast83, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i8*, i1, i32 }* @comms_27 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %receive_load81, i8* align 4 %receive_load84, i64 %23, i1 false)
  br label %l13

l13:                                              ; preds = %l12, %l2
  %40 = icmp slt i64 %24, 257
  %send_alloca198 = alloca i1, !reason !9
  store i1 %40, i1* %send_alloca198, !reason !9
  %send_cast199 = bitcast i1* %send_alloca198 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast199, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_71 to i64), i8* %0), !reason !9
  br i1 %40, label %l14, label %l15

l14:                                              ; preds = %l13
  %41 = add i64 %24, 256
  br label %l16

l15:                                              ; preds = %l16, %l13
  %receive93 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i8* %0), !reason !8
  %bitcast94 = bitcast i8* %receive93 to i64*, !reason !8
  %receive_load95 = load i64, i64* %bitcast94, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %42 = trunc i64 %receive_load95 to i32
  %repair_phi170 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_60 to i64), i8* %0), !reason !10
  %bitcast171 = bitcast i8* %repair_phi170 to i64*, !reason !10
  %receive_load172 = load i64, i64* %bitcast171, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_60 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  br label %l17

l16:                                              ; preds = %l16, %l14
  %new_phi85 = phi i64 [ %11, %l14 ], [ %receive_load169, %l16 ]
  %send_alloca86 = alloca i64, !reason !8
  store i64 %new_phi85, i64* %send_alloca86, !reason !8
  %send_cast87 = bitcast i64* %send_alloca86 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast87, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i8* %0), !reason !8
  %receive88 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32*, i1, i32 }* @comms_29 to i64), i8* %0), !reason !8
  %bitcast89 = bitcast i8* %receive88 to i32**, !reason !8
  %receive_load90 = load i32*, i32** %bitcast89, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_29 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !8
  %43 = load i32, i32* %receive_load90, align 4, !tbaa !3
  %44 = sub i64 %41, %new_phi85
  %45 = shl i64 %44, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %46
  store i32 %43, i32* %47, align 4, !tbaa !3
  %send_alloca91 = alloca i64, !reason !8
  store i64 %new_phi85, i64* %send_alloca91, !reason !8
  %send_cast92 = bitcast i64* %send_alloca91 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast92, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i8* %0), !reason !8
  %repair_phi167 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_59 to i64), i8* %0), !reason !10
  %bitcast168 = bitcast i8* %repair_phi167 to i64*, !reason !10
  %receive_load169 = load i64, i64* %bitcast168, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_59 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %broadcast200 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_72 to i64), i8* %0), !reason !10
  %bitcast201 = bitcast i8* %broadcast200 to i1*, !reason !10
  %receive_load202 = load i1, i1* %bitcast201, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_72 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load202, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi96 = phi i64 [ %receive_load172, %l15 ], [ %52, %l20 ]
  %new_phi97 = phi i32 [ %42, %l15 ], [ %receive_load175, %l20 ]
  %48 = sext i32 %new_phi97 to i64
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !3
  %send_alloca98 = alloca i32, !reason !8
  store i32 %50, i32* %send_alloca98, !reason !8
  %send_cast99 = bitcast i32* %send_alloca98 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast99, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_32 to i64), i8* %0), !reason !8
  %51 = getelementptr inbounds i32, i32* %receive_load101, i64 %new_phi96
  %broadcast203 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_73 to i64), i8* %0), !reason !10
  %bitcast204 = bitcast i8* %broadcast203 to i1*, !reason !10
  %receive_load205 = load i1, i1* %bitcast204, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_73 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load205, label %l18, label %l19

l18:                                              ; preds = %l17
  %receive104 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_35 to i64), i8* %0), !reason !8
  %bitcast105 = bitcast i8* %receive104 to i32*, !reason !8
  %receive_load106 = load i32, i32* %bitcast105, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_35 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  store i32 %receive_load106, i32* %51, align 4, !tbaa !3
  %send_alloca176 = alloca i32, !reason !11
  store i32 %new_phi97, i32* %send_alloca176, !reason !11
  %send_cast177 = bitcast i32* %send_alloca176 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast177, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_62 to i64), i8* %0), !reason !11
  br label %l20

l19:                                              ; preds = %l17
  store i32 %50, i32* %51, align 4, !tbaa !3
  %send_alloca102 = alloca i32, !reason !8
  store i32 %new_phi97, i32* %send_alloca102, !reason !8
  %send_cast103 = bitcast i32* %send_alloca102 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast103, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_34 to i64), i8* %0), !reason !8
  br label %l20

l20:                                              ; preds = %l19, %l18
  %52 = add nsw i64 %new_phi96, 1
  %53 = icmp eq i64 %52, 257
  %repair_phi173 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_61 to i64), i8* %0), !reason !10
  %bitcast174 = bitcast i8* %repair_phi173 to i32*, !reason !10
  %receive_load175 = load i32, i32* %bitcast174, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_61 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %send_alloca206 = alloca i1, !reason !9
  store i1 %53, i1* %send_alloca206, !reason !9
  %send_cast207 = bitcast i1* %send_alloca206 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast207, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_74 to i64), i8* %0), !reason !9
  br i1 %53, label %l21, label %l17

l21:                                              ; preds = %l20, %l11, %l5
  %receive143 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_49 to i64), i8* %0), !reason !8
  %bitcast144 = bitcast i8* %receive143 to i64*, !reason !8
  %receive_load145 = load i64, i64* %bitcast144, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_49 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %receive146 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_50 to i64), i8* %0), !reason !8
  %bitcast147 = bitcast i8* %receive146 to i64*, !reason !8
  %receive_load148 = load i64, i64* %bitcast147, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_50 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %54 = add nsw i64 %receive_load145, %receive_load148
  %send_alloca149 = alloca i64, !reason !8
  store i64 %54, i64* %send_alloca149, !reason !8
  %send_cast150 = bitcast i64* %send_alloca149 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast150, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_51 to i64), i8* %0), !reason !8
  %55 = add nuw nsw i64 %new_phi27, 1
  %send_alloca151 = alloca i32, !reason !8
  store i32 %new_phi26, i32* %send_alloca151, !reason !8
  %send_cast152 = bitcast i32* %send_alloca151 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast152, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_52 to i64), i8* %0), !reason !8
  %receive153 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_53 to i64), i8* %0), !reason !8
  %bitcast154 = bitcast i8* %receive153 to i64*, !reason !8
  %receive_load155 = load i64, i64* %bitcast154, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_53 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %receive156 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_54 to i64), i8* %0), !reason !8
  %bitcast157 = bitcast i8* %receive156 to i64*, !reason !8
  %receive_load158 = load i64, i64* %bitcast157, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_54 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %56 = add i64 %receive_load155, %receive_load158
  %send_alloca161 = alloca i64, !reason !11
  store i64 %56, i64* %send_alloca161, !reason !11
  %send_cast162 = bitcast i64* %send_alloca161 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast162, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_56 to i64), i8* %0), !reason !11
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_57 to i64), i8* %0), !reason !10
  %bitcast163 = bitcast i8* %repair_phi to i32*, !reason !10
  %receive_load164 = load i32, i32* %bitcast163, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_57 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  %send_alloca165 = alloca i64, !reason !11
  store i64 %54, i64* %send_alloca165, !reason !11
  %send_cast166 = bitcast i64* %send_alloca165 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast166, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i64, i1, i32 }* @comms_58 to i64), i8* %0), !reason !11
  %broadcast221 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_80 to i64), i8* %0), !reason !10
  %bitcast222 = bitcast i8* %broadcast221 to i1*, !reason !10
  %receive_load223 = load i1, i1* %bitcast222, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_80 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load223, label %l1, label %l22

l22:                                              ; preds = %l21
  %57 = shl nsw i32 %new_phi, 1
  %send_alloca159 = alloca i32, !reason !8
  store i32 %new_phi, i32* %send_alloca159, !reason !8
  %send_cast160 = bitcast i32* %send_alloca159 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast160, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i32, i1, i32 }* @comms_55 to i64), i8* %0), !reason !8
  %broadcast224 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i64 ptrtoint ({ i1, i1, i32 }* @comms_81 to i64), i8* %0), !reason !10
  %bitcast225 = bitcast i8* %broadcast224 to i1*, !reason !10
  %receive_load226 = load i1, i1* %bitcast225, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_81 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load226, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

define void @ms_mergesort_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i64, i8*)* @receive_argument to i8* (i64, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i64 ptrtoint ({ i32*, i1, i32 }* @comms_5 to i64), i8* %0), !reason !7
  %bitcast34 = bitcast i8* %argument to i32**, !reason !7
  %receive_load35 = load i32*, i32** %bitcast34, !reason !7
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_5 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !7
  br label %l

l:                                                ; preds = %l22, %entry
  %receive = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_0 to i64), i8* %0), !reason !8
  %bitcast = bitcast i8* %receive to i32*, !reason !8
  %receive_load = load i32, i32* %bitcast, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_0 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %1 = shl i32 %receive_load, 1
  %2 = sext i32 %1 to i64
  %3 = zext i32 %1 to i64
  %send_alloca = alloca i32, !reason !8
  store i32 %1, i32* %send_alloca, !reason !8
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_1 to i64), i8* %0), !reason !8
  %receive24 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i8* %0), !reason !8
  %bitcast25 = bitcast i8* %receive24 to i32*, !reason !8
  %receive_load26 = load i32, i32* %bitcast25, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_2 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %4 = icmp sgt i32 %receive_load26, 0
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi = phi i64 [ %2, %l ], [ %receive_load168, %l21 ]
  %new_phi27 = phi i64 [ 0, %l ], [ %receive_load173, %l21 ]
  %new_phi28 = phi i32 [ 0, %l ], [ %52, %l21 ]
  %send_alloca29 = alloca i64, !reason !8
  store i64 %2, i64* %send_alloca29, !reason !8
  %send_cast30 = bitcast i64* %send_alloca29 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast30, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_3 to i64), i8* %0), !reason !8
  %receive31 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i8* %0), !reason !8
  %bitcast32 = bitcast i8* %receive31 to i64*, !reason !8
  %receive_load33 = load i64, i64* %bitcast32, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_4 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %5 = getelementptr [256 x i32], [256 x i32]* @alloca, i64 0, i64 %receive_load33
  %6 = bitcast i32* %5 to i8*
  %receive36 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i8* %0), !reason !8
  %bitcast37 = bitcast i8* %receive36 to i64*, !reason !8
  %receive_load38 = load i64, i64* %bitcast37, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_6 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %7 = getelementptr i32, i32* %receive_load35, i64 %receive_load38
  %send_alloca39 = alloca i32*, !reason !8
  store i32* %7, i32** %send_alloca39, !reason !8
  %send_cast40 = bitcast i32** %send_alloca39 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast40, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32*, i1, i32 }* @comms_7 to i64), i8* %0), !reason !8
  %receive41 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i8* %0), !reason !8
  %bitcast42 = bitcast i8* %receive41 to i64*, !reason !8
  %receive_load43 = load i64, i64* %bitcast42, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_8 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %receive44 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i8* %0), !reason !8
  %bitcast45 = bitcast i8* %receive44 to i64*, !reason !8
  %receive_load46 = load i64, i64* %bitcast45, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_9 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %8 = mul nuw i64 %receive_load43, %receive_load46
  %9 = trunc i64 %8 to i32
  %receive47 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i8* %0), !reason !8
  %bitcast48 = bitcast i8* %receive47 to i32*, !reason !8
  %receive_load49 = load i32, i32* %bitcast48, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_10 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %10 = add i32 %receive_load49, %9
  %send_alloca50 = alloca i64, !reason !8
  store i64 %8, i64* %send_alloca50, !reason !8
  %send_cast51 = bitcast i64* %send_alloca50 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast51, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_11 to i64), i8* %0), !reason !8
  %receive52 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_12 to i64), i8* %0), !reason !8
  %bitcast53 = bitcast i8* %receive52 to i32*, !reason !8
  %receive_load54 = load i32, i32* %bitcast53, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_12 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %11 = or i32 %receive_load54, 1
  %12 = icmp sgt i32 %10, %11
  %13 = select i1 %12, i32 %10, i32 %11
  %receive55 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_13 to i64), i8* %0), !reason !8
  %bitcast56 = bitcast i8* %receive55 to i32*, !reason !8
  %receive_load57 = load i32, i32* %bitcast56, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_13 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %14 = add i32 %receive_load57, -1
  %15 = add i32 %13, %14
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = add nuw nsw i64 %17, 4
  %send_alloca58 = alloca i64, !reason !8
  store i64 %2, i64* %send_alloca58, !reason !8
  %send_cast59 = bitcast i64* %send_alloca58 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast59, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_14 to i64), i8* %0), !reason !8
  %receive60 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32*, i1, i32 }* @comms_15 to i64), i8* %0), !reason !8
  %bitcast61 = bitcast i8* %receive60 to i32**, !reason !8
  %receive_load62 = load i32*, i32** %bitcast61, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32*, i1, i32 }* @comms_15 to i64), i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i8* %0), !reason !8
  %19 = bitcast i32* %receive_load62 to i8*
  %receive63 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_16 to i64), i8* %0), !reason !8
  %bitcast64 = bitcast i8* %receive63 to i64*, !reason !8
  %receive_load65 = load i64, i64* %bitcast64, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_16 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %20 = getelementptr i32, i32* %receive_load35, i64 %receive_load65
  %21 = bitcast i32* %20 to i8*
  %send_alloca66 = alloca i64, !reason !8
  store i64 %3, i64* %send_alloca66, !reason !8
  %send_cast67 = bitcast i64* %send_alloca66 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast67, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_17 to i64), i8* %0), !reason !8
  %receive68 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_18 to i64), i8* %0), !reason !8
  %bitcast69 = bitcast i8* %receive68 to i64*, !reason !8
  %receive_load70 = load i64, i64* %bitcast69, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_18 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %22 = trunc i64 %receive_load70 to i32
  %receive71 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_19 to i64), i8* %0), !reason !8
  %bitcast72 = bitcast i8* %receive71 to i32*, !reason !8
  %receive_load73 = load i32, i32* %bitcast72, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_19 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %23 = add i32 %receive_load73, %22
  %receive74 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_20 to i64), i8* %0), !reason !8
  %bitcast75 = bitcast i8* %receive74 to i32*, !reason !8
  %receive_load76 = load i32, i32* %bitcast75, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_20 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %24 = icmp sgt i32 %23, %receive_load76
  %receive77 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_21 to i64), i8* %0), !reason !8
  %bitcast78 = bitcast i8* %receive77 to i32*, !reason !8
  %receive_load79 = load i32, i32* %bitcast78, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_21 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %25 = select i1 %24, i32 %23, i32 %receive_load79
  %send_alloca80 = alloca i32, !reason !8
  store i32 %25, i32* %send_alloca80, !reason !8
  %send_cast81 = bitcast i32* %send_alloca80 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast81, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_22 to i64), i8* %0), !reason !8
  %send_alloca82 = alloca i64, !reason !8
  store i64 %new_phi27, i64* %send_alloca82, !reason !8
  %send_cast83 = bitcast i64* %send_alloca82 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast83, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_23 to i64), i8* %0), !reason !8
  %receive84 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_24 to i64), i8* %0), !reason !8
  %bitcast85 = bitcast i8* %receive84 to i32*, !reason !8
  %receive_load86 = load i32, i32* %bitcast85, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_24 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %26 = add nsw i32 %new_phi28, %receive_load86
  %receive87 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_25 to i64), i8* %0), !reason !8
  %bitcast88 = bitcast i8* %receive87 to i32*, !reason !8
  %receive_load89 = load i32, i32* %bitcast88, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_25 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %27 = add nsw i32 %26, %receive_load89
  %28 = add nsw i32 %27, -1
  %broadcast = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_69 to i64), i8* %0), !reason !10
  %bitcast197 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load198 = load i1, i1* %bitcast197, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_69 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load198, label %l3, label %l2

l2:                                               ; preds = %l1
  %send_alloca199 = alloca i1, !reason !9
  store i1 %4, i1* %send_alloca199, !reason !9
  %send_cast200 = bitcast i1* %send_alloca199 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast200, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_70 to i64), i8* %0), !reason !9
  br i1 %4, label %l12, label %l13

l3:                                               ; preds = %l1
  %send_alloca211 = alloca i1, !reason !9
  store i1 %4, i1* %send_alloca211, !reason !9
  %send_cast212 = bitcast i1* %send_alloca211 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast212, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_75 to i64), i8* %0), !reason !9
  br i1 %4, label %l4, label %l5

l4:                                               ; preds = %l3
  %send_alloca115 = alloca i8*, !reason !8
  store i8* %6, i8** %send_alloca115, !reason !8
  %send_cast116 = bitcast i8** %send_alloca115 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast116, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i8*, i1, i32 }* @comms_36 to i64), i8* %0), !reason !8
  %send_alloca117 = alloca i64, !reason !8
  store i64 %18, i64* %send_alloca117, !reason !8
  %send_cast118 = bitcast i64* %send_alloca117 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast118, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_37 to i64), i8* %0), !reason !8
  %receive119 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i8* %0), !reason !8
  %bitcast120 = bitcast i8* %receive119 to i64*, !reason !8
  %receive_load121 = load i64, i64* %bitcast120, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_38 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %29 = trunc i64 %receive_load121 to i32
  %30 = add nsw i32 %28, %29
  br label %l7

l5:                                               ; preds = %l7, %l3
  %send_alloca135 = alloca i64, !reason !8
  store i64 %new_phi27, i64* %send_alloca135, !reason !8
  %send_cast136 = bitcast i64* %send_alloca135 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast136, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_44 to i64), i8* %0), !reason !8
  %broadcast215 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_77 to i64), i8* %0), !reason !10
  %bitcast216 = bitcast i8* %broadcast215 to i1*, !reason !10
  %receive_load217 = load i1, i1* %bitcast216, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_77 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load217, label %l6, label %l21

l6:                                               ; preds = %l5
  %31 = trunc i64 %new_phi27 to i32
  %send_alloca185 = alloca i64, !reason !11
  store i64 %new_phi27, i64* %send_alloca185, !reason !11
  %send_cast186 = bitcast i64* %send_alloca185 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast186, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_64 to i64), i8* %0), !reason !11
  %send_alloca187 = alloca i32, !reason !11
  store i32 %31, i32* %send_alloca187, !reason !11
  %send_cast188 = bitcast i32* %send_alloca187 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast188, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_65 to i64), i8* %0), !reason !11
  %repair_phi191 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_67 to i64), i8* %0), !reason !10
  %bitcast192 = bitcast i8* %repair_phi191 to i32*, !reason !10
  %receive_load193 = load i32, i32* %bitcast192, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_67 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  br label %l8

l7:                                               ; preds = %l7, %l4
  %receive122 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i8* %0), !reason !8
  %bitcast123 = bitcast i8* %receive122 to i64*, !reason !8
  %receive_load124 = load i64, i64* %bitcast123, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_39 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %32 = getelementptr inbounds i32, i32* %receive_load35, i64 %receive_load124
  %33 = load i32, i32* %32, align 4, !tbaa !3
  %send_alloca125 = alloca i32, !reason !8
  store i32 %30, i32* %send_alloca125, !reason !8
  %send_cast126 = bitcast i32* %send_alloca125 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast126, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_40 to i64), i8* %0), !reason !8
  %send_alloca127 = alloca i32, !reason !8
  store i32 %33, i32* %send_alloca127, !reason !8
  %send_cast128 = bitcast i32* %send_alloca127 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast128, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_41 to i64), i8* %0), !reason !8
  %receive129 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i8* %0), !reason !8
  %bitcast130 = bitcast i8* %receive129 to i64*, !reason !8
  %receive_load131 = load i64, i64* %bitcast130, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_42 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %34 = add nsw i64 %receive_load131, 1
  %receive132 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i8* %0), !reason !8
  %bitcast133 = bitcast i8* %receive132 to i64*, !reason !8
  %receive_load134 = load i64, i64* %bitcast133, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_43 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %35 = icmp slt i64 %34, %receive_load134
  %send_alloca183 = alloca i64, !reason !11
  store i64 %34, i64* %send_alloca183, !reason !11
  %send_cast184 = bitcast i64* %send_alloca183 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast184, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_63 to i64), i8* %0), !reason !11
  %send_alloca213 = alloca i1, !reason !9
  store i1 %35, i1* %send_alloca213, !reason !9
  %send_cast214 = bitcast i1* %send_alloca213 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast214, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_76 to i64), i8* %0), !reason !9
  br i1 %35, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi137 = phi i32 [ %receive_load193, %l6 ], [ %new_phi146, %l11 ]
  %36 = sext i32 %new_phi137 to i64
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4, !tbaa !3
  %receive138 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_45 to i64), i8* %0), !reason !8
  %bitcast139 = bitcast i8* %receive138 to i32*, !reason !8
  %receive_load140 = load i32, i32* %bitcast139, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_45 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %39 = icmp slt i32 %38, %receive_load140
  %send_alloca218 = alloca i1, !reason !9
  store i1 %39, i1* %send_alloca218, !reason !9
  %send_cast219 = bitcast i1* %send_alloca218 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast219, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_78 to i64), i8* %0), !reason !9
  br i1 %39, label %l9, label %l10

l9:                                               ; preds = %l8
  %send_alloca144 = alloca i32, !reason !8
  store i32 %38, i32* %send_alloca144, !reason !8
  %send_cast145 = bitcast i32* %send_alloca144 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast145, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_47 to i64), i8* %0), !reason !8
  %40 = add nsw i32 %new_phi137, -1
  %repair_phi194 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_68 to i64), i8* %0), !reason !10
  %bitcast195 = bitcast i8* %repair_phi194 to i32*, !reason !10
  %receive_load196 = load i32, i32* %bitcast195, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_68 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  br label %l11

l10:                                              ; preds = %l8
  %receive141 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_46 to i64), i8* %0), !reason !8
  %bitcast142 = bitcast i8* %receive141 to i32*, !reason !8
  %receive_load143 = load i32, i32* %bitcast142, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_46 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %41 = add nsw i32 %receive_load143, 1
  br label %l11

l11:                                              ; preds = %l10, %l9
  %new_phi146 = phi i32 [ %40, %l9 ], [ %new_phi137, %l10 ]
  %new_phi147 = phi i32 [ %receive_load196, %l9 ], [ %41, %l10 ]
  %send_alloca148 = alloca i64, !reason !8
  store i64 %new_phi, i64* %send_alloca148, !reason !8
  %send_cast149 = bitcast i64* %send_alloca148 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast149, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_48 to i64), i8* %0), !reason !8
  %send_alloca189 = alloca i32, !reason !11
  store i32 %new_phi147, i32* %send_alloca189, !reason !11
  %send_cast190 = bitcast i32* %send_alloca189 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast190, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_66 to i64), i8* %0), !reason !11
  %broadcast220 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_79 to i64), i8* %0), !reason !10
  %bitcast221 = bitcast i8* %broadcast220 to i1*, !reason !10
  %receive_load222 = load i1, i1* %bitcast221, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_79 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load222, label %l21, label %l8

l12:                                              ; preds = %l2
  %send_alloca90 = alloca i8*, !reason !8
  store i8* %19, i8** %send_alloca90, !reason !8
  %send_cast91 = bitcast i8** %send_alloca90 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast91, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i8*, i1, i32 }* @comms_26 to i64), i8* %0), !reason !8
  %send_alloca92 = alloca i8*, !reason !8
  store i8* %21, i8** %send_alloca92, !reason !8
  %send_cast93 = bitcast i8** %send_alloca92 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast93, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i8*, i1, i32 }* @comms_27 to i64), i8* %0), !reason !8
  br label %l13

l13:                                              ; preds = %l12, %l2
  %broadcast201 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_71 to i64), i8* %0), !reason !10
  %bitcast202 = bitcast i8* %broadcast201 to i1*, !reason !10
  %receive_load203 = load i1, i1* %bitcast202, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_71 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load203, label %l14, label %l15

l14:                                              ; preds = %l13
  br label %l16

l15:                                              ; preds = %l16, %l13
  %send_alloca102 = alloca i64, !reason !8
  store i64 %new_phi27, i64* %send_alloca102, !reason !8
  %send_cast103 = bitcast i64* %send_alloca102 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast103, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_31 to i64), i8* %0), !reason !8
  %send_alloca176 = alloca i64, !reason !11
  store i64 %new_phi27, i64* %send_alloca176, !reason !11
  %send_cast177 = bitcast i64* %send_alloca176 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast177, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_60 to i64), i8* %0), !reason !11
  br label %l17

l16:                                              ; preds = %l16, %l14
  %receive94 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i8* %0), !reason !8
  %bitcast95 = bitcast i8* %receive94 to i64*, !reason !8
  %receive_load96 = load i64, i64* %bitcast95, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_28 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %42 = getelementptr inbounds i32, i32* %receive_load35, i64 %receive_load96
  %send_alloca97 = alloca i32*, !reason !8
  store i32* %42, i32** %send_alloca97, !reason !8
  %send_cast98 = bitcast i32** %send_alloca97 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast98, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32*, i1, i32 }* @comms_29 to i64), i8* %0), !reason !8
  %receive99 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i8* %0), !reason !8
  %bitcast100 = bitcast i8* %receive99 to i64*, !reason !8
  %receive_load101 = load i64, i64* %bitcast100, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_30 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %43 = add nsw i64 %receive_load101, 1
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %44, 257
  %send_alloca174 = alloca i64, !reason !11
  store i64 %43, i64* %send_alloca174, !reason !11
  %send_cast175 = bitcast i64* %send_alloca174 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast175, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_59 to i64), i8* %0), !reason !11
  %send_alloca204 = alloca i1, !reason !9
  store i1 %45, i1* %send_alloca204, !reason !9
  %send_cast205 = bitcast i1* %send_alloca204 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast205, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_72 to i64), i8* %0), !reason !9
  br i1 %45, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi104 = phi i32 [ 256, %l15 ], [ %new_phi114, %l20 ]
  %46 = sext i32 %new_phi104 to i64
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* @alloca.1, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !3
  %receive105 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_32 to i64), i8* %0), !reason !8
  %bitcast106 = bitcast i8* %receive105 to i32*, !reason !8
  %receive_load107 = load i32, i32* %bitcast106, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_32 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %49 = icmp slt i32 %48, %receive_load107
  %send_alloca206 = alloca i1, !reason !9
  store i1 %49, i1* %send_alloca206, !reason !9
  %send_cast207 = bitcast i1* %send_alloca206 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast207, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_73 to i64), i8* %0), !reason !9
  br i1 %49, label %l18, label %l19

l18:                                              ; preds = %l17
  %send_alloca111 = alloca i32, !reason !8
  store i32 %48, i32* %send_alloca111, !reason !8
  %send_cast112 = bitcast i32* %send_alloca111 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast112, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_35 to i64), i8* %0), !reason !8
  %50 = add nsw i32 %new_phi104, -1
  %repair_phi180 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_62 to i64), i8* %0), !reason !10
  %bitcast181 = bitcast i8* %repair_phi180 to i32*, !reason !10
  %receive_load182 = load i32, i32* %bitcast181, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_62 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !10
  br label %l20

l19:                                              ; preds = %l17
  %receive108 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_34 to i64), i8* %0), !reason !8
  %bitcast109 = bitcast i8* %receive108 to i32*, !reason !8
  %receive_load110 = load i32, i32* %bitcast109, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_34 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %51 = add nsw i32 %receive_load110, 1
  br label %l20

l20:                                              ; preds = %l19, %l18
  %new_phi113 = phi i32 [ %receive_load182, %l18 ], [ %51, %l19 ]
  %new_phi114 = phi i32 [ %50, %l18 ], [ %new_phi104, %l19 ]
  %send_alloca178 = alloca i32, !reason !11
  store i32 %new_phi113, i32* %send_alloca178, !reason !11
  %send_cast179 = bitcast i32* %send_alloca178 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast179, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_61 to i64), i8* %0), !reason !11
  %broadcast208 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_74 to i64), i8* %0), !reason !10
  %bitcast209 = bitcast i8* %broadcast208 to i1*, !reason !10
  %receive_load210 = load i1, i1* %bitcast209, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i1, i1, i32 }* @comms_74 to i64), i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i8* %0), !reason !10
  br i1 %receive_load210, label %l21, label %l17

l21:                                              ; preds = %l20, %l11, %l5
  %send_alloca150 = alloca i64, !reason !8
  store i64 %new_phi27, i64* %send_alloca150, !reason !8
  %send_cast151 = bitcast i64* %send_alloca150 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast151, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_49 to i64), i8* %0), !reason !8
  %send_alloca152 = alloca i64, !reason !8
  store i64 %2, i64* %send_alloca152, !reason !8
  %send_cast153 = bitcast i64* %send_alloca152 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast153, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_50 to i64), i8* %0), !reason !8
  %52 = add nsw i32 %new_phi28, %1
  %receive154 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_51 to i64), i8* %0), !reason !8
  %bitcast155 = bitcast i8* %receive154 to i64*, !reason !8
  %receive_load156 = load i64, i64* %bitcast155, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_51 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !8
  %53 = icmp slt i64 %receive_load156, 256
  %receive157 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_52 to i64), i8* %0), !reason !8
  %bitcast158 = bitcast i8* %receive157 to i32*, !reason !8
  %receive_load159 = load i32, i32* %bitcast158, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_52 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %54 = add i32 %receive_load159, %1
  %send_alloca160 = alloca i64, !reason !8
  store i64 %new_phi, i64* %send_alloca160, !reason !8
  %send_cast161 = bitcast i64* %send_alloca160 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast161, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_53 to i64), i8* %0), !reason !8
  %send_alloca162 = alloca i64, !reason !8
  store i64 %2, i64* %send_alloca162, !reason !8
  %send_cast163 = bitcast i64* %send_alloca162 to i8*, !reason !8
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast163, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_54 to i64), i8* %0), !reason !8
  %repair_phi = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_56 to i64), i8* %0), !reason !10
  %bitcast167 = bitcast i8* %repair_phi to i64*, !reason !10
  %receive_load168 = load i64, i64* %bitcast167, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_56 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %send_alloca169 = alloca i32, !reason !11
  store i32 %54, i32* %send_alloca169, !reason !11
  %send_cast170 = bitcast i32* %send_alloca169 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast170, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_57 to i64), i8* %0), !reason !11
  %repair_phi171 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i64, i1, i32 }* @comms_58 to i64), i8* %0), !reason !10
  %bitcast172 = bitcast i8* %repair_phi171 to i64*, !reason !10
  %receive_load173 = load i64, i64* %bitcast172, !reason !10
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i64, i1, i32 }* @comms_58 to i64), i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i8* %0), !reason !10
  %send_alloca223 = alloca i1, !reason !9
  store i1 %53, i1* %send_alloca223, !reason !9
  %send_cast224 = bitcast i1* %send_alloca223 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast224, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_80 to i64), i8* %0), !reason !9
  br i1 %53, label %l1, label %l22

l22:                                              ; preds = %l21
  %receive164 = call i8* bitcast (i8* (i32, i32, i64, i8*)* @receive to i8* (i64, i32, i64, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i32, i1, i32 }* @comms_55 to i64), i8* %0), !reason !8
  %bitcast165 = bitcast i8* %receive164 to i32*, !reason !8
  %receive_load166 = load i32, i32* %bitcast165, !reason !8
  call void bitcast (void (i64, i32, i8*)* @free_comms to void (i64, i64, i8*)*)(i64 ptrtoint ({ i32, i1, i32 }* @comms_55 to i64), i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i8* %0), !reason !8
  %55 = icmp slt i32 %receive_load166, 128
  %send_alloca225 = alloca i1, !reason !9
  store i1 %55, i1* %send_alloca225, !reason !9
  %send_cast226 = bitcast i1* %send_alloca225 to i8*, !reason !9
  call void bitcast (void (i8*, i32, i32, i64, i8*)* @send to void (i8*, i64, i32, i64, i8*)*)(i8* %send_cast226, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i64 ptrtoint ({ i1, i1, i32 }* @comms_81 to i64), i8* %0), !reason !9
  br i1 %55, label %l, label %l23

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
  %9 = load volatile i8, i8* %7, align 1, !tbaa !12
  store volatile i8 %9, i8* %8, align 1, !tbaa !12
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !13
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !16
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
  %16 = load i64, i64* %15, align 8, !tbaa !17
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !13
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !16
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !17
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
  %10 = load volatile i8, i8* %8, align 1, !tbaa !12
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %9

; <label>:12:                                     ; preds = %9
  tail call void @volatile_copy(i8* nonnull %6, i8* %0, i32 %1)
  %13 = sext i32 %1 to i64
  %14 = getelementptr i8, i8* %6, i64 %13
  store i8 1, i8* %14, align 1, !tbaa !12
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define i8* @_receive(i32, i64, i8* nocapture readnone) local_unnamed_addr #0 {
  %4 = inttoptr i64 %1 to i8*
  %5 = sext i32 %0 to i64
  %6 = getelementptr i8, i8* %4, i64 %5
  br label %7

; <label>:7:                                      ; preds = %7, %3
  %8 = load volatile i8, i8* %6, align 1, !tbaa !12
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
  store volatile i8 0, i8* %6, align 1, !tbaa !12
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
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"replace argument"}
!8 = !{!"replace mapped op"}
!9 = !{!"broadcast"}
!10 = !{!"receive"}
!11 = !{!"repair_phi"}
!12 = !{!5, !5, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"Closure", !15, i64 0, !15, i64 8}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!15, !15, i64 0}
