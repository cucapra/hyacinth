; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.Comm = type { i32, i32, i8*, %struct.Comm* }
%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }
%struct._opaque_pthread_rwlockattr_t = type { i64, [16 x i8] }
%struct.Context = type { %struct.Comm*, %struct._opaque_pthread_rwlock_t }
%struct._opaque_pthread_t = type { i64, %struct.__darwin_pthread_handler_rec*, [8176 x i8] }
%struct.__darwin_pthread_handler_rec = type { void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@__const.main.a = global [256 x i32] [i32 8630, i32 2371, i32 2106, i32 7047, i32 9475, i32 9554, i32 7281, i32 6704, i32 1253, i32 2157, i32 2702, i32 5221, i32 549, i32 5266, i32 7151, i32 8215, i32 8118, i32 7034, i32 2088, i32 9135, i32 3332, i32 6269, i32 5470, i32 1887, i32 9323, i32 8378, i32 8971, i32 7937, i32 9515, i32 3476, i32 1646, i32 3823, i32 555, i32 2036, i32 5010, i32 2633, i32 6890, i32 6000, i32 3503, i32 4297, i32 8403, i32 1966, i32 4584, i32 296, i32 322, i32 5328, i32 9540, i32 4442, i32 8455, i32 1645, i32 918, i32 2763, i32 4392, i32 6305, i32 3658, i32 8480, i32 8317, i32 6815, i32 5122, i32 5437, i32 2203, i32 511, i32 5744, i32 7766, i32 2356, i32 2207, i32 9796, i32 3578, i32 7374, i32 2888, i32 9291, i32 7479, i32 5700, i32 1726, i32 1181, i32 4994, i32 9697, i32 5623, i32 9487, i32 8533, i32 5359, i32 5216, i32 1, i32 6160, i32 8711, i32 8220, i32 6721, i32 4251, i32 288, i32 1950, i32 4118, i32 8633, i32 7052, i32 5668, i32 9958, i32 9749, i32 3057, i32 163, i32 5420, i32 7122, i32 3599, i32 2192, i32 5139, i32 4181, i32 6943, i32 16, i32 2609, i32 144, i32 3845, i32 5201, i32 8248, i32 5315, i32 4539, i32 8064, i32 671, i32 7867, i32 3556, i32 6717, i32 5041, i32 7526, i32 2624, i32 2612, i32 1269, i32 6184, i32 5584, i32 4656, i32 4378, i32 1243, i32 7797, i32 9670, i32 3304, i32 5750, i32 3355, i32 8214, i32 2352, i32 5843, i32 770, i32 7960, i32 3927, i32 9337, i32 6192, i32 4939, i32 4203, i32 9404, i32 3437, i32 4012, i32 8768, i32 6298, i32 9854, i32 7487, i32 537, i32 6765, i32 8956, i32 292, i32 6868, i32 8865, i32 2349, i32 1272, i32 2426, i32 5098, i32 1587, i32 7189, i32 7336, i32 2419, i32 3763, i32 5662, i32 9479, i32 3154, i32 33, i32 4661, i32 4990, i32 7170, i32 6230, i32 5919, i32 2969, i32 1882, i32 4291, i32 6145, i32 9519, i32 2130, i32 3981, i32 6171, i32 7298, i32 8669, i32 1915, i32 1826, i32 520, i32 2619, i32 2685, i32 9032, i32 7117, i32 7485, i32 3923, i32 4877, i32 6452, i32 1773, i32 2854, i32 3782, i32 448, i32 6425, i32 1996, i32 1688, i32 7995, i32 8573, i32 7790, i32 4629, i32 3495, i32 3746, i32 8733, i32 7781, i32 8415, i32 526, i32 6759, i32 9079, i32 8943, i32 3982, i32 6409, i32 8583, i32 3020, i32 4513, i32 5015, i32 7657, i32 6111, i32 3815, i32 9629, i32 1856, i32 1560, i32 8332, i32 5885, i32 9471, i32 1330, i32 7337, i32 7486, i32 9288, i32 7380, i32 524, i32 4007, i32 9589, i32 9680, i32 4558, i32 3996, i32 9331, i32 2769, i32 4166, i32 1952, i32 8244, i32 434, i32 5746, i32 7112, i32 7613, i32 2348, i32 4351, i32 393, i32 4421, i32 6386, i32 8158]
@.str = global [4 x i8] c"%d\0A\00"
@a = global [256 x i32] zeroinitializer
@a.1 = global [256 x i32] zeroinitializer
@funs = global [2 x void (i8*)*] [void (i8*)* @ms_mergesort_0, void (i8*)* @ms_mergesort_1]
@__const.main.a.1 = private unnamed_addr constant [256 x i32] [i32 8630, i32 2371, i32 2106, i32 7047, i32 9475, i32 9554, i32 7281, i32 6704, i32 1253, i32 2157, i32 2702, i32 5221, i32 549, i32 5266, i32 7151, i32 8215, i32 8118, i32 7034, i32 2088, i32 9135, i32 3332, i32 6269, i32 5470, i32 1887, i32 9323, i32 8378, i32 8971, i32 7937, i32 9515, i32 3476, i32 1646, i32 3823, i32 555, i32 2036, i32 5010, i32 2633, i32 6890, i32 6000, i32 3503, i32 4297, i32 8403, i32 1966, i32 4584, i32 296, i32 322, i32 5328, i32 9540, i32 4442, i32 8455, i32 1645, i32 918, i32 2763, i32 4392, i32 6305, i32 3658, i32 8480, i32 8317, i32 6815, i32 5122, i32 5437, i32 2203, i32 511, i32 5744, i32 7766, i32 2356, i32 2207, i32 9796, i32 3578, i32 7374, i32 2888, i32 9291, i32 7479, i32 5700, i32 1726, i32 1181, i32 4994, i32 9697, i32 5623, i32 9487, i32 8533, i32 5359, i32 5216, i32 1, i32 6160, i32 8711, i32 8220, i32 6721, i32 4251, i32 288, i32 1950, i32 4118, i32 8633, i32 7052, i32 5668, i32 9958, i32 9749, i32 3057, i32 163, i32 5420, i32 7122, i32 3599, i32 2192, i32 5139, i32 4181, i32 6943, i32 16, i32 2609, i32 144, i32 3845, i32 5201, i32 8248, i32 5315, i32 4539, i32 8064, i32 671, i32 7867, i32 3556, i32 6717, i32 5041, i32 7526, i32 2624, i32 2612, i32 1269, i32 6184, i32 5584, i32 4656, i32 4378, i32 1243, i32 7797, i32 9670, i32 3304, i32 5750, i32 3355, i32 8214, i32 2352, i32 5843, i32 770, i32 7960, i32 3927, i32 9337, i32 6192, i32 4939, i32 4203, i32 9404, i32 3437, i32 4012, i32 8768, i32 6298, i32 9854, i32 7487, i32 537, i32 6765, i32 8956, i32 292, i32 6868, i32 8865, i32 2349, i32 1272, i32 2426, i32 5098, i32 1587, i32 7189, i32 7336, i32 2419, i32 3763, i32 5662, i32 9479, i32 3154, i32 33, i32 4661, i32 4990, i32 7170, i32 6230, i32 5919, i32 2969, i32 1882, i32 4291, i32 6145, i32 9519, i32 2130, i32 3981, i32 6171, i32 7298, i32 8669, i32 1915, i32 1826, i32 520, i32 2619, i32 2685, i32 9032, i32 7117, i32 7485, i32 3923, i32 4877, i32 6452, i32 1773, i32 2854, i32 3782, i32 448, i32 6425, i32 1996, i32 1688, i32 7995, i32 8573, i32 7790, i32 4629, i32 3495, i32 3746, i32 8733, i32 7781, i32 8415, i32 526, i32 6759, i32 9079, i32 8943, i32 3982, i32 6409, i32 8583, i32 3020, i32 4513, i32 5015, i32 7657, i32 6111, i32 3815, i32 9629, i32 1856, i32 1560, i32 8332, i32 5885, i32 9471, i32 1330, i32 7337, i32 7486, i32 9288, i32 7380, i32 524, i32 4007, i32 9589, i32 9680, i32 4558, i32 3996, i32 9331, i32 2769, i32 4166, i32 1952, i32 8244, i32 434, i32 5746, i32 7112, i32 7613, i32 2348, i32 4351, i32 393, i32 4421, i32 6386, i32 8158], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1

define void @ms_mergesort_0(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 23, i8* %0), !reason !3
  %bitcast75 = bitcast i8* %argument to i32**, !reason !3
  %receive_load76 = load i32*, i32** %bitcast75, !reason !3
  br label %l

l:                                                ; preds = %l22, %entry
  %new_phi = phi i32 [ 1, %entry ], [ %60, %l22 ], !time !4
  %send_alloca = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca, !reason !5
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 0, i8* %0), !reason !5
  %1 = mul i32 %new_phi, -2, !time !6
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 1, i8* %0), !reason !5
  %bitcast = bitcast i8* %receive to i32*, !reason !5
  %receive_load = load i32, i32* %bitcast, !reason !5
  %2 = zext i32 %receive_load to i64, !time !7
  %3 = sext i32 %new_phi to i64, !time !8
  %4 = sext i32 %new_phi to i64, !time !9
  %send_alloca24 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca24, !reason !5
  %send_cast25 = bitcast i32* %send_alloca24 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast25, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 2, i8* %0), !reason !5
  %repair_phi = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 71, i8* %0), !reason !10
  %bitcast202 = bitcast i8* %repair_phi to i64*, !reason !10
  %receive_load203 = load i64, i64* %bitcast202, !reason !10
  %send_alloca204 = alloca i32, !reason !11
  store i32 %new_phi, i32* %send_alloca204, !reason !11
  %send_cast205 = bitcast i32* %send_alloca204 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast205, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 72, i8* %0), !reason !11
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi26 = phi i64 [ %receive_load203, %l ], [ %59, %l21 ], !time !12
  %new_phi27 = phi i64 [ 0, %l ], [ %58, %l21 ], !time !4
  %receive28 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 3, i8* %0), !reason !5
  %bitcast29 = bitcast i8* %receive28 to i32*, !reason !5
  %receive_load30 = load i32, i32* %bitcast29, !reason !5
  %5 = sext i32 %receive_load30 to i64, !time !13
  %send_alloca31 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca31, !reason !5
  %send_cast32 = bitcast i64* %send_alloca31 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast32, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 4, i8* %0), !reason !5
  %receive33 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 5, i8* %0), !reason !5
  %bitcast34 = bitcast i8* %receive33 to i64*, !reason !5
  %receive_load35 = load i64, i64* %bitcast34, !reason !5
  %6 = getelementptr [256 x i32], [256 x i32]* @a, i64 0, i64 %receive_load35, !time !14
  %7 = bitcast i32* %6 to i8*, !time !15
  %receive36 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 7, i8* %0), !reason !5
  %bitcast37 = bitcast i8* %receive36 to i32**, !reason !5
  %receive_load38 = load i32*, i32** %bitcast37, !reason !5
  %8 = bitcast i32* %receive_load38 to i8*, !time !16
  %send_alloca39 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca39, !reason !5
  %send_cast40 = bitcast i64* %send_alloca39 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast40, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 8, i8* %0), !reason !5
  %send_alloca41 = alloca i64, !reason !5
  store i64 %2, i64* %send_alloca41, !reason !5
  %send_cast42 = bitcast i64* %send_alloca41 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast42, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 9, i8* %0), !reason !5
  %receive43 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 10, i8* %0), !reason !5
  %bitcast44 = bitcast i8* %receive43 to i64*, !reason !5
  %receive_load45 = load i64, i64* %bitcast44, !reason !5
  %9 = trunc i64 %receive_load45 to i32, !time !17
  %send_alloca46 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca46, !reason !5
  %send_cast47 = bitcast i32* %send_alloca46 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast47, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 11, i8* %0), !reason !5
  %send_alloca48 = alloca i32, !reason !5
  store i32 %9, i32* %send_alloca48, !reason !5
  %send_cast49 = bitcast i32* %send_alloca48 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast49, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 12, i8* %0), !reason !5
  %receive50 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 13, i8* %0), !reason !5
  %bitcast51 = bitcast i8* %receive50 to i1*, !reason !5
  %receive_load52 = load i1, i1* %bitcast51, !reason !5
  %receive53 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 14, i8* %0), !reason !5
  %bitcast54 = bitcast i8* %receive53 to i32*, !reason !5
  %receive_load55 = load i32, i32* %bitcast54, !reason !5
  %receive56 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 15, i8* %0), !reason !5
  %bitcast57 = bitcast i8* %receive56 to i32*, !reason !5
  %receive_load58 = load i32, i32* %bitcast57, !reason !5
  %10 = select i1 %receive_load52, i32 %receive_load55, i32 %receive_load58, !time !18
  %11 = trunc i64 %new_phi27 to i32, !time !8
  %send_alloca59 = alloca i32, !reason !5
  store i32 %1, i32* %send_alloca59, !reason !5
  %send_cast60 = bitcast i32* %send_alloca59 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast60, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 16, i8* %0), !reason !5
  %send_alloca61 = alloca i32, !reason !5
  store i32 %11, i32* %send_alloca61, !reason !5
  %send_cast62 = bitcast i32* %send_alloca61 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast62, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 17, i8* %0), !reason !5
  %send_alloca63 = alloca i32, !reason !5
  store i32 %10, i32* %send_alloca63, !reason !5
  %send_cast64 = bitcast i32* %send_alloca63 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast64, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 18, i8* %0), !reason !5
  %receive65 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 19, i8* %0), !reason !5
  %bitcast66 = bitcast i8* %receive65 to i32*, !reason !5
  %receive_load67 = load i32, i32* %bitcast66, !reason !5
  %12 = zext i32 %receive_load67 to i64, !time !19
  %13 = shl nuw nsw i64 %12, 2, !time !20
  %send_alloca68 = alloca i64, !reason !5
  store i64 %13, i64* %send_alloca68, !reason !5
  %send_cast69 = bitcast i64* %send_alloca68 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast69, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 20, i8* %0), !reason !5
  %send_alloca70 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca70, !reason !5
  %send_cast71 = bitcast i64* %send_alloca70 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast71, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 21, i8* %0), !reason !5
  %receive72 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 22, i8* %0), !reason !5
  %bitcast73 = bitcast i8* %receive72 to i64*, !reason !5
  %receive_load74 = load i64, i64* %bitcast73, !reason !5
  %14 = getelementptr [256 x i32], [256 x i32]* @a.1, i64 0, i64 %receive_load74, !time !21
  %15 = bitcast i32* %14 to i8*, !time !22
  %receive77 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 24, i8* %0), !reason !5
  %bitcast78 = bitcast i8* %receive77 to i64*, !reason !5
  %receive_load79 = load i64, i64* %bitcast78, !reason !5
  %16 = getelementptr i32, i32* %receive_load76, i64 %receive_load79, !time !23
  %17 = bitcast i32* %16 to i8*, !time !24
  %send_alloca80 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca80, !reason !5
  %send_cast81 = bitcast i64* %send_alloca80 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast81, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 25, i8* %0), !reason !5
  %receive82 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 26, i8* %0), !reason !5
  %bitcast83 = bitcast i8* %receive82 to i64*, !reason !5
  %receive_load84 = load i64, i64* %bitcast83, !reason !5
  %18 = trunc i64 %receive_load84 to i32, !time !25
  %19 = add i32 %new_phi, %18, !time !26
  %receive85 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 27, i8* %0), !reason !5
  %bitcast86 = bitcast i8* %receive85 to i64*, !reason !5
  %receive_load87 = load i64, i64* %bitcast86, !reason !5
  %20 = trunc i64 %receive_load87 to i32, !time !27
  %send_alloca88 = alloca i32, !reason !5
  store i32 %20, i32* %send_alloca88, !reason !5
  %send_cast89 = bitcast i32* %send_alloca88 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast89, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 28, i8* %0), !reason !5
  %send_alloca90 = alloca i32, !reason !5
  store i32 %19, i32* %send_alloca90, !reason !5
  %send_cast91 = bitcast i32* %send_alloca90 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast91, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 29, i8* %0), !reason !5
  %receive92 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 30, i8* %0), !reason !5
  %bitcast93 = bitcast i8* %receive92 to i1*, !reason !5
  %receive_load94 = load i1, i1* %bitcast93, !reason !5
  %receive95 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 31, i8* %0), !reason !5
  %bitcast96 = bitcast i8* %receive95 to i32*, !reason !5
  %receive_load97 = load i32, i32* %bitcast96, !reason !5
  %21 = select i1 %receive_load94, i32 %19, i32 %receive_load97, !time !28
  %send_alloca98 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca98, !reason !5
  %send_cast99 = bitcast i64* %send_alloca98 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast99, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 32, i8* %0), !reason !5
  %receive100 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 33, i8* %0), !reason !5
  %bitcast101 = bitcast i8* %receive100 to i32*, !reason !5
  %receive_load102 = load i32, i32* %bitcast101, !reason !5
  %22 = mul i32 %1, %receive_load102, !time !29
  %send_alloca103 = alloca i32, !reason !5
  store i32 %22, i32* %send_alloca103, !reason !5
  %send_cast104 = bitcast i32* %send_alloca103 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast104, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 34, i8* %0), !reason !5
  %send_alloca105 = alloca i32, !reason !5
  store i32 %21, i32* %send_alloca105, !reason !5
  %send_cast106 = bitcast i32* %send_alloca105 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast106, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 35, i8* %0), !reason !5
  %receive107 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 36, i8* %0), !reason !5
  %bitcast108 = bitcast i8* %receive107 to i64*, !reason !5
  %receive_load109 = load i64, i64* %bitcast108, !reason !5
  %23 = add nsw i64 %receive_load109, %3, !time !30
  %send_alloca110 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca110, !reason !5
  %send_cast111 = bitcast i32* %send_alloca110 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast111, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 37, i8* %0), !reason !5
  %24 = add nsw i64 %23, %4, !time !31
  %send_alloca112 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca112, !reason !5
  %send_cast113 = bitcast i32* %send_alloca112 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast113, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 38, i8* %0), !reason !5
  %receive114 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 39, i8* %0), !reason !5
  %bitcast115 = bitcast i8* %receive114 to i32*, !reason !5
  %receive_load116 = load i32, i32* %bitcast115, !reason !5
  %25 = add nsw i32 %receive_load116, -1, !time !32
  %26 = icmp slt i64 %24, 257, !time !33
  %send_alloca232 = alloca i1, !reason !34
  store i1 %26, i1* %send_alloca232, !reason !34
  %send_cast233 = bitcast i1* %send_alloca232 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast233, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 83, i8* %0), !reason !34
  br i1 %26, label %l3, label %l2

