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
@funs = global [2 x void (i8*)*] [void (i8*)* @ms_mergesort_0, void (i8*)* @ms_mergesort_1]
@__const.main.a.1 = private unnamed_addr constant [256 x i32] [i32 8630, i32 2371, i32 2106, i32 7047, i32 9475, i32 9554, i32 7281, i32 6704, i32 1253, i32 2157, i32 2702, i32 5221, i32 549, i32 5266, i32 7151, i32 8215, i32 8118, i32 7034, i32 2088, i32 9135, i32 3332, i32 6269, i32 5470, i32 1887, i32 9323, i32 8378, i32 8971, i32 7937, i32 9515, i32 3476, i32 1646, i32 3823, i32 555, i32 2036, i32 5010, i32 2633, i32 6890, i32 6000, i32 3503, i32 4297, i32 8403, i32 1966, i32 4584, i32 296, i32 322, i32 5328, i32 9540, i32 4442, i32 8455, i32 1645, i32 918, i32 2763, i32 4392, i32 6305, i32 3658, i32 8480, i32 8317, i32 6815, i32 5122, i32 5437, i32 2203, i32 511, i32 5744, i32 7766, i32 2356, i32 2207, i32 9796, i32 3578, i32 7374, i32 2888, i32 9291, i32 7479, i32 5700, i32 1726, i32 1181, i32 4994, i32 9697, i32 5623, i32 9487, i32 8533, i32 5359, i32 5216, i32 1, i32 6160, i32 8711, i32 8220, i32 6721, i32 4251, i32 288, i32 1950, i32 4118, i32 8633, i32 7052, i32 5668, i32 9958, i32 9749, i32 3057, i32 163, i32 5420, i32 7122, i32 3599, i32 2192, i32 5139, i32 4181, i32 6943, i32 16, i32 2609, i32 144, i32 3845, i32 5201, i32 8248, i32 5315, i32 4539, i32 8064, i32 671, i32 7867, i32 3556, i32 6717, i32 5041, i32 7526, i32 2624, i32 2612, i32 1269, i32 6184, i32 5584, i32 4656, i32 4378, i32 1243, i32 7797, i32 9670, i32 3304, i32 5750, i32 3355, i32 8214, i32 2352, i32 5843, i32 770, i32 7960, i32 3927, i32 9337, i32 6192, i32 4939, i32 4203, i32 9404, i32 3437, i32 4012, i32 8768, i32 6298, i32 9854, i32 7487, i32 537, i32 6765, i32 8956, i32 292, i32 6868, i32 8865, i32 2349, i32 1272, i32 2426, i32 5098, i32 1587, i32 7189, i32 7336, i32 2419, i32 3763, i32 5662, i32 9479, i32 3154, i32 33, i32 4661, i32 4990, i32 7170, i32 6230, i32 5919, i32 2969, i32 1882, i32 4291, i32 6145, i32 9519, i32 2130, i32 3981, i32 6171, i32 7298, i32 8669, i32 1915, i32 1826, i32 520, i32 2619, i32 2685, i32 9032, i32 7117, i32 7485, i32 3923, i32 4877, i32 6452, i32 1773, i32 2854, i32 3782, i32 448, i32 6425, i32 1996, i32 1688, i32 7995, i32 8573, i32 7790, i32 4629, i32 3495, i32 3746, i32 8733, i32 7781, i32 8415, i32 526, i32 6759, i32 9079, i32 8943, i32 3982, i32 6409, i32 8583, i32 3020, i32 4513, i32 5015, i32 7657, i32 6111, i32 3815, i32 9629, i32 1856, i32 1560, i32 8332, i32 5885, i32 9471, i32 1330, i32 7337, i32 7486, i32 9288, i32 7380, i32 524, i32 4007, i32 9589, i32 9680, i32 4558, i32 3996, i32 9331, i32 2769, i32 4166, i32 1952, i32 8244, i32 434, i32 5746, i32 7112, i32 7613, i32 2348, i32 4351, i32 393, i32 4421, i32 6386, i32 8158], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"WARNING: receive with ID [%d] expected size %d but has size %d\0A\00", align 1

define void @ms_mergesort_0(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 8, i8* %0), !reason !3
  %bitcast46 = bitcast i8* %argument to i32**, !reason !3
  %receive_load47 = load i32*, i32** %bitcast46, !reason !3
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 0, i8* %0), !reason !4
  %bitcast = bitcast i8* %receive to [256 x i32]**, !reason !4
  %receive_load = load [256 x i32]*, [256 x i32]** %bitcast, !reason !4
  %1 = bitcast [256 x i32]* %receive_load to i8*, !time !5
  br label %l

l:                                                ; preds = %l24, %entry
  %new_phi = phi i32 [ 1, %entry ], [ %64, %l24 ], !time !6
  %send_alloca = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca, !reason !4
  %send_cast = bitcast i32* %send_alloca to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 1, i8* %0), !reason !4
  %receive26 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 2, i8* %0), !reason !4
  %bitcast27 = bitcast i8* %receive26 to i32*, !reason !4
  %receive_load28 = load i32, i32* %bitcast27, !reason !4
  %2 = zext i32 %receive_load28 to i64, !time !7
  %3 = mul i32 %new_phi, -2, !time !8
  %send_alloca29 = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca29, !reason !4
  %send_cast30 = bitcast i32* %send_alloca29 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast30, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 3, i8* %0), !reason !4
  %send_alloca31 = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca31, !reason !4
  %send_cast32 = bitcast i32* %send_alloca31 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast32, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 4, i8* %0), !reason !4
  %4 = icmp sgt i32 %new_phi, 0, !time !9
  %5 = icmp sgt i32 %new_phi, 0, !time !10
  %"repair phi" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 70, i8* %0), !reason !11
  %bitcast204 = bitcast i8* %"repair phi" to i64*, !reason !11
  %receive_load205 = load i64, i64* %bitcast204, !reason !11
  %send_alloca206 = alloca i32, !reason !12
  store i32 %new_phi, i32* %send_alloca206, !reason !12
  %send_cast207 = bitcast i32* %send_alloca206 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast207, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 71, i8* %0), !reason !12
  br label %l1

l1:                                               ; preds = %l23, %l
  %new_phi33 = phi i64 [ %receive_load205, %l ], [ %63, %l23 ], !time !13
  %new_phi34 = phi i64 [ 0, %l ], [ %61, %l23 ], !time !14
  %new_phi35 = phi i64 [ 0, %l ], [ %receive_load212, %l23 ], !time !15
  %new_phi36 = phi i32 [ 0, %l ], [ %receive_load215, %l23 ], !time !16
  %receive37 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 5, i8* %0), !reason !4
  %bitcast38 = bitcast i8* %receive37 to i32*, !reason !4
  %receive_load39 = load i32, i32* %bitcast38, !reason !4
  %6 = sext i32 %receive_load39 to i64, !time !17
  %receive40 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 6, i8* %0), !reason !4
  %bitcast41 = bitcast i8* %receive40 to i64*, !reason !4
  %receive_load42 = load i64, i64* %bitcast41, !reason !4
  %7 = mul i64 %new_phi34, %receive_load42, !time !18
  %receive43 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 7, i8* %0), !reason !4
  %bitcast44 = bitcast i8* %receive43 to [256 x i32]**, !reason !4
  %receive_load45 = load [256 x i32]*, [256 x i32]** %bitcast44, !reason !4
  %8 = getelementptr [256 x i32], [256 x i32]* %receive_load45, i64 0, i64 %7, !time !19
  %9 = bitcast i32* %8 to i8*, !time !20
  %10 = getelementptr i32, i32* %receive_load47, i64 %7, !time !21
  %11 = bitcast i32* %10 to i8*, !time !22
  %send_alloca48 = alloca i64, !reason !4
  store i64 %new_phi34, i64* %send_alloca48, !reason !4
  %send_cast49 = bitcast i64* %send_alloca48 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast49, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 9, i8* %0), !reason !4
  %send_alloca50 = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca50, !reason !4
  %send_cast51 = bitcast i32* %send_alloca50 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast51, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 10, i8* %0), !reason !4
  %receive52 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 11, i8* %0), !reason !4
  %bitcast53 = bitcast i8* %receive52 to i64*, !reason !4
  %receive_load54 = load i64, i64* %bitcast53, !reason !4
  %12 = trunc i64 %receive_load54 to i32, !time !23
  %13 = or i32 %12, 1, !time !24
  %receive55 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 12, i8* %0), !reason !4
  %bitcast56 = bitcast i8* %receive55 to i32*, !reason !4
  %receive_load57 = load i32, i32* %bitcast56, !reason !4
  %14 = icmp sgt i32 %receive_load57, %13, !time !25
  %receive58 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 13, i8* %0), !reason !4
  %bitcast59 = bitcast i8* %receive58 to i32*, !reason !4
  %receive_load60 = load i32, i32* %bitcast59, !reason !4
  %15 = select i1 %14, i32 %receive_load60, i32 %13, !time !26
  %16 = trunc i64 %new_phi34 to i32, !time !27
  %17 = mul i32 %3, %16, !time !28
  %18 = add i32 %17, -1, !time !29
  %19 = add i32 %15, %18, !time !30
  %20 = zext i32 %19 to i64, !time !31
  %21 = shl nuw nsw i64 %20, 2, !time !32
  %22 = add nuw nsw i64 %21, 4, !time !33
  %receive61 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 14, i8* %0), !reason !4
  %bitcast62 = bitcast i8* %receive61 to i32*, !reason !4
  %receive_load63 = load i32, i32* %bitcast62, !reason !4
  %23 = sext i32 %receive_load63 to i64, !time !34
  %receive64 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 15, i8* %0), !reason !4
  %bitcast65 = bitcast i8* %receive64 to i64*, !reason !4
  %receive_load66 = load i64, i64* %bitcast65, !reason !4
  %24 = mul i64 %new_phi34, %receive_load66, !time !35
  %receive67 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 16, i8* %0), !reason !4
  %bitcast68 = bitcast i8* %receive67 to [256 x i32]**, !reason !4
  %receive_load69 = load [256 x i32]*, [256 x i32]** %bitcast68, !reason !4
  %25 = getelementptr [256 x i32], [256 x i32]* %receive_load69, i64 0, i64 %24, !time !36
  %26 = bitcast i32* %25 to i8*, !time !37
  %27 = getelementptr i32, i32* %receive_load47, i64 %24, !time !38
  %28 = bitcast i32* %27 to i8*, !time !39
  %29 = mul i64 %new_phi34, %2, !time !40
  %30 = trunc i64 %29 to i32, !time !41
  %31 = add i32 %new_phi, %30, !time !42
  %32 = trunc i64 %29 to i32, !time !43
  %33 = or i32 %32, 1, !time !44
  %34 = icmp sgt i32 %31, %33, !time !45
  %35 = select i1 %34, i32 %31, i32 %33, !time !46
  %send_alloca70 = alloca i64, !reason !4
  store i64 %new_phi34, i64* %send_alloca70, !reason !4
  %send_cast71 = bitcast i64* %send_alloca70 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast71, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 17, i8* %0), !reason !4
  %send_alloca72 = alloca i32, !reason !4
  store i32 %3, i32* %send_alloca72, !reason !4
  %send_cast73 = bitcast i32* %send_alloca72 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast73, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 18, i8* %0), !reason !4
  %send_alloca74 = alloca i32, !reason !4
  store i32 %35, i32* %send_alloca74, !reason !4
  %send_cast75 = bitcast i32* %send_alloca74 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast75, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 19, i8* %0), !reason !4
  %send_alloca76 = alloca i64, !reason !4
  store i64 %new_phi35, i64* %send_alloca76, !reason !4
  %send_cast77 = bitcast i64* %send_alloca76 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast77, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 20, i8* %0), !reason !4
  %36 = add nsw i32 %new_phi36, %new_phi, !time !47
  %37 = add nsw i32 %36, %new_phi, !time !48
  %38 = add nsw i32 %37, -1, !time !49
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 21, i8* %0), !reason !11
  %bitcast78 = bitcast i8* %broadcast to i1*, !reason !11
  %receive_load79 = load i1, i1* %bitcast78, !reason !11
  br i1 %receive_load79, label %l2, label %l12

