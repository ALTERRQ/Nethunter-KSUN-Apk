.class Lj$/sun/nio/cs/CESU_8$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "CESU_8.java"

# interfaces
.implements Lj$/sun/nio/cs/ArrayEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/CESU_8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# instance fields
.field private c2:[C

.field private sgp:Lj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 414
    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/CESU_8$Encoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/CESU_8$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 13
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 454
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 455
    .local v0, "sa":[C
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 456
    .local v1, "sp":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 458
    .local v2, "sl":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 459
    .local v3, "da":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 460
    .local v4, "dp":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 461
    .local v5, "dl":I
    sub-int v6, v2, v1

    sub-int v7, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v4

    .line 464
    .local v6, "dlASCII":I
    :goto_0
    const/16 v7, 0x80

    if-ge v4, v6, :cond_0

    aget-char v8, v0, v1

    if-ge v8, v7, :cond_0

    .line 465
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "dp":I
    .local v7, "dp":I
    add-int/lit8 v8, v1, 0x1

    .end local v1    # "sp":I
    .local v8, "sp":I
    aget-char v1, v0, v1

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    move v4, v7

    move v1, v8

    goto :goto_0

    .line 466
    .end local v7    # "dp":I
    .end local v8    # "sp":I
    .restart local v1    # "sp":I
    .restart local v4    # "dp":I
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_a

    .line 467
    aget-char v8, v0, v1

    .line 468
    .local v8, "c":C
    if-ge v8, v7, :cond_2

    .line 470
    if-lt v4, v5, :cond_1

    .line 471
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 472
    :cond_1
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .local v9, "dp":I
    int-to-byte v10, v8

    aput-byte v10, v3, v4

    move v4, v9

    goto :goto_2

    .line 473
    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    :cond_2
    const/16 v9, 0x800

    if-ge v8, v9, :cond_4

    .line 475
    sub-int v9, v5, v4

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 476
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 477
    :cond_3
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .restart local v9    # "dp":I
    shr-int/lit8 v10, v8, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v3, v4

    .line 478
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    and-int/lit8 v10, v8, 0x3f

    or-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    goto :goto_2

    .line 479
    :cond_4
    invoke-static {v8}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_8

    .line 481
    iget-object v9, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v9, :cond_5

    .line 482
    new-instance v9, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v9}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v9, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 483
    :cond_5
    iget-object v9, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9, v8, v0, v1, v2}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v9

    .line 484
    .local v9, "uc":I
    if-gez v9, :cond_6

    .line 485
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 486
    iget-object v7, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 488
    :cond_6
    sub-int v11, v5, v4

    const/4 v12, 0x6

    if-ge v11, v12, :cond_7

    .line 489
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 490
    :cond_7
    invoke-static {v9}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v11

    invoke-static {v3, v4, v11}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    .line 491
    add-int/lit8 v4, v4, 0x3

    .line 492
    invoke-static {v9}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v11

    invoke-static {v3, v4, v11}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    .line 493
    add-int/2addr v4, v10

    .line 494
    nop

    .end local v9    # "uc":I
    add-int/lit8 v1, v1, 0x1

    .line 495
    goto :goto_2

    .line 497
    :cond_8
    sub-int v9, v5, v4

    if-ge v9, v10, :cond_9

    .line 498
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 499
    :cond_9
    invoke-static {v3, v4, v8}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    .line 500
    add-int/lit8 v4, v4, 0x3

    .line 502
    :goto_2
    nop

    .end local v8    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 503
    goto/16 :goto_1

    .line 504
    :cond_a
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 505
    sget-object v7, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v7
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 5
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 511
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 512
    .local v0, "mark":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 513
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 514
    .local v1, "c":C
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 516
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 517
    invoke-static {p1, v0}, Lj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    .line 518
    :cond_0
    int-to-byte v2, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 519
    :cond_1
    const/16 v3, 0x800

    if-ge v1, v3, :cond_3

    .line 521
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 522
    invoke-static {p1, v0}, Lj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    .line 523
    :cond_2
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 524
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 525
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 527
    iget-object v2, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v2, :cond_4

    .line 528
    new-instance v2, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v2}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v2, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 529
    :cond_4
    iget-object v2, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2, v1, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v2

    .line 530
    .local v2, "uc":I
    if-gez v2, :cond_5

    .line 531
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 532
    iget-object v3, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 534
    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_6

    .line 535
    invoke-static {p1, v0}, Lj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 536
    :cond_6
    invoke-static {v2}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v3

    invoke-static {p2, v3}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes(Ljava/nio/ByteBuffer;C)V

    .line 537
    invoke-static {v2}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v3

    invoke-static {p2, v3}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes(Ljava/nio/ByteBuffer;C)V

    .line 538
    nop

    .end local v2    # "uc":I
    add-int/lit8 v0, v0, 0x1

    .line 539
    goto :goto_1

    .line 541
    :cond_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_8

    .line 542
    invoke-static {p1, v0}, Lj$/sun/nio/cs/CESU_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    .line 543
    :cond_8
    invoke-static {p2, v1}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes(Ljava/nio/ByteBuffer;C)V

    .line 545
    :goto_1
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 546
    goto/16 :goto_0

    .line 547
    :cond_9
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 548
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1
.end method

