.class public Lj$/sun/nio/cs/DoubleByte$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "DoubleByte.java"

# interfaces
.implements Lj$/sun/nio/cs/ArrayEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/DoubleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# instance fields
.field protected final MAX_SINGLEBYTE:I

.field private final c2b:[C

.field private final c2bIndex:[C

.field final isASCIICompatible:Z

.field protected repl:[B

.field protected sgp:Lj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;FF[B[C[CZ)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "avg"    # F
    .param p3, "max"    # F
    .param p4, "repl"    # [B
    .param p5, "c2b"    # [C
    .param p6, "c2bIndex"    # [C
    .param p7, "isASCIICompatible"    # Z

    .line 566
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 547
    const/16 v0, 0xff

    iput v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->MAX_SINGLEBYTE:I

    .line 663
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Encoder;->replacement()[B

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    .line 567
    iput-object p5, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->c2b:[C

    .line 568
    iput-object p6, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->c2bIndex:[C

    .line 569
    iput-boolean p7, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->isASCIICompatible:Z

    .line 570
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[C[C)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "c2b"    # [C
    .param p3, "c2bIndex"    # [C

    .line 554
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    .line 555
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[C[CZ)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "c2b"    # [C
    .param p3, "c2bIndex"    # [C
    .param p4, "isASCIICompatible"    # Z

    .line 558
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 547
    const/16 v0, 0xff

    iput v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->MAX_SINGLEBYTE:I

    .line 663
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Encoder;->replacement()[B

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    .line 559
    iput-object p2, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->c2b:[C

    .line 560
    iput-object p3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->c2bIndex:[C

    .line 561
    iput-boolean p4, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->isASCIICompatible:Z

    .line 562
    return-void
.end method

.method public static initC2B([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[C[C)V
    .locals 16
    .param p0, "b2c"    # [Ljava/lang/String;
    .param p1, "b2cSB"    # Ljava/lang/String;
    .param p2, "b2cNR"    # Ljava/lang/String;
    .param p3, "c2bNR"    # Ljava/lang/String;
    .param p4, "b2Min"    # I
    .param p5, "b2Max"    # I
    .param p6, "c2b"    # [C
    .param p7, "c2bIndex"    # [C

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    const v4, 0xfffd

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 765
    const/16 v5, 0x100

    .line 767
    .local v5, "off":I
    array-length v6, v0

    new-array v6, v6, [[C

    .line 768
    .local v6, "b2c_ca":[[C
    const/4 v7, 0x0

    .line 769
    .local v7, "b2cSB_ca":[C
    if-eqz p1, :cond_0

    .line 770
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 772
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v0

    if-ge v8, v9, :cond_2

    .line 773
    aget-object v9, v0, v8

    if-nez v9, :cond_1

    .line 774
    goto :goto_1

    .line 775
    :cond_1
    aget-object v9, v0, v8

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    aput-object v9, v6, v8

    .line 772
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 778
    .end local v8    # "i":I
    :cond_2
    if-eqz v1, :cond_5

    .line 779
    const/4 v8, 0x0

    .line 780
    .local v8, "j":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 781
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "j":I
    .local v9, "j":I
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 782
    .local v8, "b":C
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "j":I
    .local v10, "j":I
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 783
    .local v9, "c":C
    const/16 v11, 0x100

    if-ge v8, v11, :cond_3

    if-eqz v7, :cond_3

    .line 784
    aget-char v11, v7, v8

    if-ne v11, v9, :cond_4

    .line 785
    aput-char v4, v7, v8

    goto :goto_3

    .line 787
    :cond_3
    shr-int/lit8 v11, v8, 0x8

    aget-object v11, v6, v11

    and-int/lit16 v12, v8, 0xff

    sub-int v12, v12, p4

    aget-char v11, v11, v12

    if-ne v11, v9, :cond_4

    .line 788
    shr-int/lit8 v11, v8, 0x8

    aget-object v11, v6, v11

    and-int/lit16 v12, v8, 0xff

    sub-int v12, v12, p4

    aput-char v4, v11, v12

    .line 790
    .end local v8    # "b":C
    .end local v9    # "c":C
    :cond_4
    :goto_3
    move v8, v10

    goto :goto_2

    .line 793
    .end local v10    # "j":I
    :cond_5
    if-eqz v7, :cond_8

    .line 794
    const/4 v8, 0x0

    .local v8, "b":I
    :goto_4
    array-length v9, v7

    if-ge v8, v9, :cond_8

    .line 795
    aget-char v9, v7, v8

    .line 796
    .restart local v9    # "c":C
    if-ne v9, v4, :cond_6

    .line 797
    goto :goto_5

    .line 798
    :cond_6
    shr-int/lit8 v10, v9, 0x8

    aget-char v10, p7, v10

    .line 799
    .local v10, "index":I
    if-nez v10, :cond_7

    .line 800
    move v10, v5

    .line 801
    add-int/lit16 v5, v5, 0x100

    .line 802
    shr-int/lit8 v11, v9, 0x8

    int-to-char v12, v10

    aput-char v12, p7, v11

    .line 804
    :cond_7
    and-int/lit16 v11, v9, 0xff

    add-int/2addr v11, v10

    int-to-char v12, v8

    aput-char v12, v3, v11

    .line 794
    .end local v9    # "c":C
    .end local v10    # "index":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 808
    .end local v8    # "b":I
    :cond_8
    const/4 v8, 0x0

    .local v8, "b1":I
    :goto_6
    array-length v9, v0

    if-ge v8, v9, :cond_d

    .line 809
    aget-object v9, v6, v8

    .line 810
    .local v9, "db":[C
    if-nez v9, :cond_9

    .line 811
    move/from16 v11, p5

    goto :goto_9

    .line 812
    :cond_9
    move/from16 v10, p4

    .local v10, "b2":I
    :goto_7
    move/from16 v11, p5

    if-gt v10, v11, :cond_c

    .line 813
    sub-int v12, v10, p4

    aget-char v12, v9, v12

    .line 814
    .local v12, "c":C
    if-ne v12, v4, :cond_a

    .line 815
    goto :goto_8

    .line 816
    :cond_a
    shr-int/lit8 v13, v12, 0x8

    aget-char v13, p7, v13

    .line 817
    .local v13, "index":I
    if-nez v13, :cond_b

    .line 818
    move v13, v5

    .line 819
    add-int/lit16 v5, v5, 0x100

    .line 820
    shr-int/lit8 v14, v12, 0x8

    int-to-char v15, v13

    aput-char v15, p7, v14

    .line 822
    :cond_b
    and-int/lit16 v14, v12, 0xff

    add-int/2addr v14, v13

    shl-int/lit8 v15, v8, 0x8

    or-int/2addr v15, v10

    int-to-char v15, v15

    aput-char v15, v3, v14

    .line 812
    .end local v12    # "c":C
    .end local v13    # "index":I
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 808
    .end local v9    # "db":[C
    .end local v10    # "b2":I
    :cond_c
    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_d
    move/from16 v11, p5

    .line 826
    .end local v8    # "b1":I
    if-eqz v2, :cond_f

    .line 828
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_f

    .line 829
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 830
    .local v8, "b":C
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 831
    .local v9, "c":C
    shr-int/lit8 v10, v9, 0x8

    .line 832
    .local v10, "index":I
    aget-char v12, p7, v10

    if-nez v12, :cond_e

    .line 833
    int-to-char v12, v5

    aput-char v12, p7, v10

    .line 834
    add-int/lit16 v5, v5, 0x100

    .line 836
    :cond_e
    aget-char v12, p7, v10

    and-int/lit16 v13, v9, 0xff

    add-int/2addr v12, v13

    .line 837
    .end local v10    # "index":I
    .local v12, "index":I
    aput-char v8, v3, v12

    .line 828
    .end local v8    # "b":C
    .end local v9    # "c":C
    .end local v12    # "index":I
    add-int/lit8 v4, v4, 0x2

    goto :goto_a

    .line 840
    .end local v4    # "i":I
    :cond_f
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 573
    invoke-virtual {p0, p1}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    const v1, 0xfffd

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public encode([CII[B)I
    .locals 8
    .param p1, "src"    # [C
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 672
    .local v1, "sl":I
    array-length v2, p4

    .line 673
    .local v2, "dl":I
    :goto_0
    if-ge p2, v1, :cond_4

    .line 674
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sp":I
    .local v3, "sp":I
    aget-char p2, p1, p2

    .line 675
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v4

    .line 676
    .local v4, "bb":I
    const v5, 0xfffd

    if-ne v4, v5, :cond_2

    .line 677
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ge v3, v1, :cond_0

    aget-char v5, p1, v3

    .line 678
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 679
    add-int/lit8 v3, v3, 0x1

    .line 681
    :cond_0
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .local v5, "dp":I
    iget-object v6, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aput-byte v6, p4, v0

    .line 682
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    array-length v0, v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_1

    .line 683
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    iget-object v7, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    aget-byte v6, v7, v6

    aput-byte v6, p4, v5

    move p2, v3

    goto :goto_0

    .line 682
    .end local v0    # "dp":I
    .restart local v5    # "dp":I
    :cond_1
    move p2, v3

    move v0, v5

    goto :goto_0

    .line 686
    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    :cond_2
    const/16 v5, 0xff

    if-le v4, v5, :cond_3

    .line 687
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p4, v0

    .line 688
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    int-to-byte v6, v4

    aput-byte v6, p4, v5

    goto :goto_1

    .line 690
    :cond_3
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .restart local v5    # "dp":I
    int-to-byte v6, v4

    aput-byte v6, p4, v0

    move v0, v5

    .line 692
    .end local v4    # "bb":I
    .end local v5    # "dp":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_1
    move p2, v3

    goto :goto_0

    .line 693
    .end local v3    # "sp":I
    .local p2, "sp":I
    :cond_4
    return v0
.end method

.method protected encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 10
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 583
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 584
    .local v0, "sa":[C
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 585
    .local v1, "sp":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 587
    .local v2, "sl":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 588
    .local v3, "da":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 589
    .local v4, "dp":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 592
    .local v5, "dl":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 593
    :try_start_0
    aget-char v6, v0, v1

    .line 594
    .local v6, "c":C
    invoke-virtual {p0, v6}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v7

    .line 595
    .local v7, "bb":I
    const v8, 0xfffd

    const/4 v9, 0x1

    if-ne v7, v8, :cond_2

    .line 596
    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 597
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp()Lj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v8

    invoke-virtual {v8, v6, v0, v1, v2}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v8

    if-gez v8, :cond_0

    .line 598
    iget-object v8, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 619
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 598
    return-object v8

    .line 599
    :cond_0
    :try_start_1
    iget-object v8, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 619
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 599
    return-object v8

    .line 601
    :cond_1
    :try_start_2
    invoke-static {v9}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 601
    return-object v8

    .line 604
    :cond_2
    const/16 v8, 0xff

    if-le v7, v8, :cond_4

    .line 605
    sub-int v8, v5, v4

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    .line 606
    :try_start_3
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 619
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 606
    return-object v8

    .line 607
    :cond_3
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "dp":I
    .local v8, "dp":I
    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    :try_start_4
    aput-byte v9, v3, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 608
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v9, v7

    :try_start_5
    aput-byte v9, v3, v8

    goto :goto_1

    .line 610
    :cond_4
    sub-int v8, v5, v4

    if-ge v8, v9, :cond_5

    .line 611
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 619
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 611
    return-object v8

    .line 612
    :cond_5
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "dp":I
    .restart local v8    # "dp":I
    int-to-byte v9, v7

    :try_start_6
    aput-byte v9, v3, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v4, v8

    .line 615
    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    :goto_1
    nop

    .end local v6    # "c":C
    .end local v7    # "bb":I
    add-int/lit8 v1, v1, 0x1

    .line 616
    goto/16 :goto_0

    .line 619
    .end local v4    # "dp":I
    .restart local v8    # "dp":I
    :catchall_0
    move-exception v6

    move v4, v8

    goto :goto_2

    .line 617
    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    :cond_6
    :try_start_7
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 619
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 617
    return-object v6

    .line 619
    :catchall_1
    move-exception v6

    :goto_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 620
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 621
    throw v6
.end method

.method protected encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 5
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 625
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 627
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 628
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 629
    .local v1, "c":C
    invoke-virtual {p0, v1}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v2

    .line 630
    .local v2, "bb":I
    const v3, 0xfffd

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 631
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp()Lj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    if-gez v3, :cond_0

    .line 633
    iget-object v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 633
    return-object v3

    .line 634
    :cond_0
    :try_start_1
    iget-object v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 634
    return-object v3

    .line 636
    :cond_1
    :try_start_2
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 652
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 636
    return-object v3

    .line 638
    :cond_2
    const/16 v3, 0xff

    if-le v2, v3, :cond_4

    .line 639
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    .line 640
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 652
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 640
    return-object v3

    .line 641
    :cond_3
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    :try_start_4
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 642
    int-to-byte v3, v2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 644
    :cond_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_5

    .line 645
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 652
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 645
    return-object v3

    .line 646
    :cond_5
    int-to-byte v3, v2

    :try_start_5
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 648
    :goto_1
    nop

    .end local v1    # "c":C
    .end local v2    # "bb":I
    add-int/lit8 v0, v0, 0x1

    .line 649
    goto :goto_0

    .line 650
    :cond_6
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 652
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 650
    return-object v1

    .line 652
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 653
    throw v1
.end method

.method public encodeChar(C)I
    .locals 3
    .param p1, "ch"    # C

    .line 756
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->c2b:[C

    iget-object v1, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->c2bIndex:[C

    shr-int/lit8 v2, p1, 0x8

    aget-char v1, v1, v2

    and-int/lit16 v2, p1, 0xff

    add-int/2addr v1, v2

    aget-char v0, v0, v1

    return v0
.end method

.method public encodeFromLatin1([BII[B)I
    .locals 7
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 700
    .local v1, "sl":I
    :goto_0
    if-ge p2, v1, :cond_3

    .line 701
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "sp":I
    .local v2, "sp":I
    aget-byte p2, p1, p2

    const/16 v3, 0xff

    and-int/2addr p2, v3

    int-to-char p2, p2

    .line 702
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v4

    .line 703
    .local v4, "bb":I
    const v5, 0xfffd

    if-ne v4, v5, :cond_1

    .line 705
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .local v3, "dp":I
    iget-object v5, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aput-byte v5, p4, v0

    .line 706
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    array-length v0, v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_0

    .line 707
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    iget-object v6, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    aget-byte v5, v6, v5

    aput-byte v5, p4, v3

    move p2, v2

    goto :goto_0

    .line 706
    .end local v0    # "dp":I
    .restart local v3    # "dp":I
    :cond_0
    move p2, v2

    move v0, v3

    goto :goto_0

    .line 711
    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    :cond_1
    if-le v4, v3, :cond_2

    .line 712
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .restart local v3    # "dp":I
    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v0

    .line 713
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    int-to-byte v5, v4

    aput-byte v5, p4, v3

    goto :goto_1

    .line 715
    :cond_2
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .restart local v3    # "dp":I
    int-to-byte v5, v4

    aput-byte v5, p4, v0

    move v0, v3

    .line 718
    .end local v3    # "dp":I
    .end local v4    # "bb":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_1
    move p2, v2

    goto :goto_0

    .line 719
    .end local v2    # "sp":I
    .local p2, "sp":I
    :cond_3
    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .locals 7
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 726
    .local v1, "sl":I
    :goto_0
    if-ge p2, v1, :cond_4

    .line 727
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "sp":I
    .local v2, "sp":I
    invoke-static {p1, p2}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result p2

    .line 728
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v3

    .line 729
    .local v3, "bb":I
    const v4, 0xfffd

    if-ne v3, v4, :cond_2

    .line 730
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ge v2, v1, :cond_0

    .line 731
    invoke-static {p1, v2}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 732
    add-int/lit8 v2, v2, 0x1

    .line 734
    :cond_0
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .local v4, "dp":I
    iget-object v5, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aput-byte v5, p4, v0

    .line 735
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    array-length v0, v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_1

    .line 736
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    iget-object v6, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    aget-byte v5, v6, v5

    aput-byte v5, p4, v4

    move p2, v2

    goto :goto_0

    .line 735
    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    :cond_1
    move p2, v2

    move v0, v4

    goto :goto_0

    .line 740
    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    :cond_2
    const/16 v4, 0xff

    if-le v3, v4, :cond_3

    .line 741
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v0

    .line 742
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    int-to-byte v5, v3

    aput-byte v5, p4, v4

    goto :goto_1

    .line 744
    :cond_3
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v5, v3

    aput-byte v5, p4, v0

    move v0, v4

    .line 746
    .end local v3    # "bb":I
    .end local v4    # "dp":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_1
    move p2, v2

    goto :goto_0

    .line 747
    .end local v2    # "sp":I
    .local p2, "sp":I
    :cond_4
    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 657
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 660
    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReplaceWith([B)V
    .locals 0
    .param p1, "newReplacement"    # [B

    .line 665
    iput-object p1, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->repl:[B

    .line 666
    return-void
.end method

.method public isASCIICompatible()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->isASCIICompatible:Z

    return v0
.end method

.method protected sgp()Lj$/sun/nio/cs/Surrogate$Parser;
    .locals 1

    .line 577
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v0, :cond_0

    .line 578
    new-instance v0, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 579
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    return-object v0
.end method