l2:                                               ; preds = %l1
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 84, i8* %0), !reason !10
  %bitcast234 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load235 = load i1, i1* %bitcast234, !reason !10
  br i1 %receive_load235, label %l12, label %l13

l3:                                               ; preds = %l1
  %broadcast245 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 89, i8* %0), !reason !10
  %bitcast246 = bitcast i8* %broadcast245 to i1*, !reason !10
  %receive_load247 = load i1, i1* %bitcast246, !reason !10
  br i1 %receive_load247, label %l4, label %l5

l4:                                               ; preds = %l3
  %receive151 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 52, i8* %0), !reason !5
  %bitcast152 = bitcast i8* %receive151 to i64*, !reason !5
  %receive_load153 = load i64, i64* %bitcast152, !reason !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 4 %8, i64 %receive_load153, i1 false), !time !35
  %send_alloca154 = alloca i64, !reason !5
  store i64 %23, i64* %send_alloca154, !reason !5
  %send_cast155 = bitcast i64* %send_alloca154 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast155, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 53, i8* %0), !reason !5
  %send_alloca156 = alloca i32, !reason !5
  store i32 %25, i32* %send_alloca156, !reason !5
  %send_cast157 = bitcast i32* %send_alloca156 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast157, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 54, i8* %0), !reason !5
  br label %l7

