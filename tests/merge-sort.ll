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
  %argument = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 5, i8* %0), !reason !3
  %bitcast35 = bitcast i8* %argument to i32**, !reason !3
  %receive_load36 = load i32*, i32** %bitcast35, !reason !3
  br label %l

l:                                                ; preds = %l22, %entry
  %new_phi = phi i32 [ 1, %entry ], [ %55, %l22 ], !time !4
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
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi26 = phi i32 [ %new_phi, %l ], [ %receive_load227, %l21 ], !time !10
  %new_phi27 = phi i64 [ 0, %l ], [ %53, %l21 ], !time !11
  %new_phi28 = phi i64 [ 0, %l ], [ %52, %l21 ], !time !12
  %new_phi29 = phi i32 [ 0, %l ], [ %receive_load230, %l21 ], !time !10
  %send_alloca30 = alloca i32, !reason !5
  store i32 %new_phi26, i32* %send_alloca30, !reason !5
  %send_cast31 = bitcast i32* %send_alloca30 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast31, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 3, i8* %0), !reason !5
  %receive32 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 4, i8* %0), !reason !5
  %bitcast33 = bitcast i8* %receive32 to i64*, !reason !5
  %receive_load34 = load i64, i64* %bitcast33, !reason !5
  %5 = mul nsw i64 %new_phi27, %receive_load34, !time !13
  %6 = getelementptr [256 x i32], [256 x i32]* @a, i64 0, i64 %5, !time !14
  %7 = bitcast i32* %6 to i8*, !time !15
  %8 = getelementptr i32, i32* %receive_load36, i64 %5, !time !16
  %send_alloca37 = alloca i32*, !reason !5
  store i32* %8, i32** %send_alloca37, !reason !5
  %send_cast38 = bitcast i32** %send_alloca37 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast38, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 6, i8* %0), !reason !5
  %send_alloca39 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca39, !reason !5
  %send_cast40 = bitcast i64* %send_alloca39 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast40, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 7, i8* %0), !reason !5
  %send_alloca41 = alloca i64, !reason !5
  store i64 %2, i64* %send_alloca41, !reason !5
  %send_cast42 = bitcast i64* %send_alloca41 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast42, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 8, i8* %0), !reason !5
  %send_alloca43 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca43, !reason !5
  %send_cast44 = bitcast i32* %send_alloca43 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast44, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 9, i8* %0), !reason !5
  %receive45 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 10, i8* %0), !reason !5
  %bitcast46 = bitcast i8* %receive45 to i64*, !reason !5
  %receive_load47 = load i64, i64* %bitcast46, !reason !5
  %9 = trunc i64 %receive_load47 to i32, !time !17
  %send_alloca48 = alloca i32, !reason !5
  store i32 %9, i32* %send_alloca48, !reason !5
  %send_cast49 = bitcast i32* %send_alloca48 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast49, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 11, i8* %0), !reason !5
  %send_alloca50 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca50, !reason !5
  %send_cast51 = bitcast i64* %send_alloca50 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast51, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 12, i8* %0), !reason !5
  %send_alloca52 = alloca i32, !reason !5
  store i32 %1, i32* %send_alloca52, !reason !5
  %send_cast53 = bitcast i32* %send_alloca52 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast53, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 13, i8* %0), !reason !5
  %receive54 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 14, i8* %0), !reason !5
  %bitcast55 = bitcast i8* %receive54 to i64*, !reason !5
  %receive_load56 = load i64, i64* %bitcast55, !reason !5
  %10 = shl nuw nsw i64 %receive_load56, 2, !time !18
  %send_alloca57 = alloca i64, !reason !5
  store i64 %10, i64* %send_alloca57, !reason !5
  %send_cast58 = bitcast i64* %send_alloca57 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast58, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 15, i8* %0), !reason !5
  %send_alloca59 = alloca i32, !reason !5
  store i32 %new_phi26, i32* %send_alloca59, !reason !5
  %send_cast60 = bitcast i32* %send_alloca59 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast60, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 16, i8* %0), !reason !5
  %receive61 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 17, i8* %0), !reason !5
  %bitcast62 = bitcast i8* %receive61 to i64*, !reason !5
  %receive_load63 = load i64, i64* %bitcast62, !reason !5
  %11 = mul nsw i64 %new_phi27, %receive_load63, !time !19
  %receive64 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 18, i8* %0), !reason !5
  %bitcast65 = bitcast i8* %receive64 to [256 x i32]**, !reason !5
  %receive_load66 = load [256 x i32]*, [256 x i32]** %bitcast65, !reason !5
  %12 = getelementptr [256 x i32], [256 x i32]* %receive_load66, i64 0, i64 %11, !time !20
  %13 = bitcast i32* %12 to i8*, !time !21
  %14 = getelementptr i32, i32* %receive_load36, i64 %11, !time !22
  %15 = bitcast i32* %14 to i8*, !time !23
  %send_alloca67 = alloca i64, !reason !5
  store i64 %new_phi27, i64* %send_alloca67, !reason !5
  %send_cast68 = bitcast i64* %send_alloca67 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast68, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 19, i8* %0), !reason !5
  %receive69 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 20, i8* %0), !reason !5
  %bitcast70 = bitcast i8* %receive69 to i32*, !reason !5
  %receive_load71 = load i32, i32* %bitcast70, !reason !5
  %16 = add i32 %new_phi, %receive_load71, !time !24
  %receive72 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 21, i8* %0), !reason !5
  %bitcast73 = bitcast i8* %receive72 to i32*, !reason !5
  %receive_load74 = load i32, i32* %bitcast73, !reason !5
  %17 = or i32 %receive_load74, 1, !time !25
  %send_alloca75 = alloca i32, !reason !5
  store i32 %16, i32* %send_alloca75, !reason !5
  %send_cast76 = bitcast i32* %send_alloca75 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast76, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 22, i8* %0), !reason !5
  %send_alloca77 = alloca i32, !reason !5
  store i32 %17, i32* %send_alloca77, !reason !5
  %send_cast78 = bitcast i32* %send_alloca77 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast78, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 23, i8* %0), !reason !5
  %receive79 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 24, i8* %0), !reason !5
  %bitcast80 = bitcast i8* %receive79 to i1*, !reason !5
  %receive_load81 = load i1, i1* %bitcast80, !reason !5
  %18 = select i1 %receive_load81, i32 %16, i32 %17, !time !26
  %19 = trunc i64 %new_phi27 to i32, !time !27
  %20 = mul i32 %1, %19, !time !28
  %21 = add i32 %20, -1, !time !29
  %22 = add i32 %18, %21, !time !30
  %23 = zext i32 %22 to i64, !time !31
  %24 = shl nuw nsw i64 %23, 2, !time !32
  %25 = add nuw nsw i64 %24, 4, !time !33
  %send_alloca82 = alloca i64, !reason !5
  store i64 %new_phi28, i64* %send_alloca82, !reason !5
  %send_cast83 = bitcast i64* %send_alloca82 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast83, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 25, i8* %0), !reason !5
  %send_alloca84 = alloca i64, !reason !5
  store i64 %3, i64* %send_alloca84, !reason !5
  %send_cast85 = bitcast i64* %send_alloca84 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast85, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 26, i8* %0), !reason !5
  %send_alloca86 = alloca i32, !reason !5
  store i32 %new_phi29, i32* %send_alloca86, !reason !5
  %send_cast87 = bitcast i32* %send_alloca86 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast87, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 27, i8* %0), !reason !5
  %send_alloca88 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca88, !reason !5
  %send_cast89 = bitcast i32* %send_alloca88 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast89, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 28, i8* %0), !reason !5
  %send_alloca90 = alloca i64, !reason !5
  store i64 %4, i64* %send_alloca90, !reason !5
  %send_cast91 = bitcast i64* %send_alloca90 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast91, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 29, i8* %0), !reason !5
  %send_alloca92 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca92, !reason !5
  %send_cast93 = bitcast i32* %send_alloca92 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast93, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 30, i8* %0), !reason !5
  %receive94 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 31, i8* %0), !reason !5
  %bitcast95 = bitcast i8* %receive94 to i32*, !reason !5
  %receive_load96 = load i32, i32* %bitcast95, !reason !5
  %26 = add nsw i32 %receive_load96, -1, !time !34
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 32, i8* %0), !reason !35
  %bitcast97 = bitcast i8* %broadcast to i1*, !reason !35
  %receive_load98 = load i1, i1* %bitcast97, !reason !35
  br i1 %receive_load98, label %l3, label %l2

