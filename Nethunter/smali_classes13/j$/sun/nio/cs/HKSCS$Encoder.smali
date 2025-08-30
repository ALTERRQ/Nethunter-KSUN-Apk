.class public Lj$/sun/nio/cs/HKSCS$Encoder;
.super Lj$/sun/nio/cs/DoubleByte$Encoder;
.source "HKSCS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/HKSCS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field static C2B_UNMAPPABLE:[C


# instance fields
.field private big5Enc:Lj$/sun/nio/cs/DoubleByte$Encoder;

.field private c2bBmp:[[C

.field private c2bSupp:[[C

.field private repl:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 420
    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    .line 422
    sget-object v0, Lj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    const v1, 0xfffd

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 423
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/DoubleByte$Encoder;[[C[[C)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "big5Enc"    # Lj$/sun/nio/cs/DoubleByte$Encoder;
    .param p3, "c2bBmp"    # [[C
    .param p4, "c2bSupp"    # [[C

    .line 242
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    .line 360
    invoke-virtual {p0}, Lj$/sun/nio/cs/HKSCS$Encoder;->replacement()[B

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    .line 243
    iput-object p2, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->big5Enc:Lj$/sun/nio/cs/DoubleByte$Encoder;

    .line 244
    iput-object p3, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->c2bBmp:[[C

    .line 245
    iput-object p4, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->c2bSupp:[[C

    .line 246
    return-void
.end method

.method public static initc2b([[C[Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "c2b"    # [[C
    .param p1, "b2cStr"    # [Ljava/lang/String;
    .param p2, "pua"    # Ljava/lang/String;

    .line 427
    const/16 v0, 0x40

    .line 428
    .local v0, "b2Min":I
    sget-object v1, Lj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 429
    const/4 v1, 0x0

    .local v1, "b1":I
    :goto_0
    const/16 v2, 0x100

    const v3, 0xfffd

    if-ge v1, v2, :cond_4

    .line 430
    aget-object v4, p1, v1

    .line 431
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 432
    goto :goto_3

    .line 433
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 434
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 435
    .local v6, "c":C
    if-ne v6, v3, :cond_1

    .line 436
    goto :goto_2

    .line 437
    :cond_1
    shr-int/lit8 v7, v6, 0x8

    .line 438
    .local v7, "hi":I
    aget-object v8, p0, v7

    sget-object v9, Lj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    if-ne v8, v9, :cond_2

    .line 439
    new-array v8, v2, [C

    aput-object v8, p0, v7

    .line 440
    aget-object v8, p0, v7

    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 442
    :cond_2
    aget-object v8, p0, v7

    and-int/lit16 v9, v6, 0xff

    shl-int/lit8 v10, v1, 0x8

    add-int v11, v5, v0

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 433
    .end local v6    # "c":C
    .end local v7    # "hi":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 429
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "b1":I
    :cond_4
    if-eqz p2, :cond_7

    .line 446
    const v1, 0xe000

    .line 447
    .local v1, "c":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 448
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 449
    .local v5, "bb":C
    if-eq v5, v3, :cond_6

    .line 450
    shr-int/lit8 v6, v1, 0x8

    .line 451
    .local v6, "hi":I
    aget-object v7, p0, v6

    sget-object v8, Lj$/sun/nio/cs/HKSCS$Encoder;->C2B_UNMAPPABLE:[C

    if-ne v7, v8, :cond_5

    .line 452
    new-array v7, v2, [C

    aput-object v7, p0, v6

    .line 453
    aget-object v7, p0, v6

    invoke-static {v7, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 455
    :cond_5
    aget-object v7, p0, v6

    and-int/lit16 v8, v1, 0xff

    aput-char v5, v7, v8

    .line 457
    .end local v6    # "hi":I
    :cond_6
    add-int/lit8 v6, v1, 0x1

    int-to-char v1, v6

    .line 447
    .end local v5    # "bb":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 460
    .end local v1    # "c":C
    .end local v4    # "i":I
    :cond_7
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 266
    invoke-virtual {p0, p1}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

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
    .locals 7
    .param p1, "src"    # [C
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 368
    .local v1, "sl":I
    :goto_0
    if-ge p2, v1, :cond_5

    .line 369
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "sp":I
    .local v2, "sp":I
    aget-char p2, p1, p2

    .line 370
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

    move-result v3

    .line 371
    .local v3, "bb":I
    const v4, 0xfffd

    if-ne v3, v4, :cond_3

    .line 372
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eq v2, v1, :cond_1

    aget-char v5, p1, v2

    .line 373
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "sp":I
    .local v5, "sp":I
    aget-char v2, p1, v2

    .line 374
    invoke-static {p2, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    invoke-virtual {p0, v2}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeSupp(I)I

    move-result v2

    move v3, v2

    if-ne v2, v4, :cond_0

    move v2, v5

    goto :goto_1

    :cond_0
    move v2, v5

    goto :goto_2

    .line 376
    .end local v5    # "sp":I
    .restart local v2    # "sp":I
    :cond_1
    :goto_1
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .local v4, "dp":I
    iget-object v5, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aput-byte v5, p4, v0

    .line 377
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    array-length v0, v0

    const/4 v5, 0x1

    if-le v0, v5, :cond_2

    .line 378
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    iget-object v6, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    aget-byte v5, v6, v5

    aput-byte v5, p4, v4

    move p2, v2

    goto :goto_0

    .line 377
    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    :cond_2
    move p2, v2

    move v0, v4

    goto :goto_0

    .line 382
    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    :cond_3
    :goto_2
    const/16 v4, 0xff

    if-le v3, v4, :cond_4

    .line 383
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, p4, v0

    .line 384
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    int-to-byte v5, v3

    aput-byte v5, p4, v4

    goto :goto_3

    .line 386
    :cond_4
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v5, v3

    aput-byte v5, p4, v0

    move v0, v4

    .line 388
    .end local v3    # "bb":I
    .end local v4    # "dp":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_3
    move p2, v2

    goto :goto_0

    .line 389
    .end local v2    # "sp":I
    .local p2, "sp":I
    :cond_5
    return v0
.end method

.method protected encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 17
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 270
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    .line 271
    .local v4, "sa":[C
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    .line 272
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 274
    .local v5, "sl":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 275
    .local v6, "da":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 276
    .local v7, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v7

    move v7, v0

    .line 279
    .end local v0    # "sp":I
    .local v7, "sp":I
    .local v8, "dl":I
    .local v9, "dp":I
    :goto_0
    if-ge v7, v5, :cond_7

    .line 280
    :try_start_0
    aget-char v0, v4, v7

    .line 281
    .local v0, "c":C
    const/4 v10, 0x1

    .line 282
    .local v10, "inSize":I
    invoke-virtual {v1, v0}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

    move-result v11

    .line 283
    .local v11, "bb":I
    const/4 v12, 0x2

    const v13, 0xfffd

    const/4 v14, 0x1

    if-ne v11, v13, :cond_3

    .line 284
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 286
    invoke-virtual/range {p0 .. p0}, Lj$/sun/nio/cs/HKSCS$Encoder;->sgp()Lj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v15

    invoke-virtual {v15, v0, v4, v7, v5}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v15

    move/from16 v16, v15

    .local v16, "cp":I
    if-gez v15, :cond_0

    .line 287
    iget-object v12, v1, Lj$/sun/nio/cs/HKSCS$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v12}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 310
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 311
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 287
    return-object v12

    .line 288
    :cond_0
    move/from16 v15, v16

    .end local v16    # "cp":I
    .local v15, "cp":I
    :try_start_1
    invoke-virtual {v1, v15}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeSupp(I)I

    move-result v16

    move/from16 v11, v16

    .line 289
    if-ne v11, v13, :cond_1

    .line 290
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 311
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 290
    return-object v12

    .line 291
    :cond_1
    const/4 v10, 0x2

    .line 292
    .end local v15    # "cp":I
    goto :goto_1

    .line 293
    :cond_2
    :try_start_2
    invoke-static {v14}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 311
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 293
    return-object v12

    .line 296
    :cond_3
    :goto_1
    const/16 v13, 0xff

    if-le v11, v13, :cond_5

    .line 297
    sub-int v13, v8, v9

    if-ge v13, v12, :cond_4

    .line 298
    :try_start_3
    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 311
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 298
    return-object v12

    .line 299
    :cond_4
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "dp":I
    .local v12, "dp":I
    shr-int/lit8 v13, v11, 0x8

    int-to-byte v13, v13

    :try_start_4
    aput-byte v13, v6, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    add-int/lit8 v9, v12, 0x1

    .end local v12    # "dp":I
    .restart local v9    # "dp":I
    int-to-byte v13, v11

    :try_start_5
    aput-byte v13, v6, v12

    goto :goto_2

    .line 302
    :cond_5
    sub-int v12, v8, v9

    if-ge v12, v14, :cond_6

    .line 303
    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 310
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 311
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 303
    return-object v12

    .line 304
    :cond_6
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "dp":I
    .restart local v12    # "dp":I
    int-to-byte v13, v11

    :try_start_6
    aput-byte v13, v6, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v9, v12

    .line 306
    .end local v12    # "dp":I
    .restart local v9    # "dp":I
    :goto_2
    add-int/2addr v7, v10

    .line 307
    .end local v0    # "c":C
    .end local v10    # "inSize":I
    .end local v11    # "bb":I
    goto/16 :goto_0

    .line 310
    .end local v9    # "dp":I
    .restart local v12    # "dp":I
    :catchall_0
    move-exception v0

    move v9, v12

    goto :goto_3

    .line 308
    .end local v12    # "dp":I
    .restart local v9    # "dp":I
    :cond_7
    :try_start_7
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 310
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 311
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 308
    return-object v0

    .line 310
    :catchall_1
    move-exception v0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 311
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 312
    throw v0
.end method

.method public encodeBig5(C)I
    .locals 1
    .param p1, "ch"    # C

    .line 249
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->big5Enc:Lj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v0, p1}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    return v0
.end method

.method protected encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 316
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 318
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 319
    const/4 v1, 0x1

    .line 320
    .local v1, "inSize":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    .line 321
    .local v2, "c":C
    invoke-virtual {p0, v2}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

    move-result v3

    .line 322
    .local v3, "bb":I
    const/4 v4, 0x2

    const/4 v5, 0x1

    const v6, 0xfffd

    if-ne v3, v6, :cond_3

    .line 323
    invoke-static {v2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 325
    invoke-virtual {p0}, Lj$/sun/nio/cs/HKSCS$Encoder;->sgp()Lj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v7

    invoke-virtual {v7, v2, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v7

    move v8, v7

    .local v8, "cp":I
    if-gez v7, :cond_0

    .line 326
    iget-object v4, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v4}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 326
    return-object v4

    .line 327
    :cond_0
    :try_start_1
    invoke-virtual {p0, v8}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeSupp(I)I

    move-result v7

    move v3, v7

    .line 328
    if-ne v3, v6, :cond_1

    .line 329
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 329
    return-object v4

    .line 330
    :cond_1
    const/4 v1, 0x2

    .line 331
    .end local v8    # "cp":I
    goto :goto_1

    .line 332
    :cond_2
    :try_start_2
    invoke-static {v5}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 332
    return-object v4

    .line 335
    :cond_3
    :goto_1
    const/16 v6, 0xff

    if-le v3, v6, :cond_5

    .line 336
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_4

    .line 337
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 349
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 337
    return-object v4

    .line 338
    :cond_4
    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    :try_start_4
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 339
    int-to-byte v4, v3

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 341
    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v5, :cond_6

    .line 342
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 349
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 342
    return-object v4

    .line 343
    :cond_6
    int-to-byte v4, v3

    :try_start_5
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 345
    :goto_2
    add-int/2addr v0, v1

    .line 346
    .end local v1    # "inSize":I
    .end local v2    # "c":C
    .end local v3    # "bb":I
    goto/16 :goto_0

    .line 347
    :cond_7
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 347
    return-object v1

    .line 349
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 350
    throw v1
.end method

.method public encodeChar(C)I
    .locals 2
    .param p1, "ch"    # C

    .line 253
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->c2bBmp:[[C

    shr-int/lit8 v1, p1, 0x8

    aget-object v0, v0, v1

    and-int/lit16 v1, p1, 0xff

    aget-char v0, v0, v1

    .line 254
    .local v0, "bb":I
    const v1, 0xfffd

    if-ne v0, v1, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeBig5(C)I

    move-result v1

    return v1

    .line 256
    :cond_0
    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .locals 8
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 395
    .local v1, "sl":I
    array-length v2, p4

    .line 396
    .local v2, "dl":I
    :goto_0
    if-ge p2, v1, :cond_5

    .line 397
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sp":I
    .local v3, "sp":I
    invoke-static {p1, p2}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result p2

    .line 398
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeChar(C)I

    move-result v4

    .line 399
    .local v4, "bb":I
    const v5, 0xfffd

    if-ne v4, v5, :cond_3

    .line 400
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eq v3, v1, :cond_1

    .line 401
    invoke-static {p1, v3}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v3, 0x1

    .line 402
    .end local v3    # "sp":I
    .local v6, "sp":I
    invoke-static {p1, v3}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    invoke-virtual {p0, v3}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeSupp(I)I

    move-result v3

    move v4, v3

    if-ne v3, v5, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v6

    goto :goto_2

    .line 404
    .end local v6    # "sp":I
    .restart local v3    # "sp":I
    :cond_1
    :goto_1
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .local v5, "dp":I
    iget-object v6, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    aput-byte v6, p4, v0

    .line 405
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    array-length v0, v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_2

    .line 406
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    iget-object v7, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    aget-byte v6, v7, v6

    aput-byte v6, p4, v5

    move p2, v3

    goto :goto_0

    .line 405
    .end local v0    # "dp":I
    .restart local v5    # "dp":I
    :cond_2
    move p2, v3

    move v0, v5

    goto :goto_0

    .line 410
    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    :cond_3
    :goto_2
    const/16 v5, 0xff

    if-le v4, v5, :cond_4

    .line 411
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .restart local v5    # "dp":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p4, v0

    .line 412
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    int-to-byte v6, v4

    aput-byte v6, p4, v5

    goto :goto_3

    .line 414
    :cond_4
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .restart local v5    # "dp":I
    int-to-byte v6, v4

    aput-byte v6, p4, v0

    move v0, v5

    .line 416
    .end local v4    # "bb":I
    .end local v5    # "dp":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_3
    move p2, v3

    goto :goto_0

    .line 417
    .end local v3    # "sp":I
    .local p2, "sp":I
    :cond_5
    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 354
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/HKSCS$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public encodeSupp(I)I
    .locals 2
    .param p1, "cp"    # I

    .line 260
    const/high16 v0, 0xf0000

    and-int/2addr v0, p1

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    .line 261
    const v0, 0xfffd

    return v0

    .line 262
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->c2bSupp:[[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    aget-object v0, v0, v1

    and-int/lit16 v1, p1, 0xff

    aget-char v0, v0, v1

    return v0
.end method

.method protected implReplaceWith([B)V
    .locals 0
    .param p1, "newReplacement"    # [B

    .line 362
    iput-object p1, p0, Lj$/sun/nio/cs/HKSCS$Encoder;->repl:[B

    .line 363
    return-void
.end method
