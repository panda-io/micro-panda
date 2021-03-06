; ModuleID = '../mini-panda/main.ll'
source_filename = "../mini-panda/main.ll"

%test.Printer = type { i32, [8 x i8], %test.Driver }
%test.Driver = type { i8 }
%container.Allocator = type { i32, i32, i8* }

@test.Enum.r = local_unnamed_addr constant i8 0
@test.Enum.g = local_unnamed_addr constant i8 1
@test.Enum.b = local_unnamed_addr constant i8 2
@test.global_array = local_unnamed_addr constant [5 x i8] c"\01\02\03\04\05"
@string.4576fbff7ad2d9fa622f16573db7b286 = constant [42 x i8] c"============ test expression ============\00"
@string.f9b6d891c5ca674309c459ad55eb01c8 = constant [9 x i8] c"v1: %d \0A\00"
@string.f52c63a936a31e2b2d03c5c746b8d5b9 = constant [9 x i8] c"v2: %d \0A\00"
@string.67c5acbbce37db2c12b92a427bc08a84 = constant [9 x i8] c"v3: %d \0A\00"
@string.c3c4ff0f83dad5387535d315826c22f8 = constant [9 x i8] c"b1: %d \0A\00"
@string.e40a403ffbdf9c2c70921d6bb7739cd8 = constant [9 x i8] c"b2: %d \0A\00"
@string.2dcc97a590ca083991ffe9b43c08dd02 = constant [9 x i8] c"v4: %u \0A\00"
@string.fc631314303f7db146188786b60902e8 = constant [8 x i8] c"x: %d \0A\00"
@string.a753fba743a9e6b08cb7a2627f69b75d = constant [11 x i8] c"bool: %d \0A\00"
@string.9155af3e03234ca6017e6a626fa48d60 = constant [18 x i8] c"parentheses: %d \0A\00"
@string.6815af516458351e77683ead5f501317 = constant [8 x i8] c"c: %d \0A\00"
@string.d58ddb72e75f1acfc4203e33bddc08a1 = constant [8 x i8] c"b: %d \0A\00"
@string.5b8b2fafadbddfa000cd0e716725d4a4 = constant [8 x i8] c"i: %d \0A\00"
@string.dd42ef93dc06a72b063baa72848d660c = constant [10 x i8] c"f16: %f \0A\00"
@string.dc24ff6a55a1c588a346f9dff66c25a0 = constant [10 x i8] c"f32: %f \0A\00"
@string.7a828f7c003ac662930a932d14c84f48 = constant [10 x i8] c"f64: %f \0A\00"
@string.3aff445dea2b63e4d3b135c5219ba7dc = constant [12 x i8] c"some string\00"
@string.ccbd06f65fb69a974bb7bbe132352fd5 = constant [15 x i8] c"array[0]: %d \0A\00"
@string.502edb90c5d63a7982b92c4846005a12 = constant [15 x i8] c"array[3]: %d \0A\00"
@string.f078cc2571d60d58e6a551d92df567c4 = constant [16 x i8] c"array2[0]: %d \0A\00"
@string.966d3dfa4a8527741a06bd9fbaa21f93 = constant [16 x i8] c"array2[3]: %d \0A\00"
@string.f9fe529bc21937b1ee14af38e842590b = constant [16 x i8] c"array3[0]: %d \0A\00"
@string.85ac8a2eb899f708bbb12d753db07868 = constant [16 x i8] c"array3[3]: %d \0A\00"
@string.8824f4dbad52bbb3684995480092775e = constant [16 x i8] c"array4[0]: %d \0A\00"
@string.5f0dc37317410eea89a43776ec4ac6e1 = constant [16 x i8] c"array4[3]: %d \0A\00"
@string.db08573c403e33d25bb325d1df98c844 = constant [19 x i8] c"new_array[0]: %d \0A\00"
@string.b1faf43818ca0e7e4b4b1e24b441f795 = constant [19 x i8] c"new_array[3]: %d \0A\00"
@string.9fcfb18ceb0d348e69c2e13fa41b241d = constant [22 x i8] c"global_array[2]: %d \0A\00"
@string.1daf4144552c4db57e99d55450ed346e = constant [18 x i8] c"sub.integer: %d \0A\00"
@string.560e3347d8fe3fd15f15ce5db418664f = constant [16 x i8] c"sub.float: %f \0A\00"
@string.b585a7adc3e8d68bbf60cb859044df1e = constant [19 x i8] c"sub.array[3]: %d \0A\00"
@string.84ad90c9c520f1a4e80779cfa15248b6 = constant [17 x i8] c"data.value: %d \0A\00"
@string.07ce14d972194d598243322dc9f50250 = constant [23 x i8] c"data.sub.integer: %d \0A\00"
@string.6db0fbcde59d77fa7fc3126dc45321f0 = constant [24 x i8] c"data.sub.array[3]: %d \0A\00"
@string.3ef4b443add330c8a95ca5f96c0ff649 = constant [25 x i8] c"convert i32 to i16: %d \0A\00"
@string.4ed512d2145b6a7ca1372858fd18ec55 = constant [24 x i8] c"convert i16 to i8: %d \0A\00"
@string.22f4c765769b2c3e259cdec04f7ab9fc = constant [26 x i8] c"convert float to i8: %d \0A\00"
@string.b8daa6164c5a20e98d469e71a9da3125 = constant [26 x i8] c"convert float to u8: %d \0A\00"
@string.c3c73595ffd209f6a04a209eb631fdd3 = constant [25 x i8] c"convert f32 to f16: %f \0A\00"
@string.68c37f72a2c1fdcc1cdcc2f848d60eae = constant [25 x i8] c"convert f32 to f64: %f \0A\00"
@string.ef448b1e1b7d3a83d28a1ce23787d883 = constant [25 x i8] c"convert i32 to f32: %f \0A\00"
@string.b0cbe247e2f4af55fd9dcce28109e925 = constant [21 x i8] c"address to f32: %d \0A\00"
@string.b25abb667c59353b4d5e4cda2e7cc58e = constant [21 x i8] c"address to i32: %d \0A\00"
@string.825793f8ecd43c3dc72996595a4131e4 = constant [18 x i8] c"bits of f32: %d \0A\00"
@test.ff = local_unnamed_addr global void (i8*)* @test.do_something
@string.80c523c134f2b89c9ec7f6652a2dbdd7 = constant [40 x i8] c"============ test function ============\00"
@string.44083ed8ce984d51a6ecfdba2a6c2105 = constant [15 x i8] c"do something 1\00"
@string.b5b7eec21a3c4ab41dc70340c8ae1d93 = constant [15 x i8] c"do something 2\00"
@string.5f0f1578abd44713c746ded55bf898ea = constant [41 x i8] c"============ test statement ============\00"
@string.07af74d61c4bcfd65e300c22c36df6a3 = constant [14 x i8] c"a(%d) >= 10 \0A\00"
@string.12625b519c0ef75b350a9963cafc3f42 = local_unnamed_addr constant [17 x i8] c"shouldn't happen\00"
@string.7c13f0ed550e89d5fe0dab15a8790a6b = constant [9 x i8] c"I'm else\00"
@string.e509c213bf338f03d246b720ec617c01 = constant [11 x i8] c"loop: %d \0A\00"
@string.ba86886fe05268c3936c4741a0d07a6e = local_unnamed_addr constant [14 x i8] c"switch case 0\00"
@string.162d9796d41e74535694f9688ea21a49 = constant [14 x i8] c"switch case 3\00"
@string.ec374cb30dabe78ccd41f1bcfddac7db = constant [9 x i8] c"a1: %d \0A\00"
@test.global_printer = local_unnamed_addr constant %test.Printer { i32 80, [8 x i8] c"\01\02\03\04\05\06\07\08", %test.Driver { i8 88 } }
@string.91a35f7e30ee87849a8fb990c35dabf1 = constant [38 x i8] c"============ test struct ============\00"
@string.8c16759f16bae00294081efad1d55ec3 = constant [19 x i8] c"printer.line: %d \0A\00"
@string.c316f30584ee0ac304e8eed7e3af175f = constant [24 x i8] c"printer.buffer[7]: %d \0A\00"
@string.09e58fc876babc8908c9040bd77d8624 = constant [26 x i8] c"printer.driver.type: %d \0A\00"
@string.263c2d145bd0257bade41874fd5a73ec = constant [15 x i8] c"hello printer!\00"
@string.8c85cb3ae23186673c0ee88126a99c83 = constant [15 x i8] c"hello pointer!\00"
@string.6e04f1d448592af0a363c48cd79347e3 = constant [26 x i8] c"global_printer.line: %d \0A\00"
@string.569e8d7da8dcd242b4520ca536accffb = constant [31 x i8] c"global_printer.buffer[7]: %d \0A\00"
@string.e1297fae8db86112c4fd38cff8aca961 = constant [33 x i8] c"global_printer.driver.type: %d \0A\00"
@string.7ffa0c893047b73021f29c1b48c9892b = constant [17 x i8] c"sizeof i32: %d \0A\00"
@string.451c6e0c15d560a4cfc5a46a02d53bfa = constant [17 x i8] c"sizeof f64: %d \0A\00"
@string.adf1b889a9023b93577417ca23d21793 = constant [21 x i8] c"sizeof pointer: %d \0A\00"
@string.846c6e4a2aac8de8fa1cce667d7cd481 = constant [21 x i8] c"sizeof printer: %d \0A\00"
@string.fbd4ad59a9864656f8875863ac3b7dab = constant [22 x i8] c"sizeof array[5]: %d \0A\00"
@string.b5abd14716ff1d42a2c76d0bae14c3cf = constant [16 x i8] c"buffer[2]: %d \0A\00"
@string.f229d6156f4a2e6f6e5c4ee96406192b = constant [10 x i8] c"type:%d \0A\00"