l2:                                               ; preds = %l1
  %broadcast99 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 33, i8* %0), !reason !35
  %bitcast100 = bitcast i8* %broadcast99 to i1*, !reason !35
  %receive_load101 = load i1, i1* %bitcast100, !reason !35
  br i1 %receive_load101, label %l12, label %l13

l3:                                               ; preds = %l1
  %broadcast144 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 50, i8* %0), !reason !35
  %bitcast145 = bitcast i8* %broadcast144 to i1*, !reason !35
  %receive_load146 = load i1, i1* %bitcast145, !reason !35
  br i1 %receive_load146, label %l4, label %l5

l4:                                               ; preds = %l3
  %receive147 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 51, i8* %0), !reason !5
  %bitcast148 = bitcast i8* %receive147 to i8**, !reason !5
  %receive_load149 = load i8*, i8** %bitcast148, !reason !5
  %receive150 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 52, i8* %0), !reason !5
  %bitcast151 = bitcast i8* %receive150 to i64*, !reason !5
  %receive_load152 = load i64, i64* %bitcast151, !reason !5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 4 %receive_load149, i64 %receive_load152, i1 false), !time !36
  %send_alloca153 = alloca i32, !reason !5
  store i32 %26, i32* %send_alloca153, !reason !5
  %send_cast154 = bitcast i32* %send_alloca153 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast154, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 53, i8* %0), !reason !5
  %repair_phi244 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 89, i8* %0), !reason !35
  %bitcast245 = bitcast i8* %repair_phi244 to i64*, !reason !35
  %receive_load246 = load i64, i64* %bitcast245, !reason !35
  br label %l7

l5:                                               ; preds = %l7, %l3
  %receive169 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 60, i8* %0), !reason !5
  %bitcast170 = bitcast i8* %receive169 to i64*, !reason !5
  %receive_load171 = load i64, i64* %bitcast170, !reason !5
  %27 = icmp slt i64 %new_phi28, %receive_load171, !time !37
  %send_alloca172 = alloca i1, !reason !38
  store i1 %27, i1* %send_alloca172, !reason !38
  %send_cast173 = bitcast i1* %send_alloca172 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast173, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 61, i8* %0), !reason !38
  br i1 %27, label %l6, label %l21

l6:                                               ; preds = %l5
  %receive174 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 62, i8* %0), !reason !5
  %bitcast175 = bitcast i8* %receive174 to i64*, !reason !5
  %receive_load176 = load i64, i64* %bitcast175, !reason !5
  %28 = trunc i64 %receive_load176 to i32, !time !37
  %29 = add i32 %28, -1, !time !39
  %send_alloca177 = alloca i64, !reason !5
  store i64 %new_phi28, i64* %send_alloca177, !reason !5
  %send_cast178 = bitcast i64* %send_alloca177 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast178, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 63, i8* %0), !reason !5
  br label %l8

l7:                                               ; preds = %l7, %l4
  %new_phi155 = phi i64 [ %receive_load246, %l4 ], [ %receive_load249, %l7 ], !time !4
  %send_alloca156 = alloca i64, !reason !5
  store i64 %new_phi155, i64* %send_alloca156, !reason !5
  %send_cast157 = bitcast i64* %send_alloca156 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast157, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 55, i8* %0), !reason !5
  %30 = trunc i64 %new_phi155 to i32, !time !8
  %receive158 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 56, i8* %0), !reason !5
  %bitcast159 = bitcast i8* %receive158 to i32*, !reason !5
  %receive_load160 = load i32, i32* %bitcast159, !reason !5
  %31 = sub i32 %receive_load160, %30, !time !9
  %32 = sext i32 %31 to i64, !time !7
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %32, !time !6
  %receive161 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 57, i8* %0), !reason !5
  %bitcast162 = bitcast i8* %receive161 to i32*, !reason !5
  %receive_load163 = load i32, i32* %bitcast162, !reason !5
  store i32 %receive_load163, i32* %33, align 4, !tbaa !40, !time !44
  %send_alloca164 = alloca i64, !reason !5
  store i64 %new_phi155, i64* %send_alloca164, !reason !5
  %send_cast165 = bitcast i64* %send_alloca164 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast165, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 58, i8* %0), !reason !5
  %broadcast166 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 59, i8* %0), !reason !35
  %bitcast167 = bitcast i8* %broadcast166 to i1*, !reason !35
  %receive_load168 = load i1, i1* %bitcast167, !reason !35
  %repair_phi247 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 90, i8* %0), !reason !35
  %bitcast248 = bitcast i8* %repair_phi247 to i64*, !reason !35
  %receive_load249 = load i64, i64* %bitcast248, !reason !35
  br i1 %receive_load168, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi179 = phi i64 [ %new_phi28, %l6 ], [ %37, %l11 ], !time !45
  %new_phi180 = phi i32 [ %29, %l6 ], [ %receive_load252, %l11 ], !time !11
  %34 = sext i32 %new_phi180 to i64, !time !46
  %35 = getelementptr inbounds [256 x i32], [256 x i32]* @a, i64 0, i64 %34, !time !47
  %send_alloca181 = alloca i32*, !reason !5
  store i32* %35, i32** %send_alloca181, !reason !5
  %send_cast182 = bitcast i32** %send_alloca181 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast182, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 64, i8* %0), !reason !5
  %send_alloca183 = alloca [256 x i32]*, !reason !5
  store [256 x i32]* @a, [256 x i32]** %send_alloca183, !reason !5
  %send_cast184 = bitcast [256 x i32]** %send_alloca183 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast184, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 65, i8* %0), !reason !5
  %36 = getelementptr inbounds i32, i32* %receive_load36, i64 %new_phi179, !time !48
  %broadcast185 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 66, i8* %0), !reason !35
  %bitcast186 = bitcast i8* %broadcast185 to i1*, !reason !35
  %receive_load187 = load i1, i1* %bitcast186, !reason !35
  br i1 %receive_load187, label %l9, label %l10

l9:                                               ; preds = %l8
  %receive191 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 68, i8* %0), !reason !5
  %bitcast192 = bitcast i8* %receive191 to i32*, !reason !5
  %receive_load193 = load i32, i32* %bitcast192, !reason !5
  store i32 %receive_load193, i32* %36, align 4, !tbaa !40, !time !49
  %send_alloca194 = alloca i32, !reason !5
  store i32 %new_phi180, i32* %send_alloca194, !reason !5
  %send_cast195 = bitcast i32* %send_alloca194 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast195, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 69, i8* %0), !reason !5
  br label %l11