l5:                                               ; preds = %l7, %l3
  %receive171 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 60, i8* %0), !reason !5
  %bitcast172 = bitcast i8* %receive171 to i64*, !reason !5
  %receive_load173 = load i64, i64* %bitcast172, !reason !5
  %27 = icmp slt i64 %receive_load173, %24, !time !36
  %send_alloca251 = alloca i1, !reason !34
  store i1 %27, i1* %send_alloca251, !reason !34
  %send_cast252 = bitcast i1* %send_alloca251 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast252, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 91, i8* %0), !reason !34
  br i1 %27, label %l6, label %l21

l6:                                               ; preds = %l5
  %28 = trunc i64 %24 to i32, !time !36
  %29 = add i32 %28, -1, !time !37
  %repair_phi224 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 80, i8* %0), !reason !10
  %bitcast225 = bitcast i8* %repair_phi224 to i64*, !reason !10
  %receive_load226 = load i64, i64* %bitcast225, !reason !10
  br label %l8

l7:                                               ; preds = %l7, %l4
  %new_phi158 = phi i64 [ %5, %l4 ], [ %receive_load223, %l7 ], !time !4
  %send_alloca159 = alloca i64, !reason !5
  store i64 %new_phi158, i64* %send_alloca159, !reason !5
  %send_cast160 = bitcast i64* %send_alloca159 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast160, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 55, i8* %0), !reason !5
  %receive161 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 56, i8* %0), !reason !5
  %bitcast162 = bitcast i8* %receive161 to i32**, !reason !5
  %receive_load163 = load i32*, i32** %bitcast162, !reason !5
  %30 = load i32, i32* %receive_load163, align 4, !tbaa !38, !time !42
  %31 = trunc i64 %new_phi158 to i32, !time !8
  %receive164 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 57, i8* %0), !reason !5
  %bitcast165 = bitcast i8* %receive164 to i32*, !reason !5
  %receive_load166 = load i32, i32* %bitcast165, !reason !5
  %32 = sub i32 %receive_load166, %31, !time !9
  %33 = sext i32 %32 to i64, !time !7
  %34 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %33, !time !6
  store i32 %30, i32* %34, align 4, !tbaa !38, !time !43
  %send_alloca167 = alloca i64, !reason !5
  store i64 %new_phi158, i64* %send_alloca167, !reason !5
  %send_cast168 = bitcast i64* %send_alloca167 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast168, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 58, i8* %0), !reason !5
  %send_alloca169 = alloca i64, !reason !5
  store i64 %24, i64* %send_alloca169, !reason !5
  %send_cast170 = bitcast i64* %send_alloca169 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast170, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 59, i8* %0), !reason !5
  %repair_phi221 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 79, i8* %0), !reason !10
  %bitcast222 = bitcast i8* %repair_phi221 to i64*, !reason !10
  %receive_load223 = load i64, i64* %bitcast222, !reason !10
  %broadcast248 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 90, i8* %0), !reason !10
  %bitcast249 = bitcast i8* %broadcast248 to i1*, !reason !10
  %receive_load250 = load i1, i1* %bitcast249, !reason !10
  br i1 %receive_load250, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi174 = phi i64 [ %receive_load226, %l6 ], [ %40, %l11 ], !time !44
  %new_phi175 = phi i32 [ %29, %l6 ], [ %receive_load229, %l11 ], !time !45
  %35 = sext i32 %new_phi175 to i64, !time !46
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %35, !time !47
  %37 = load i32, i32* %36, align 4, !tbaa !38, !time !48
  %receive176 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 61, i8* %0), !reason !5
  %bitcast177 = bitcast i8* %receive176 to i32**, !reason !5
  %receive_load178 = load i32*, i32** %bitcast177, !reason !5
  %38 = load i32, i32* %receive_load178, align 4, !tbaa !38, !time !49
  %39 = icmp slt i32 %37, %38, !time !25
  %send_alloca179 = alloca i64, !reason !5
  store i64 %new_phi174, i64* %send_alloca179, !reason !5
  %send_cast180 = bitcast i64* %send_alloca179 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast180, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 62, i8* %0), !reason !5
  %send_alloca253 = alloca i1, !reason !34
  store i1 %39, i1* %send_alloca253, !reason !34
  %send_cast254 = bitcast i1* %send_alloca253 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast254, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 92, i8* %0), !reason !34
  br i1 %39, label %l9, label %l10

l9:                                               ; preds = %l8
  %receive184 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 64, i8* %0), !reason !5
  %bitcast185 = bitcast i8* %receive184 to i32**, !reason !5
  %receive_load186 = load i32*, i32** %bitcast185, !reason !5
  store i32 %37, i32* %receive_load186, align 4, !tbaa !38, !time !50
  %send_alloca187 = alloca i32, !reason !5
  store i32 %new_phi175, i32* %send_alloca187, !reason !5
  %send_cast188 = bitcast i32* %send_alloca187 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast188, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 65, i8* %0), !reason !5
  br label %l11

l10:                                              ; preds = %l8
  %receive181 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 63, i8* %0), !reason !5
  %bitcast182 = bitcast i8* %receive181 to i32**, !reason !5
  %receive_load183 = load i32*, i32** %bitcast182, !reason !5
  store i32 %38, i32* %receive_load183, align 4, !tbaa !38, !time !50
  %send_alloca230 = alloca i32, !reason !11
  store i32 %new_phi175, i32* %send_alloca230, !reason !11
  %send_cast231 = bitcast i32* %send_alloca230 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast231, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 82, i8* %0), !reason !11
  br label %l11

l11:                                              ; preds = %l10, %l9
  %40 = add nsw i64 %new_phi174, 1, !time !36
  %41 = icmp eq i64 %40, %new_phi26, !time !37
  %repair_phi227 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 81, i8* %0), !reason !10
  %bitcast228 = bitcast i8* %repair_phi227 to i32*, !reason !10
  %receive_load229 = load i32, i32* %bitcast228, !reason !10
  %send_alloca255 = alloca i1, !reason !34
  store i1 %41, i1* %send_alloca255, !reason !34
  %send_cast256 = bitcast i1* %send_alloca255 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast256, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 93, i8* %0), !reason !34
  br i1 %41, label %l21, label %l8

l12:                                              ; preds = %l2
  %receive117 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 40, i8* %0), !reason !5
  %bitcast118 = bitcast i8* %receive117 to i64*, !reason !5
  %receive_load119 = load i64, i64* %bitcast118, !reason !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 4 %17, i64 %receive_load119, i1 false), !time !35
  br label %l13

l13:                                              ; preds = %l12, %l2
  %42 = icmp slt i64 %23, 257, !time !36
  %send_alloca236 = alloca i1, !reason !34
  store i1 %42, i1* %send_alloca236, !reason !34
  %send_cast237 = bitcast i1* %send_alloca236 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast237, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 85, i8* %0), !reason !34
  br i1 %42, label %l14, label %l15

l14:                                              ; preds = %l13
  %43 = add i64 %23, 256, !time !36
  %repair_phi208 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 74, i8* %0), !reason !10
  %bitcast209 = bitcast i8* %repair_phi208 to i64*, !reason !10
  %receive_load210 = load i64, i64* %bitcast209, !reason !10
  br label %l16