l2:                                               ; preds = %l1
  %send_alloca127 = alloca i8*, !reason !4
  store i8* %1, i8** %send_alloca127, !reason !4
  %send_cast128 = bitcast i8** %send_alloca127 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast128, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 39, i8* %0), !reason !4
  %send_alloca129 = alloca i1, !reason !50
  store i1 %5, i1* %send_alloca129, !reason !50
  %send_cast130 = bitcast i1* %send_alloca129 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast130, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 40, i8* %0), !reason !50
  br i1 %5, label %l3, label %l4

l3:                                               ; preds = %l2
  %send_alloca131 = alloca i8*, !reason !4
  store i8* %9, i8** %send_alloca131, !reason !4
  %send_cast132 = bitcast i8** %send_alloca131 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast132, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 41, i8* %0), !reason !4
  %send_alloca133 = alloca i8*, !reason !4
  store i8* %11, i8** %send_alloca133, !reason !4
  %send_cast134 = bitcast i8** %send_alloca133 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast134, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 42, i8* %0), !reason !4
  %send_alloca135 = alloca i64, !reason !4
  store i64 %22, i64* %send_alloca135, !reason !4
  %send_cast136 = bitcast i64* %send_alloca135 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast136, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 43, i8* %0), !reason !4
  %receive137 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 44, i8* %0), !reason !4
  %bitcast138 = bitcast i8* %receive137 to i64*, !reason !4
  %receive_load139 = load i64, i64* %bitcast138, !reason !4
  %39 = trunc i64 %receive_load139 to i32, !time !51
  %40 = add nsw i32 %38, %39, !time !52
  br label %l6

l4:                                               ; preds = %l6, %l2
  %send_alloca154 = alloca i64, !reason !4
  store i64 %new_phi35, i64* %send_alloca154, !reason !4
  %send_cast155 = bitcast i64* %send_alloca154 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast155, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 51, i8* %0), !reason !4
  %broadcast156 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 52, i8* %0), !reason !11
  %bitcast157 = bitcast i8* %broadcast156 to i1*, !reason !11
  %receive_load158 = load i1, i1* %bitcast157, !reason !11
  br i1 %receive_load158, label %l5, label %l11

l5:                                               ; preds = %l4
  %41 = trunc i64 %new_phi35 to i32, !time !18
  %send_alloca230 = alloca i32, !reason !12
  store i32 %41, i32* %send_alloca230, !reason !12
  %send_cast231 = bitcast i32* %send_alloca230 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast231, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 80, i8* %0), !reason !12
  %"repair phi232" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 81, i8* %0), !reason !11
  %bitcast233 = bitcast i8* %"repair phi232" to i32*, !reason !11
  %receive_load234 = load i32, i32* %bitcast233, !reason !11
  br label %l7

l6:                                               ; preds = %l6, %l3
  %new_phi140 = phi i64 [ %6, %l3 ], [ %receive_load229, %l6 ], !time !6
  %send_alloca141 = alloca i64, !reason !4
  store i64 %new_phi140, i64* %send_alloca141, !reason !4
  %send_cast142 = bitcast i64* %send_alloca141 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast142, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 46, i8* %0), !reason !4
  %42 = trunc i64 %new_phi140 to i32, !time !9
  %43 = sub i32 %40, %42, !time !10
  %44 = sext i32 %43 to i64, !time !53
  %receive143 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 47, i8* %0), !reason !4
  %bitcast144 = bitcast i8* %receive143 to [256 x i32]**, !reason !4
  %receive_load145 = load [256 x i32]*, [256 x i32]** %bitcast144, !reason !4
  %45 = getelementptr inbounds [256 x i32], [256 x i32]* %receive_load145, i64 0, i64 %44, !time !54
  %receive146 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 48, i8* %0), !reason !4
  %bitcast147 = bitcast i8* %receive146 to i32*, !reason !4
  %receive_load148 = load i32, i32* %bitcast147, !reason !4
  store i32 %receive_load148, i32* %45, align 4, !tbaa !55, !time !59
  %send_alloca149 = alloca i64, !reason !4
  store i64 %new_phi140, i64* %send_alloca149, !reason !4
  %send_cast150 = bitcast i64* %send_alloca149 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast150, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 49, i8* %0), !reason !4
  %broadcast151 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 50, i8* %0), !reason !11
  %bitcast152 = bitcast i8* %broadcast151 to i1*, !reason !11
  %receive_load153 = load i1, i1* %bitcast152, !reason !11
  %"repair phi227" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 79, i8* %0), !reason !11
  %bitcast228 = bitcast i8* %"repair phi227" to i64*, !reason !11
  %receive_load229 = load i64, i64* %bitcast228, !reason !11
  br i1 %receive_load153, label %l6, label %l4

l7:                                               ; preds = %l10, %l5
  %new_phi159 = phi i64 [ %new_phi35, %l5 ], [ %50, %l10 ], !time !60
  %new_phi160 = phi i32 [ %receive_load234, %l5 ], [ %receive_load237, %l10 ], !time !14
  %46 = sext i32 %new_phi160 to i64, !time !5
  %receive161 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 53, i8* %0), !reason !4
  %bitcast162 = bitcast i8* %receive161 to [256 x i32]**, !reason !4
  %receive_load163 = load [256 x i32]*, [256 x i32]** %bitcast162, !reason !4
  %47 = getelementptr inbounds [256 x i32], [256 x i32]* %receive_load163, i64 0, i64 %46, !time !61
  %send_alloca164 = alloca i32*, !reason !4
  store i32* %47, i32** %send_alloca164, !reason !4
  %send_cast165 = bitcast i32** %send_alloca164 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast165, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 54, i8* %0), !reason !4
  %48 = getelementptr inbounds i32, i32* %receive_load47, i64 %new_phi159, !time !62
  %broadcast166 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 55, i8* %0), !reason !11
  %bitcast167 = bitcast i8* %broadcast166 to i1*, !reason !11
  %receive_load168 = load i1, i1* %bitcast167, !reason !11
  br i1 %receive_load168, label %l8, label %l9

l8:                                               ; preds = %l7
  %receive174 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 58, i8* %0), !reason !4
  %bitcast175 = bitcast i8* %receive174 to i32*, !reason !4
  %receive_load176 = load i32, i32* %bitcast175, !reason !4
  store i32 %receive_load176, i32* %48, align 4, !tbaa !55, !time !63
  %send_alloca177 = alloca i32, !reason !4
  store i32 %new_phi160, i32* %send_alloca177, !reason !4
  %send_cast178 = bitcast i32* %send_alloca177 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast178, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 59, i8* %0), !reason !4
  br label %l10

l9:                                               ; preds = %l7
  %send_alloca169 = alloca i32*, !reason !4
  store i32* %48, i32** %send_alloca169, !reason !4
  %send_cast170 = bitcast i32** %send_alloca169 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast170, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 56, i8* %0), !reason !4
  %receive171 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 57, i8* %0), !reason !4
  %bitcast172 = bitcast i8* %receive171 to i32*, !reason !4
  %receive_load173 = load i32, i32* %bitcast172, !reason !4
  %49 = add nsw i32 %receive_load173, 1, !time !51
  %send_alloca238 = alloca i32, !reason !12
  store i32 %new_phi160, i32* %send_alloca238, !reason !12
  %send_cast239 = bitcast i32* %send_alloca238 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast239, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 83, i8* %0), !reason !12
  %send_alloca240 = alloca i32, !reason !12
  store i32 %49, i32* %send_alloca240, !reason !12
  %send_cast241 = bitcast i32* %send_alloca240 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast241, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 84, i8* %0), !reason !12
  br label %l10