; Function Attrs: nounwind
define i8* @container.Allocator.allocate(%container.Allocator* nocapture %this, i32 %element_size, i32 %count) local_unnamed_addr #0 {
entry:
  %0 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 2
  %1 = load i8*, i8** %0, align 8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %container.Allocator.deallocate.exit, label %3

3:                                                ; preds = %entry
  tail call void @free(i8* nonnull %1) #0
  %4 = bitcast %container.Allocator* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false) #0
  br label %container.Allocator.deallocate.exit

container.Allocator.deallocate.exit:              ; preds = %entry, %3
  %5 = tail call i8* @calloc(i32 %element_size, i32 %count)
  store i8* %5, i8** %0, align 8
  %6 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 0
  store i32 %element_size, i32* %6, align 4
  %7 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 1
  store i32 %count, i32* %7, align 4
  ret i8* %5
}

define i8* @container.Allocator.reallocate(%container.Allocator* nocapture %this, i32 %count) local_unnamed_addr {
entry:
  %0 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 2
  %1 = load i8*, i8** %0, align 8
  %2 = icmp eq i8* %1, null
  %3 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 0
  %4 = load i32, i32* %3, align 4
  br i1 %2, label %container.Allocator.allocate.exit, label %5

exit:                                             ; preds = %5, %13, %container.Allocator.allocate.exit
  %.sink = phi i32* [ %12, %container.Allocator.allocate.exit ], [ %8, %13 ], [ %8, %5 ]
  %.0 = phi i8* [ %11, %container.Allocator.allocate.exit ], [ %.pre, %13 ], [ %7, %5 ]
  store i32 %count, i32* %.sink, align 4
  ret i8* %.0

5:                                                ; preds = %entry
  %6 = mul i32 %4, %count
  %7 = tail call i8* @realloc(i8* nonnull %1, i32 %6)
  store i8* %7, i8** %0, align 8
  %8 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %9, %count
  br i1 %10, label %13, label %exit

container.Allocator.allocate.exit:                ; preds = %entry
  %11 = tail call i8* @calloc(i32 %4, i32 %count) #0
  store i8* %11, i8** %0, align 8
  %12 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 1
  br label %exit

13:                                               ; preds = %5
  %14 = load i32, i32* %3, align 4
  %15 = mul i32 %14, %9
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %7, i64 %16
  %18 = sub i32 %count, %9
  %19 = mul i32 %14, %18
  tail call void @llvm.memset.p0i8.i32(i8* %17, i8 0, i32 %19, i1 true)
  %.pre = load i8*, i8** %0, align 8
  br label %exit
}