l15:                                              ; preds = %l16, %l13
  %receive128 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 44, i8* %0), !reason !5
  %bitcast129 = bitcast i8* %receive128 to i64*, !reason !5
  %receive_load130 = load i64, i64* %bitcast129, !reason !5
  %44 = trunc i64 %receive_load130 to i32, !time !36
  br label %l17

l16:                                              ; preds = %l16, %l14
  %new_phi120 = phi i64 [ %receive_load210, %l14 ], [ %receive_load213, %l16 ], !time !4
  %send_alloca121 = alloca i64, !reason !5
  store i64 %new_phi120, i64* %send_alloca121, !reason !5
  %send_cast122 = bitcast i64* %send_alloca121 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast122, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 41, i8* %0), !reason !5
  %receive123 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 42, i8* %0), !reason !5
  %bitcast124 = bitcast i8* %receive123 to i32**, !reason !5
  %receive_load125 = load i32*, i32** %bitcast124, !reason !5
  %45 = load i32, i32* %receive_load125, align 4, !tbaa !38, !time !42
  %46 = sub i64 %43, %new_phi120, !time !8
  %47 = shl i64 %46, 32, !time !9
  %48 = ashr exact i64 %47, 32, !time !7
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* @a.1, i64 0, i64 %48, !time !6
  store i32 %45, i32* %49, align 4, !tbaa !38, !time !43
  %send_alloca126 = alloca i64, !reason !5
  store i64 %new_phi120, i64* %send_alloca126, !reason !5
  %send_cast127 = bitcast i64* %send_alloca126 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast127, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 43, i8* %0), !reason !5
  %repair_phi211 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 75, i8* %0), !reason !10
  %bitcast212 = bitcast i8* %repair_phi211 to i64*, !reason !10
  %receive_load213 = load i64, i64* %bitcast212, !reason !10
  %broadcast238 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 86, i8* %0), !reason !10
  %bitcast239 = bitcast i8* %broadcast238 to i1*, !reason !10
  %receive_load240 = load i1, i1* %bitcast239, !reason !10
  br i1 %receive_load240, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi131 = phi i32 [ %44, %l15 ], [ %receive_load218, %l20 ], !time !45
  %receive132 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 45, i8* %0), !reason !5
  %bitcast133 = bitcast i8* %receive132 to i32*, !reason !5
  %receive_load134 = load i32, i32* %bitcast133, !reason !5
  %50 = sext i32 %receive_load134 to i64, !time !37
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* @a.1, i64 0, i64 %50, !time !51
  %52 = load i32, i32* %51, align 4, !tbaa !38, !time !49
  %send_alloca135 = alloca i32, !reason !5
  store i32 %new_phi131, i32* %send_alloca135, !reason !5
  %send_cast136 = bitcast i32* %send_alloca135 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast136, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 46, i8* %0), !reason !5
  %receive137 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 47, i8* %0), !reason !5
  %bitcast138 = bitcast i8* %receive137 to i32**, !reason !5
  %receive_load139 = load i32*, i32** %bitcast138, !reason !5
  %53 = load i32, i32* %receive_load139, align 4, !tbaa !38, !time !48
  %54 = icmp slt i32 %52, %53, !time !25
  %send_alloca241 = alloca i1, !reason !34
  store i1 %54, i1* %send_alloca241, !reason !34
  %send_cast242 = bitcast i1* %send_alloca241 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast242, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 87, i8* %0), !reason !34
  br i1 %54, label %l18, label %l19

l18:                                              ; preds = %l17
  %receive145 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 50, i8* %0), !reason !5
  %bitcast146 = bitcast i8* %receive145 to i32**, !reason !5
  %receive_load147 = load i32*, i32** %bitcast146, !reason !5
  store i32 %52, i32* %receive_load147, align 4, !tbaa !38, !time !50
  %send_alloca219 = alloca i32, !reason !11
  store i32 %new_phi131, i32* %send_alloca219, !reason !11
  %send_cast220 = bitcast i32* %send_alloca219 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast220, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 78, i8* %0), !reason !11
  br label %l20

l19:                                              ; preds = %l17
  %receive140 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 48, i8* %0), !reason !5
  %bitcast141 = bitcast i8* %receive140 to i32**, !reason !5
  %receive_load142 = load i32*, i32** %bitcast141, !reason !5
  store i32 %53, i32* %receive_load142, align 4, !tbaa !38, !time !50
  %send_alloca143 = alloca i32, !reason !5
  store i32 %new_phi131, i32* %send_alloca143, !reason !5
  %send_cast144 = bitcast i32* %send_alloca143 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast144, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 49, i8* %0), !reason !5
  br label %l20

l20:                                              ; preds = %l19, %l18
  %receive148 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 51, i8* %0), !reason !5
  %bitcast149 = bitcast i8* %receive148 to i64*, !reason !5
  %receive_load150 = load i64, i64* %bitcast149, !reason !5
  %55 = add nsw i64 %receive_load150, 1, !time !36
  %56 = icmp eq i64 %55, 257, !time !37
  %send_alloca214 = alloca i64, !reason !11
  store i64 %55, i64* %send_alloca214, !reason !11
  %send_cast215 = bitcast i64* %send_alloca214 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast215, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 76, i8* %0), !reason !11
  %repair_phi216 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 77, i8* %0), !reason !10
  %bitcast217 = bitcast i8* %repair_phi216 to i32*, !reason !10
  %receive_load218 = load i32, i32* %bitcast217, !reason !10
  %send_alloca243 = alloca i1, !reason !34
  store i1 %56, i1* %send_alloca243, !reason !34
  %send_cast244 = bitcast i1* %send_alloca243 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast244, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 88, i8* %0), !reason !34
  br i1 %56, label %l21, label %l17

l21:                                              ; preds = %l20, %l11, %l5
  %receive189 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 66, i8* %0), !reason !5
  %bitcast190 = bitcast i8* %receive189 to i64*, !reason !5
  %receive_load191 = load i64, i64* %bitcast190, !reason !5
  %receive192 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 67, i8* %0), !reason !5
  %bitcast193 = bitcast i8* %receive192 to i64*, !reason !5
  %receive_load194 = load i64, i64* %bitcast193, !reason !5
  %57 = add nsw i64 %receive_load191, %receive_load194, !time !36
  %send_alloca195 = alloca i64, !reason !5
  store i64 %57, i64* %send_alloca195, !reason !5
  %send_cast196 = bitcast i64* %send_alloca195 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast196, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 68, i8* %0), !reason !5
  %58 = add nuw nsw i64 %new_phi27, 1, !time !37
  %receive197 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 69, i8* %0), !reason !5
  %bitcast198 = bitcast i8* %receive197 to i64*, !reason !5
  %receive_load199 = load i64, i64* %bitcast198, !reason !5
  %59 = add i64 %new_phi26, %receive_load199, !time !51
  %send_alloca206 = alloca i64, !reason !11
  store i64 %57, i64* %send_alloca206, !reason !11
  %send_cast207 = bitcast i64* %send_alloca206 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast207, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 73, i8* %0), !reason !11
  %broadcast257 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 94, i8* %0), !reason !10
  %bitcast258 = bitcast i8* %broadcast257 to i1*, !reason !10
  %receive_load259 = load i1, i1* %bitcast258, !reason !10
  br i1 %receive_load259, label %l1, label %l22

l22:                                              ; preds = %l21
  %60 = shl nsw i32 %new_phi, 1, !time !36
  %send_alloca200 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca200, !reason !5
  %send_cast201 = bitcast i32* %send_alloca200 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast201, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 70, i8* %0), !reason !5
  %broadcast260 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 95, i8* %0), !reason !10
  %bitcast261 = bitcast i8* %broadcast260 to i1*, !reason !10
  %receive_load262 = load i1, i1* %bitcast261, !reason !10
  br i1 %receive_load262, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

define void @ms_mergesort_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 6, i8* %0), !reason !3
  %bitcast36 = bitcast i8* %argument to i32**, !reason !3
  %receive_load37 = load i32*, i32** %bitcast36, !reason !3
  br label %l