l10:                                              ; preds = %l9, %l8
  %50 = add nsw i64 %new_phi159, 1, !time !51
  %51 = icmp eq i64 %50, %new_phi33, !time !52
  %send_alloca179 = alloca i1, !reason !50
  store i1 %51, i1* %send_alloca179, !reason !50
  %send_cast180 = bitcast i1* %send_alloca179 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast180, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 60, i8* %0), !reason !50
  %"repair phi235" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 82, i8* %0), !reason !11
  %bitcast236 = bitcast i8* %"repair phi235" to i32*, !reason !11
  %receive_load237 = load i32, i32* %bitcast236, !reason !11
  br i1 %51, label %l11, label %l7

l11:                                              ; preds = %l10, %l4
  %send_alloca181 = alloca i8*, !reason !4
  store i8* %1, i8** %send_alloca181, !reason !4
  %send_cast182 = bitcast i8** %send_alloca181 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast182, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 61, i8* %0), !reason !4
  br label %l23

l12:                                              ; preds = %l1
  %send_alloca80 = alloca i1, !reason !50
  store i1 %4, i1* %send_alloca80, !reason !50
  %send_cast81 = bitcast i1* %send_alloca80 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast81, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 22, i8* %0), !reason !50
  br i1 %4, label %l13, label %l14

l13:                                              ; preds = %l12
  %receive82 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 23, i8* %0), !reason !4
  %bitcast83 = bitcast i8* %receive82 to i64*, !reason !4
  %receive_load84 = load i64, i64* %bitcast83, !reason !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 4 %28, i64 %receive_load84, i1 false), !time !64
  br label %l14

l14:                                              ; preds = %l13, %l12
  %broadcast85 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 24, i8* %0), !reason !11
  %bitcast86 = bitcast i8* %broadcast85 to i1*, !reason !11
  %receive_load87 = load i1, i1* %bitcast86, !reason !11
  br i1 %receive_load87, label %l15, label %l16

l15:                                              ; preds = %l14
  br label %l17

l16:                                              ; preds = %l17, %l14
  %send_alloca95 = alloca i64, !reason !4
  store i64 %new_phi35, i64* %send_alloca95, !reason !4
  %send_cast96 = bitcast i64* %send_alloca95 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast96, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 28, i8* %0), !reason !4
  br label %l18

l17:                                              ; preds = %l17, %l15
  %new_phi88 = phi i64 [ %23, %l15 ], [ %54, %l17 ], !time !6
  %52 = getelementptr inbounds i32, i32* %receive_load47, i64 %new_phi88, !time !9
  %53 = load i32, i32* %52, align 4, !tbaa !55, !time !65
  %send_alloca89 = alloca i64, !reason !4
  store i64 %new_phi88, i64* %send_alloca89, !reason !4
  %send_cast90 = bitcast i64* %send_alloca89 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast90, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 25, i8* %0), !reason !4
  %send_alloca91 = alloca i32, !reason !4
  store i32 %53, i32* %send_alloca91, !reason !4
  %send_cast92 = bitcast i32* %send_alloca91 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast92, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 26, i8* %0), !reason !4
  %54 = add nsw i64 %new_phi88, 1, !time !10
  %55 = trunc i64 %54 to i32, !time !53
  %56 = icmp eq i32 %55, 257, !time !66
  %send_alloca93 = alloca i1, !reason !50
  store i1 %56, i1* %send_alloca93, !reason !50
  %send_cast94 = bitcast i1* %send_alloca93 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast94, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 27, i8* %0), !reason !50
  br i1 %56, label %l16, label %l17

l18:                                              ; preds = %l21, %l16
  %new_phi97 = phi i64 [ %new_phi35, %l16 ], [ %receive_load218, %l21 ], !time !67
  %new_phi98 = phi i32 [ 256, %l16 ], [ %new_phi118, %l21 ], !time !14
  %57 = sext i32 %new_phi98 to i64, !time !5
  %receive99 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 29, i8* %0), !reason !4
  %bitcast100 = bitcast i8* %receive99 to [256 x i32]**, !reason !4
  %receive_load101 = load [256 x i32]*, [256 x i32]** %bitcast100, !reason !4
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %receive_load101, i64 0, i64 %57, !time !61
  %send_alloca102 = alloca i32*, !reason !4
  store i32* %58, i32** %send_alloca102, !reason !4
  %send_cast103 = bitcast i32** %send_alloca102 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast103, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 30, i8* %0), !reason !4
  %59 = getelementptr inbounds i32, i32* %receive_load47, i64 %new_phi97, !time !62
  %broadcast104 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 31, i8* %0), !reason !11
  %bitcast105 = bitcast i8* %broadcast104 to i1*, !reason !11
  %receive_load106 = load i1, i1* %bitcast105, !reason !11
  br i1 %receive_load106, label %l19, label %l20

l19:                                              ; preds = %l18
  %receive112 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 34, i8* %0), !reason !4
  %bitcast113 = bitcast i8* %receive112 to i32*, !reason !4
  %receive_load114 = load i32, i32* %bitcast113, !reason !4
  store i32 %receive_load114, i32* %59, align 4, !tbaa !55, !time !63
  %send_alloca115 = alloca i32, !reason !4
  store i32 %new_phi98, i32* %send_alloca115, !reason !4
  %send_cast116 = bitcast i32* %send_alloca115 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast116, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 35, i8* %0), !reason !4
  %"repair phi221" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 77, i8* %0), !reason !11
  %bitcast222 = bitcast i8* %"repair phi221" to i32*, !reason !11
  %receive_load223 = load i32, i32* %bitcast222, !reason !11
  %"repair phi224" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 78, i8* %0), !reason !11
  %bitcast225 = bitcast i8* %"repair phi224" to i32*, !reason !11
  %receive_load226 = load i32, i32* %bitcast225, !reason !11
  br label %l21

l20:                                              ; preds = %l18
  %send_alloca107 = alloca i32*, !reason !4
  store i32* %59, i32** %send_alloca107, !reason !4
  %send_cast108 = bitcast i32** %send_alloca107 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast108, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 32, i8* %0), !reason !4
  %receive109 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 33, i8* %0), !reason !4
  %bitcast110 = bitcast i8* %receive109 to i32*, !reason !4
  %receive_load111 = load i32, i32* %bitcast110, !reason !4
  %60 = add nsw i32 %receive_load111, 1, !time !51
  br label %l21

l21:                                              ; preds = %l20, %l19
  %new_phi117 = phi i32 [ %receive_load223, %l19 ], [ %60, %l20 ], !time !68
  %new_phi118 = phi i32 [ %receive_load226, %l19 ], [ %new_phi98, %l20 ], !time !68
  %send_alloca119 = alloca i64, !reason !4
  store i64 %new_phi97, i64* %send_alloca119, !reason !4
  %send_cast120 = bitcast i64* %send_alloca119 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast120, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 36, i8* %0), !reason !4
  %broadcast121 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 37, i8* %0), !reason !11
  %bitcast122 = bitcast i8* %broadcast121 to i1*, !reason !11
  %receive_load123 = load i1, i1* %bitcast122, !reason !11
  %"repair phi216" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 75, i8* %0), !reason !11
  %bitcast217 = bitcast i8* %"repair phi216" to i64*, !reason !11
  %receive_load218 = load i64, i64* %bitcast217, !reason !11
  %send_alloca219 = alloca i32, !reason !12
  store i32 %new_phi117, i32* %send_alloca219, !reason !12
  %send_cast220 = bitcast i32* %send_alloca219 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast220, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 76, i8* %0), !reason !12
  br i1 %receive_load123, label %l22, label %l18

l22:                                              ; preds = %l21
  %receive124 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 38, i8* %0), !reason !4
  %bitcast125 = bitcast i8* %receive124 to i8**, !reason !4
  %receive_load126 = load i8*, i8** %bitcast125, !reason !4
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %receive_load126) #7, !time !64
  br label %l23

l23:                                              ; preds = %l22, %l11
  %send_alloca183 = alloca i64, !reason !4
  store i64 %new_phi35, i64* %send_alloca183, !reason !4
  %send_cast184 = bitcast i64* %send_alloca183 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast184, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 62, i8* %0), !reason !4
  %send_alloca185 = alloca i32, !reason !4
  store i32 %new_phi36, i32* %send_alloca185, !reason !4
  %send_cast186 = bitcast i32* %send_alloca185 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast186, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 63, i8* %0), !reason !4
  %61 = add i64 %new_phi34, 1, !time !53
  %receive187 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 64, i8* %0), !reason !4
  %bitcast188 = bitcast i8* %receive187 to i32*, !reason !4
  %receive_load189 = load i32, i32* %bitcast188, !reason !4
  %receive190 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 65, i8* %0), !reason !4
  %bitcast191 = bitcast i8* %receive190 to i32*, !reason !4
  %receive_load192 = load i32, i32* %bitcast191, !reason !4
  %62 = add i32 %receive_load189, %receive_load192, !time !51
  %receive193 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 66, i8* %0), !reason !4
  %bitcast194 = bitcast i8* %receive193 to i64*, !reason !4
  %receive_load195 = load i64, i64* %bitcast194, !reason !4
  %63 = add i64 %new_phi33, %receive_load195, !time !10
  %broadcast196 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 67, i8* %0), !reason !11
  %bitcast197 = bitcast i8* %broadcast196 to i1*, !reason !11
  %receive_load198 = load i1, i1* %bitcast197, !reason !11
  %send_alloca208 = alloca i32, !reason !12
  store i32 %62, i32* %send_alloca208, !reason !12
  %send_cast209 = bitcast i32* %send_alloca208 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast209, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 72, i8* %0), !reason !12
  %"repair phi210" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 1, i32 73, i8* %0), !reason !11
  %bitcast211 = bitcast i8* %"repair phi210" to i64*, !reason !11
  %receive_load212 = load i64, i64* %bitcast211, !reason !11
  %"repair phi213" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 74, i8* %0), !reason !11
  %bitcast214 = bitcast i8* %"repair phi213" to i32*, !reason !11
  %receive_load215 = load i32, i32* %bitcast214, !reason !11
  br i1 %receive_load198, label %l1, label %l24