; Function Attrs: nounwind
define void @container.Allocator.deallocate(%container.Allocator* nocapture %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 2
  %1 = load i8*, i8** %0, align 8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %exit, label %3

exit:                                             ; preds = %entry, %3
  ret void

3:                                                ; preds = %entry
  tail call void @free(i8* nonnull %1)
  %4 = bitcast %container.Allocator* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %exit
}

; Function Attrs: norecurse nounwind readonly
define i8* @container.Allocator.get(%container.Allocator* nocapture readonly %this, i32 %index) local_unnamed_addr #1 {
entry:
  %0 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 1
  %1 = load i32, i32* %0, align 4
  %2 = icmp ugt i32 %1, %index
  br i1 %2, label %3, label %exit

exit:                                             ; preds = %entry, %3
  %.0 = phi i8* [ %10, %3 ], [ null, %entry ]
  ret i8* %.0

3:                                                ; preds = %entry
  %4 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = mul i32 %7, %index
  %9 = sext i32 %8 to i64
  %10 = getelementptr i8, i8* %5, i64 %9
  br label %exit
}

; Function Attrs: nounwind
define void @container.Allocator.copy(%container.Allocator* nocapture readonly %this, i32 %from, i32 %to) local_unnamed_addr #0 {
entry:
  %0 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 1
  %1 = load i32, i32* %0, align 4
  %2 = icmp ugt i32 %1, %from
  %3 = icmp ugt i32 %1, %to
  %4 = and i1 %2, %3
  %5 = icmp ne i32 %from, %to
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %exit