l:                                                ; preds = %l22, %entry
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 0, i8* %0), !reason !5
  %bitcast = bitcast i8* %receive to i32*, !reason !5
  %receive_load = load i32, i32* %bitcast, !reason !5
  %1 = shl i32 %receive_load, 1, !time !46
  %2 = sext i32 %1 to i64, !time !47
  %3 = zext i32 %1 to i64, !time !27
  %send_alloca = alloca i32, !reason !5
  store i32 %1, i32* %send_alloca, !reason !5
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 1, i8* %0), !reason !5
  %receive24 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 2, i8* %0), !reason !5
  %bitcast25 = bitcast i8* %receive24 to i32*, !reason !5
  %receive_load26 = load i32, i32* %bitcast25, !reason !5
  %4 = icmp sgt i32 %receive_load26, 0, !time !25
  %send_alloca201 = alloca i64, !reason !11
  store i64 %2, i64* %send_alloca201, !reason !11
  %send_cast202 = bitcast i64* %send_alloca201 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast202, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 71, i8* %0), !reason !11
  %repair_phi = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 72, i8* %0), !reason !10
  %bitcast203 = bitcast i8* %repair_phi to i32*, !reason !10
  %receive_load204 = load i32, i32* %bitcast203, !reason !10
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi = phi i32 [ %receive_load204, %l ], [ %51, %l21 ], !time !52
  %new_phi27 = phi i64 [ 0, %l ], [ %receive_load207, %l21 ], !time !53
  %new_phi28 = phi i32 [ 0, %l ], [ %49, %l21 ], !time !54
  %send_alloca29 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca29, !reason !5
  %send_cast30 = bitcast i32* %send_alloca29 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast30, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 3, i8* %0), !reason !5
  %receive31 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 4, i8* %0), !reason !5
  %bitcast32 = bitcast i8* %receive31 to i64*, !reason !5
  %receive_load33 = load i64, i64* %bitcast32, !reason !5
  %5 = mul nsw i64 %receive_load33, %2, !time !55
  %send_alloca34 = alloca i64, !reason !5
  store i64 %5, i64* %send_alloca34, !reason !5
  %send_cast35 = bitcast i64* %send_alloca34 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast35, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 5, i8* %0), !reason !5
  %6 = getelementptr i32, i32* %receive_load37, i64 %5, !time !15
  %send_alloca38 = alloca i32*, !reason !5
  store i32* %6, i32** %send_alloca38, !reason !5
  %send_cast39 = bitcast i32** %send_alloca38 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast39, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 7, i8* %0), !reason !5
  %receive40 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 8, i8* %0), !reason !5
  %bitcast41 = bitcast i8* %receive40 to i64*, !reason !5
  %receive_load42 = load i64, i64* %bitcast41, !reason !5
  %receive43 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 9, i8* %0), !reason !5
  %bitcast44 = bitcast i8* %receive43 to i64*, !reason !5
  %receive_load45 = load i64, i64* %bitcast44, !reason !5
  %7 = mul nuw i64 %receive_load42, %receive_load45, !time !56
  %send_alloca46 = alloca i64, !reason !5
  store i64 %7, i64* %send_alloca46, !reason !5
  %send_cast47 = bitcast i64* %send_alloca46 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast47, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 10, i8* %0), !reason !5
  %receive48 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 11, i8* %0), !reason !5
  %bitcast49 = bitcast i8* %receive48 to i32*, !reason !5
  %receive_load50 = load i32, i32* %bitcast49, !reason !5
  %receive51 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 12, i8* %0), !reason !5
  %bitcast52 = bitcast i8* %receive51 to i32*, !reason !5
  %receive_load53 = load i32, i32* %bitcast52, !reason !5
  %8 = add i32 %receive_load50, %receive_load53, !time !23
  %9 = trunc i64 %7 to i32, !time !14
  %10 = or i32 %9, 1, !time !29
  %11 = icmp sgt i32 %8, %10, !time !22
  %send_alloca54 = alloca i1, !reason !5
  store i1 %11, i1* %send_alloca54, !reason !5
  %send_cast55 = bitcast i1* %send_alloca54 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast55, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 13, i8* %0), !reason !5
  %send_alloca56 = alloca i32, !reason !5
  store i32 %8, i32* %send_alloca56, !reason !5
  %send_cast57 = bitcast i32* %send_alloca56 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast57, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 14, i8* %0), !reason !5
  %send_alloca58 = alloca i32, !reason !5
  store i32 %10, i32* %send_alloca58, !reason !5
  %send_cast59 = bitcast i32* %send_alloca58 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast59, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 15, i8* %0), !reason !5
  %receive60 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 16, i8* %0), !reason !5
  %bitcast61 = bitcast i8* %receive60 to i32*, !reason !5
  %receive_load62 = load i32, i32* %bitcast61, !reason !5
  %receive63 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 17, i8* %0), !reason !5
  %bitcast64 = bitcast i8* %receive63 to i32*, !reason !5
  %receive_load65 = load i32, i32* %bitcast64, !reason !5
  %12 = mul i32 %receive_load62, %receive_load65, !time !57
  %13 = add i32 %12, -1, !time !58
  %receive66 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 18, i8* %0), !reason !5
  %bitcast67 = bitcast i8* %receive66 to i32*, !reason !5
  %receive_load68 = load i32, i32* %bitcast67, !reason !5
  %14 = add i32 %receive_load68, %13, !time !59
  %send_alloca69 = alloca i32, !reason !5
  store i32 %14, i32* %send_alloca69, !reason !5
  %send_cast70 = bitcast i32* %send_alloca69 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast70, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 19, i8* %0), !reason !5
  %receive71 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 20, i8* %0), !reason !5
  %bitcast72 = bitcast i8* %receive71 to i64*, !reason !5
  %receive_load73 = load i64, i64* %bitcast72, !reason !5
  %15 = add nuw nsw i64 %receive_load73, 4, !time !60
  %16 = sext i32 %new_phi to i64, !time !32
  %receive74 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 21, i8* %0), !reason !5
  %bitcast75 = bitcast i8* %receive74 to i64*, !reason !5
  %receive_load76 = load i64, i64* %bitcast75, !reason !5
  %17 = mul nsw i64 %receive_load76, %2, !time !33
  %send_alloca77 = alloca i64, !reason !5
  store i64 %17, i64* %send_alloca77, !reason !5
  %send_cast78 = bitcast i64* %send_alloca77 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast78, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 22, i8* %0), !reason !5
  %send_alloca79 = alloca i64, !reason !5
  store i64 %17, i64* %send_alloca79, !reason !5
  %send_cast80 = bitcast i64* %send_alloca79 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast80, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 24, i8* %0), !reason !5
  %receive81 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 25, i8* %0), !reason !5
  %bitcast82 = bitcast i8* %receive81 to i64*, !reason !5
  %receive_load83 = load i64, i64* %bitcast82, !reason !5
  %18 = mul nuw i64 %receive_load83, %3, !time !9
  %send_alloca84 = alloca i64, !reason !5
  store i64 %18, i64* %send_alloca84, !reason !5
  %send_cast85 = bitcast i64* %send_alloca84 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast85, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 26, i8* %0), !reason !5
  %send_alloca86 = alloca i64, !reason !5
  store i64 %18, i64* %send_alloca86, !reason !5
  %send_cast87 = bitcast i64* %send_alloca86 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast87, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 27, i8* %0), !reason !5
  %receive88 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 28, i8* %0), !reason !5
  %bitcast89 = bitcast i8* %receive88 to i32*, !reason !5
  %receive_load90 = load i32, i32* %bitcast89, !reason !5
  %19 = or i32 %receive_load90, 1, !time !61
  %receive91 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 29, i8* %0), !reason !5
  %bitcast92 = bitcast i8* %receive91 to i32*, !reason !5
  %receive_load93 = load i32, i32* %bitcast92, !reason !5
  %20 = icmp sgt i32 %receive_load93, %19, !time !62
  %send_alloca94 = alloca i1, !reason !5
  store i1 %20, i1* %send_alloca94, !reason !5
  %send_cast95 = bitcast i1* %send_alloca94 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast95, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 30, i8* %0), !reason !5
  %send_alloca96 = alloca i32, !reason !5
  store i32 %19, i32* %send_alloca96, !reason !5
  %send_cast97 = bitcast i32* %send_alloca96 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast97, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 31, i8* %0), !reason !5
  %receive98 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 32, i8* %0), !reason !5
  %bitcast99 = bitcast i8* %receive98 to i64*, !reason !5
  %receive_load100 = load i64, i64* %bitcast99, !reason !5
  %21 = trunc i64 %receive_load100 to i32, !time !30
  %send_alloca101 = alloca i32, !reason !5
  store i32 %21, i32* %send_alloca101, !reason !5
  %send_cast102 = bitcast i32* %send_alloca101 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast102, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 33, i8* %0), !reason !5
  %receive103 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 34, i8* %0), !reason !5
  %bitcast104 = bitcast i8* %receive103 to i32*, !reason !5
  %receive_load105 = load i32, i32* %bitcast104, !reason !5
  %22 = add i32 %receive_load105, -1, !time !21
  %receive106 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 35, i8* %0), !reason !5
  %bitcast107 = bitcast i8* %receive106 to i32*, !reason !5
  %receive_load108 = load i32, i32* %bitcast107, !reason !5
  %23 = add i32 %receive_load108, %22, !time !63
  %24 = zext i32 %23 to i64, !time !13
  %25 = shl nuw nsw i64 %24, 2, !time !19
  %26 = add nuw nsw i64 %25, 4, !time !20
  %send_alloca109 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca109, !reason !5
  %send_cast110 = bitcast i64* %send_alloca109 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast110, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 36, i8* %0), !reason !5
  %receive111 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 37, i8* %0), !reason !5
  %bitcast112 = bitcast i8* %receive111 to i32*, !reason !5
  %receive_load113 = load i32, i32* %bitcast112, !reason !5
  %27 = add nsw i32 %new_phi28, %receive_load113, !time !26
  %receive114 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 38, i8* %0), !reason !5
  %bitcast115 = bitcast i8* %receive114 to i32*, !reason !5
  %receive_load116 = load i32, i32* %bitcast115, !reason !5
  %28 = add nsw i32 %27, %receive_load116, !time !24
  %send_alloca117 = alloca i32, !reason !5
  store i32 %28, i32* %send_alloca117, !reason !5
  %send_cast118 = bitcast i32* %send_alloca117 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast118, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 39, i8* %0), !reason !5
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 83, i8* %0), !reason !10
  %bitcast229 = bitcast i8* %broadcast to i1*, !reason !10
  %receive_load230 = load i1, i1* %bitcast229, !reason !10
  br i1 %receive_load230, label %l3, label %l2