l10:                                              ; preds = %l8
  %receive188 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 67, i8* %0), !reason !5
  %bitcast189 = bitcast i8* %receive188 to i32*, !reason !5
  %receive_load190 = load i32, i32* %bitcast189, !reason !5
  store i32 %receive_load190, i32* %36, align 4, !tbaa !40, !time !49
  %send_alloca253 = alloca i32, !reason !50
  store i32 %new_phi180, i32* %send_alloca253, !reason !50
  %send_cast254 = bitcast i32* %send_alloca253 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast254, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 92, i8* %0), !reason !50
  br label %l11

l11:                                              ; preds = %l10, %l9
  %37 = add nsw i64 %new_phi179, 1, !time !37
  %receive196 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 70, i8* %0), !reason !5
  %bitcast197 = bitcast i8* %receive196 to i64*, !reason !5
  %receive_load198 = load i64, i64* %bitcast197, !reason !5
  %38 = icmp eq i64 %37, %receive_load198, !time !39
  %send_alloca199 = alloca i1, !reason !38
  store i1 %38, i1* %send_alloca199, !reason !38
  %send_cast200 = bitcast i1* %send_alloca199 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast200, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 71, i8* %0), !reason !38
  %repair_phi250 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 91, i8* %0), !reason !35
  %bitcast251 = bitcast i8* %repair_phi250 to i32*, !reason !35
  %receive_load252 = load i32, i32* %bitcast251, !reason !35
  br i1 %38, label %l21, label %l8

l12:                                              ; preds = %l2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %15, i64 %25, i1 false), !time !36
  br label %l13

l13:                                              ; preds = %l12, %l2
  %receive102 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 34, i8* %0), !reason !5
  %bitcast103 = bitcast i8* %receive102 to i64*, !reason !5
  %receive_load104 = load i64, i64* %bitcast103, !reason !5
  %39 = icmp slt i64 %receive_load104, 257, !time !37
  %send_alloca105 = alloca i1, !reason !38
  store i1 %39, i1* %send_alloca105, !reason !38
  %send_cast106 = bitcast i1* %send_alloca105 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast106, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 35, i8* %0), !reason !38
  br i1 %39, label %l14, label %l15

l14:                                              ; preds = %l13
  %receive107 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 36, i8* %0), !reason !5
  %bitcast108 = bitcast i8* %receive107 to i64*, !reason !5
  %receive_load109 = load i64, i64* %bitcast108, !reason !5
  %40 = add i64 %receive_load109, 256, !time !37
  %repair_phi231 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 84, i8* %0), !reason !35
  %bitcast232 = bitcast i8* %repair_phi231 to i64*, !reason !35
  %receive_load233 = load i64, i64* %bitcast232, !reason !35
  br label %l16

l15:                                              ; preds = %l16, %l13
  %41 = trunc i64 %new_phi28 to i32, !time !37
  br label %l17

l16:                                              ; preds = %l16, %l14
  %new_phi110 = phi i64 [ %receive_load233, %l14 ], [ %44, %l16 ], !time !4
  %42 = getelementptr inbounds i32, i32* %receive_load36, i64 %new_phi110, !time !9
  %43 = load i32, i32* %42, align 4, !tbaa !40, !time !51
  %send_alloca111 = alloca i64, !reason !5
  store i64 %40, i64* %send_alloca111, !reason !5
  %send_cast112 = bitcast i64* %send_alloca111 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast112, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 37, i8* %0), !reason !5
  %send_alloca113 = alloca i64, !reason !5
  store i64 %new_phi110, i64* %send_alloca113, !reason !5
  %send_cast114 = bitcast i64* %send_alloca113 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast114, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 38, i8* %0), !reason !5
  %send_alloca115 = alloca i32, !reason !5
  store i32 %43, i32* %send_alloca115, !reason !5
  %send_cast116 = bitcast i32* %send_alloca115 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast116, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 39, i8* %0), !reason !5
  %44 = add nsw i64 %new_phi110, 1, !time !8
  %45 = trunc i64 %44 to i32, !time !52
  %46 = icmp eq i32 %45, 257, !time !53
  %send_alloca117 = alloca i1, !reason !38
  store i1 %46, i1* %send_alloca117, !reason !38
  %send_cast118 = bitcast i1* %send_alloca117 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast118, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 40, i8* %0), !reason !38
  br i1 %46, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %new_phi119 = phi i64 [ %new_phi28, %l15 ], [ %50, %l20 ], !time !45
  %new_phi120 = phi i32 [ 256, %l15 ], [ %receive_load236, %l20 ], !time !11
  %new_phi121 = phi i32 [ %41, %l15 ], [ %receive_load239, %l20 ], !time !4
  %47 = sext i32 %new_phi120 to i64, !time !46
  %receive122 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 41, i8* %0), !reason !5
  %bitcast123 = bitcast i8* %receive122 to [256 x i32]**, !reason !5
  %receive_load124 = load [256 x i32]*, [256 x i32]** %bitcast123, !reason !5
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* %receive_load124, i64 0, i64 %47, !time !47
  %send_alloca125 = alloca i32*, !reason !5
  store i32* %48, i32** %send_alloca125, !reason !5
  %send_cast126 = bitcast i32** %send_alloca125 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast126, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 42, i8* %0), !reason !5
  %send_alloca127 = alloca i32, !reason !5
  store i32 %new_phi121, i32* %send_alloca127, !reason !5
  %send_cast128 = bitcast i32* %send_alloca127 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast128, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 43, i8* %0), !reason !5
  %49 = getelementptr inbounds i32, i32* %receive_load36, i64 %new_phi119, !time !48
  %broadcast129 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 44, i8* %0), !reason !35
  %bitcast130 = bitcast i8* %broadcast129 to i1*, !reason !35
  %receive_load131 = load i1, i1* %bitcast130, !reason !35
  br i1 %receive_load131, label %l18, label %l19

l18:                                              ; preds = %l17
  %receive137 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 47, i8* %0), !reason !5
  %bitcast138 = bitcast i8* %receive137 to i32*, !reason !5
  %receive_load139 = load i32, i32* %bitcast138, !reason !5
  store i32 %receive_load139, i32* %49, align 4, !tbaa !40, !time !49
  %send_alloca140 = alloca i32, !reason !5
  store i32 %new_phi120, i32* %send_alloca140, !reason !5
  %send_cast141 = bitcast i32* %send_alloca140 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast141, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 48, i8* %0), !reason !5
  %send_alloca240 = alloca i32, !reason !50
  store i32 %new_phi121, i32* %send_alloca240, !reason !50
  %send_cast241 = bitcast i32* %send_alloca240 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast241, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 87, i8* %0), !reason !50
  br label %l20

l19:                                              ; preds = %l17
  %receive132 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 45, i8* %0), !reason !5
  %bitcast133 = bitcast i8* %receive132 to i32*, !reason !5
  %receive_load134 = load i32, i32* %bitcast133, !reason !5
  store i32 %receive_load134, i32* %49, align 4, !tbaa !40, !time !49
  %send_alloca135 = alloca i32, !reason !5
  store i32 %new_phi121, i32* %send_alloca135, !reason !5
  %send_cast136 = bitcast i32* %send_alloca135 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast136, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 46, i8* %0), !reason !5
  %send_alloca242 = alloca i32, !reason !50
  store i32 %new_phi120, i32* %send_alloca242, !reason !50
  %send_cast243 = bitcast i32* %send_alloca242 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast243, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 88, i8* %0), !reason !50
  br label %l20