exit:                                             ; preds = %7, %entry
  ret void

7:                                                ; preds = %entry
  %8 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul i32 %11, %to
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %9, i64 %13
  %15 = mul i32 %11, %from
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %9, i64 %16
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %17, i32 %11, i1 true)
  br label %exit
}

; Function Attrs: nounwind
define void @container.Allocator.move(%container.Allocator* nocapture readonly %this, i32 %from, i32 %to, i32 %count) local_unnamed_addr #0 {
entry:
  %0 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 1
  %1 = load i32, i32* %0, align 4
  %2 = icmp ugt i32 %1, %from
  %3 = icmp ugt i32 %1, %to
  %4 = and i1 %2, %3
  %5 = icmp ne i32 %from, %to
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %exit

exit:                                             ; preds = %7, %entry
  ret void

7:                                                ; preds = %entry
  %8 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr %container.Allocator, %container.Allocator* %this, i64 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul i32 %11, %to
  %13 = sext i32 %12 to i64
  %14 = getelementptr i8, i8* %9, i64 %13
  %15 = mul i32 %11, %from
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %9, i64 %16
  %18 = mul i32 %11, %count
  tail call void @llvm.memmove.p0i8.p0i8.i32(i8* %14, i8* %17, i32 %18, i1 true)
  br label %exit
}

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias i8* @calloc(i32, i32) local_unnamed_addr #2

declare i8* @realloc(i8*, i32) local_unnamed_addr

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #3

