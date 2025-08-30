.class final Lj$/sun/nio/cs/UTF_8$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UTF_8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/UTF_8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Encoder"
.end annotation


# instance fields
.field private sgp:Lj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 431
    const v0, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x40400000    # 3.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 432
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/UTF_8$Encoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/UTF_8$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 12
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 458
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 459
    .local v0, "sa":[C
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 460
    .local v1, "sp":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 462
    .local v2, "sl":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 463
    .local v3, "da":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 464
    .local v4, "dp":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 465
    .local v5, "dl":I
    sub-int v6, v2, v1

    sub-int v7, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v6, v4

    .line 468
    .local v6, "dlASCII":I
    :goto_0
    const/16 v7, 0x80

    if-ge v4, v6, :cond_0

    aget-char v8, v0, v1

    if-ge v8, v7, :cond_0

    .line 469
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

    .line 470
    .end local v7    # "dp":I
    .end local v8    # "sp":I
    .restart local v1    # "sp":I
    .restart local v4    # "dp":I
    :cond_0
    :goto_1
    if-ge v1, v2, :cond_a

    .line 471
    aget-char v8, v0, v1

    .line 472
    .local v8, "c":C
    if-ge v8, v7, :cond_2

    .line 474
    if-lt v4, v5, :cond_1

    .line 475
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 476
    :cond_1
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .local v9, "dp":I
    int-to-byte v10, v8

    aput-byte v10, v3, v4

    move v4, v9

    goto/16 :goto_2

    .line 477
    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    :cond_2
    const/16 v9, 0x800

    if-ge v8, v9, :cond_4

    .line 479
    sub-int v9, v5, v4

    const/4 v10, 0x2

    if-ge v9, v10, :cond_3

    .line 480
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 481
    :cond_3
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .restart local v9    # "dp":I
    shr-int/lit8 v10, v8, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v3, v4

    .line 482
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    and-int/lit8 v10, v8, 0x3f

    or-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    goto/16 :goto_2

    .line 483
    :cond_4
    invoke-static {v8}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 485
    iget-object v9, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v9, :cond_5

    .line 486
    new-instance v9, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v9}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v9, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 487
    :cond_5
    iget-object v9, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9, v8, v0, v1, v2}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v9

    .line 488
    .local v9, "uc":I
    if-gez v9, :cond_6

    .line 489
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 490
    iget-object v7, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 492
    :cond_6
    sub-int v10, v5, v4

    const/4 v11, 0x4

    if-ge v10, v11, :cond_7

    .line 493
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 494
    :cond_7
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "dp":I
    .local v10, "dp":I
    shr-int/lit8 v11, v9, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    aput-byte v11, v3, v4

    .line 495
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v11, v9, 0xc

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v7

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 496
    add-int/lit8 v10, v4, 0x1

    .end local v4    # "dp":I
    .restart local v10    # "dp":I
    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x3f

    or-int/2addr v11, v7

    int-to-byte v11, v11

    aput-byte v11, v3, v4

    .line 497
    add-int/lit8 v4, v10, 0x1

    .end local v10    # "dp":I
    .restart local v4    # "dp":I
    and-int/lit8 v11, v9, 0x3f

    or-int/2addr v11, v7

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 498
    nop

    .end local v9    # "uc":I
    add-int/lit8 v1, v1, 0x1

    .line 499
    goto :goto_2

    .line 501
    :cond_8
    sub-int v9, v5, v4

    const/4 v10, 0x3

    if-ge v9, v10, :cond_9

    .line 502
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7

    .line 503
    :cond_9
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .local v9, "dp":I
    shr-int/lit8 v10, v8, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v3, v4

    .line 504
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v10, v8, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 505
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .restart local v9    # "dp":I
    and-int/lit8 v10, v8, 0x3f

    or-int/2addr v10, v7

    int-to-byte v10, v10

    aput-byte v10, v3, v4

    move v4, v9

    .line 507
    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    :goto_2
    nop

    .end local v8    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 508
    goto/16 :goto_1

    .line 509
    :cond_a
    invoke-static {p1, v1, p2, v4}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 510
    sget-object v7, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v7
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 6
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 516
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 517
    .local v0, "mark":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 518
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 519
    .local v1, "c":C
    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 521
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    invoke-static {p1, v0}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    .line 523
    :cond_0
    int-to-byte v2, v1

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 524
    :cond_1
    const/16 v3, 0x800

    if-ge v1, v3, :cond_3

    .line 526
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 527
    invoke-static {p1, v0}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    .line 528
    :cond_2
    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 529
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 530
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 532
    iget-object v3, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v3, :cond_4

    .line 533
    new-instance v3, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v3}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v3, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 534
    :cond_4
    iget-object v3, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3, v1, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    .line 535
    .local v3, "uc":I
    if-gez v3, :cond_5

    .line 536
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 537
    iget-object v2, p0, Lj$/sun/nio/cs/UTF_8$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    .line 539
    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_6

    .line 540
    invoke-static {p1, v0}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    .line 541
    :cond_6
    shr-int/lit8 v4, v3, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 542
    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 543
    shr-int/lit8 v4, v3, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 544
    and-int/lit8 v4, v3, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 545
    nop

    .end local v3    # "uc":I
    add-int/lit8 v0, v0, 0x1

    .line 546
    goto :goto_1

    .line 548
    :cond_7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_8

    .line 549
    invoke-static {p1, v0}, Lj$/sun/nio/cs/UTF_8$Encoder;->overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2

    .line 550
    :cond_8
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 551
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 552
    and-int/lit8 v3, v1, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 554
    :goto_1
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 555
    goto/16 :goto_0

    .line 556
    :cond_9
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 557
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1
.end method

.method private static overflow(Ljava/nio/CharBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/CharBuffer;
    .param p1, "mark"    # I

    .line 450
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 451
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method private static overflow(Ljava/nio/CharBuffer;ILjava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/CharBuffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "dp"    # I

    .line 445
    invoke-static {p0, p1, p2, p3}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 446
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 435
    invoke-static {p1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 563
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/UTF_8$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 566
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/UTF_8$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public isLegalReplacement([B)Z
    .locals 3
    .param p1, "repl"    # [B

    .line 439
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v1

    if-gez v0, :cond_1

    .line 440
    :cond_0
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 439
    :cond_2
    return v1
.end method