l20:                                              ; preds = %l19, %l18
  %50 = add nsw i64 %new_phi119, 1, !time !37
  %51 = icmp eq i64 %50, 257, !time !39
  %send_alloca142 = alloca i1, !reason !38
  store i1 %51, i1* %send_alloca142, !reason !38
  %send_cast143 = bitcast i1* %send_alloca142 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast143, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 49, i8* %0), !reason !38
  %repair_phi234 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 85, i8* %0), !reason !35
  %bitcast235 = bitcast i8* %repair_phi234 to i32*, !reason !35
  %receive_load236 = load i32, i32* %bitcast235, !reason !35
  %repair_phi237 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 86, i8* %0), !reason !35
  %bitcast238 = bitcast i8* %repair_phi237 to i32*, !reason !35
  %receive_load239 = load i32, i32* %bitcast238, !reason !35
  br i1 %51, label %l21, label %l17

l21:                                              ; preds = %l20, %l11, %l5
  %receive201 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 72, i8* %0), !reason !5
  %bitcast202 = bitcast i8* %receive201 to i64*, !reason !5
  %receive_load203 = load i64, i64* %bitcast202, !reason !5
  %52 = add nsw i64 %new_phi28, %receive_load203, !time !37
  %send_alloca204 = alloca i32, !reason !5
  store i32 %new_phi29, i32* %send_alloca204, !reason !5
  %send_cast205 = bitcast i32* %send_alloca204 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast205, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 73, i8* %0), !reason !5
  %send_alloca206 = alloca i64, !reason !5
  store i64 %52, i64* %send_alloca206, !reason !5
  %send_cast207 = bitcast i64* %send_alloca206 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast207, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 74, i8* %0), !reason !5
  %53 = add nuw nsw i64 %new_phi27, 1, !time !39
  %send_alloca208 = alloca i32, !reason !5
  store i32 %new_phi26, i32* %send_alloca208, !reason !5
  %send_cast209 = bitcast i32* %send_alloca208 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast209, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 75, i8* %0), !reason !5
  %receive210 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 76, i8* %0), !reason !5
  %bitcast211 = bitcast i8* %receive210 to i64*, !reason !5
  %receive_load212 = load i64, i64* %bitcast211, !reason !5
  %receive213 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 77, i8* %0), !reason !5
  %bitcast214 = bitcast i8* %receive213 to i64*, !reason !5
  %receive_load215 = load i64, i64* %bitcast214, !reason !5
  %54 = add i64 %receive_load212, %receive_load215, !time !54
  %broadcast216 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 78, i8* %0), !reason !35
  %bitcast217 = bitcast i8* %broadcast216 to i1*, !reason !35
  %receive_load218 = load i1, i1* %bitcast217, !reason !35
  %send_alloca224 = alloca i64, !reason !50
  store i64 %54, i64* %send_alloca224, !reason !50
  %send_cast225 = bitcast i64* %send_alloca224 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast225, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 81, i8* %0), !reason !50
  %repair_phi = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 82, i8* %0), !reason !35
  %bitcast226 = bitcast i8* %repair_phi to i32*, !reason !35
  %receive_load227 = load i32, i32* %bitcast226, !reason !35
  %repair_phi228 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 83, i8* %0), !reason !35
  %bitcast229 = bitcast i8* %repair_phi228 to i32*, !reason !35
  %receive_load230 = load i32, i32* %bitcast229, !reason !35
  br i1 %receive_load218, label %l1, label %l22

l22:                                              ; preds = %l21
  %55 = shl nsw i32 %new_phi, 1, !time !37
  %send_alloca219 = alloca i32, !reason !5
  store i32 %new_phi, i32* %send_alloca219, !reason !5
  %send_cast220 = bitcast i32* %send_alloca219 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast220, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 79, i8* %0), !reason !5
  %broadcast221 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 80, i8* %0), !reason !35
  %bitcast222 = bitcast i8* %broadcast221 to i1*, !reason !35
  %receive_load223 = load i1, i1* %bitcast222, !reason !35
  br i1 %receive_load223, label %l, label %l23

l23:                                              ; preds = %l22
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

define void @ms_mergesort_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i8*)* @receive_argument to i8* (i64, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 54, i8* %0), !reason !3
  %bitcast158 = bitcast i8* %argument to i32**, !reason !3
  %receive_load159 = load i32*, i32** %bitcast158, !reason !3
  br label %l

l:                                                ; preds = %l22, %entry
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 0, i8* %0), !reason !5
  %bitcast = bitcast i8* %receive to i32*, !reason !5
  %receive_load = load i32, i32* %bitcast, !reason !5
  %1 = shl i32 %receive_load, 1, !time !46
  %2 = sext i32 %1 to i64, !time !47
  %3 = zext i32 %1 to i64, !time !52
  %send_alloca = alloca i32, !reason !5
  store i32 %1, i32* %send_alloca, !reason !5
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 1, i8* %0), !reason !5
  %receive24 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 2, i8* %0), !reason !5
  %bitcast25 = bitcast i8* %receive24 to i32*, !reason !5
  %receive_load26 = load i32, i32* %bitcast25, !reason !5
  %4 = icmp sgt i32 %receive_load26, 0, !time !53
  br label %l1