define void @main() local_unnamed_addr {
entry:
  tail call void @test.expression()
  tail call void @test.statement()
  tail call void @test.structs()
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @string.80c523c134f2b89c9ec7f6652a2dbdd7, i64 0, i64 0))
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.44083ed8ce984d51a6ecfdba2a6c2105, i64 0, i64 0)) #0
  %2 = load void (i8*)*, void (i8*)** @test.ff, align 8
  tail call void %2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @string.b5b7eec21a3c4ab41dc70340c8ae1d93, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
define void @test.expression() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @string.4576fbff7ad2d9fa622f16573db7b286, i64 0, i64 0))
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.f9b6d891c5ca674309c459ad55eb01c8, i64 0, i64 0), i32 1) #0
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.f52c63a936a31e2b2d03c5c746b8d5b9, i64 0, i64 0), i32 -1) #0
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.67c5acbbce37db2c12b92a427bc08a84, i64 0, i64 0), i32 -2) #0
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.c3c4ff0f83dad5387535d315826c22f8, i64 0, i64 0), i32 -1) #0
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.e40a403ffbdf9c2c70921d6bb7739cd8, i64 0, i64 0), i32 0) #0
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.2dcc97a590ca083991ffe9b43c08dd02, i64 0, i64 0), i32 11) #0
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.2dcc97a590ca083991ffe9b43c08dd02, i64 0, i64 0), i32 19) #0
  tail call void @test.binary()
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @string.9155af3e03234ca6017e6a626fa48d60, i64 0, i64 0), i32 33) #0
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.6815af516458351e77683ead5f501317, i64 0, i64 0), i32 97) #0
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.d58ddb72e75f1acfc4203e33bddc08a1, i64 0, i64 0), i32 -1) #0
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.5b8b2fafadbddfa000cd0e716725d4a4, i64 0, i64 0), i32 123) #0
  %12 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.dd42ef93dc06a72b063baa72848d660c, i64 0, i64 0), double 0x4009200000000000) #0
  %13 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.dc24ff6a55a1c588a346f9dff66c25a0, i64 0, i64 0), double 0x40091EB860000000) #0
  %14 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.7a828f7c003ac662930a932d14c84f48, i64 0, i64 0), double 3.140000e+00) #0
  %15 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @string.3aff445dea2b63e4d3b135c5219ba7dc, i64 0, i64 0)) #0
  tail call void @test.subscripting()
  %16 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @string.9fcfb18ceb0d348e69c2e13fa41b241d, i64 0, i64 0), i32 3) #0
  %17 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @string.1daf4144552c4db57e99d55450ed346e, i64 0, i64 0), i32 0) #0
  %18 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @string.1daf4144552c4db57e99d55450ed346e, i64 0, i64 0), i32 5) #0
  %19 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.560e3347d8fe3fd15f15ce5db418664f, i64 0, i64 0), double 0x40091EB860000000) #0
  %20 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @string.b585a7adc3e8d68bbf60cb859044df1e, i64 0, i64 0), i32 3) #0
  %21 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @string.84ad90c9c520f1a4e80779cfa15248b6, i64 0, i64 0), i32 5) #0
  %22 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @string.07ce14d972194d598243322dc9f50250, i64 0, i64 0), i32 8) #0
  %23 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @string.6db0fbcde59d77fa7fc3126dc45321f0, i64 0, i64 0), i32 9) #0
  tail call void @test.conversion()
  ret void
}