l2:                                               ; preds = %l1
  %send_alloca231 = alloca i1, !reason !34
  store i1 %4, i1* %send_alloca231, !reason !34
  %send_cast232 = bitcast i1* %send_alloca231 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast232, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 84, i8* %0), !reason !34
  br i1 %4, label %l12, label %l13

l3:                                               ; preds = %l1
  %send_alloca244 = alloca i1, !reason !34
  store i1 %4, i1* %send_alloca244, !reason !34
  %send_cast245 = bitcast i1* %send_alloca244 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast245, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 89, i8* %0), !reason !34
  br i1 %4, label %l4, label %l5

l4:                                               ; preds = %l3
  %send_alloca151 = alloca i64, !reason !5
  store i64 %15, i64* %send_alloca151, !reason !5
  %send_cast152 = bitcast i64* %send_alloca151 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast152, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 52, i8* %0), !reason !5
  %receive153 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 53, i8* %0), !reason !5
  %bitcast154 = bitcast i8* %receive153 to i64*, !reason !5
  %receive_load155 = load i64, i64* %bitcast154, !reason !5
  %29 = trunc i64 %receive_load155 to i32, !time !36
  %receive156 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 54, i8* %0), !reason !5
  %bitcast157 = bitcast i8* %receive156 to i32*, !reason !5
  %receive_load158 = load i32, i32* %bitcast157, !reason !5
  %30 = add nsw i32 %receive_load158, %29, !time !37
  br label %l7

l5:                                               ; preds = %l7, %l3
  %send_alloca172 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca172, !reason !5
  %send_cast173 = bitcast i64* %send_alloca172 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast173, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 60, i8* %0), !reason !5
  %broadcast248 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 91, i8* %0), !reason !10
  %bitcast249 = bitcast i8* %broadcast248 to i1*, !reason !10
  %receive_load250 = load i1, i1* %bitcast249, !reason !10
  br i1 %receive_load250, label %l6, label %l21

l6:                                               ; preds = %l5
  %31 = trunc i64 %new_phi27 to i32, !time !36
  %send_alloca222 = alloca i64, !reason !11
  store i64 %new_phi27, i64* %send_alloca222, !reason !11
  %send_cast223 = bitcast i64* %send_alloca222 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast223, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 80, i8* %0), !reason !11
  br label %l8

l7:                                               ; preds = %l7, %l4
  %receive159 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 55, i8* %0), !reason !5
  %bitcast160 = bitcast i8* %receive159 to i64*, !reason !5
  %receive_load161 = load i64, i64* %bitcast160, !reason !5
  %32 = getelementptr inbounds i32, i32* %receive_load37, i64 %receive_load161, !time !46
  %send_alloca162 = alloca i32*, !reason !5
  store i32* %32, i32** %send_alloca162, !reason !5
  %send_cast163 = bitcast i32** %send_alloca162 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast163, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 56, i8* %0), !reason !5
  %send_alloca164 = alloca i32, !reason !5
  store i32 %30, i32* %send_alloca164, !reason !5
  %send_cast165 = bitcast i32* %send_alloca164 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast165, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 57, i8* %0), !reason !5
  %receive166 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 58, i8* %0), !reason !5
  %bitcast167 = bitcast i8* %receive166 to i64*, !reason !5
  %receive_load168 = load i64, i64* %bitcast167, !reason !5
  %33 = add nsw i64 %receive_load168, 1, !time !47
  %receive169 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 59, i8* %0), !reason !5
  %bitcast170 = bitcast i8* %receive169 to i64*, !reason !5
  %receive_load171 = load i64, i64* %bitcast170, !reason !5
  %34 = icmp slt i64 %33, %receive_load171, !time !25
  %send_alloca220 = alloca i64, !reason !11
  store i64 %33, i64* %send_alloca220, !reason !11
  %send_cast221 = bitcast i64* %send_alloca220 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast221, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 79, i8* %0), !reason !11
  %send_alloca246 = alloca i1, !reason !34
  store i1 %34, i1* %send_alloca246, !reason !34
  %send_cast247 = bitcast i1* %send_alloca246 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast247, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 90, i8* %0), !reason !34
  br i1 %34, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi174 = phi i32 [ %31, %l6 ], [ %new_phi188, %l11 ], !time !45
  %35 = sext i32 %new_phi174 to i64, !time !46
  %36 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %35, !time !47
  %send_alloca175 = alloca i32*, !reason !5
  store i32* %36, i32** %send_alloca175, !reason !5
  %send_cast176 = bitcast i32** %send_alloca175 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast176, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 61, i8* %0), !reason !5
  %receive177 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 62, i8* %0), !reason !5
  %bitcast178 = bitcast i8* %receive177 to i64*, !reason !5
  %receive_load179 = load i64, i64* %bitcast178, !reason !5
  %37 = getelementptr inbounds i32, i32* %receive_load37, i64 %receive_load179, !time !6
  %broadcast251 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 92, i8* %0), !reason !10
  %bitcast252 = bitcast i8* %broadcast251 to i1*, !reason !10
  %receive_load253 = load i1, i1* %bitcast252, !reason !10
  br i1 %receive_load253, label %l9, label %l10

l9:                                               ; preds = %l8
  %send_alloca182 = alloca i32*, !reason !5
  store i32* %37, i32** %send_alloca182, !reason !5
  %send_cast183 = bitcast i32** %send_alloca182 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast183, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 64, i8* %0), !reason !5
  %receive184 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 65, i8* %0), !reason !5
  %bitcast185 = bitcast i8* %receive184 to i32*, !reason !5
  %receive_load186 = load i32, i32* %bitcast185, !reason !5
  %38 = add nsw i32 %receive_load186, -1, !time !36
  br label %l11

l10:                                              ; preds = %l8
  %send_alloca180 = alloca i32*, !reason !5
  store i32* %37, i32** %send_alloca180, !reason !5
  %send_cast181 = bitcast i32** %send_alloca180 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast181, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 63, i8* %0), !reason !5
  %39 = add nsw i32 %new_phi174, 1, !time !36
  %repair_phi226 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 82, i8* %0), !reason !10
  %bitcast227 = bitcast i8* %repair_phi226 to i32*, !reason !10
  %receive_load228 = load i32, i32* %bitcast227, !reason !10
  br label %l11

l11:                                              ; preds = %l10, %l9
  %new_phi187 = phi i32 [ %38, %l9 ], [ %receive_load228, %l10 ], !time !64
  %new_phi188 = phi i32 [ %new_phi174, %l9 ], [ %39, %l10 ], !time !64
  %send_alloca224 = alloca i32, !reason !11
  store i32 %new_phi187, i32* %send_alloca224, !reason !11
  %send_cast225 = bitcast i32* %send_alloca224 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast225, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 81, i8* %0), !reason !11
  %broadcast254 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 93, i8* %0), !reason !10
  %bitcast255 = bitcast i8* %broadcast254 to i1*, !reason !10
  %receive_load256 = load i1, i1* %bitcast255, !reason !10
  br i1 %receive_load256, label %l21, label %l8

l12:                                              ; preds = %l2
  %send_alloca119 = alloca i64, !reason !5
  store i64 %26, i64* %send_alloca119, !reason !5
  %send_cast120 = bitcast i64* %send_alloca119 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast120, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 40, i8* %0), !reason !5
  br label %l13

l13:                                              ; preds = %l12, %l2
  %broadcast233 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 85, i8* %0), !reason !10
  %bitcast234 = bitcast i8* %broadcast233 to i1*, !reason !10
  %receive_load235 = load i1, i1* %bitcast234, !reason !10
  br i1 %receive_load235, label %l14, label %l15

l14:                                              ; preds = %l13
  %send_alloca208 = alloca i64, !reason !11
  store i64 %16, i64* %send_alloca208, !reason !11
  %send_cast209 = bitcast i64* %send_alloca208 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast209, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 74, i8* %0), !reason !11
  br label %l16

l15:                                              ; preds = %l16, %l13
  %send_alloca129 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca129, !reason !5
  %send_cast130 = bitcast i64* %send_alloca129 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast130, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 44, i8* %0), !reason !5
  br label %l17