l24:                                              ; preds = %l23
  %64 = shl nsw i32 %new_phi, 1, !time !9
  %send_alloca199 = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca199, !reason !4
  %send_cast200 = bitcast i32* %send_alloca199 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast200, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 1, i32 68, i8* %0), !reason !4
  %broadcast201 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 1, i32 69, i8* %0), !reason !11
  %bitcast202 = bitcast i8* %broadcast201 to i1*, !reason !11
  %receive_load203 = load i1, i1* %bitcast202, !reason !11
  br i1 %receive_load203, label %l, label %l25

l25:                                              ; preds = %l24
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #0

define void @ms_mergesort_1(i8*) {
entry:
  %argument = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive_argument to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 -1, i32 45, i8* %0), !reason !3
  %bitcast132 = bitcast i8* %argument to i32**, !reason !3
  %receive_load133 = load i32*, i32** %bitcast132, !reason !3
  %1 = alloca [256 x i32], align 16, !time !63
  %2 = alloca [256 x i32], align 16, !time !69
  %3 = bitcast [256 x i32]* %2 to i8*, !time !5
  %send_alloca = alloca [256 x i32]*, !reason !4
  store [256 x i32]* %1, [256 x i32]** %send_alloca, !reason !4
  %send_cast = bitcast [256 x i32]** %send_alloca to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 0, i8* %0), !reason !4
  br label %l

l:                                                ; preds = %l24, %entry
  %receive = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 1, i8* %0), !reason !4
  %bitcast = bitcast i8* %receive to i32*, !reason !4
  %receive_load = load i32, i32* %bitcast, !reason !4
  %4 = shl i32 %receive_load, 1, !time !5
  %5 = sext i32 %4 to i64, !time !70
  %send_alloca26 = alloca i32, !reason !4
  store i32 %4, i32* %send_alloca26, !reason !4
  %send_cast27 = bitcast i32* %send_alloca26 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast27, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 2, i8* %0), !reason !4
  %6 = zext i32 %4 to i64, !time !61
  %receive28 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 3, i8* %0), !reason !4
  %bitcast29 = bitcast i8* %receive28 to i32*, !reason !4
  %receive_load30 = load i32, i32* %bitcast29, !reason !4
  %7 = sext i32 %receive_load30 to i64, !time !66
  %receive31 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 4, i8* %0), !reason !4
  %bitcast32 = bitcast i8* %receive31 to i32*, !reason !4
  %receive_load33 = load i32, i32* %bitcast32, !reason !4
  %8 = sext i32 %receive_load33 to i64, !time !71
  %send_alloca196 = alloca i64, !reason !12
  store i64 %5, i64* %send_alloca196, !reason !12
  %send_cast197 = bitcast i64* %send_alloca196 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast197, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 70, i8* %0), !reason !12
  %"repair phi" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 71, i8* %0), !reason !11
  %bitcast198 = bitcast i8* %"repair phi" to i32*, !reason !11
  %receive_load199 = load i32, i32* %bitcast198, !reason !11
  br label %l1

l1:                                               ; preds = %l23, %l
  %new_phi = phi i32 [ %receive_load199, %l ], [ %receive_load202, %l23 ], !time !72
  %send_alloca34 = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca34, !reason !4
  %send_cast35 = bitcast i32* %send_alloca34 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast35, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 5, i8* %0), !reason !4
  %send_alloca36 = alloca i64, !reason !4
  store i64 %5, i64* %send_alloca36, !reason !4
  %send_cast37 = bitcast i64* %send_alloca36 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast37, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 6, i8* %0), !reason !4
  %send_alloca38 = alloca [256 x i32]*, !reason !4
  store [256 x i32]* %1, [256 x i32]** %send_alloca38, !reason !4
  %send_cast39 = bitcast [256 x i32]** %send_alloca38 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast39, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 7, i8* %0), !reason !4
  %receive40 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 9, i8* %0), !reason !4
  %bitcast41 = bitcast i8* %receive40 to i64*, !reason !4
  %receive_load42 = load i64, i64* %bitcast41, !reason !4
  %9 = mul i64 %receive_load42, %6, !time !73
  %10 = trunc i64 %9 to i32, !time !74
  %receive43 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 10, i8* %0), !reason !4
  %bitcast44 = bitcast i8* %receive43 to i32*, !reason !4
  %receive_load45 = load i32, i32* %bitcast44, !reason !4
  %11 = add i32 %receive_load45, %10, !time !75
  %send_alloca46 = alloca i64, !reason !4
  store i64 %9, i64* %send_alloca46, !reason !4
  %send_cast47 = bitcast i64* %send_alloca46 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast47, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 11, i8* %0), !reason !4
  %send_alloca48 = alloca i32, !reason !4
  store i32 %11, i32* %send_alloca48, !reason !4
  %send_cast49 = bitcast i32* %send_alloca48 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast49, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 12, i8* %0), !reason !4
  %send_alloca50 = alloca i32, !reason !4
  store i32 %11, i32* %send_alloca50, !reason !4
  %send_cast51 = bitcast i32* %send_alloca50 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast51, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 13, i8* %0), !reason !4
  %send_alloca52 = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca52, !reason !4
  %send_cast53 = bitcast i32* %send_alloca52 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast53, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 14, i8* %0), !reason !4
  %send_alloca54 = alloca i64, !reason !4
  store i64 %5, i64* %send_alloca54, !reason !4
  %send_cast55 = bitcast i64* %send_alloca54 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast55, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 15, i8* %0), !reason !4
  %send_alloca56 = alloca [256 x i32]*, !reason !4
  store [256 x i32]* %2, [256 x i32]** %send_alloca56, !reason !4
  %send_cast57 = bitcast [256 x i32]** %send_alloca56 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast57, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 16, i8* %0), !reason !4
  %receive58 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 17, i8* %0), !reason !4
  %bitcast59 = bitcast i8* %receive58 to i64*, !reason !4
  %receive_load60 = load i64, i64* %bitcast59, !reason !4
  %12 = trunc i64 %receive_load60 to i32, !time !76
  %receive61 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 18, i8* %0), !reason !4
  %bitcast62 = bitcast i8* %receive61 to i32*, !reason !4
  %receive_load63 = load i32, i32* %bitcast62, !reason !4
  %13 = mul i32 %receive_load63, %12, !time !77
  %14 = add i32 %13, -1, !time !78
  %receive64 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 19, i8* %0), !reason !4
  %bitcast65 = bitcast i8* %receive64 to i32*, !reason !4
  %receive_load66 = load i32, i32* %bitcast65, !reason !4
  %15 = add i32 %receive_load66, %14, !time !79
  %16 = zext i32 %15 to i64, !time !80
  %17 = shl nuw nsw i64 %16, 2, !time !81
  %18 = add nuw nsw i64 %17, 4, !time !82
  %receive67 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 20, i8* %0), !reason !4
  %bitcast68 = bitcast i8* %receive67 to i64*, !reason !4
  %receive_load69 = load i64, i64* %bitcast68, !reason !4
  %19 = add nsw i64 %receive_load69, %7, !time !83
  %20 = add nsw i64 %19, %8, !time !47
  %21 = icmp slt i64 %20, 257, !time !84
  %send_alloca70 = alloca i1, !reason !50
  store i1 %21, i1* %send_alloca70, !reason !50
  %send_cast71 = bitcast i1* %send_alloca70 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast71, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 21, i8* %0), !reason !50
  br i1 %21, label %l2, label %l12

l2:                                               ; preds = %l1
  %receive115 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 39, i8* %0), !reason !4
  %bitcast116 = bitcast i8* %receive115 to i8**, !reason !4
  %receive_load117 = load i8*, i8** %bitcast116, !reason !4
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %receive_load117) #7, !time !64
  %broadcast118 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 40, i8* %0), !reason !11
  %bitcast119 = bitcast i8* %broadcast118 to i1*, !reason !11
  %receive_load120 = load i1, i1* %bitcast119, !reason !11
  br i1 %receive_load120, label %l3, label %l4

l3:                                               ; preds = %l2
  %receive121 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 41, i8* %0), !reason !4
  %bitcast122 = bitcast i8* %receive121 to i8**, !reason !4
  %receive_load123 = load i8*, i8** %bitcast122, !reason !4
  %receive124 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 42, i8* %0), !reason !4
  %bitcast125 = bitcast i8* %receive124 to i8**, !reason !4
  %receive_load126 = load i8*, i8** %bitcast125, !reason !4
  %receive127 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 43, i8* %0), !reason !4
  %bitcast128 = bitcast i8* %receive127 to i64*, !reason !4
  %receive_load129 = load i64, i64* %bitcast128, !reason !4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %receive_load123, i8* align 4 %receive_load126, i64 %receive_load129, i1 false), !time !64
  %send_alloca130 = alloca i64, !reason !4
  store i64 %19, i64* %send_alloca130, !reason !4
  %send_cast131 = bitcast i64* %send_alloca130 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast131, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 44, i8* %0), !reason !4
  br label %l6

l4:                                               ; preds = %l6, %l2
  %receive146 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 51, i8* %0), !reason !4
  %bitcast147 = bitcast i8* %receive146 to i64*, !reason !4
  %receive_load148 = load i64, i64* %bitcast147, !reason !4
  %22 = icmp slt i64 %receive_load148, %20, !time !51
  %send_alloca149 = alloca i1, !reason !50
  store i1 %22, i1* %send_alloca149, !reason !50
  %send_cast150 = bitcast i1* %send_alloca149 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast150, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 52, i8* %0), !reason !50
  br i1 %22, label %l5, label %l11

l5:                                               ; preds = %l4
  %23 = trunc i64 %20 to i32, !time !51
  %24 = add i32 %23, -1, !time !52
  %"repair phi218" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 80, i8* %0), !reason !11
  %bitcast219 = bitcast i8* %"repair phi218" to i32*, !reason !11
  %receive_load220 = load i32, i32* %bitcast219, !reason !11
  %send_alloca221 = alloca i32, !reason !12
  store i32 %24, i32* %send_alloca221, !reason !12
  %send_cast222 = bitcast i32* %send_alloca221 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast222, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 81, i8* %0), !reason !12
  br label %l7