; Function Attrs: nofree nounwind
define void @test.unary() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.f9b6d891c5ca674309c459ad55eb01c8, i64 0, i64 0), i32 1)
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.f52c63a936a31e2b2d03c5c746b8d5b9, i64 0, i64 0), i32 -1)
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.67c5acbbce37db2c12b92a427bc08a84, i64 0, i64 0), i32 -2)
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.c3c4ff0f83dad5387535d315826c22f8, i64 0, i64 0), i32 -1)
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.e40a403ffbdf9c2c70921d6bb7739cd8, i64 0, i64 0), i32 0)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.increment_decrement() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.2dcc97a590ca083991ffe9b43c08dd02, i64 0, i64 0), i32 11)
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.2dcc97a590ca083991ffe9b43c08dd02, i64 0, i64 0), i32 19)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.binary() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 5)
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 10)
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 9)
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 18)
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 2)
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 3)
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 12)
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 6)
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 15)
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 7)
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 6)
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 15)
  %12 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 7)
  %13 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 8)
  %14 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 -1)
  %15 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 0)
  %16 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 0)
  %17 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 -1)
  %18 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 0)
  %19 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 -1)
  %20 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 80)
  %21 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 5)
  %22 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 8)
  %23 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 2)
  %24 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 15)
  %25 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 1)
  %26 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.fc631314303f7db146188786b60902e8, i64 0, i64 0), i32 2)
  %27 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.a753fba743a9e6b08cb7a2627f69b75d, i64 0, i64 0), i32 -1)
  %28 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.a753fba743a9e6b08cb7a2627f69b75d, i64 0, i64 0), i32 0)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.parentheses() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @string.9155af3e03234ca6017e6a626fa48d60, i64 0, i64 0), i32 33)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.literal() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.6815af516458351e77683ead5f501317, i64 0, i64 0), i32 97)
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.d58ddb72e75f1acfc4203e33bddc08a1, i64 0, i64 0), i32 -1)
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([8 x i8], [8 x i8]* @string.5b8b2fafadbddfa000cd0e716725d4a4, i64 0, i64 0), i32 123)
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.dd42ef93dc06a72b063baa72848d660c, i64 0, i64 0), double 0x4009200000000000)
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.dc24ff6a55a1c588a346f9dff66c25a0, i64 0, i64 0), double 0x40091EB860000000)
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.7a828f7c003ac662930a932d14c84f48, i64 0, i64 0), double 3.140000e+00)
  %6 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @string.3aff445dea2b63e4d3b135c5219ba7dc, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
define void @test.subscripting() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.ccbd06f65fb69a974bb7bbe132352fd5, i64 0, i64 0), i32 0)
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.502edb90c5d63a7982b92c4846005a12, i64 0, i64 0), i32 3)
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.f078cc2571d60d58e6a551d92df567c4, i64 0, i64 0), i32 0)
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.966d3dfa4a8527741a06bd9fbaa21f93, i64 0, i64 0), i32 3)
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.f9fe529bc21937b1ee14af38e842590b, i64 0, i64 0), i32 0)
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.85ac8a2eb899f708bbb12d753db07868, i64 0, i64 0), i32 3)
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.8824f4dbad52bbb3684995480092775e, i64 0, i64 0), i32 0)
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.5f0dc37317410eea89a43776ec4ac6e1, i64 0, i64 0), i32 3)
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @string.db08573c403e33d25bb325d1df98c844, i64 0, i64 0), i32 1)
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @string.b1faf43818ca0e7e4b4b1e24b441f795, i64 0, i64 0), i32 4)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.member_access() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @string.9fcfb18ceb0d348e69c2e13fa41b241d, i64 0, i64 0), i32 3)
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @string.1daf4144552c4db57e99d55450ed346e, i64 0, i64 0), i32 0)
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @string.1daf4144552c4db57e99d55450ed346e, i64 0, i64 0), i32 5)
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.560e3347d8fe3fd15f15ce5db418664f, i64 0, i64 0), double 0x40091EB860000000)
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @string.b585a7adc3e8d68bbf60cb859044df1e, i64 0, i64 0), i32 3)
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @string.84ad90c9c520f1a4e80779cfa15248b6, i64 0, i64 0), i32 5)
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @string.07ce14d972194d598243322dc9f50250, i64 0, i64 0), i32 8)
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @string.6db0fbcde59d77fa7fc3126dc45321f0, i64 0, i64 0), i32 9)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.conversion() local_unnamed_addr #2 {
entry:
  %0 = alloca float, align 4
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @string.3ef4b443add330c8a95ca5f96c0ff649, i64 0, i64 0), i32 100)
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @string.4ed512d2145b6a7ca1372858fd18ec55, i64 0, i64 0), i32 100)
  store float 0xC0091EB860000000, float* %0, align 4
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @string.22f4c765769b2c3e259cdec04f7ab9fc, i64 0, i64 0), i32 -3)
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @string.b8daa6164c5a20e98d469e71a9da3125, i64 0, i64 0), i32 0)
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @string.b8daa6164c5a20e98d469e71a9da3125, i64 0, i64 0), i32 3)
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @string.c3c73595ffd209f6a04a209eb631fdd3, i64 0, i64 0), double 0xC009200000000000)
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @string.68c37f72a2c1fdcc1cdcc2f848d60eae, i64 0, i64 0), double 0xC0091EB860000000)
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @string.ef448b1e1b7d3a83d28a1ce23787d883, i64 0, i64 0), double 6.563600e+04)
  %9 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @string.b0cbe247e2f4af55fd9dcce28109e925, i64 0, i64 0), float* nonnull %0)
  %10 = bitcast float* %0 to i32*
  %11 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @string.b25abb667c59353b4d5e4cda2e7cc58e, i64 0, i64 0), float* nonnull %0)
  %12 = load i32, i32* %10, align 4
  %13 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @string.825793f8ecd43c3dc72996595a4131e4, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %10, align 4
  %15 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @string.825793f8ecd43c3dc72996595a4131e4, i64 0, i64 0), i32 %14)
  ret void
}