l16:                                              ; preds = %l16, %l14
  %receive121 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 41, i8* %0), !reason !5
  %bitcast122 = bitcast i8* %receive121 to i64*, !reason !5
  %receive_load123 = load i64, i64* %bitcast122, !reason !5
  %40 = getelementptr inbounds i32, i32* %receive_load37, i64 %receive_load123, !time !46
  %send_alloca124 = alloca i32*, !reason !5
  store i32* %40, i32** %send_alloca124, !reason !5
  %send_cast125 = bitcast i32** %send_alloca124 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast125, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 42, i8* %0), !reason !5
  %receive126 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 43, i8* %0), !reason !5
  %bitcast127 = bitcast i8* %receive126 to i64*, !reason !5
  %receive_load128 = load i64, i64* %bitcast127, !reason !5
  %41 = add nsw i64 %receive_load128, 1, !time !47
  %42 = trunc i64 %41 to i32, !time !27
  %43 = icmp eq i32 %42, 257, !time !25
  %send_alloca210 = alloca i64, !reason !11
  store i64 %41, i64* %send_alloca210, !reason !11
  %send_cast211 = bitcast i64* %send_alloca210 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast211, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 75, i8* %0), !reason !11
  %send_alloca236 = alloca i1, !reason !34
  store i1 %43, i1* %send_alloca236, !reason !34
  %send_cast237 = bitcast i1* %send_alloca236 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast237, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 86, i8* %0), !reason !34
  br i1 %43, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi131 = phi i64 [ %new_phi27, %l15 ], [ %receive_load214, %l20 ], !time !65
  %new_phi132 = phi i32 [ 256, %l15 ], [ %new_phi148, %l20 ], !time !45
  %send_alloca133 = alloca i32, !reason !5
  store i32 %new_phi132, i32* %send_alloca133, !reason !5
  %send_cast134 = bitcast i32* %send_alloca133 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast134, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 45, i8* %0), !reason !5
  %receive135 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 46, i8* %0), !reason !5
  %bitcast136 = bitcast i8* %receive135 to i32*, !reason !5
  %receive_load137 = load i32, i32* %bitcast136, !reason !5
  %44 = sext i32 %receive_load137 to i64, !time !37
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* @a.1, i64 0, i64 %44, !time !51
  %send_alloca138 = alloca i32*, !reason !5
  store i32* %45, i32** %send_alloca138, !reason !5
  %send_cast139 = bitcast i32** %send_alloca138 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast139, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 47, i8* %0), !reason !5
  %46 = getelementptr inbounds i32, i32* %receive_load37, i64 %new_phi131, !time !55
  %broadcast238 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 87, i8* %0), !reason !10
  %bitcast239 = bitcast i8* %broadcast238 to i1*, !reason !10
  %receive_load240 = load i1, i1* %bitcast239, !reason !10
  br i1 %receive_load240, label %l18, label %l19

l18:                                              ; preds = %l17
  %send_alloca145 = alloca i32*, !reason !5
  store i32* %46, i32** %send_alloca145, !reason !5
  %send_cast146 = bitcast i32** %send_alloca145 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast146, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 50, i8* %0), !reason !5
  %47 = add nsw i32 %new_phi132, -1, !time !36
  %repair_phi217 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 78, i8* %0), !reason !10
  %bitcast218 = bitcast i8* %repair_phi217 to i32*, !reason !10
  %receive_load219 = load i32, i32* %bitcast218, !reason !10
  br label %l20

l19:                                              ; preds = %l17
  %send_alloca140 = alloca i32*, !reason !5
  store i32* %46, i32** %send_alloca140, !reason !5
  %send_cast141 = bitcast i32** %send_alloca140 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast141, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 48, i8* %0), !reason !5
  %receive142 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 49, i8* %0), !reason !5
  %bitcast143 = bitcast i8* %receive142 to i32*, !reason !5
  %receive_load144 = load i32, i32* %bitcast143, !reason !5
  %48 = add nsw i32 %receive_load144, 1, !time !36
  br label %l20

l20:                                              ; preds = %l19, %l18
  %new_phi147 = phi i32 [ %receive_load219, %l18 ], [ %48, %l19 ], !time !64
  %new_phi148 = phi i32 [ %47, %l18 ], [ %new_phi132, %l19 ], !time !64
  %send_alloca149 = alloca i64, !reason !5
  store i64 %new_phi131, i64* %send_alloca149, !reason !5
  %send_cast150 = bitcast i64* %send_alloca149 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast150, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 51, i8* %0), !reason !5
  %repair_phi212 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 76, i8* %0), !reason !10
  %bitcast213 = bitcast i8* %repair_phi212 to i64*, !reason !10
  %receive_load214 = load i64, i64* %bitcast213, !reason !10
  %send_alloca215 = alloca i32, !reason !11
  store i32 %new_phi147, i32* %send_alloca215, !reason !11
  %send_cast216 = bitcast i32* %send_alloca215 to i8*, !reason !11
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast216, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 77, i8* %0), !reason !11
  %broadcast241 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 88, i8* %0), !reason !10
  %bitcast242 = bitcast i8* %broadcast241 to i1*, !reason !10
  %receive_load243 = load i1, i1* %bitcast242, !reason !10
  br i1 %receive_load243, label %l21, label %l17

l21:                                              ; preds = %l20, %l11, %l5
  %send_alloca189 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca189, !reason !5
  %send_cast190 = bitcast i64* %send_alloca189 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast190, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 66, i8* %0), !reason !5
  %send_alloca191 = alloca i64, !reason !5
  store i64 %2, i64* %send_alloca191, !reason !5
  %send_cast192 = bitcast i64* %send_alloca191 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast192, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 67, i8* %0), !reason !5
  %49 = add nsw i32 %new_phi28, %1, !time !37
  %receive193 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 68, i8* %0), !reason !5
  %bitcast194 = bitcast i8* %receive193 to i64*, !reason !5
  %receive_load195 = load i64, i64* %bitcast194, !reason !5
  %50 = icmp slt i64 %receive_load195, 256, !time !51
  %51 = add i32 %new_phi, %1, !time !36
  %send_alloca196 = alloca i64, !reason !5
  store i64 %2, i64* %send_alloca196, !reason !5
  %send_cast197 = bitcast i64* %send_alloca196 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast197, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 69, i8* %0), !reason !5
  %repair_phi205 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 73, i8* %0), !reason !10
  %bitcast206 = bitcast i8* %repair_phi205 to i64*, !reason !10
  %receive_load207 = load i64, i64* %bitcast206, !reason !10
  %send_alloca257 = alloca i1, !reason !34
  store i1 %50, i1* %send_alloca257, !reason !34
  %send_cast258 = bitcast i1* %send_alloca257 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast258, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 94, i8* %0), !reason !34
  br i1 %50, label %l1, label %l22

l22:                                              ; preds = %l21
  %receive198 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 70, i8* %0), !reason !5
  %bitcast199 = bitcast i8* %receive198 to i32*, !reason !5
  %receive_load200 = load i32, i32* %bitcast199, !reason !5
  %52 = icmp slt i32 %receive_load200, 128, !time !36
  %send_alloca259 = alloca i1, !reason !34
  store i1 %52, i1* %send_alloca259, !reason !34
  %send_cast260 = bitcast i1* %send_alloca259 to i8*, !reason !34
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast260, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 95, i8* %0), !reason !34
  br i1 %52, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

; Function Attrs: norecurse nounwind ssp uwtable
define void @ms_mergesort(i32* nocapture) local_unnamed_addr #1 {
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
  %80 = load i32, i32* %79, align 4, !tbaa !38
  %81 = trunc i64 %78 to i32
  %82 = sub i32 %70, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %83
  store i32 %80, i32* %84, align 4, !tbaa !38
  %85 = add nsw i64 %78, 1
  %86 = icmp slt i64 %85, %62
  br i1 %86, label %77, label %71

; <label>:87:                                     ; preds = %103, %73
  %88 = phi i64 [ %18, %73 ], [ %106, %103 ]
  %89 = phi i32 [ %76, %73 ], [ %105, %103 ]
  %90 = phi i32 [ %75, %73 ], [ %104, %103 ]
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !38
  %94 = sext i32 %89 to i64
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !38
  %97 = icmp slt i32 %93, %96
  %98 = getelementptr inbounds i32, i32* %0, i64 %88
  br i1 %97, label %99, label %101

; <label>:99:                                     ; preds = %87
  store i32 %93, i32* %98, align 4, !tbaa !38
  %100 = add nsw i32 %90, -1
  br label %103

; <label>:101:                                    ; preds = %87
  store i32 %96, i32* %98, align 4, !tbaa !38
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
  %118 = load i32, i32* %117, align 4, !tbaa !38
  %119 = sub i64 %112, %116
  %120 = shl i64 %119, 32
  %121 = ashr exact i64 %120, 32
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %121
  store i32 %118, i32* %122, align 4, !tbaa !38
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
  %132 = load i32, i32* %131, align 4, !tbaa !38
  %133 = sext i32 %129 to i64
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4, !tbaa !38
  %136 = icmp slt i32 %132, %135
  %137 = getelementptr inbounds i32, i32* %0, i64 %127
  br i1 %136, label %138, label %140

; <label>:138:                                    ; preds = %126
  store i32 %132, i32* %137, align 4, !tbaa !38
  %139 = add nsw i32 %128, -1
  br label %142