l6:                                               ; preds = %l6, %l3
  %receive134 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 46, i8* %0), !reason !4
  %bitcast135 = bitcast i8* %receive134 to i64*, !reason !4
  %receive_load136 = load i64, i64* %bitcast135, !reason !4
  %25 = getelementptr inbounds i32, i32* %receive_load133, i64 %receive_load136, !time !70
  %26 = load i32, i32* %25, align 4, !tbaa !55, !time !85
  %send_alloca137 = alloca [256 x i32]*, !reason !4
  store [256 x i32]* %1, [256 x i32]** %send_alloca137, !reason !4
  %send_cast138 = bitcast [256 x i32]** %send_alloca137 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast138, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 47, i8* %0), !reason !4
  %send_alloca139 = alloca i32, !reason !4
  store i32 %26, i32* %send_alloca139, !reason !4
  %send_cast140 = bitcast i32* %send_alloca139 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast140, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 48, i8* %0), !reason !4
  %receive141 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 49, i8* %0), !reason !4
  %bitcast142 = bitcast i8* %receive141 to i64*, !reason !4
  %receive_load143 = load i64, i64* %bitcast142, !reason !4
  %27 = add nsw i64 %receive_load143, 1, !time !5
  %28 = icmp slt i64 %27, %20, !time !61
  %send_alloca144 = alloca i1, !reason !50
  store i1 %28, i1* %send_alloca144, !reason !50
  %send_cast145 = bitcast i1* %send_alloca144 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast145, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 50, i8* %0), !reason !50
  %send_alloca216 = alloca i64, !reason !12
  store i64 %27, i64* %send_alloca216, !reason !12
  %send_cast217 = bitcast i64* %send_alloca216 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast217, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 79, i8* %0), !reason !12
  br i1 %28, label %l6, label %l4

l7:                                               ; preds = %l10, %l5
  %new_phi151 = phi i32 [ %receive_load220, %l5 ], [ %new_phi170, %l10 ], !time !14
  %send_alloca152 = alloca [256 x i32]*, !reason !4
  store [256 x i32]* %1, [256 x i32]** %send_alloca152, !reason !4
  %send_cast153 = bitcast [256 x i32]** %send_alloca152 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast153, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 53, i8* %0), !reason !4
  %receive154 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 54, i8* %0), !reason !4
  %bitcast155 = bitcast i8* %receive154 to i32**, !reason !4
  %receive_load156 = load i32*, i32** %bitcast155, !reason !4
  %29 = load i32, i32* %receive_load156, align 4, !tbaa !55, !time !86
  %30 = sext i32 %new_phi151 to i64, !time !5
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %1, i64 0, i64 %30, !time !61
  %32 = load i32, i32* %31, align 4, !tbaa !55, !time !87
  %33 = icmp slt i32 %29, %32, !time !20
  %send_alloca157 = alloca i1, !reason !50
  store i1 %33, i1* %send_alloca157, !reason !50
  %send_cast158 = bitcast i1* %send_alloca157 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast158, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 55, i8* %0), !reason !50
  br i1 %33, label %l8, label %l9

l8:                                               ; preds = %l7
  %send_alloca164 = alloca i32, !reason !4
  store i32 %29, i32* %send_alloca164, !reason !4
  %send_cast165 = bitcast i32* %send_alloca164 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast165, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 58, i8* %0), !reason !4
  %receive166 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 59, i8* %0), !reason !4
  %bitcast167 = bitcast i8* %receive166 to i32*, !reason !4
  %receive_load168 = load i32, i32* %bitcast167, !reason !4
  %34 = add nsw i32 %receive_load168, -1, !time !51
  br label %l10

l9:                                               ; preds = %l7
  %receive159 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 56, i8* %0), !reason !4
  %bitcast160 = bitcast i8* %receive159 to i32**, !reason !4
  %receive_load161 = load i32*, i32** %bitcast160, !reason !4
  store i32 %32, i32* %receive_load161, align 4, !tbaa !55, !time !88
  %send_alloca162 = alloca i32, !reason !4
  store i32 %new_phi151, i32* %send_alloca162, !reason !4
  %send_cast163 = bitcast i32* %send_alloca162 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast163, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 57, i8* %0), !reason !4
  %"repair phi225" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 83, i8* %0), !reason !11
  %bitcast226 = bitcast i8* %"repair phi225" to i32*, !reason !11
  %receive_load227 = load i32, i32* %bitcast226, !reason !11
  %"repair phi228" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 84, i8* %0), !reason !11
  %bitcast229 = bitcast i8* %"repair phi228" to i32*, !reason !11
  %receive_load230 = load i32, i32* %bitcast229, !reason !11
  br label %l10

l10:                                              ; preds = %l9, %l8
  %new_phi169 = phi i32 [ %34, %l8 ], [ %receive_load227, %l9 ], !time !89
  %new_phi170 = phi i32 [ %new_phi151, %l8 ], [ %receive_load230, %l9 ], !time !90
  %broadcast171 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 60, i8* %0), !reason !11
  %bitcast172 = bitcast i8* %broadcast171 to i1*, !reason !11
  %receive_load173 = load i1, i1* %bitcast172, !reason !11
  %send_alloca223 = alloca i32, !reason !12
  store i32 %new_phi169, i32* %send_alloca223, !reason !12
  %send_cast224 = bitcast i32* %send_alloca223 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast224, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 82, i8* %0), !reason !12
  br i1 %receive_load173, label %l11, label %l7

l11:                                              ; preds = %l10, %l4
  %receive174 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 61, i8* %0), !reason !4
  %bitcast175 = bitcast i8* %receive174 to i8**, !reason !4
  %receive_load176 = load i8*, i8** %bitcast175, !reason !4
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %receive_load176) #7, !time !64
  br label %l23

l12:                                              ; preds = %l1
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %3) #7, !time !64
  %broadcast = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 22, i8* %0), !reason !11
  %bitcast72 = bitcast i8* %broadcast to i1*, !reason !11
  %receive_load73 = load i1, i1* %bitcast72, !reason !11
  br i1 %receive_load73, label %l13, label %l14

l13:                                              ; preds = %l12
  %send_alloca74 = alloca i64, !reason !4
  store i64 %18, i64* %send_alloca74, !reason !4
  %send_cast75 = bitcast i64* %send_alloca74 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast75, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 23, i8* %0), !reason !4
  br label %l14

l14:                                              ; preds = %l13, %l12
  %35 = icmp slt i64 %19, 257, !time !51
  %send_alloca76 = alloca i1, !reason !50
  store i1 %35, i1* %send_alloca76, !reason !50
  %send_cast77 = bitcast i1* %send_alloca76 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast77, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 24, i8* %0), !reason !50
  br i1 %35, label %l15, label %l16

l15:                                              ; preds = %l14
  %36 = add i64 %19, 256, !time !51
  br label %l17

l16:                                              ; preds = %l17, %l14
  %receive87 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 28, i8* %0), !reason !4
  %bitcast88 = bitcast i8* %receive87 to i64*, !reason !4
  %receive_load89 = load i64, i64* %bitcast88, !reason !4
  %37 = trunc i64 %receive_load89 to i32, !time !51
  br label %l18

l17:                                              ; preds = %l17, %l15
  %receive78 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 25, i8* %0), !reason !4
  %bitcast79 = bitcast i8* %receive78 to i64*, !reason !4
  %receive_load80 = load i64, i64* %bitcast79, !reason !4
  %38 = sub i64 %36, %receive_load80, !time !5
  %39 = shl i64 %38, 32, !time !61
  %40 = ashr exact i64 %39, 32, !time !70
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %40, !time !66
  %receive81 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 26, i8* %0), !reason !4
  %bitcast82 = bitcast i8* %receive81 to i32*, !reason !4
  %receive_load83 = load i32, i32* %bitcast82, !reason !4
  store i32 %receive_load83, i32* %41, align 4, !tbaa !55, !time !91
  %broadcast84 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 27, i8* %0), !reason !11
  %bitcast85 = bitcast i8* %broadcast84 to i1*, !reason !11
  %receive_load86 = load i1, i1* %bitcast85, !reason !11
  br i1 %receive_load86, label %l16, label %l17

l18:                                              ; preds = %l21, %l16
  %new_phi90 = phi i32 [ %37, %l16 ], [ %receive_load211, %l21 ], !time !14
  %send_alloca91 = alloca [256 x i32]*, !reason !4
  store [256 x i32]* %2, [256 x i32]** %send_alloca91, !reason !4
  %send_cast92 = bitcast [256 x i32]** %send_alloca91 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast92, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 29, i8* %0), !reason !4
  %receive93 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 30, i8* %0), !reason !4
  %bitcast94 = bitcast i8* %receive93 to i32**, !reason !4
  %receive_load95 = load i32*, i32** %bitcast94, !reason !4
  %42 = load i32, i32* %receive_load95, align 4, !tbaa !55, !time !86
  %43 = sext i32 %new_phi90 to i64, !time !5
  %44 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %43, !time !61
  %45 = load i32, i32* %44, align 4, !tbaa !55, !time !87
  %46 = icmp slt i32 %42, %45, !time !20
  %send_alloca96 = alloca i1, !reason !50
  store i1 %46, i1* %send_alloca96, !reason !50
  %send_cast97 = bitcast i1* %send_alloca96 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast97, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 31, i8* %0), !reason !50
  br i1 %46, label %l19, label %l20

l19:                                              ; preds = %l18
  %send_alloca103 = alloca i32, !reason !4
  store i32 %42, i32* %send_alloca103, !reason !4
  %send_cast104 = bitcast i32* %send_alloca103 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast104, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 34, i8* %0), !reason !4
  %receive105 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 35, i8* %0), !reason !4
  %bitcast106 = bitcast i8* %receive105 to i32*, !reason !4
  %receive_load107 = load i32, i32* %bitcast106, !reason !4
  %47 = add nsw i32 %receive_load107, -1, !time !51
  %send_alloca212 = alloca i32, !reason !12
  store i32 %new_phi90, i32* %send_alloca212, !reason !12
  %send_cast213 = bitcast i32* %send_alloca212 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast213, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 77, i8* %0), !reason !12
  %send_alloca214 = alloca i32, !reason !12
  store i32 %47, i32* %send_alloca214, !reason !12
  %send_cast215 = bitcast i32* %send_alloca214 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast215, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 78, i8* %0), !reason !12
  br label %l21