l1:                                               ; preds = %l21, %l
  %new_phi = phi i64 [ %2, %l ], [ %receive_load228, %l21 ], !time !55
  %receive27 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 3, i8* %0), !reason !5
  %bitcast28 = bitcast i8* %receive27 to i32*, !reason !5
  %receive_load29 = load i32, i32* %bitcast28, !reason !5
  %5 = sext i32 %receive_load29 to i64, !time !56
  %send_alloca30 = alloca i64, !reason !5
  store i64 %2, i64* %send_alloca30, !reason !5
  %send_cast31 = bitcast i64* %send_alloca30 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast31, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 4, i8* %0), !reason !5
  %receive32 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 6, i8* %0), !reason !5
  %bitcast33 = bitcast i8* %receive32 to i32**, !reason !5
  %receive_load34 = load i32*, i32** %bitcast33, !reason !5
  %6 = bitcast i32* %receive_load34 to i8*, !time !34
  %receive35 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 7, i8* %0), !reason !5
  %bitcast36 = bitcast i8* %receive35 to i64*, !reason !5
  %receive_load37 = load i64, i64* %bitcast36, !reason !5
  %receive38 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 8, i8* %0), !reason !5
  %bitcast39 = bitcast i8* %receive38 to i64*, !reason !5
  %receive_load40 = load i64, i64* %bitcast39, !reason !5
  %7 = mul nuw i64 %receive_load37, %receive_load40, !time !57
  %8 = trunc i64 %7 to i32, !time !58
  %receive41 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 9, i8* %0), !reason !5
  %bitcast42 = bitcast i8* %receive41 to i32*, !reason !5
  %receive_load43 = load i32, i32* %bitcast42, !reason !5
  %9 = add i32 %receive_load43, %8, !time !27
  %send_alloca44 = alloca i64, !reason !5
  store i64 %7, i64* %send_alloca44, !reason !5
  %send_cast45 = bitcast i64* %send_alloca44 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast45, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 10, i8* %0), !reason !5
  %receive46 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 11, i8* %0), !reason !5
  %bitcast47 = bitcast i8* %receive46 to i32*, !reason !5
  %receive_load48 = load i32, i32* %bitcast47, !reason !5
  %10 = or i32 %receive_load48, 1, !time !13
  %11 = icmp sgt i32 %9, %10, !time !14
  %12 = select i1 %11, i32 %9, i32 %10, !time !59
  %receive49 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 12, i8* %0), !reason !5
  %bitcast50 = bitcast i8* %receive49 to i64*, !reason !5
  %receive_load51 = load i64, i64* %bitcast50, !reason !5
  %13 = trunc i64 %receive_load51 to i32, !time !19
  %receive52 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 13, i8* %0), !reason !5
  %bitcast53 = bitcast i8* %receive52 to i32*, !reason !5
  %receive_load54 = load i32, i32* %bitcast53, !reason !5
  %14 = mul i32 %receive_load54, %13, !time !15
  %15 = add i32 %14, -1, !time !60
  %16 = add i32 %12, %15, !time !61
  %17 = zext i32 %16 to i64, !time !62
  %send_alloca55 = alloca i64, !reason !5
  store i64 %17, i64* %send_alloca55, !reason !5
  %send_cast56 = bitcast i64* %send_alloca55 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast56, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 14, i8* %0), !reason !5
  %receive57 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 15, i8* %0), !reason !5
  %bitcast58 = bitcast i8* %receive57 to i64*, !reason !5
  %receive_load59 = load i64, i64* %bitcast58, !reason !5
  %18 = add nuw nsw i64 %receive_load59, 4, !time !63
  %receive60 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 16, i8* %0), !reason !5
  %bitcast61 = bitcast i8* %receive60 to i32*, !reason !5
  %receive_load62 = load i32, i32* %bitcast61, !reason !5
  %19 = sext i32 %receive_load62 to i64, !time !25
  %send_alloca63 = alloca i64, !reason !5
  store i64 %2, i64* %send_alloca63, !reason !5
  %send_cast64 = bitcast i64* %send_alloca63 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast64, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 17, i8* %0), !reason !5
  %send_alloca65 = alloca [256 x i32]*, !reason !5
  store [256 x i32]* @a.1, [256 x i32]** %send_alloca65, !reason !5
  %send_cast66 = bitcast [256 x i32]** %send_alloca65 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast66, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 18, i8* %0), !reason !5
  %receive67 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 19, i8* %0), !reason !5
  %bitcast68 = bitcast i8* %receive67 to i64*, !reason !5
  %receive_load69 = load i64, i64* %bitcast68, !reason !5
  %20 = mul nuw i64 %receive_load69, %3, !time !64
  %21 = trunc i64 %20 to i32, !time !65
  %send_alloca70 = alloca i32, !reason !5
  store i32 %21, i32* %send_alloca70, !reason !5
  %send_cast71 = bitcast i32* %send_alloca70 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast71, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 20, i8* %0), !reason !5
  %22 = trunc i64 %20 to i32, !time !24
  %send_alloca72 = alloca i32, !reason !5
  store i32 %22, i32* %send_alloca72, !reason !5
  %send_cast73 = bitcast i32* %send_alloca72 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast73, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 21, i8* %0), !reason !5
  %receive74 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 22, i8* %0), !reason !5
  %bitcast75 = bitcast i8* %receive74 to i32*, !reason !5
  %receive_load76 = load i32, i32* %bitcast75, !reason !5
  %receive77 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 23, i8* %0), !reason !5
  %bitcast78 = bitcast i8* %receive77 to i32*, !reason !5
  %receive_load79 = load i32, i32* %bitcast78, !reason !5
  %23 = icmp sgt i32 %receive_load76, %receive_load79, !time !23
  %send_alloca80 = alloca i1, !reason !5
  store i1 %23, i1* %send_alloca80, !reason !5
  %send_cast81 = bitcast i1* %send_alloca80 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast81, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 24, i8* %0), !reason !5
  %receive82 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 25, i8* %0), !reason !5
  %bitcast83 = bitcast i8* %receive82 to i64*, !reason !5
  %receive_load84 = load i64, i64* %bitcast83, !reason !5
  %receive85 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 26, i8* %0), !reason !5
  %bitcast86 = bitcast i8* %receive85 to i64*, !reason !5
  %receive_load87 = load i64, i64* %bitcast86, !reason !5
  %24 = add nsw i64 %receive_load84, %receive_load87, !time !31
  %receive88 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 27, i8* %0), !reason !5
  %bitcast89 = bitcast i8* %receive88 to i32*, !reason !5
  %receive_load90 = load i32, i32* %bitcast89, !reason !5
  %receive91 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 28, i8* %0), !reason !5
  %bitcast92 = bitcast i8* %receive91 to i32*, !reason !5
  %receive_load93 = load i32, i32* %bitcast92, !reason !5
  %25 = add nsw i32 %receive_load90, %receive_load93, !time !21
  %receive94 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 29, i8* %0), !reason !5
  %bitcast95 = bitcast i8* %receive94 to i64*, !reason !5
  %receive_load96 = load i64, i64* %bitcast95, !reason !5
  %26 = add nsw i64 %24, %receive_load96, !time !32
  %receive97 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 30, i8* %0), !reason !5
  %bitcast98 = bitcast i8* %receive97 to i32*, !reason !5
  %receive_load99 = load i32, i32* %bitcast98, !reason !5
  %27 = add nsw i32 %25, %receive_load99, !time !29
  %send_alloca100 = alloca i32, !reason !5
  store i32 %27, i32* %send_alloca100, !reason !5
  %send_cast101 = bitcast i32* %send_alloca100 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast101, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 31, i8* %0), !reason !5
  %28 = icmp slt i64 %26, 257, !time !33
  %send_alloca102 = alloca i1, !reason !38
  store i1 %28, i1* %send_alloca102, !reason !38
  %send_cast103 = bitcast i1* %send_alloca102 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast103, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 32, i8* %0), !reason !38
  br i1 %28, label %l3, label %l2

l2:                                               ; preds = %l1
  %send_alloca104 = alloca i1, !reason !38
  store i1 %4, i1* %send_alloca104, !reason !38
  %send_cast105 = bitcast i1* %send_alloca104 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast105, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 33, i8* %0), !reason !38
  br i1 %4, label %l12, label %l13

l3:                                               ; preds = %l1
  %send_alloca149 = alloca i1, !reason !38
  store i1 %4, i1* %send_alloca149, !reason !38
  %send_cast150 = bitcast i1* %send_alloca149 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast150, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 50, i8* %0), !reason !38
  br i1 %4, label %l4, label %l5

l4:                                               ; preds = %l3
  %send_alloca151 = alloca i8*, !reason !5
  store i8* %6, i8** %send_alloca151, !reason !5
  %send_cast152 = bitcast i8** %send_alloca151 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast152, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 51, i8* %0), !reason !5
  %send_alloca153 = alloca i64, !reason !5
  store i64 %18, i64* %send_alloca153, !reason !5
  %send_cast154 = bitcast i64* %send_alloca153 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast154, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 52, i8* %0), !reason !5
  %29 = trunc i64 %24 to i32, !time !37
  %receive155 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 53, i8* %0), !reason !5
  %bitcast156 = bitcast i8* %receive155 to i32*, !reason !5
  %receive_load157 = load i32, i32* %bitcast156, !reason !5
  %30 = add nsw i32 %receive_load157, %29, !time !39
  %send_alloca245 = alloca i64, !reason !50
  store i64 %5, i64* %send_alloca245, !reason !50
  %send_cast246 = bitcast i64* %send_alloca245 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast246, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 89, i8* %0), !reason !50
  br label %l7