.method private static overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/CharBuffer;
    .param p1, "mark"    # I

    .line 433
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 434
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private static overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/CharBuffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "dp"    # I

    .line 428
    invoke-static {p0, p1, p2, p3}, Lj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 429
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private static to3Bytes(Ljava/nio/ByteBuffer;C)V
    .locals 1
    .param p0, "dst"    # Ljava/nio/ByteBuffer;
    .param p1, "c"    # C

    .line 444
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 445
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 446
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 447
    return-void
.end method

.method private static to3Bytes([BIC)V
    .locals 2
    .param p0, "da"    # [B
    .param p1, "dp"    # I
    .param p2, "c"    # C

    .line 438
    shr-int/lit8 v0, p2, 0xc

    or-int/lit16 v0, v0, 0xe0

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 439
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 440
    add-int/lit8 v0, p1, 0x2

    and-int/lit8 v1, p2, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 441
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 418
    invoke-static {p1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public encode([CII[B)I
    .locals 9
    .param p1, "sa"    # [C
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "da"    # [B

    .line 563
    add-int v0, p2, p3

    .line 564
    .local v0, "sl":I
    const/4 v1, 0x0

    .line 565
    .local v1, "dp":I
    array-length v2, p4

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 568
    .local v2, "dlASCII":I
    :goto_0
    const/16 v3, 0x80

    if-ge v1, v2, :cond_0

    aget-char v4, p1, p2

    if-ge v4, v3, :cond_0

    .line 569
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "dp":I
    .local v3, "dp":I
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "sp":I
    .local v4, "sp":I
    aget-char p2, p1, p2

    int-to-byte p2, p2

    aput-byte p2, p4, v1

    move v1, v3

    move p2, v4

    goto :goto_0

    .line 571
    .end local v3    # "dp":I
    .end local v4    # "sp":I
    .restart local v1    # "dp":I
    .restart local p2    # "sp":I
    :cond_0
    :goto_1
    if-ge p2, v0, :cond_7

    .line 572
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "sp":I
    .restart local v4    # "sp":I
    aget-char p2, p1, p2

    .line 573
    .local p2, "c":C
    if-ge p2, v3, :cond_1

    .line 575
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .local v5, "dp":I
    int-to-byte v6, p2

    aput-byte v6, p4, v1

    move p2, v4

    move v1, v5

    goto :goto_3

    .line 576
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    :cond_1
    const/16 v5, 0x800

    if-ge p2, v5, :cond_2

    .line 578
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v6, p2, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, p4, v1

    .line 579
    add-int/lit8 v1, v5, 0x1

    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    and-int/lit8 v6, p2, 0x3f

    or-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p4, v5

    move p2, v4

    goto :goto_3

    .line 580
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 581
    iget-object v5, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v5, :cond_3

    .line 582
    new-instance v5, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v5}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v5, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 583
    :cond_3
    iget-object v5, p0, Lj$/sun/nio/cs/CESU_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, p2, p1, v6, v0}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v5

    .line 584
    .local v5, "uc":I
    if-gez v5, :cond_5

    .line 585
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Encoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v6

    sget-object v7, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-eq v6, v7, :cond_4

    .line 586
    const/4 v3, -0x1

    return v3

    .line 587
    :cond_4
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dp":I
    .local v6, "dp":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Encoder;->replacement()[B

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    aput-byte v7, p4, v1

    goto :goto_2

    .line 589
    .end local v6    # "dp":I
    .restart local v1    # "dp":I
    :cond_5
    invoke-static {v5}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v6

    invoke-static {p4, v1, v6}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    .line 590
    add-int/lit8 v1, v1, 0x3

    .line 591
    invoke-static {v5}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v6

    invoke-static {p4, v1, v6}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    .line 592
    add-int/lit8 v6, v1, 0x3

    .line 593
    .end local v1    # "dp":I
    .restart local v6    # "dp":I
    add-int/lit8 v4, v4, 0x1

    .line 595
    .end local v5    # "uc":I
    :goto_2
    move p2, v4

    move v1, v6

    goto :goto_3

    .line 597
    .end local v6    # "dp":I
    .restart local v1    # "dp":I
    :cond_6
    invoke-static {p4, v1, p2}, Lj$/sun/nio/cs/CESU_8$Encoder;->to3Bytes([BIC)V

    .line 598
    add-int/lit8 v1, v1, 0x3

    move p2, v4

    .line 600
    .end local v4    # "sp":I
    .local p2, "sp":I
    :goto_3
    goto :goto_1

    .line 601
    :cond_7
    return v1
.end method

.method public synthetic encodeFromLatin1([BII[B)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/sun/nio/cs/ArrayEncoder$-CC;->$default$encodeFromLatin1(Lj$/sun/nio/cs/ArrayEncoder;[BII[B)I

    move-result p1

    return p1
.end method

.method public synthetic encodeFromUTF16([BII[B)I
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/sun/nio/cs/ArrayEncoder$-CC;->$default$encodeFromUTF16(Lj$/sun/nio/cs/ArrayEncoder;[BII[B)I

    move-result p1

    return p1
.end method

.method protected final encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 554
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/CESU_8$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 557
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/CESU_8$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isASCIICompatible()Z
    .locals 1

    invoke-static {p0}, Lj$/sun/nio/cs/ArrayEncoder$-CC;->$default$isASCIICompatible(Lj$/sun/nio/cs/ArrayEncoder;)Z

    move-result v0

    return v0
.end method

.method public isLegalReplacement([B)Z
    .locals 3
    .param p1, "repl"    # [B

    .line 422
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v1

    if-gez v0, :cond_1

    .line 423
    :cond_0
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 422
    :cond_2
    return v1
.end method