l20:                                              ; preds = %l18
  %receive98 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 32, i8* %0), !reason !4
  %bitcast99 = bitcast i8* %receive98 to i32**, !reason !4
  %receive_load100 = load i32*, i32** %bitcast99, !reason !4
  store i32 %45, i32* %receive_load100, align 4, !tbaa !55, !time !88
  %send_alloca101 = alloca i32, !reason !4
  store i32 %new_phi90, i32* %send_alloca101, !reason !4
  %send_cast102 = bitcast i32* %send_alloca101 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast102, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 33, i8* %0), !reason !4
  br label %l21

l21:                                              ; preds = %l20, %l19
  %receive108 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 36, i8* %0), !reason !4
  %bitcast109 = bitcast i8* %receive108 to i64*, !reason !4
  %receive_load110 = load i64, i64* %bitcast109, !reason !4
  %48 = add nsw i64 %receive_load110, 1, !time !51
  %49 = icmp eq i64 %48, 257, !time !52
  %send_alloca111 = alloca i1, !reason !50
  store i1 %49, i1* %send_alloca111, !reason !50
  %send_cast112 = bitcast i1* %send_alloca111 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast112, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 37, i8* %0), !reason !50
  %send_alloca207 = alloca i64, !reason !12
  store i64 %48, i64* %send_alloca207, !reason !12
  %send_cast208 = bitcast i64* %send_alloca207 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast208, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 75, i8* %0), !reason !12
  %"repair phi209" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 76, i8* %0), !reason !11
  %bitcast210 = bitcast i8* %"repair phi209" to i32*, !reason !11
  %receive_load211 = load i32, i32* %bitcast210, !reason !11
  br i1 %49, label %l22, label %l18

l22:                                              ; preds = %l21
  %send_alloca113 = alloca i8*, !reason !4
  store i8* %3, i8** %send_alloca113, !reason !4
  %send_cast114 = bitcast i8** %send_alloca113 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast114, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 38, i8* %0), !reason !4
  br label %l23

l23:                                              ; preds = %l22, %l11
  %receive177 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 62, i8* %0), !reason !4
  %bitcast178 = bitcast i8* %receive177 to i64*, !reason !4
  %receive_load179 = load i64, i64* %bitcast178, !reason !4
  %50 = add i64 %receive_load179, %5, !time !51
  %receive180 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 63, i8* %0), !reason !4
  %bitcast181 = bitcast i8* %receive180 to i32*, !reason !4
  %receive_load182 = load i32, i32* %bitcast181, !reason !4
  %51 = add nsw i32 %receive_load182, %4, !time !53
  %52 = icmp slt i64 %50, 256, !time !52
  %send_alloca183 = alloca i32, !reason !4
  store i32 %new_phi, i32* %send_alloca183, !reason !4
  %send_cast184 = bitcast i32* %send_alloca183 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast184, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 64, i8* %0), !reason !4
  %send_alloca185 = alloca i32, !reason !4
  store i32 %4, i32* %send_alloca185, !reason !4
  %send_cast186 = bitcast i32* %send_alloca185 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast186, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 65, i8* %0), !reason !4
  %send_alloca187 = alloca i64, !reason !4
  store i64 %5, i64* %send_alloca187, !reason !4
  %send_cast188 = bitcast i64* %send_alloca187 to i8*, !reason !4
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast188, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 66, i8* %0), !reason !4
  %send_alloca189 = alloca i1, !reason !50
  store i1 %52, i1* %send_alloca189, !reason !50
  %send_cast190 = bitcast i1* %send_alloca189 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast190, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 67, i8* %0), !reason !50
  %"repair phi200" = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 72, i8* %0), !reason !11
  %bitcast201 = bitcast i8* %"repair phi200" to i32*, !reason !11
  %receive_load202 = load i32, i32* %bitcast201, !reason !11
  %send_alloca203 = alloca i64, !reason !12
  store i64 %50, i64* %send_alloca203, !reason !12
  %send_cast204 = bitcast i64* %send_alloca203 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast204, i64 ptrtoint (i64* getelementptr (i64, i64* null, i32 1) to i64), i32 0, i32 73, i8* %0), !reason !12
  %send_alloca205 = alloca i32, !reason !12
  store i32 %51, i32* %send_alloca205, !reason !12
  %send_cast206 = bitcast i32* %send_alloca205 to i8*, !reason !12
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast206, i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 74, i8* %0), !reason !12
  br i1 %52, label %l1, label %l24

l24:                                              ; preds = %l23
  %receive191 = call i8* bitcast (i8* (i32, i32, i32, i8*)* @receive to i8* (i64, i32, i32, i8*)*)(i64 ptrtoint (i32* getelementptr (i32, i32* null, i32 1) to i64), i32 0, i32 68, i8* %0), !reason !4
  %bitcast192 = bitcast i8* %receive191 to i32*, !reason !4
  %receive_load193 = load i32, i32* %bitcast192, !reason !4
  %53 = icmp slt i32 %receive_load193, 128, !time !51
  %send_alloca194 = alloca i1, !reason !50
  store i1 %53, i1* %send_alloca194, !reason !50
  %send_cast195 = bitcast i1* %send_alloca194 to i8*, !reason !50
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast195, i64 ptrtoint (i1* getelementptr (i1, i1* null, i32 1) to i64), i32 0, i32 69, i8* %0), !reason !50
  br i1 %53, label %l, label %l25

l25:                                              ; preds = %l24
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #0

; Function Attrs: nounwind ssp uwtable
define void @ms_mergesort(i32* nocapture) local_unnamed_addr #1 {
  %2 = alloca [256 x i32], align 16
  %3 = alloca [256 x i32], align 16
  %4 = bitcast [256 x i32]* %3 to i8*
  %5 = bitcast [256 x i32]* %2 to i8*
  br label %6

; <label>:6:                                      ; preds = %159, %1
  %7 = phi i32 [ 1, %1 ], [ %160, %159 ]
  %8 = shl i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = zext i32 %8 to i64
  %11 = mul i32 %7, -2
  %12 = zext i32 %8 to i64
  %13 = sext i32 %7 to i64
  %14 = sext i32 %7 to i64
  %15 = icmp sgt i32 %7, 0
  %16 = icmp sgt i32 %7, 0
  br label %17

; <label>:17:                                     ; preds = %152, %6
  %18 = phi i64 [ %9, %6 ], [ %158, %152 ]
  %19 = phi i32 [ %7, %6 ], [ %157, %152 ]
  %20 = phi i64 [ 0, %6 ], [ %156, %152 ]
  %21 = phi i64 [ 0, %6 ], [ %153, %152 ]
  %22 = phi i32 [ 0, %6 ], [ %154, %152 ]
  %23 = sext i32 %19 to i64
  %24 = mul i64 %20, %9
  %25 = getelementptr [256 x i32], [256 x i32]* %2, i64 0, i64 %24
  %26 = bitcast i32* %25 to i8*
  %27 = getelementptr i32, i32* %0, i64 %24
  %28 = bitcast i32* %27 to i8*
  %29 = mul i64 %20, %12
  %30 = trunc i64 %29 to i32
  %31 = add i32 %7, %30
  %32 = trunc i64 %29 to i32
  %33 = or i32 %32, 1
  %34 = icmp sgt i32 %31, %33
  %35 = select i1 %34, i32 %31, i32 %33
  %36 = trunc i64 %20 to i32
  %37 = mul i32 %11, %36
  %38 = add i32 %37, -1
  %39 = add i32 %35, %38
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 2
  %42 = add nuw nsw i64 %41, 4
  %43 = sext i32 %19 to i64
  %44 = mul i64 %20, %9
  %45 = getelementptr [256 x i32], [256 x i32]* %3, i64 0, i64 %44
  %46 = bitcast i32* %45 to i8*
  %47 = getelementptr i32, i32* %0, i64 %44
  %48 = bitcast i32* %47 to i8*
  %49 = mul i64 %20, %10
  %50 = trunc i64 %49 to i32
  %51 = add i32 %7, %50
  %52 = trunc i64 %49 to i32
  %53 = or i32 %52, 1
  %54 = icmp sgt i32 %51, %53
  %55 = select i1 %54, i32 %51, i32 %53
  %56 = trunc i64 %20 to i32
  %57 = mul i32 %11, %56
  %58 = add i32 %57, -1
  %59 = add i32 %55, %58
  %60 = zext i32 %59 to i64
  %61 = shl nuw nsw i64 %60, 2
  %62 = add nuw nsw i64 %61, 4
  %63 = add nsw i64 %21, %13
  %64 = add nsw i32 %22, %7
  %65 = add nsw i64 %63, %14
  %66 = add nsw i32 %64, %7
  %67 = add nsw i32 %66, -1
  %68 = icmp slt i64 %65, 257
  br i1 %68, label %69, label %111

; <label>:69:                                     ; preds = %17
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #7
  br i1 %16, label %70, label %73

; <label>:70:                                     ; preds = %69
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 4 %28, i64 %42, i1 false)
  %71 = trunc i64 %63 to i32
  %72 = add nsw i32 %67, %71
  br label %79

; <label>:73:                                     ; preds = %79, %69
  %74 = icmp slt i64 %21, %65
  br i1 %74, label %75, label %110

; <label>:75:                                     ; preds = %73
  %76 = trunc i64 %65 to i32
  %77 = add i32 %76, -1
  %78 = trunc i64 %21 to i32
  br label %89

; <label>:79:                                     ; preds = %79, %70
  %80 = phi i64 [ %23, %70 ], [ %87, %79 ]
  %81 = getelementptr inbounds i32, i32* %0, i64 %80
  %82 = load i32, i32* %81, align 4, !tbaa !55
  %83 = trunc i64 %80 to i32
  %84 = sub i32 %72, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %85
  store i32 %82, i32* %86, align 4, !tbaa !55
  %87 = add nsw i64 %80, 1
  %88 = icmp slt i64 %87, %65
  br i1 %88, label %79, label %73