l5:                                               ; preds = %l7, %l3
  %send_alloca172 = alloca i64, !reason !5
  store i64 %26, i64* %send_alloca172, !reason !5
  %send_cast173 = bitcast i64* %send_alloca172 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast173, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 60, i8* %0), !reason !5
  %broadcast174 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 61, i8* %0), !reason !35
  %bitcast175 = bitcast i8* %broadcast174 to i1*, !reason !35
  %receive_load176 = load i1, i1* %bitcast175, !reason !35
  br i1 %receive_load176, label %l6, label %l21

l6:                                               ; preds = %l5
  %send_alloca177 = alloca i64, !reason !5
  store i64 %26, i64* %send_alloca177, !reason !5
  %send_cast178 = bitcast i64* %send_alloca177 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast178, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 62, i8* %0), !reason !5
  %receive179 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 63, i8* %0), !reason !5
  %bitcast180 = bitcast i8* %receive179 to i64*, !reason !5
  %receive_load181 = load i64, i64* %bitcast180, !reason !5
  %31 = trunc i64 %receive_load181 to i32, !time !37
  br label %l8

l7:                                               ; preds = %l7, %l4
  %receive160 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 55, i8* %0), !reason !5
  %bitcast161 = bitcast i8* %receive160 to i64*, !reason !5
  %receive_load162 = load i64, i64* %bitcast161, !reason !5
  %32 = getelementptr inbounds i32, i32* %receive_load159, i64 %receive_load162, !time !54
  %33 = load i32, i32* %32, align 4, !tbaa !40, !time !66
  %send_alloca163 = alloca i32, !reason !5
  store i32 %30, i32* %send_alloca163, !reason !5
  %send_cast164 = bitcast i32* %send_alloca163 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast164, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 56, i8* %0), !reason !5
  %send_alloca165 = alloca i32, !reason !5
  store i32 %33, i32* %send_alloca165, !reason !5
  %send_cast166 = bitcast i32* %send_alloca165 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast166, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 57, i8* %0), !reason !5
  %receive167 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 58, i8* %0), !reason !5
  %bitcast168 = bitcast i8* %receive167 to i64*, !reason !5
  %receive_load169 = load i64, i64* %bitcast168, !reason !5
  %34 = add nsw i64 %receive_load169, 1, !time !46
  %35 = icmp slt i64 %34, %26, !time !6
  %send_alloca170 = alloca i1, !reason !38
  store i1 %35, i1* %send_alloca170, !reason !38
  %send_cast171 = bitcast i1* %send_alloca170 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast171, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 59, i8* %0), !reason !38
  %send_alloca247 = alloca i64, !reason !50
  store i64 %34, i64* %send_alloca247, !reason !50
  %send_cast248 = bitcast i64* %send_alloca247 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast248, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 90, i8* %0), !reason !50
  br i1 %35, label %l7, label %l5

l8:                                               ; preds = %l11, %l6
  %new_phi182 = phi i32 [ %31, %l6 ], [ %new_phi199, %l11 ], !time !11
  %receive183 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 64, i8* %0), !reason !5
  %bitcast184 = bitcast i8* %receive183 to i32**, !reason !5
  %receive_load185 = load i32*, i32** %bitcast184, !reason !5
  %36 = load i32, i32* %receive_load185, align 4, !tbaa !40, !time !67
  %37 = sext i32 %new_phi182 to i64, !time !46
  %receive186 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 65, i8* %0), !reason !5
  %bitcast187 = bitcast i8* %receive186 to [256 x i32]**, !reason !5
  %receive_load188 = load [256 x i32]*, [256 x i32]** %bitcast187, !reason !5
  %38 = getelementptr inbounds [256 x i32], [256 x i32]* %receive_load188, i64 0, i64 %37, !time !47
  %39 = load i32, i32* %38, align 4, !tbaa !40, !time !68
  %40 = icmp slt i32 %36, %39, !time !58
  %send_alloca189 = alloca i1, !reason !38
  store i1 %40, i1* %send_alloca189, !reason !38
  %send_cast190 = bitcast i1* %send_alloca189 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast190, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 66, i8* %0), !reason !38
  br i1 %40, label %l9, label %l10

l9:                                               ; preds = %l8
  %send_alloca193 = alloca i32, !reason !5
  store i32 %36, i32* %send_alloca193, !reason !5
  %send_cast194 = bitcast i32* %send_alloca193 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast194, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 68, i8* %0), !reason !5
  %receive195 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 69, i8* %0), !reason !5
  %bitcast196 = bitcast i8* %receive195 to i32*, !reason !5
  %receive_load197 = load i32, i32* %bitcast196, !reason !5
  %41 = add nsw i32 %receive_load197, -1, !time !37
  br label %l11

l10:                                              ; preds = %l8
  %send_alloca191 = alloca i32, !reason !5
  store i32 %39, i32* %send_alloca191, !reason !5
  %send_cast192 = bitcast i32* %send_alloca191 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast192, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 67, i8* %0), !reason !5
  %42 = add nsw i32 %new_phi182, 1, !time !37
  %repair_phi251 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 92, i8* %0), !reason !35
  %bitcast252 = bitcast i8* %repair_phi251 to i32*, !reason !35
  %receive_load253 = load i32, i32* %bitcast252, !reason !35
  br label %l11

l11:                                              ; preds = %l10, %l9
  %new_phi198 = phi i32 [ %41, %l9 ], [ %receive_load253, %l10 ], !time !69
  %new_phi199 = phi i32 [ %new_phi182, %l9 ], [ %42, %l10 ], !time !69
  %send_alloca200 = alloca i64, !reason !5
  store i64 %new_phi, i64* %send_alloca200, !reason !5
  %send_cast201 = bitcast i64* %send_alloca200 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast201, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 70, i8* %0), !reason !5
  %broadcast202 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 71, i8* %0), !reason !35
  %bitcast203 = bitcast i8* %broadcast202 to i1*, !reason !35
  %receive_load204 = load i1, i1* %bitcast203, !reason !35
  %send_alloca249 = alloca i32, !reason !50
  store i32 %new_phi198, i32* %send_alloca249, !reason !50
  %send_cast250 = bitcast i32* %send_alloca249 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast250, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 91, i8* %0), !reason !50
  br i1 %receive_load204, label %l21, label %l8

l12:                                              ; preds = %l2
  br label %l13

l13:                                              ; preds = %l12, %l2
  %send_alloca106 = alloca i64, !reason !5
  store i64 %24, i64* %send_alloca106, !reason !5
  %send_cast107 = bitcast i64* %send_alloca106 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast107, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 34, i8* %0), !reason !5
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 35, i8* %0), !reason !35
  %bitcast108 = bitcast i8* %broadcast to i1*, !reason !35
  %receive_load109 = load i1, i1* %bitcast108, !reason !35
  br i1 %receive_load109, label %l14, label %l15

l14:                                              ; preds = %l13
  %send_alloca110 = alloca i64, !reason !5
  store i64 %24, i64* %send_alloca110, !reason !5
  %send_cast111 = bitcast i64* %send_alloca110 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast111, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 36, i8* %0), !reason !5
  %send_alloca233 = alloca i64, !reason !50
  store i64 %19, i64* %send_alloca233, !reason !50
  %send_cast234 = bitcast i64* %send_alloca233 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast234, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 84, i8* %0), !reason !50
  br label %l16

l15:                                              ; preds = %l16, %l13
  br label %l17

