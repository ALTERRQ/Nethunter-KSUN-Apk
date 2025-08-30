.class public Lj$/sun/nio/cs/EUC_TW$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "EUC_TW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/EUC_TW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field static final c2b:[C

.field static final c2bIndex:[C

.field static final c2bPlane:[B

.field static final c2bSupp:[C

.field static final c2bSuppIndex:[C


# instance fields
.field private bb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 490
    const/16 v0, 0xa1

    .line 491
    .local v0, "b1Min":I
    const/16 v1, 0xfe

    .line 492
    .local v1, "b1Max":I
    const/16 v2, 0xa1

    .line 493
    .local v2, "b2Min":I
    const/16 v3, 0xfe

    .line 494
    .local v3, "b2Max":I
    const/16 v4, 0x5e

    .line 495
    .local v4, "dbSegSize":I
    sget-object v5, Lj$/sun/nio/cs/EUC_TW$Decoder;->b2c:[Ljava/lang/String;

    .line 496
    .local v5, "b2c":[Ljava/lang/String;
    sget-object v6, Lj$/sun/nio/cs/EUC_TW$Decoder;->b2cIsSupp:[B

    .line 498
    .local v6, "b2cIsSupp":[B
    sget-object v7, Lj$/sun/nio/cs/EUC_TWMapping;->c2bIndex:[C

    sput-object v7, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bIndex:[C

    .line 499
    sget-object v7, Lj$/sun/nio/cs/EUC_TWMapping;->c2bSuppIndex:[C

    sput-object v7, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bSuppIndex:[C

    .line 500
    const/16 v7, 0x7c00

    new-array v8, v7, [C

    .line 501
    .local v8, "c2b0":[C
    const v9, 0xaa00

    new-array v10, v9, [C

    .line 502
    .local v10, "c2bSupp0":[C
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [B

    .line 505
    .local v7, "c2bPlane0":[B
    const v9, 0xfffd

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([CC)V

    .line 506
    invoke-static {v10, v9}, Ljava/util/Arrays;->fill([CC)V

    .line 508
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_0
    array-length v12, v5

    if-ge v11, v12, :cond_6

    .line 509
    aget-object v12, v5, v11

    .line 516
    .local v12, "db":Ljava/lang/String;
    move v13, v11

    .line 517
    .local v13, "plane":I
    const/4 v14, 0x7

    if-ne v13, v14, :cond_0

    .line 518
    const/16 v13, 0xf

    goto :goto_1

    .line 519
    :cond_0
    if-eqz v13, :cond_1

    .line 520
    add-int/lit8 v13, v11, 0x1

    .line 522
    :cond_1
    :goto_1
    const/4 v14, 0x0

    .line 523
    .local v14, "off":I
    move v15, v0

    .local v15, "b1":I
    :goto_2
    if-gt v15, v1, :cond_5

    .line 524
    move/from16 v16, v2

    move/from16 v9, v16

    .local v9, "b2":I
    :goto_3
    if-gt v9, v3, :cond_4

    .line 525
    move/from16 v17, v0

    .end local v0    # "b1Min":I
    .local v17, "b1Min":I
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 526
    .local v0, "c":C
    move/from16 v18, v1

    const v1, 0xfffd

    .end local v1    # "b1Max":I
    .local v18, "b1Max":I
    if-eq v0, v1, :cond_3

    .line 527
    aget-byte v16, v6, v14

    const/16 v19, 0x1

    shl-int v19, v19, v11

    and-int v16, v16, v19

    if-eqz v16, :cond_2

    .line 528
    sget-object v16, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bSuppIndex:[C

    shr-int/lit8 v19, v0, 0x8

    aget-char v16, v16, v19

    and-int/lit16 v1, v0, 0xff

    add-int v16, v16, v1

    .line 529
    .local v16, "index":I
    shl-int/lit8 v1, v15, 0x8

    add-int/2addr v1, v9

    int-to-char v1, v1

    aput-char v1, v10, v16

    .line 530
    aget-byte v1, v7, v16

    move/from16 v20, v2

    .end local v2    # "b2Min":I
    .local v20, "b2Min":I
    shl-int/lit8 v2, v13, 0x4

    int-to-byte v2, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v7, v16

    .line 531
    .end local v16    # "index":I
    move/from16 v16, v0

    goto :goto_4

    .line 532
    .end local v20    # "b2Min":I
    .restart local v2    # "b2Min":I
    :cond_2
    move/from16 v20, v2

    .end local v2    # "b2Min":I
    .restart local v20    # "b2Min":I
    sget-object v1, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bIndex:[C

    shr-int/lit8 v2, v0, 0x8

    aget-char v1, v1, v2

    and-int/lit16 v2, v0, 0xff

    add-int/2addr v1, v2

    .line 533
    .local v1, "index":I
    shl-int/lit8 v2, v15, 0x8

    add-int/2addr v2, v9

    int-to-char v2, v2

    aput-char v2, v8, v1

    .line 534
    aget-byte v2, v7, v1

    move/from16 v16, v0

    .end local v0    # "c":C
    .local v16, "c":C
    int-to-byte v0, v13

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    goto :goto_4

    .line 526
    .end local v1    # "index":I
    .end local v16    # "c":C
    .end local v20    # "b2Min":I
    .restart local v0    # "c":C
    .restart local v2    # "b2Min":I
    :cond_3
    move/from16 v16, v0

    move/from16 v20, v2

    .line 537
    .end local v0    # "c":C
    .end local v2    # "b2Min":I
    .restart local v16    # "c":C
    .restart local v20    # "b2Min":I
    :goto_4
    nop

    .end local v16    # "c":C
    add-int/lit8 v14, v14, 0x1

    .line 524
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v20

    goto :goto_3

    .end local v17    # "b1Min":I
    .end local v18    # "b1Max":I
    .end local v20    # "b2Min":I
    .local v0, "b1Min":I
    .local v1, "b1Max":I
    .restart local v2    # "b2Min":I
    :cond_4
    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v20, v2

    .line 523
    .end local v0    # "b1Min":I
    .end local v1    # "b1Max":I
    .end local v2    # "b2Min":I
    .end local v9    # "b2":I
    .restart local v17    # "b1Min":I
    .restart local v18    # "b1Max":I
    .restart local v20    # "b2Min":I
    add-int/lit8 v15, v15, 0x1

    const v9, 0xfffd

    goto :goto_2

    .end local v17    # "b1Min":I
    .end local v18    # "b1Max":I
    .end local v20    # "b2Min":I
    .restart local v0    # "b1Min":I
    .restart local v1    # "b1Max":I
    .restart local v2    # "b2Min":I
    :cond_5
    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v20, v2

    .line 508
    .end local v0    # "b1Min":I
    .end local v1    # "b1Max":I
    .end local v2    # "b2Min":I
    .end local v12    # "db":Ljava/lang/String;
    .end local v13    # "plane":I
    .end local v14    # "off":I
    .end local v15    # "b1":I
    .restart local v17    # "b1Min":I
    .restart local v18    # "b1Max":I
    .restart local v20    # "b2Min":I
    add-int/lit8 v11, v11, 0x1

    const v9, 0xfffd

    goto/16 :goto_0

    .line 541
    .end local v11    # "p":I
    .end local v17    # "b1Min":I
    .end local v18    # "b1Max":I
    .end local v20    # "b2Min":I
    .restart local v0    # "b1Min":I
    .restart local v1    # "b1Max":I
    .restart local v2    # "b2Min":I
    :cond_6
    sput-object v8, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2b:[C

    .line 542
    sput-object v10, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bSupp:[C

    .line 543
    sput-object v7, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bPlane:[B

    .line 544
    .end local v0    # "b1Min":I
    .end local v1    # "b1Max":I
    .end local v2    # "b2Min":I
    .end local v3    # "b2Max":I
    .end local v4    # "dbSegSize":I
    .end local v5    # "b2c":[Ljava/lang/String;
    .end local v6    # "b2cIsSupp":[B
    .end local v7    # "c2bPlane0":[B
    .end local v8    # "c2b0":[C
    .end local v10    # "c2bSupp0":[C
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 301
    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 298
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    .line 302
    return-void
.end method

.method static encode(CC[B)I
    .locals 7
    .param p0, "hi"    # C
    .param p1, "low"    # C
    .param p2, "bb"    # [B

    .line 443
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 444
    .local v0, "c":I
    const/high16 v1, 0xf0000

    and-int/2addr v1, v0

    const/4 v2, -0x1

    const/high16 v3, 0x20000

    if-eq v1, v3, :cond_0

    .line 445
    return v2

    .line 446
    :cond_0
    sub-int/2addr v0, v3

    .line 447
    sget-object v1, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bSuppIndex:[C

    shr-int/lit8 v3, v0, 0x8

    aget-char v1, v1, v3

    .line 448
    .local v1, "index":I
    const v3, 0xfffd

    if-ne v1, v3, :cond_1

    .line 449
    return v2

    .line 450
    :cond_1
    and-int/lit16 v4, v0, 0xff

    add-int/2addr v1, v4

    .line 451
    sget-object v4, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bSupp:[C

    aget-char v4, v4, v1

    .line 452
    .local v4, "db":I
    if-ne v4, v3, :cond_2

    .line 453
    return v2

    .line 454
    :cond_2
    sget-object v2, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bPlane:[B

    aget-byte v2, v2, v1

    const/4 v3, 0x4

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    .line 455
    .local v2, "p":I
    const/4 v5, 0x0

    const/16 v6, -0x72

    aput-byte v6, p2, v5

    .line 456
    or-int/lit16 v5, v2, 0xa0

    int-to-byte v5, v5

    const/4 v6, 0x1

    aput-byte v5, p2, v6

    .line 457
    shr-int/lit8 v5, v4, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, p2, v6

    .line 458
    const/4 v5, 0x3

    int-to-byte v6, v4

    aput-byte v6, p2, v5

    .line 459
    return v3
.end method

.method static encode(C[B)I
    .locals 7
    .param p0, "c"    # C
    .param p1, "bb"    # [B

    .line 463
    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bIndex:[C

    shr-int/lit8 v1, p0, 0x8

    aget-char v0, v0, v1

    .line 464
    .local v0, "index":I
    const/4 v1, -0x1

    const v2, 0xfffd

    if-ne v0, v2, :cond_0

    .line 465
    return v1

    .line 466
    :cond_0
    and-int/lit16 v3, p0, 0xff

    add-int/2addr v0, v3

    .line 467
    sget-object v3, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2b:[C

    aget-char v3, v3, v0

    .line 468
    .local v3, "db":I
    if-ne v3, v2, :cond_1

    .line 469
    return v1

    .line 470
    :cond_1
    sget-object v1, Lj$/sun/nio/cs/EUC_TW$Encoder;->c2bPlane:[B

    aget-byte v1, v1, v0

    and-int/lit8 v1, v1, 0xf

    .line 471
    .local v1, "p":I
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 472
    shr-int/lit8 v6, v3, 0x8

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 473
    int-to-byte v5, v3

    aput-byte v5, p1, v4

    .line 474
    return v2

    .line 476
    :cond_2
    const/16 v6, -0x72

    aput-byte v6, p1, v5

    .line 477
    or-int/lit16 v5, v1, 0xa0

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 478
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    .line 479
    const/4 v2, 0x3

    int-to-byte v4, v3

    aput-byte v4, p1, v2

    .line 480
    const/4 v2, 0x4

    return v2
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 12
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 336
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 337
    .local v0, "sa":[C
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 338
    .local v1, "sp":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 340
    .local v2, "sl":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 341
    .local v3, "da":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 342
    .local v4, "dp":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 348
    .local v5, "dl":I
    :goto_0
    if-ge v1, v2, :cond_8

    .line 349
    :try_start_0
    aget-char v6, v0, v1

    .line 350
    .local v6, "c":C
    const/4 v7, 0x1

    .line 351
    .local v7, "inSize":I
    const/16 v8, 0x80

    const/4 v9, -0x1

    if-ge v6, v8, :cond_0

    .line 352
    iget-object v8, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    const/4 v10, 0x0

    int-to-byte v11, v6

    aput-byte v11, v8, v10

    .line 353
    const/4 v8, 0x1

    .local v8, "outSize":I
    goto/16 :goto_1

    .line 355
    .end local v8    # "outSize":I
    :cond_0
    iget-object v8, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v6, v8}, Lj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(C[B)I

    move-result v8

    .line 356
    .restart local v8    # "outSize":I
    if-ne v8, v9, :cond_4

    .line 363
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    .line 364
    add-int/lit8 v10, v1, 0x1

    if-ne v10, v2, :cond_1

    .line 365
    sget-object v9, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 385
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 386
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 365
    return-object v9

    .line 366
    :cond_1
    add-int/lit8 v10, v1, 0x1

    :try_start_1
    aget-char v10, v0, v10

    invoke-static {v10}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-nez v10, :cond_2

    .line 367
    invoke-static {v11}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 386
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 367
    return-object v9

    .line 368
    :cond_2
    add-int/lit8 v10, v1, 0x1

    :try_start_2
    aget-char v10, v0, v10

    iget-object v11, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v6, v10, v11}, Lj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(CC[B)I

    move-result v10

    move v8, v10

    .line 369
    const/4 v7, 0x2

    goto :goto_1

    .line 370
    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 371
    invoke-static {v11}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 386
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 371
    return-object v9

    .line 375
    :cond_4
    :goto_1
    if-ne v8, v9, :cond_5

    .line 376
    :try_start_3
    invoke-static {v7}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 385
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 386
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 376
    return-object v9

    .line 377
    :cond_5
    sub-int v9, v5, v4

    if-ge v9, v8, :cond_6

    .line 378
    :try_start_4
    sget-object v9, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 385
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 386
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 378
    return-object v9

    .line 379
    :cond_6
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_7

    .line 380
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "dp":I
    .local v10, "dp":I
    :try_start_5
    iget-object v11, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    aget-byte v11, v11, v9

    aput-byte v11, v3, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    add-int/lit8 v9, v9, 0x1

    move v4, v10

    goto :goto_2

    .line 385
    .end local v6    # "c":C
    .end local v7    # "inSize":I
    .end local v8    # "outSize":I
    .end local v9    # "i":I
    :catchall_0
    move-exception v6

    move v4, v10

    goto :goto_3

    .line 381
    .end local v10    # "dp":I
    .restart local v4    # "dp":I
    .restart local v6    # "c":C
    .restart local v7    # "inSize":I
    .restart local v8    # "outSize":I
    :cond_7
    add-int/2addr v1, v7

    .line 382
    .end local v6    # "c":C
    goto/16 :goto_0

    .line 383
    .end local v7    # "inSize":I
    .end local v8    # "outSize":I
    :cond_8
    :try_start_6
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 385
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 386
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 383
    return-object v6

    .line 385
    :catchall_1
    move-exception v6

    :goto_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 386
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 387
    throw v6
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 395
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 398
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 399
    const/4 v1, 0x1

    .line 400
    .local v1, "inSize":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    .line 401
    .local v2, "c":C
    const/16 v3, 0x80

    const/4 v4, -0x1

    if-ge v2, v3, :cond_0

    .line 402
    const/4 v3, 0x1

    .line 403
    .local v3, "outSize":I
    iget-object v5, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v5, v6

    goto :goto_1

    .line 405
    .end local v3    # "outSize":I
    :cond_0
    iget-object v3, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v2, v3}, Lj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(C[B)I

    move-result v3

    .line 406
    .restart local v3    # "outSize":I
    if-ne v3, v4, :cond_5

    .line 407
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 408
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 409
    return-object v4

    .line 410
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v5

    .line 411
    .local v5, "c2":C
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_2

    .line 412
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/CharBuffer;

    .line 412
    return-object v4

    .line 413
    :cond_2
    :try_start_2
    iget-object v6, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v2, v5, v6}, Lj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(CC[B)I

    move-result v6

    move v3, v6

    .line 414
    const/4 v1, 0x2

    .line 415
    .end local v5    # "c2":C
    :cond_3
    goto :goto_1

    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 416
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 416
    return-object v4

    .line 420
    :cond_5
    :goto_1
    if-ne v3, v4, :cond_6

    .line 421
    :try_start_3
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 430
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 421
    return-object v4

    .line 422
    :cond_6
    :try_start_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_7

    .line 423
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 430
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 423
    return-object v4

    .line 424
    :cond_7
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_8

    .line 425
    :try_start_5
    iget-object v5, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    aget-byte v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 424
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 426
    .end local v4    # "i":I
    :cond_8
    add-int/2addr v0, v1

    .line 427
    .end local v2    # "c":C
    goto/16 :goto_0

    .line 428
    .end local v1    # "inSize":I
    .end local v3    # "outSize":I
    :cond_9
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 430
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 428
    return-object v1

    .line 430
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 431
    throw v1
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 305
    const/16 v0, 0x7f

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, p1, v0}, Lj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(C[B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public canEncode(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 311
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 312
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 313
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 314
    return v3

    .line 315
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 316
    .local v1, "low":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lj$/sun/nio/cs/EUC_TW$Encoder;->bb:[B

    invoke-virtual {p0, v0, v1, v4}, Lj$/sun/nio/cs/EUC_TW$Encoder;->toEUC(CC[B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 318
    .end local v1    # "low":C
    :cond_1
    move v0, v2

    goto :goto_2

    .line 317
    .restart local v1    # "low":C
    :cond_2
    :goto_1
    return v3

    .line 318
    .end local v2    # "i":I
    .local v1, "i":I
    :cond_3
    invoke-virtual {p0, v0}, Lj$/sun/nio/cs/EUC_TW$Encoder;->canEncode(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 319
    return v3

    .line 318
    :cond_4
    move v0, v1

    .line 321
    .end local v1    # "i":I
    .local v0, "i":I
    :goto_2
    goto :goto_0

    .line 322
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 436
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/EUC_TW$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 439
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/EUC_TW$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public toEUC(CC[B)I
    .locals 1
    .param p1, "hi"    # C
    .param p2, "low"    # C
    .param p3, "bb"    # [B

    .line 326
    invoke-static {p1, p2, p3}, Lj$/sun/nio/cs/EUC_TW$Encoder;->encode(CC[B)I

    move-result v0

    return v0
.end method

.method public toEUC(C[B)I
    .locals 1
    .param p1, "c"    # C
    .param p2, "bb"    # [B

    .line 330
    invoke-static {p1, p2}, Lj$/sun/nio/cs/EUC_TW$Encoder;->encode(C[B)I

    move-result v0

    return v0
.end method