; <label>:89:                                     ; preds = %105, %75
  %90 = phi i64 [ %21, %75 ], [ %108, %105 ]
  %91 = phi i32 [ %78, %75 ], [ %107, %105 ]
  %92 = phi i32 [ %77, %75 ], [ %106, %105 ]
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !55
  %96 = sext i32 %91 to i64
  %97 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4, !tbaa !55
  %99 = icmp slt i32 %95, %98
  %100 = getelementptr inbounds i32, i32* %0, i64 %90
  br i1 %99, label %101, label %103

; <label>:101:                                    ; preds = %89
  store i32 %95, i32* %100, align 4, !tbaa !55
  %102 = add nsw i32 %92, -1
  br label %105

; <label>:103:                                    ; preds = %89
  store i32 %98, i32* %100, align 4, !tbaa !55
  %104 = add nsw i32 %91, 1
  br label %105

; <label>:105:                                    ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %92, %103 ]
  %107 = phi i32 [ %91, %101 ], [ %104, %103 ]
  %108 = add nsw i64 %90, 1
  %109 = icmp eq i64 %108, %18
  br i1 %109, label %110, label %89

; <label>:110:                                    ; preds = %105, %73
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #7
  br label %152

; <label>:111:                                    ; preds = %17
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %4) #7
  br i1 %15, label %112, label %113

; <label>:112:                                    ; preds = %111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 4 %48, i64 %62, i1 false)
  br label %113

; <label>:113:                                    ; preds = %112, %111
  %114 = icmp slt i64 %63, 257
  br i1 %114, label %115, label %117

; <label>:115:                                    ; preds = %113
  %116 = add i64 %63, 256
  br label %119

; <label>:117:                                    ; preds = %119, %113
  %118 = trunc i64 %21 to i32
  br label %130

; <label>:119:                                    ; preds = %119, %115
  %120 = phi i64 [ %43, %115 ], [ %127, %119 ]
  %121 = getelementptr inbounds i32, i32* %0, i64 %120
  %122 = load i32, i32* %121, align 4, !tbaa !55
  %123 = sub i64 %116, %120
  %124 = shl i64 %123, 32
  %125 = ashr exact i64 %124, 32
  %126 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %125
  store i32 %122, i32* %126, align 4, !tbaa !55
  %127 = add nsw i64 %120, 1
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %128, 257
  br i1 %129, label %117, label %119

; <label>:130:                                    ; preds = %146, %117
  %131 = phi i64 [ %21, %117 ], [ %149, %146 ]
  %132 = phi i32 [ 256, %117 ], [ %148, %146 ]
  %133 = phi i32 [ %118, %117 ], [ %147, %146 ]
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4, !tbaa !55
  %137 = sext i32 %133 to i64
  %138 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4, !tbaa !55
  %140 = icmp slt i32 %136, %139
  %141 = getelementptr inbounds i32, i32* %0, i64 %131
  br i1 %140, label %142, label %144

; <label>:142:                                    ; preds = %130
  store i32 %136, i32* %141, align 4, !tbaa !55
  %143 = add nsw i32 %132, -1
  br label %146

; <label>:144:                                    ; preds = %130
  store i32 %139, i32* %141, align 4, !tbaa !55
  %145 = add nsw i32 %133, 1
  br label %146

; <label>:146:                                    ; preds = %144, %142
  %147 = phi i32 [ %133, %142 ], [ %145, %144 ]
  %148 = phi i32 [ %143, %142 ], [ %132, %144 ]
  %149 = add nsw i64 %131, 1
  %150 = icmp eq i64 %149, 257
  br i1 %150, label %151, label %130

; <label>:151:                                    ; preds = %146
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %4) #7
  br label %152

; <label>:152:                                    ; preds = %151, %110
  %153 = add i64 %21, %9
  %154 = add nsw i32 %22, %8
  %155 = icmp slt i64 %153, 256
  %156 = add i64 %20, 1
  %157 = add i32 %19, %8
  %158 = add i64 %18, %9
  br i1 %155, label %17, label %159

; <label>:159:                                    ; preds = %152
  %160 = shl nsw i32 %7, 1
  %161 = icmp slt i32 %7, 128
  br i1 %161, label %6, label %162

; <label>:162:                                    ; preds = %159
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8** nocapture readnone) local_unnamed_addr #1 {
  %3 = alloca [256 x i32], align 16
  %4 = bitcast [256 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %4) #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %4, i8* align 16 bitcast ([256 x i32]* @__const.main.a.1 to i8*), i64 1024, i1 false)
  %5 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 0
  call void @replace_ms_mergesort(i32* nonnull %5)
  br label %7

; <label>:6:                                      ; preds = %7
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %4) #7
  ret i32 0

; <label>:7:                                      ; preds = %7, %2
  %8 = phi i64 [ 0, %2 ], [ %12, %7 ]
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4, !tbaa !55
  %11 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 256
  br i1 %13, label %6, label %7
}

define void @replace_ms_mergesort(i32*) {
entry:
  %1 = call i8* @init()
  %threads = call i8* @call_partitioned_functions(i32 2, void (i8*)** getelementptr inbounds ([2 x void (i8*)*], [2 x void (i8*)*]* @funs, i32 0, i32 0), i8* %1)
  %send_alloca = alloca i32*, !reason !3
  store i32* %0, i32** %send_alloca, !reason !3
  %send_cast = bitcast i32** %send_alloca to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 0, i32 8, i8* %1), !reason !3
  %send_alloca1 = alloca i32*, !reason !3
  store i32* %0, i32** %send_alloca1, !reason !3
  %send_cast2 = bitcast i32** %send_alloca1 to i8*, !reason !3
  call void bitcast (void (i8*, i32, i32, i32, i8*)* @send to void (i8*, i64, i32, i32, i8*)*)(i8* %send_cast2, i64 ptrtoint (i1** getelementptr (i1*, i1** null, i32 1) to i64), i32 1, i32 45, i8* %1), !reason !3
  call void @join_partitioned_functions(i32 2, i8* %threads)
  ret void
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define i8* @init() #1 {
  %1 = tail call i8* @malloc(i64 208) #8
  %2 = bitcast i8* %1 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %2, align 8, !tbaa !92
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to %struct._opaque_pthread_rwlock_t*
  %5 = tail call i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t* nonnull %4, %struct._opaque_pthread_rwlockattr_t* null) #7
  ret i8* %1
}

; Function Attrs: nounwind allocsize(0)
declare noalias i8* @malloc(i64) local_unnamed_addr #3

declare i32 @"\01_pthread_rwlock_init"(%struct._opaque_pthread_rwlock_t*, %struct._opaque_pthread_rwlockattr_t*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define noalias i8* @_call_function(i8* nocapture readonly) #1 {
  %2 = bitcast i8* %0 to void (%struct.Context*)**
  %3 = load void (%struct.Context*)*, void (%struct.Context*)** %2, align 8, !tbaa !97
  %4 = getelementptr inbounds i8, i8* %0, i64 8
  %5 = bitcast i8* %4 to %struct.Context**
  %6 = load %struct.Context*, %struct.Context** %5, align 8, !tbaa !99
  tail call void %3(%struct.Context* %6) #7
  ret i8* null
}

; Function Attrs: nounwind ssp uwtable
define i8* @call_partitioned_functions(i32, void (i8*)** nocapture readonly, i8*) #1 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call i8* @malloc(i64 %5) #8
  %7 = bitcast i8* %6 to %struct._opaque_pthread_t**
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %3
  %10 = zext i32 %0 to i64
  br label %12

; <label>:11:                                     ; preds = %12, %3
  ret i8* %6

; <label>:12:                                     ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %23, %12 ]
  %14 = tail call i8* @malloc(i64 16) #8
  %15 = getelementptr inbounds void (i8*)*, void (i8*)** %1, i64 %13
  %16 = bitcast void (i8*)** %15 to i64*
  %17 = load i64, i64* %16, align 8, !tbaa !100
  %18 = bitcast i8* %14 to i64*
  store i64 %17, i64* %18, align 8, !tbaa !97
  %19 = getelementptr inbounds i8, i8* %14, i64 8
  %20 = bitcast i8* %19 to i8**
  store i8* %2, i8** %20, align 8, !tbaa !99
  %21 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %7, i64 %13
  %22 = tail call i32 @pthread_create(%struct._opaque_pthread_t** %21, %struct._opaque_pthread_attr_t* null, i8* (i8*)* nonnull @_call_function, i8* %14) #7
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %11, label %12
}

declare i32 @pthread_create(%struct._opaque_pthread_t**, %struct._opaque_pthread_attr_t*, i8* (i8*)*, i8*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define void @join_partitioned_functions(i32, i8* nocapture readonly) #1 {
  %3 = bitcast i8* %1 to %struct._opaque_pthread_t**
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = zext i32 %0 to i64
  br label %8

; <label>:7:                                      ; preds = %8, %2
  ret void

; <label>:8:                                      ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %13, %8 ]
  %10 = getelementptr inbounds %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %3, i64 %9
  %11 = load %struct._opaque_pthread_t*, %struct._opaque_pthread_t** %10, align 8, !tbaa !100
  %12 = tail call i32 @"\01_pthread_join"(%struct._opaque_pthread_t* %11, i8** null) #7
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