l16:                                              ; preds = %l16, %l14
  %receive112 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 37, i8* %0), !reason !5
  %bitcast113 = bitcast i8* %receive112 to i64*, !reason !5
  %receive_load114 = load i64, i64* %bitcast113, !reason !5
  %receive115 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 38, i8* %0), !reason !5
  %bitcast116 = bitcast i8* %receive115 to i64*, !reason !5
  %receive_load117 = load i64, i64* %bitcast116, !reason !5
  %43 = sub i64 %receive_load114, %receive_load117, !time !46
  %44 = shl i64 %43, 32, !time !47
  %45 = ashr exact i64 %44, 32, !time !52
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @a.1, i64 0, i64 %45, !time !53
  %receive118 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 39, i8* %0), !reason !5
  %bitcast119 = bitcast i8* %receive118 to i32*, !reason !5
  %receive_load120 = load i32, i32* %bitcast119, !reason !5
  store i32 %receive_load120, i32* %46, align 4, !tbaa !40, !time !70
  %broadcast121 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 40, i8* %0), !reason !35
  %bitcast122 = bitcast i8* %broadcast121 to i1*, !reason !35
  %receive_load123 = load i1, i1* %bitcast122, !reason !35
  br i1 %receive_load123, label %l15, label %l16

l17:                                              ; preds = %l20, %l15
  %send_alloca124 = alloca [256 x i32]*, !reason !5
  store [256 x i32]* @a.1, [256 x i32]** %send_alloca124, !reason !5
  %send_cast125 = bitcast [256 x i32]** %send_alloca124 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast125, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 41, i8* %0), !reason !5
  %receive126 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 42, i8* %0), !reason !5
  %bitcast127 = bitcast i8* %receive126 to i32**, !reason !5
  %receive_load128 = load i32*, i32** %bitcast127, !reason !5
  %47 = load i32, i32* %receive_load128, align 4, !tbaa !40, !time !67
  %receive129 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 43, i8* %0), !reason !5
  %bitcast130 = bitcast i8* %receive129 to i32*, !reason !5
  %receive_load131 = load i32, i32* %bitcast130, !reason !5
  %48 = sext i32 %receive_load131 to i64, !time !46
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* @a.1, i64 0, i64 %48, !time !47
  %50 = load i32, i32* %49, align 4, !tbaa !40, !time !68
  %51 = icmp slt i32 %47, %50, !time !58
  %send_alloca132 = alloca i1, !reason !38
  store i1 %51, i1* %send_alloca132, !reason !38
  %send_cast133 = bitcast i1* %send_alloca132 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast133, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 44, i8* %0), !reason !38
  br i1 %51, label %l18, label %l19

l18:                                              ; preds = %l17
  %send_alloca139 = alloca i32, !reason !5
  store i32 %47, i32* %send_alloca139, !reason !5
  %send_cast140 = bitcast i32* %send_alloca139 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast140, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 47, i8* %0), !reason !5
  %receive141 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 48, i8* %0), !reason !5
  %bitcast142 = bitcast i8* %receive141 to i32*, !reason !5
  %receive_load143 = load i32, i32* %bitcast142, !reason !5
  %52 = add nsw i32 %receive_load143, -1, !time !37
  %repair_phi239 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 87, i8* %0), !reason !35
  %bitcast240 = bitcast i8* %repair_phi239 to i32*, !reason !35
  %receive_load241 = load i32, i32* %bitcast240, !reason !35
  br label %l20

l19:                                              ; preds = %l17
  %send_alloca134 = alloca i32, !reason !5
  store i32 %50, i32* %send_alloca134, !reason !5
  %send_cast135 = bitcast i32* %send_alloca134 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast135, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 45, i8* %0), !reason !5
  %receive136 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 46, i8* %0), !reason !5
  %bitcast137 = bitcast i8* %receive136 to i32*, !reason !5
  %receive_load138 = load i32, i32* %bitcast137, !reason !5
  %53 = add nsw i32 %receive_load138, 1, !time !37
  %repair_phi242 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 88, i8* %0), !reason !35
  %bitcast243 = bitcast i8* %repair_phi242 to i32*, !reason !35
  %receive_load244 = load i32, i32* %bitcast243, !reason !35
  br label %l20

l20:                                              ; preds = %l19, %l18
  %new_phi144 = phi i32 [ %receive_load241, %l18 ], [ %53, %l19 ], !time !69
  %new_phi145 = phi i32 [ %52, %l18 ], [ %receive_load244, %l19 ], !time !69
  %broadcast146 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 49, i8* %0), !reason !35
  %bitcast147 = bitcast i8* %broadcast146 to i1*, !reason !35
  %receive_load148 = load i1, i1* %bitcast147, !reason !35
  %send_alloca235 = alloca i32, !reason !50
  store i32 %new_phi145, i32* %send_alloca235, !reason !50
  %send_cast236 = bitcast i32* %send_alloca235 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast236, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 85, i8* %0), !reason !50
  %send_alloca237 = alloca i32, !reason !50
  store i32 %new_phi144, i32* %send_alloca237, !reason !50
  %send_cast238 = bitcast i32* %send_alloca237 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast238, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 86, i8* %0), !reason !50
  br i1 %receive_load148, label %l21, label %l17

l21:                                              ; preds = %l20, %l11, %l5
  %send_alloca205 = alloca i64, !reason !5
  store i64 %2, i64* %send_alloca205, !reason !5
  %send_cast206 = bitcast i64* %send_alloca205 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast206, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 72, i8* %0), !reason !5
  %receive207 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 73, i8* %0), !reason !5
  %bitcast208 = bitcast i8* %receive207 to i32*, !reason !5
  %receive_load209 = load i32, i32* %bitcast208, !reason !5
  %54 = add nsw i32 %receive_load209, %1, !time !39
  %receive210 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 74, i8* %0), !reason !5
  %bitcast211 = bitcast i8* %receive210 to i64*, !reason !5
  %receive_load212 = load i64, i64* %bitcast211, !reason !5
  %55 = icmp slt i64 %receive_load212, 256, !time !54
  %receive213 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 75, i8* %0), !reason !5
  %bitcast214 = bitcast i8* %receive213 to i32*, !reason !5
  %receive_load215 = load i32, i32* %bitcast214, !reason !5
  %56 = add i32 %receive_load215, %1, !time !37
  %send_alloca216 = alloca i64, !reason !5
  store i64 %new_phi, i64* %send_alloca216, !reason !5
  %send_cast217 = bitcast i64* %send_alloca216 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast217, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 76, i8* %0), !reason !5
  %send_alloca218 = alloca i64, !reason !5
  store i64 %2, i64* %send_alloca218, !reason !5
  %send_cast219 = bitcast i64* %send_alloca218 to i8*, !reason !5
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast219, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 77, i8* %0), !reason !5
  %send_alloca220 = alloca i1, !reason !38
  store i1 %55, i1* %send_alloca220, !reason !38
  %send_cast221 = bitcast i1* %send_alloca220 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast221, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 78, i8* %0), !reason !38
  %repair_phi = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 81, i8* %0), !reason !35
  %bitcast227 = bitcast i8* %repair_phi to i64*, !reason !35
  %receive_load228 = load i64, i64* %bitcast227, !reason !35
  %send_alloca229 = alloca i32, !reason !50
  store i32 %56, i32* %send_alloca229, !reason !50
  %send_cast230 = bitcast i32* %send_alloca229 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast230, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 82, i8* %0), !reason !50
  %send_alloca231 = alloca i32, !reason !50
  store i32 %54, i32* %send_alloca231, !reason !50
  %send_cast232 = bitcast i32* %send_alloca231 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast232, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 83, i8* %0), !reason !50
  br i1 %55, label %l1, label %l22