; <label>:140:                                    ; preds = %126
  store i32 %135, i32* %137, align 4, !tbaa !38
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

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #2 {
  %3 = alloca [256 x i32], align 16
  %4 = bitcast [256 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %4, i8* align 16 bitcast ([256 x i32]* @__const.main.a.1 to i8*), i64 1024, i1 false)
  %5 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  call void @replace_ms_mergesort(i32* nonnull %5)
  br label %6

; <label>:6:                                      ; preds = %6, %2
  %7 = phi i64 [ 0, %2 ], [ %11, %6 ]
  %8 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4, !tbaa !38
  %10 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %9)
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
  %send_alloca = alloca i32*, !reason !3
  store i32* %0, i32** %send_alloca, !reason !3
  %send_cast = bitcast i32** %send_alloca to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 6, i8* %1), !reason !3
  %send_alloca1 = alloca i32*, !reason !3
  store i32* %0, i32** %send_alloca1, !reason !3
  %send_cast2 = bitcast i32** %send_alloca1 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 23, i8* %1), !reason !3
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define i8* @init() #2 {
  %1 = tail call i8* @malloc(i64 208) #7
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !66
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #8
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #4

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #2 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !71
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !73
  tail call void %3(%struct.Context* %6) #8
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #2 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #7
  %7 = bitcast i8* %6 to %struct._opaque_pthread_t**
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %24

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %11

; <label>:11:                                     ; preds = %11, %9
  %12 = phi i64 [ 0, %9 ], [ %22, %11 ]
  %13 = tail call i8* @malloc(i64 16) #7
  %14 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %12
  %15 = bitcast void (i8*)** %14 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !74
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !71
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !73
  %20 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %12
  %21 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %20, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %13) #8
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, %10
  br i1 %23, label %24, label %11

; <label>:24:                                     ; preds = %11, %3
  ret i8* %6
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #5

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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !74
  %11 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %10, i8** null) #8
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7

; <label>:14:                                     ; preds = %7, %2
  ret void
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #2 {
  %5 = tail call i8* @malloc(i64 24) #7
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !75
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !77
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #7
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !78
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #8
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !66
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.Context* %3 to i8**
  br label %30

; <label>:22:                                     ; preds = %22, %4
  %23 = phi %struct.Comm* [ %25, %22 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !79
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #6

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !74
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !75
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !75
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %28

; <label>:15:                                     ; preds = %11, %7
  %16 = phi %struct.Comm* [ %5, %7 ], [ %31, %11 ]
  %17 = phi %struct.Comm* [ null, %7 ], [ %29, %11 ]
  br i1 %0, label %18, label %33

; <label>:18:                                     ; preds = %15
  %19 = icmp eq %struct.Comm* %17, null
  %20 = getelementptr inbounds %struct.Comm, %struct.Comm* %16, i64 0, i32 3
  %21 = bitcast %struct.Comm** %20 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !79
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !79
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !66
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !74
  %32 = icmp eq %struct.Comm* %31, null
  br i1 %32, label %33, label %11

; <label>:33:                                     ; preds = %28, %26, %23, %15, %3
  %34 = phi %struct.Comm* [ %16, %15 ], [ %16, %26 ], [ %16, %23 ], [ null, %3 ], [ null, %28 ]
  ret %struct.Comm* %34
}

; Function Attrs: nounwind ssp uwtable
define void @send(i8*, i32, i32, i32, i8*) #2 {
  %6 = bitcast i8* %4 to %struct.Context*
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to %struct._opaque_pthread_rwlock_t*
  %9 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #8
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %6)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #8
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #5

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i8* @_receive(i1 zeroext, i32, i32, i8*) local_unnamed_addr #2 {
  %5 = bitcast i8* %3 to %struct.Context*
  %6 = getelementptr inbounds i8, i8* %3, i64 8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_rwlock_t*
  br label %8

; <label>:8:                                      ; preds = %13, %4
  br i1 %0, label %9, label %11

; <label>:9:                                      ; preds = %8
  %10 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #8
  br label %13

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #8
  br label %13

; <label>:13:                                     ; preds = %11, %9
  %14 = tail call %struct.Comm* @_find_channel(i1 zeroext %0, i32 %2, %struct.Context* %5)
  %15 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %7) #8
  %16 = icmp eq %struct.Comm* %14, null
  br i1 %16, label %8, label %17

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 1
  %19 = load i32, i32* %18, align 4, !tbaa !77
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %17
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i32 %2, i32 %1, i32 %19)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8, !tbaa !78
  ret i8* %25
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #5

; Function Attrs: nounwind ssp uwtable
define i8* @receive(i32, i32, i32, i8*) #2 {
  %5 = tail call i8* @_receive(i1 zeroext true, i32 %0, i32 %2, i8* %3)
  ret i8* %5
}

; Function Attrs: nounwind ssp uwtable
define void @send_argument(i8*, i32, i32, i32, i8*) #2 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i32 %3, i8* %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_argument(i32, i32, i8*) #2 {
  %4 = tail call i8* @_receive(i1 zeroext false, i32 %0, i32 %1, i8* %2)
  ret i8* %4
}

; Function Attrs: nounwind ssp uwtable
define void @send_return(i8*, i32, i8*) local_unnamed_addr #2 {
  tail call void @send(i8* %0, i32 %1, i32 undef, i32 -1, i8* %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_return(i32, i8*) local_unnamed_addr #2 {
  %3 = tail call i8* @_receive(i1 zeroext true, i32 %0, i32 -1, i8* %1)
  ret i8* %3
}

; Function Attrs: nounwind ssp uwtable
define void @send_token(i32, i32, i8*) local_unnamed_addr #2 {
  tail call void @send(i8* null, i32 0, i32 undef, i32 %1, i8* %2)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @receive_token(i32, i8*) local_unnamed_addr #2 {
  %3 = tail call i8* @_receive(i1 zeroext true, i32 0, i32 %0, i8* %1)
  ret void
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable }
attributes #7 = { allocsize(0) }
attributes #8 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"replace argument"}
!4 = !{!"1", !"1"}
!5 = !{!"replace mapped op"}
!6 = !{!"10", !"13"}
!7 = !{!"7", !"10"}
!8 = !{!"1", !"4"}
!9 = !{!"4", !"7"}
!10 = !{!"receive"}
!11 = !{!"repair_phi"}
!12 = !{!"60", !"60"}
!13 = !{!"69", !"72"}
!14 = !{!"18", !"21"}
!15 = !{!"39", !"42"}
!16 = !{!"57", !"60"}
!17 = !{!"42", !"45"}
!18 = !{!"60", !"61"}
!19 = !{!"72", !"75"}
!20 = !{!"75", !"78"}
!21 = !{!"51", !"54"}
!22 = !{!"54", !"57"}
!23 = !{!"48", !"51"}
!24 = !{!"78", !"81"}
!25 = !{!"11", !"14"}
!26 = !{!"15", !"18"}
!27 = !{!"8", !"11"}
!28 = !{!"61", !"62"}
!29 = !{!"45", !"48"}
!30 = !{!"27", !"30"}
!31 = !{!"30", !"33"}
!32 = !{!"84", !"87"}
!33 = !{!"36", !"39"}
!34 = !{!"broadcast"}
!35 = !{!"0", !"7"}
!36 = !{!"0", !"3"}
!37 = !{!"3", !"6"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !{!"13", !"14"}
!43 = !{!"14", !"15"}
!44 = !{!"9", !"9"}
!45 = !{!"2", !"2"}
!46 = !{!"2", !"5"}
!47 = !{!"5", !"8"}
!48 = !{!"10", !"11"}
!49 = !{!"9", !"10"}
!50 = !{!"0", !"1"}
!51 = !{!"6", !"9"}
!52 = !{!"57", !"57"}
!53 = !{!"21", !"21"}
!54 = !{!"15", !"15"}
!55 = !{!"9", !"12"}
!56 = !{!"12", !"15"}
!57 = !{!"33", !"36"}
!58 = !{!"60", !"63"}
!59 = !{!"66", !"69"}
!60 = !{!"81", !"84"}
!61 = !{!"21", !"24"}
!62 = !{!"24", !"27"}
!63 = !{!"63", !"66"}
!64 = !{!"5", !"5"}
!65 = !{!"6", !"6"}
!66 = !{!67, !68, i64 0}
!67 = !{!"Context", !68, i64 0, !69, i64 8}
!68 = !{!"any pointer", !40, i64 0}
!69 = !{!"_opaque_pthread_rwlock_t", !70, i64 0, !40, i64 8}
!70 = !{!"long", !40, i64 0}
!71 = !{!72, !68, i64 0}
!72 = !{!"Closure", !68, i64 0, !68, i64 8}
!73 = !{!72, !68, i64 8}
!74 = !{!68, !68, i64 0}
!75 = !{!76, !39, i64 0}
!76 = !{!"Comm", !39, i64 0, !39, i64 4, !68, i64 8, !68, i64 16}
!77 = !{!76, !39, i64 4}
!78 = !{!76, !68, i64 8}
!79 = !{!76, !68, i64 16}
