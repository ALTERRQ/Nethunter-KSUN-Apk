.class public Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;
.super Lj$/sun/nio/cs/DoubleByte$Decoder;
.source "DoubleByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/DoubleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder_EBCDIC"
.end annotation


# static fields
.field private static final DBCS:I = 0x1

.field private static final SBCS:I = 0x0

.field private static final SI:I = 0xf

.field private static final SO:I = 0xe


# instance fields
.field private currentState:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CII)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [[C
    .param p3, "b2cSB"    # [C
    .param p4, "b2Min"    # I
    .param p5, "b2Max"    # I

    .line 296
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[[C[CIIZ)V

    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CIIZ)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [[C
    .param p3, "b2cSB"    # [C
    .param p4, "b2Min"    # I
    .param p5, "b2Max"    # I
    .param p6, "isASCIICompatible"    # Z

    .line 291
    invoke-direct/range {p0 .. p6}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[[C[CIIZ)V

    .line 292
    return-void
.end method

.method private static isDoubleByte(II)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I

    .line 316
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v1, 0xfe

    if-gt p0, v1, :cond_0

    if-gt v0, p1, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public decode([BII[C)I
    .locals 10
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [C

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 428
    .local v1, "sl":I
    const/4 v2, 0x0

    iput v2, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    .line 429
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->replacement()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 430
    .local v3, "repl":C
    :goto_0
    if-ge p2, v1, :cond_9

    .line 431
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "sp":I
    .local v4, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 432
    .local p2, "b1":I
    const/16 v5, 0xe

    const/4 v6, 0x1

    if-ne p2, v5, :cond_1

    .line 433
    iget v5, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eqz v5, :cond_0

    .line 434
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .local v5, "dp":I
    aput-char v3, p4, v0

    move p2, v4

    move v0, v5

    goto/16 :goto_4

    .line 436
    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    :cond_0
    iput v6, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto :goto_1

    .line 437
    :cond_1
    const/16 v5, 0xf

    if-ne p2, v5, :cond_3

    .line 438
    iget v5, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eq v5, v6, :cond_2

    .line 439
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .restart local v5    # "dp":I
    aput-char v3, p4, v0

    move p2, v4

    move v0, v5

    goto :goto_4

    .line 441
    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    :cond_2
    iput v2, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    .line 461
    .end local p2    # "b1":I
    :goto_1
    move p2, v4

    goto :goto_4

    .line 443
    .restart local p2    # "b1":I
    :cond_3
    const v5, 0xfffd

    .line 444
    .local v5, "c":C
    iget v6, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    const v7, 0xfffd

    if-nez v6, :cond_4

    .line 445
    iget-object v6, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2cSB:[C

    aget-char v5, v6, p2

    .line 446
    if-ne v5, v7, :cond_8

    .line 447
    move v5, v3

    goto :goto_3

    .line 449
    :cond_4
    if-ne v1, v4, :cond_5

    .line 450
    move v5, v3

    goto :goto_3

    .line 452
    :cond_5
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "sp":I
    .local v6, "sp":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 453
    .local v4, "b2":I
    iget v8, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    if-lt v4, v8, :cond_6

    iget v8, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Max:I

    if-gt v4, v8, :cond_6

    iget-object v8, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2c:[[C

    aget-object v8, v8, p2

    iget v9, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    sub-int v9, v4, v9

    aget-char v8, v8, v9

    move v5, v8

    if-ne v8, v7, :cond_7

    :cond_6
    goto :goto_2

    :cond_7
    move v4, v6

    goto :goto_3

    .line 455
    :goto_2
    move v5, v3

    move v4, v6

    .line 459
    .end local v6    # "sp":I
    .local v4, "sp":I
    :cond_8
    :goto_3
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "dp":I
    .local v6, "dp":I
    aput-char v5, p4, v0

    move p2, v4

    move v0, v6

    .line 461
    .end local v4    # "sp":I
    .end local v5    # "c":C
    .end local v6    # "dp":I
    .restart local v0    # "dp":I
    .local p2, "sp":I
    :goto_4
    goto :goto_0

    .line 462
    :cond_9
    return v0
.end method

.method protected decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 16
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 321
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 322
    .local v4, "sa":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    .line 323
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 324
    .local v5, "sl":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    .line 325
    .local v6, "da":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 326
    .local v7, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v7

    move v7, v0

    .line 331
    .end local v0    # "sp":I
    .local v7, "sp":I
    .local v8, "dl":I
    .local v9, "dp":I
    :goto_0
    if-ge v7, v5, :cond_b

    .line 332
    :try_start_0
    aget-byte v0, v4, v7

    and-int/lit16 v0, v0, 0xff

    .line 333
    .local v0, "b1":I
    const/4 v10, 0x1

    .line 334
    .local v10, "inSize":I
    const/16 v11, 0xe

    const/4 v12, 0x1

    if-ne v0, v11, :cond_1

    .line 335
    iget v11, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eqz v11, :cond_0

    .line 336
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v7, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    .line 336
    return-object v11

    .line 338
    :cond_0
    :try_start_1
    iput v12, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto/16 :goto_1

    .line 339
    :cond_1
    const/16 v11, 0xf

    if-ne v0, v11, :cond_3

    .line 340
    iget v11, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eq v11, v12, :cond_2

    .line 341
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v7, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    .line 341
    return-object v11

    .line 343
    :cond_2
    const/4 v11, 0x0

    :try_start_2
    iput v11, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto/16 :goto_1

    .line 345
    :cond_3
    const v11, 0xfffd

    .line 346
    .local v11, "c":C
    iget v13, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    const v14, 0xfffd

    if-nez v13, :cond_4

    .line 347
    iget-object v13, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2cSB:[C

    aget-char v13, v13, v0

    move v11, v13

    .line 348
    if-ne v11, v14, :cond_8

    .line 349
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 349
    return-object v12

    .line 351
    :cond_4
    sub-int v13, v5, v7

    const/4 v15, 0x2

    if-ge v13, v15, :cond_5

    .line 352
    :try_start_3
    sget-object v12, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 352
    return-object v12

    .line 353
    :cond_5
    add-int/lit8 v13, v7, 0x1

    :try_start_4
    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    .line 354
    .local v13, "b2":I
    iget v15, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    if-lt v13, v15, :cond_6

    iget v15, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Max:I

    if-gt v13, v15, :cond_6

    iget-object v15, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2c:[[C

    aget-object v15, v15, v0

    iget v12, v1, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    sub-int v12, v13, v12

    aget-char v12, v15, v12

    move v11, v12

    if-ne v12, v14, :cond_7

    :cond_6
    goto :goto_2

    .line 360
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 362
    .end local v13    # "b2":I
    :cond_8
    sub-int v12, v8, v9

    const/4 v13, 0x1

    if-ge v12, v13, :cond_9

    .line 363
    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 363
    return-object v12

    .line 365
    :cond_9
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "dp":I
    .local v12, "dp":I
    :try_start_5
    aput-char v11, v6, v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v9, v12

    .line 367
    .end local v11    # "c":C
    .end local v12    # "dp":I
    .restart local v9    # "dp":I
    :goto_1
    add-int/2addr v7, v10

    .line 368
    .end local v0    # "b1":I
    .end local v10    # "inSize":I
    goto/16 :goto_0

    .line 371
    .end local v9    # "dp":I
    .restart local v12    # "dp":I
    :catchall_0
    move-exception v0

    move v9, v12

    goto :goto_3

    .line 356
    .end local v12    # "dp":I
    .restart local v0    # "b1":I
    .restart local v9    # "dp":I
    .restart local v10    # "inSize":I
    .restart local v11    # "c":C
    .restart local v13    # "b2":I
    :goto_2
    :try_start_6
    invoke-static {v0, v13}, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->isDoubleByte(II)Z

    move-result v12

    if-nez v12, :cond_a

    .line 357
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 357
    return-object v12

    .line 358
    :cond_a
    const/4 v12, 0x2

    :try_start_7
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 358
    return-object v12

    .line 369
    .end local v0    # "b1":I
    .end local v10    # "inSize":I
    .end local v11    # "c":C
    .end local v13    # "b2":I
    :cond_b
    :try_start_8
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 369
    return-object v0

    .line 371
    :catchall_1
    move-exception v0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 372
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 373
    throw v0
.end method

.method protected decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 377
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 379
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 380
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 381
    .local v1, "b1":I
    const/4 v2, 0x1

    .line 382
    .local v2, "inSize":I
    const/16 v3, 0xe

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    .line 383
    iget v3, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eqz v3, :cond_0

    .line 384
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 384
    return-object v3

    .line 386
    :cond_0
    :try_start_1
    iput v4, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto/16 :goto_1

    .line 387
    :cond_1
    const/16 v3, 0xf

    if-ne v1, v3, :cond_3

    .line 388
    iget v3, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    if-eq v3, v4, :cond_2

    .line 389
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 389
    return-object v3

    .line 391
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    iput v3, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    goto :goto_1

    .line 393
    :cond_3
    const v3, 0xfffd

    .line 394
    .local v3, "c":C
    iget v5, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    const v6, 0xfffd

    if-nez v5, :cond_4

    .line 395
    iget-object v5, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2cSB:[C

    aget-char v5, v5, v1

    move v3, v5

    .line 396
    if-ne v3, v6, :cond_8

    .line 397
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 420
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 397
    return-object v4

    .line 399
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_5

    .line 400
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 400
    return-object v4

    .line 401
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 402
    .local v5, "b2":I
    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    if-lt v5, v7, :cond_6

    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Max:I

    if-gt v5, v7, :cond_6

    iget-object v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2c:[[C

    aget-object v7, v7, v1

    iget v8, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->b2Min:I

    sub-int v8, v5, v8

    aget-char v7, v7, v8

    move v3, v7

    if-ne v7, v6, :cond_7

    :cond_6
    goto :goto_2

    .line 408
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 411
    .end local v5    # "b2":I
    :cond_8
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_9

    .line 412
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 420
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 412
    return-object v4

    .line 414
    :cond_9
    :try_start_5
    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 416
    .end local v3    # "c":C
    :goto_1
    add-int/2addr v0, v2

    .line 417
    .end local v1    # "b1":I
    .end local v2    # "inSize":I
    goto/16 :goto_0

    .line 404
    .restart local v1    # "b1":I
    .restart local v2    # "inSize":I
    .restart local v3    # "c":C
    .restart local v5    # "b2":I
    :goto_2
    invoke-static {v1, v5}, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->isDoubleByte(II)Z

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_a

    .line 405
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 420
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 405
    return-object v4

    .line 406
    :cond_a
    :try_start_6
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 420
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 406
    return-object v4

    .line 418
    .end local v1    # "b1":I
    .end local v2    # "inSize":I
    .end local v3    # "c":C
    .end local v5    # "b2":I
    :cond_b
    :try_start_7
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 420
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 418
    return-object v1

    .line 420
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 421
    throw v1
.end method

.method public implReset()V
    .locals 1

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;->currentState:I

    .line 301
    return-void
.end method