declare i32 @"\01_pthread_join"(%struct._opaque_pthread_t*, i8**) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define void @_add_channel(i8*, i32, i32, %struct.Context* nocapture) local_unnamed_addr #1 {
  %5 = tail call i8* @malloc(i64 24) #8
  %6 = bitcast i8* %5 to i32*
  store i32 %2, i32* %6, align 8, !tbaa !101
  %7 = getelementptr inbounds i8, i8* %5, i64 4
  %8 = bitcast i8* %7 to i32*
  store i32 %1, i32* %8, align 4, !tbaa !103
  %9 = sext i32 %1 to i64
  %10 = tail call i8* @malloc(i64 %9) #8
  %11 = getelementptr inbounds i8, i8* %5, i64 8
  %12 = bitcast i8* %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !104
  %13 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %10, i1 false, i1 true)
  %14 = tail call i8* @__memcpy_chk(i8* %10, i8* %0, i64 %9, i64 %13) #7
  %15 = getelementptr inbounds i8, i8* %5, i64 16
  %16 = bitcast i8* %15 to %struct.Comm**
  store %struct.Comm* null, %struct.Comm** %16, align 8, !tbaa !105
  %17 = getelementptr inbounds %struct.Context, %struct.Context* %3, i64 0, i32 0
  %18 = load %struct.Comm*, %struct.Comm** %17, align 8, !tbaa !92
  %19 = icmp eq %struct.Comm* %18, null
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %4
  %21 = bitcast %struct.Context* %3 to i8**
  br label %30

; <label>:22:                                     ; preds = %22, %4
  %23 = phi %struct.Comm* [ %25, %22 ], [ %18, %4 ]
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %25 = load %struct.Comm*, %struct.Comm** %24, align 8, !tbaa !105
  %26 = icmp eq %struct.Comm* %25, null
  br i1 %26, label %27, label %22

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds %struct.Comm, %struct.Comm* %23, i64 0, i32 3
  %29 = bitcast %struct.Comm** %28 to i8**
  br label %30

; <label>:30:                                     ; preds = %27, %20
  %31 = phi i8** [ %29, %27 ], [ %21, %20 ]
  store i8* %5, i8** %31, align 8, !tbaa !100
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #5

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: norecurse nounwind ssp uwtable
define %struct.Comm* @_find_channel(i1 zeroext, i32, %struct.Context* nocapture) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.Context, %struct.Context* %2, i64 0, i32 0
  %5 = load %struct.Comm*, %struct.Comm** %4, align 8, !tbaa !100
  %6 = icmp eq %struct.Comm* %5, null
  br i1 %6, label %33, label %7

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.Comm, %struct.Comm* %5, i64 0, i32 0
  %9 = load i32, i32* %8, align 8, !tbaa !101
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %15, label %28

; <label>:11:                                     ; preds = %28
  %12 = getelementptr inbounds %struct.Comm, %struct.Comm* %31, i64 0, i32 0
  %13 = load i32, i32* %12, align 8, !tbaa !101
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
  %22 = load i64, i64* %21, align 8, !tbaa !105
  br i1 %19, label %26, label %23

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.Comm, %struct.Comm* %17, i64 0, i32 3
  %25 = bitcast %struct.Comm** %24 to i64*
  store i64 %22, i64* %25, align 8, !tbaa !105
  br label %33

; <label>:26:                                     ; preds = %18
  %27 = bitcast %struct.Context* %2 to i64*
  store i64 %22, i64* %27, align 8, !tbaa !92
  br label %33

; <label>:28:                                     ; preds = %11, %7
  %29 = phi %struct.Comm* [ %31, %11 ], [ %5, %7 ]
  %30 = getelementptr inbounds %struct.Comm, %struct.Comm* %29, i64 0, i32 3
  %31 = load %struct.Comm*, %struct.Comm** %30, align 8, !tbaa !100
  %32 = icmp eq %struct.Comm* %31, null
  br i1 %32, label %33, label %11

; <label>:33:                                     ; preds = %28, %26, %23, %15, %3
  %34 = phi %struct.Comm* [ %16, %15 ], [ %16, %26 ], [ %16, %23 ], [ null, %3 ], [ null, %28 ]
  ret %struct.Comm* %34
}

; Function Attrs: nounwind ssp uwtable
define void @send(i8*, i32, i32, i32, i8*) #1 {
  %6 = bitcast i8* %4 to %struct.Context*
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to %struct._opaque_pthread_rwlock_t*
  %9 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #7
  tail call void @_add_channel(i8* %0, i32 %1, i32 %3, %struct.Context* %6)
  %10 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #7
  ret void
}

declare i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

declare i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @_receive(i1 zeroext, i32, i32, i32, i8*) local_unnamed_addr #1 {
  %6 = bitcast i8* %4 to %struct.Context*
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to %struct._opaque_pthread_rwlock_t*
  br label %9

; <label>:9:                                      ; preds = %14, %5
  br i1 %0, label %10, label %12

; <label>:10:                                     ; preds = %9
  %11 = tail call i32 @"\01_pthread_rwlock_wrlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #7
  br label %14

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #7
  br label %14

; <label>:14:                                     ; preds = %12, %10
  %15 = tail call %struct.Comm* @_find_channel(i1 zeroext %0, i32 %3, %struct.Context* %6)
  %16 = tail call i32 @"\01_pthread_rwlock_unlock"(%struct._opaque_pthread_rwlock_t* nonnull %8) #7
  %17 = icmp eq %struct.Comm* %15, null
  br i1 %17, label %9, label %18

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i64 0, i32 1
  %20 = load i32, i32* %19, align 4, !tbaa !103
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %18
  %23 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i32 %3, i32 %1, i32 %20)
  br label %24

; <label>:24:                                     ; preds = %22, %18
  %25 = getelementptr inbounds %struct.Comm, %struct.Comm* %15, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8, !tbaa !104
  ret i8* %26
}

declare i32 @"\01_pthread_rwlock_rdlock"(%struct._opaque_pthread_rwlock_t*) local_unnamed_addr #4

; Function Attrs: nounwind ssp uwtable
define i8* @receive(i32, i32, i32, i8*) #1 {
  %5 = tail call i8* @_receive(i1 zeroext true, i32 %0, i32 undef, i32 %2, i8* %3)
  ret i8* %5
}

; Function Attrs: nounwind ssp uwtable
define i8* @receive_argument(i32, i32, i32, i8*) #1 {
  %5 = tail call i8* @_receive(i1 zeroext false, i32 %0, i32 undef, i32 %2, i8* %3)
  ret i8* %5
}

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { norecurse nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { allocsize(0) }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"replace argument"}
!4 = !{!"replace mapped op"}
!5 = !{!"2", !"9"}
!6 = !{!"1", !"1"}
!7 = !{!"21", !"28"}
!8 = !{!"29", !"36"}
!9 = !{!"1", !"8"}
!10 = !{!"8", !"15"}
!11 = !{!"receive"}
!12 = !{!"repair phi"}
!13 = !{!"305", !"305"}
!14 = !{!"2", !"2"}
!15 = !{!"3", !"3"}
!16 = !{!"4", !"4"}
!17 = !{!"245", !"252"}
!18 = !{!"4", !"11"}
!19 = !{!"11", !"18"}
!20 = !{!"18", !"25"}
!21 = !{!"26", !"33"}
!22 = !{!"33", !"40"}
!23 = !{!"54", !"61"}
!24 = !{!"61", !"68"}
!25 = !{!"68", !"75"}
!26 = !{!"75", !"76"}
!27 = !{!"76", !"83"}
!28 = !{!"83", !"90"}
!29 = !{!"90", !"97"}
!30 = !{!"97", !"104"}
!31 = !{!"104", !"111"}
!32 = !{!"111", !"118"}
!33 = !{!"118", !"125"}
!34 = !{!"125", !"132"}
!35 = !{!"132", !"139"}
!36 = !{!"139", !"146"}
!37 = !{!"146", !"153"}
!38 = !{!"153", !"160"}
!39 = !{!"160", !"167"}
!40 = !{!"167", !"174"}
!41 = !{!"174", !"181"}
!42 = !{!"181", !"188"}
!43 = !{!"188", !"195"}
!44 = !{!"195", !"202"}
!45 = !{!"202", !"209"}
!46 = !{!"209", !"210"}
!47 = !{!"273", !"280"}
!48 = !{!"280", !"287"}
!49 = !{!"287", !"294"}
!50 = !{!"broadcast"}
!51 = !{!"0", !"7"}
!52 = !{!"7", !"14"}
!53 = !{!"15", !"22"}
!54 = !{!"22", !"29"}
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!"29", !"30"}
!60 = !{!"18", !"18"}
!61 = !{!"9", !"16"}
!62 = !{!"19", !"26"}
!63 = !{!"0", !"1"}
!64 = !{!"0", !"15"}
!65 = !{!"22", !"23"}
!66 = !{!"23", !"30"}
!67 = !{!"17", !"17"}
!68 = !{!"0", !"0"}
!69 = !{!"1", !"2"}
!70 = !{!"16", !"23"}
!71 = !{!"30", !"37"}
!72 = !{!"47", !"47"}
!73 = !{!"40", !"47"}
!74 = !{!"47", !"54"}
!75 = !{!"60", !"67"}
!76 = !{!"210", !"217"}
!77 = !{!"217", !"224"}
!78 = !{!"224", !"231"}
!79 = !{!"231", !"238"}
!80 = !{!"238", !"245"}
!81 = !{!"252", !"259"}
!82 = !{!"259", !"266"}
!83 = !{!"266", !"273"}
!84 = !{!"294", !"301"}
!85 = !{!"27", !"28"}
!86 = !{!"17", !"18"}
!87 = !{!"16", !"17"}
!88 = !{!"5", !"6"}
!89 = !{!"14", !"14"}
!90 = !{!"7", !"7"}
!91 = !{!"30", !"31"}
!92 = !{!93, !94, i64 0}
!93 = !{!"Context", !94, i64 0, !95, i64 8}
!94 = !{!"any pointer", !57, i64 0}
!95 = !{!"_opaque_pthread_rwlock_t", !96, i64 0, !57, i64 8}
!96 = !{!"long", !57, i64 0}
!97 = !{!98, !94, i64 0}
!98 = !{!"Closure", !94, i64 0, !94, i64 8}
!99 = !{!98, !94, i64 8}
!100 = !{!94, !94, i64 0}
!101 = !{!102, !56, i64 0}
!102 = !{!"Comm", !56, i64 0, !56, i64 4, !94, i64 8, !94, i64 16}
!103 = !{!102, !56, i64 4}
!104 = !{!102, !94, i64 8}
!105 = !{!102, !94, i64 16}