l22:                                              ; preds = %l21
  %receive222 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 79, i8* %0), !reason !5
  %bitcast223 = bitcast i8* %receive222 to i32*, !reason !5
  %receive_load224 = load i32, i32* %bitcast223, !reason !5
  %57 = icmp slt i32 %receive_load224, 128, !time !37
  %send_alloca225 = alloca i1, !reason !38
  store i1 %57, i1* %send_alloca225, !reason !38
  %send_cast226 = bitcast i1* %send_alloca225 to i8*, !reason !38
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast226, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 80, i8* %0), !reason !38
  br i1 %57, label %l, label %l23

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
  %80 = load i32, i32* %79, align 4, !tbaa !40
  %81 = trunc i64 %78 to i32
  %82 = sub i32 %70, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %83
  store i32 %80, i32* %84, align 4, !tbaa !40
  %85 = add nsw i64 %78, 1
  %86 = icmp slt i64 %85, %62
  br i1 %86, label %77, label %71

; <label>:87:                                     ; preds = %103, %73
  %88 = phi i64 [ %18, %73 ], [ %106, %103 ]
  %89 = phi i32 [ %76, %73 ], [ %105, %103 ]
  %90 = phi i32 [ %75, %73 ], [ %104, %103 ]
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !40
  %94 = sext i32 %89 to i64
  %95 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4, !tbaa !40
  %97 = icmp slt i32 %93, %96
  %98 = getelementptr inbounds i32, i32* %0, i64 %88
  br i1 %97, label %99, label %101

; <label>:99:                                     ; preds = %87
  store i32 %93, i32* %98, align 4, !tbaa !40
  %100 = add nsw i32 %90, -1
  br label %103

; <label>:101:                                    ; preds = %87
  store i32 %96, i32* %98, align 4, !tbaa !40
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
  %118 = load i32, i32* %117, align 4, !tbaa !40
  %119 = sub i64 %112, %116
  %120 = shl i64 %119, 32
  %121 = ashr exact i64 %120, 32
  %122 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %121
  store i32 %118, i32* %122, align 4, !tbaa !40
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
  %132 = load i32, i32* %131, align 4, !tbaa !40
  %133 = sext i32 %129 to i64
  %134 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4, !tbaa !40
  %136 = icmp slt i32 %132, %135
  %137 = getelementptr inbounds i32, i32* %0, i64 %127
  br i1 %136, label %138, label %140

; <label>:138:                                    ; preds = %126
  store i32 %132, i32* %137, align 4, !tbaa !40
  %139 = add nsw i32 %128, -1
  br label %142

; <label>:140:                                    ; preds = %126
  store i32 %135, i32* %137, align 4, !tbaa !40
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
  %9 = load i32, i32* %8, align 4, !tbaa !40
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
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 5, i8* %1), !reason !3
  %send_alloca1 = alloca i32*, !reason !3
  store i32* %0, i32** %send_alloca1, !reason !3
  %send_cast2 = bitcast i32** %send_alloca1 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send_argument to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 54, i8* %1), !reason !3
  call void @join_partitioned_functions(i32 2, i8* %call_partitioned_functions)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define i8* @init() #2 {
  %1 = tail call i8* @malloc(i64 208) #7
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !71
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
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !76
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !78
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
  %16 = load i64, i64* %15, align 8, !tbaa !79
  %17 = bitcast i8* %13 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !76
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to i8**
  store i8* %2, i8** %19, align 8, !tbaa !78
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
  %10 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %9, align 8, !tbaa !79
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
  store i32 %2, i32* %6, align 8, !tbaa !80
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !82
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #7
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !83
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #8
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !84
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !71
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.Context* %3 to i8**
  br label %30

; <label>:22:                                     ; preds = %22, %4
  %23 = phi %struct.Comm* [ %25, %22 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !84
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #6

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !79
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !80
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !80
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
  %22 = load i64, i64* %21, align 8, !tbaa !84
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !84
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !71
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !79
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
  %19 = load i32, i32* %18, align 4, !tbaa !82
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %23, label %21

; <label>:21:                                     ; preds = %17
  %22 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i32 %2, i32 %1, i32 %19)
  br label %23

; <label>:23:                                     ; preds = %21, %17
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %14, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8, !tbaa !83
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
!6 = !{!"22", !"29"}
!7 = !{!"15", !"22"}
!8 = !{!"1", !"8"}
!9 = !{!"8", !"15"}
!10 = !{!"11", !"11"}
!11 = !{!"2", !"2"}
!12 = !{!"137", !"137"}
!13 = !{!"60", !"67"}
!14 = !{!"67", !"74"}
!15 = !{!"81", !"88"}
!16 = !{!"130", !"137"}
!17 = !{!"11", !"18"}
!18 = !{!"137", !"144"}
!19 = !{!"46", !"53"}
!20 = !{!"95", !"102"}
!21 = !{!"102", !"109"}
!22 = !{!"123", !"130"}
!23 = !{!"144", !"151"}
!24 = !{!"74", !"81"}
!25 = !{!"88", !"95"}
!26 = !{!"165", !"166"}
!27 = !{!"53", !"60"}
!28 = !{!"151", !"158"}
!29 = !{!"158", !"165"}
!30 = !{!"166", !"173"}
!31 = !{!"173", !"180"}
!32 = !{!"180", !"187"}
!33 = !{!"187", !"194"}
!34 = !{!"194", !"201"}
!35 = !{!"receive"}
!36 = !{!"0", !"15"}
!37 = !{!"0", !"7"}
!38 = !{!"broadcast"}
!39 = !{!"7", !"14"}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"29", !"30"}
!45 = !{!"17", !"17"}
!46 = !{!"2", !"9"}
!47 = !{!"9", !"16"}
!48 = !{!"17", !"24"}
!49 = !{!"0", !"1"}
!50 = !{!"repair_phi"}
!51 = !{!"15", !"16"}
!52 = !{!"16", !"23"}
!53 = !{!"23", !"30"}
!54 = !{!"14", !"21"}
!55 = !{!"180", !"180"}
!56 = !{!"39", !"46"}
!57 = !{!"3", !"10"}
!58 = !{!"18", !"25"}
!59 = !{!"101", !"102"}
!60 = !{!"109", !"116"}
!61 = !{!"116", !"123"}
!62 = !{!"129", !"136"}
!63 = !{!"165", !"172"}
!64 = !{!"25", !"32"}
!65 = !{!"32", !"39"}
!66 = !{!"21", !"22"}
!67 = !{!"17", !"18"}
!68 = !{!"16", !"17"}
!69 = !{!"13", !"13"}
!70 = !{!"30", !"31"}
!71 = !{!72, !73, i64 0}
!72 = !{!"Context", !73, i64 0, !74, i64 8}
!73 = !{!"any pointer", !42, i64 0}
!74 = !{!"_opaque_pthread_rwlock_t", !75, i64 0, !42, i64 8}
!75 = !{!"long", !42, i64 0}
!76 = !{!77, !73, i64 0}
!77 = !{!"Closure", !73, i64 0, !73, i64 8}
!78 = !{!77, !73, i64 8}
!79 = !{!73, !73, i64 0}
!80 = !{!81, !41, i64 0}
!81 = !{!"Comm", !41, i64 0, !41, i64 4, !73, i64 8, !73, i64 16}
!82 = !{!81, !41, i64 4}
!83 = !{!81, !73, i64 8}
!84 = !{!81, !73, i64 16}