define void @test.functions() local_unnamed_addr {
entry:
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @string.80c523c134f2b89c9ec7f6652a2dbdd7, i64 0, i64 0))
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.44083ed8ce984d51a6ecfdba2a6c2105, i64 0, i64 0)) #0
  %2 = load void (i8*)*, void (i8*)** @test.ff, align 8
  tail call void %2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @string.b5b7eec21a3c4ab41dc70340c8ae1d93, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nounwind
define void @test.do_something(i8* nocapture readonly %msg) #2 {
entry:
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) %msg)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.statement() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([41 x i8], [41 x i8]* @string.5f0f1578abd44713c746ded55bf898ea, i64 0, i64 0))
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @string.07af74d61c4bcfd65e300c22c36df6a3, i64 0, i64 0), i32 10)
  %2 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.7c13f0ed550e89d5fe0dab15a8790a6b, i64 0, i64 0))
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 0)
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 1)
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 2)
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 3)
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 4)
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 5)
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 6)
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 7)
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 8)
  %12 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @string.e509c213bf338f03d246b720ec617c01, i64 0, i64 0), i32 9)
  %13 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @string.162d9796d41e74535694f9688ea21a49, i64 0, i64 0))
  %14 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @string.ec374cb30dabe78ccd41f1bcfddac7db, i64 0, i64 0), i32 123)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.structs() local_unnamed_addr #2 {
entry:
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @string.91a35f7e30ee87849a8fb990c35dabf1, i64 0, i64 0))
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @string.8c16759f16bae00294081efad1d55ec3, i64 0, i64 0), i32 100)
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @string.c316f30584ee0ac304e8eed7e3af175f, i64 0, i64 0), i32 8)
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @string.09e58fc876babc8908c9040bd77d8624, i64 0, i64 0), i32 99)
  %4 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.263c2d145bd0257bade41874fd5a73ec, i64 0, i64 0)) #0
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.f229d6156f4a2e6f6e5c4ee96406192b, i64 0, i64 0), i32 99) #0
  %6 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.263c2d145bd0257bade41874fd5a73ec, i64 0, i64 0)) #0
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.f229d6156f4a2e6f6e5c4ee96406192b, i64 0, i64 0), i32 99) #0
  %8 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.8c85cb3ae23186673c0ee88126a99c83, i64 0, i64 0)) #0
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.f229d6156f4a2e6f6e5c4ee96406192b, i64 0, i64 0), i32 99) #0
  %10 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.263c2d145bd0257bade41874fd5a73ec, i64 0, i64 0)) #0
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.f229d6156f4a2e6f6e5c4ee96406192b, i64 0, i64 0), i32 3) #0
  %12 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.b5abd14716ff1d42a2c76d0bae14c3cf, i64 0, i64 0), i32 2) #0
  %13 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @string.6e04f1d448592af0a363c48cd79347e3, i64 0, i64 0), i32 80)
  %14 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @string.569e8d7da8dcd242b4520ca536accffb, i64 0, i64 0), i32 8)
  %15 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @string.e1297fae8db86112c4fd38cff8aca961, i64 0, i64 0), i32 88)
  %16 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @string.7ffa0c893047b73021f29c1b48c9892b, i64 0, i64 0), i32 4)
  %17 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @string.451c6e0c15d560a4cfc5a46a02d53bfa, i64 0, i64 0), i32 8)
  %18 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @string.adf1b889a9023b93577417ca23d21793, i64 0, i64 0), i32 8)
  %19 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @string.846c6e4a2aac8de8fa1cce667d7cd481, i64 0, i64 0), i32 16)
  %20 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @string.fbd4ad59a9864656f8875863ac3b7dab, i64 0, i64 0), i32 5)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.pass_struct_pointer(%test.Printer* nocapture %printer) local_unnamed_addr #2 {
entry:
  %0 = getelementptr %test.Printer, %test.Printer* %printer, i64 0, i32 2, i32 0
  store i8 3, i8* %0, align 1
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.263c2d145bd0257bade41874fd5a73ec, i64 0, i64 0)) #0
  %2 = load i8, i8* %0, align 1
  %3 = sext i8 %2 to i32
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.f229d6156f4a2e6f6e5c4ee96406192b, i64 0, i64 0), i32 %3) #0
  ret void
}

; Function Attrs: nofree nounwind
define void @test.pass_array(i8* nocapture %buffer) local_unnamed_addr #2 {
entry:
  %0 = getelementptr i8, i8* %buffer, i64 2
  store i8 2, i8* %0, align 1
  %1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @string.b5abd14716ff1d42a2c76d0bae14c3cf, i64 0, i64 0), i32 2)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.Driver.print(%test.Driver* nocapture readonly %this, i8* nocapture readonly %message) local_unnamed_addr #2 {
entry:
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) %message)
  %1 = getelementptr %test.Driver, %test.Driver* %this, i64 0, i32 0
  %2 = load i8, i8* %1, align 1
  %3 = sext i8 %2 to i32
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.f229d6156f4a2e6f6e5c4ee96406192b, i64 0, i64 0), i32 %3)
  ret void
}

; Function Attrs: nofree nounwind
define void @test.Printer.print(%test.Printer* nocapture readonly %this, i8* nocapture readonly %message) local_unnamed_addr #2 {
entry:
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) %message) #0
  %1 = getelementptr %test.Printer, %test.Printer* %this, i64 0, i32 2, i32 0
  %2 = load i8, i8* %1, align 1
  %3 = sext i8 %2 to i32
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @string.f229d6156f4a2e6f6e5c4ee96406192b, i64 0, i64 0), i32 %3) #0
  ret void
}

define void @test.test() local_unnamed_addr {
entry:
  tail call void @test.expression()
  tail call void @test.statement()
  tail call void @test.structs()
  %0 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @string.80c523c134f2b89c9ec7f6652a2dbdd7, i64 0, i64 0))
  %1 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @string.44083ed8ce984d51a6ecfdba2a6c2105, i64 0, i64 0)) #0
  %2 = load void (i8*)*, void (i8*)** @test.ff, align 8
  tail call void %2(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @string.b5b7eec21a3c4ab41dc70340c8ae1d93, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind }
attributes #1 = { norecurse nounwind readonly }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly nounwind willreturn }
