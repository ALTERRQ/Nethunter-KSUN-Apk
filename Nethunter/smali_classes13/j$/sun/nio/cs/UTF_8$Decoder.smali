.class Lj$/sun/nio/cs/UTF_8$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF_8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/UTF_8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    const-class v0, Lj$/sun/nio/cs/UTF_8;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 86
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/UTF_8$Decoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/UTF_8$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 18
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 225
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 226
    .local v8, "sa":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int v9, v1, v2

    .line 229
    .local v9, "sl":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v10

    .line 230
    .local v10, "da":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 231
    .local v1, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int v11, v2, v3

    .line 232
    .local v11, "dl":I
    sub-int v2, v9, v0

    sub-int v3, v11, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v12, v1, v2

    .line 235
    .local v12, "dlASCII":I
    :goto_0
    if-ge v1, v12, :cond_0

    aget-byte v2, v8, v0

    if-ltz v2, :cond_0

    .line 236
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "dp":I
    .local v2, "dp":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "sp":I
    .local v3, "sp":I
    aget-byte v0, v8, v0

    int-to-char v0, v0

    aput-char v0, v10, v1

    move v1, v2

    move v0, v3

    goto :goto_0

    .line 237
    .end local v2    # "dp":I
    .end local v3    # "sp":I
    .restart local v0    # "sp":I
    .restart local v1    # "dp":I
    :cond_0
    move v13, v0

    move v14, v1

    .end local v0    # "sp":I
    .end local v1    # "dp":I
    .local v13, "sp":I
    .local v14, "dp":I
    :goto_1
    if-ge v13, v9, :cond_15

    .line 238
    aget-byte v15, v8, v13

    .line 239
    .local v15, "b1":I
    if-ltz v15, :cond_2

    .line 241
    if-lt v14, v11, :cond_1

    .line 242
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 243
    :cond_1
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "dp":I
    .local v0, "dp":I
    int-to-char v1, v15

    aput-char v1, v10, v14

    .line 244
    add-int/lit8 v13, v13, 0x1

    move v14, v0

    goto/16 :goto_4

    .line 245
    .end local v0    # "dp":I
    .restart local v14    # "dp":I
    :cond_2
    shr-int/lit8 v0, v15, 0x5

    const/4 v1, -0x2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    and-int/lit8 v0, v15, 0x1e

    if-eqz v0, :cond_6

    .line 248
    sub-int v0, v9, v13

    if-lt v0, v2, :cond_5

    if-lt v14, v11, :cond_3

    goto :goto_2

    .line 250
    :cond_3
    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    .line 257
    .local v0, "b2":I
    invoke-static {v0}, Lj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 258
    invoke-static {v6, v13, v7, v14, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 259
    :cond_4
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "dp":I
    .restart local v1    # "dp":I
    shl-int/lit8 v2, v15, 0x6

    xor-int/2addr v2, v0

    xor-int/lit16 v2, v2, 0xf80

    int-to-char v2, v2

    aput-char v2, v10, v14

    .line 263
    nop

    .end local v0    # "b2":I
    add-int/lit8 v13, v13, 0x2

    .line 264
    move v14, v1

    goto/16 :goto_4

    .line 249
    .end local v1    # "dp":I
    .restart local v14    # "dp":I
    :cond_5
    :goto_2
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 264
    :cond_6
    shr-int/lit8 v0, v15, 0x4

    if-ne v0, v1, :cond_c

    .line 266
    sub-int v5, v9, v13

    .line 267
    .local v5, "srcRemaining":I
    const/4 v0, 0x3

    if-lt v5, v0, :cond_a

    if-lt v14, v11, :cond_7

    goto :goto_3

    .line 272
    :cond_7
    add-int/lit8 v1, v13, 0x1

    aget-byte v1, v8, v1

    .line 273
    .local v1, "b2":I
    add-int/lit8 v2, v13, 0x2

    aget-byte v2, v8, v2

    .line 274
    .local v2, "b3":I
    invoke-static {v15, v1, v2}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed3(III)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 275
    invoke-static {v6, v13, v7, v14, v0}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 276
    :cond_8
    shl-int/lit8 v3, v15, 0xc

    shl-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    const v4, -0x1e080

    xor-int/2addr v4, v2

    xor-int/2addr v3, v4

    int-to-char v3, v3

    .line 283
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 284
    invoke-static {v6, v13, v7, v14, v0}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 285
    :cond_9
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "dp":I
    .local v0, "dp":I
    aput-char v3, v10, v14

    .line 286
    nop

    .end local v1    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "c":C
    .end local v5    # "srcRemaining":I
    add-int/lit8 v13, v13, 0x3

    .line 287
    move v14, v0

    goto/16 :goto_4

    .line 268
    .end local v0    # "dp":I
    .restart local v5    # "srcRemaining":I
    .restart local v14    # "dp":I
    :cond_a
    :goto_3
    if-le v5, v3, :cond_b

    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    invoke-static {v15, v0}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed3_2(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 269
    invoke-static {v6, v13, v7, v14, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 270
    :cond_b
    const/16 v16, 0x3

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    move/from16 v17, v5

    .end local v5    # "srcRemaining":I
    .local v17, "srcRemaining":I
    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 287
    .end local v17    # "srcRemaining":I
    :cond_c
    shr-int/lit8 v0, v15, 0x3

    if-ne v0, v1, :cond_14

    .line 289
    sub-int v5, v9, v13

    .line 290
    .restart local v5    # "srcRemaining":I
    const/4 v0, 0x4

    if-lt v5, v0, :cond_10

    sub-int v1, v11, v14

    if-ge v1, v2, :cond_d

    goto :goto_6

    .line 299
    :cond_d
    add-int/lit8 v1, v13, 0x1

    aget-byte v1, v8, v1

    .line 300
    .restart local v1    # "b2":I
    add-int/lit8 v2, v13, 0x2

    aget-byte v2, v8, v2

    .line 301
    .restart local v2    # "b3":I
    add-int/lit8 v3, v13, 0x3

    aget-byte v3, v8, v3

    .line 302
    .local v3, "b4":I
    shl-int/lit8 v4, v15, 0x12

    shl-int/lit8 v16, v1, 0xc

    xor-int v4, v4, v16

    shl-int/lit8 v16, v2, 0x6

    xor-int v4, v4, v16

    const v16, 0x381f80

    xor-int v16, v3, v16

    xor-int v4, v4, v16

    .line 310
    .local v4, "uc":I
    invoke-static {v1, v2, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4(III)Z

    move-result v16

    if-nez v16, :cond_f

    .line 312
    invoke-static {v4}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v16

    if-nez v16, :cond_e

    goto :goto_5

    .line 315
    :cond_e
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "dp":I
    .restart local v0    # "dp":I
    invoke-static {v4}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v16

    aput-char v16, v10, v14

    .line 316
    add-int/lit8 v14, v0, 0x1

    .end local v0    # "dp":I
    .restart local v14    # "dp":I
    invoke-static {v4}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v16

    aput-char v16, v10, v0

    .line 317
    nop

    .end local v1    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v4    # "uc":I
    .end local v5    # "srcRemaining":I
    add-int/lit8 v13, v13, 0x4

    .line 318
    nop

    .line 320
    .end local v15    # "b1":I
    :goto_4
    goto/16 :goto_1

    .line 313
    .restart local v1    # "b2":I
    .restart local v2    # "b3":I
    .restart local v3    # "b4":I
    .restart local v4    # "uc":I
    .restart local v5    # "srcRemaining":I
    .restart local v15    # "b1":I
    :cond_f
    :goto_5
    invoke-static {v6, v13, v7, v14, v0}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 291
    .end local v1    # "b2":I
    .end local v2    # "b3":I
    .end local v3    # "b4":I
    .end local v4    # "uc":I
    :cond_10
    :goto_6
    and-int/lit16 v15, v15, 0xff

    .line 292
    const/16 v0, 0xf4

    if-gt v15, v0, :cond_13

    if-le v5, v3, :cond_11

    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    .line 293
    invoke-static {v15, v0}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4_2(II)Z

    move-result v0

    if-eqz v0, :cond_11

    move/from16 v17, v5

    goto :goto_7

    .line 295
    :cond_11
    if-le v5, v2, :cond_12

    add-int/lit8 v0, v13, 0x2

    aget-byte v0, v8, v0

    invoke-static {v0}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4_3(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 296
    invoke-static {v6, v13, v7, v14, v2}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 297
    :cond_12
    const/16 v16, 0x4

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    move/from16 v17, v5

    .end local v5    # "srcRemaining":I
    .restart local v17    # "srcRemaining":I
    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 292
    .end local v17    # "srcRemaining":I
    .restart local v5    # "srcRemaining":I
    :cond_13
    move/from16 v17, v5

    .line 294
    .end local v5    # "srcRemaining":I
    .restart local v17    # "srcRemaining":I
    :goto_7
    invoke-static {v6, v13, v7, v14, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 319
    .end local v17    # "srcRemaining":I
    :cond_14
    invoke-static {v6, v13, v7, v14, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 321
    .end local v15    # "b1":I
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 327
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 328
    .local v0, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 329
    .local v1, "limit":I
    :goto_0
    if-ge v0, v1, :cond_14

    .line 330
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 331
    .local v2, "b1":I
    const/4 v3, 0x1

    if-ltz v2, :cond_1

    .line 333
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 334
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 335
    :cond_0
    int-to-char v3, v2

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 337
    :cond_1
    shr-int/lit8 v4, v2, 0x5

    const/4 v5, -0x2

    const/4 v6, 0x2

    if-ne v4, v5, :cond_5

    and-int/lit8 v4, v2, 0x1e

    if-eqz v4, :cond_5

    .line 339
    sub-int v4, v1, v0

    if-lt v4, v6, :cond_4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_2

    goto :goto_1

    .line 341
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 342
    .local v4, "b2":I
    invoke-static {v4}, Lj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 343
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 344
    :cond_3
    shl-int/lit8 v3, v2, 0x6

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0xf80

    int-to-char v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 348
    nop

    .end local v4    # "b2":I
    add-int/lit8 v0, v0, 0x2

    .line 349
    goto/16 :goto_3

    .line 340
    :cond_4
    :goto_1
    invoke-static {p1, v0, v6}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 349
    :cond_5
    shr-int/lit8 v4, v2, 0x4

    if-ne v4, v5, :cond_b

    .line 351
    sub-int v4, v1, v0

    .line 352
    .local v4, "srcRemaining":I
    const/4 v5, 0x3

    if-lt v4, v5, :cond_9

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    if-ge v6, v3, :cond_6

    goto :goto_2

    .line 357
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 358
    .local v3, "b2":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 359
    .local v6, "b3":I
    invoke-static {v2, v3, v6}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed3(III)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 360
    invoke-static {p1, v0, v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    .line 361
    :cond_7
    shl-int/lit8 v7, v2, 0xc

    shl-int/lit8 v8, v3, 0x6

    xor-int/2addr v7, v8

    const v8, -0x1e080

    xor-int/2addr v8, v6

    xor-int/2addr v7, v8

    int-to-char v7, v7

    .line 368
    .local v7, "c":C
    invoke-static {v7}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 369
    invoke-static {p1, v0, v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    .line 370
    :cond_8
    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 371
    nop

    .end local v3    # "b2":I
    .end local v4    # "srcRemaining":I
    .end local v6    # "b3":I
    .end local v7    # "c":C
    add-int/lit8 v0, v0, 0x3

    .line 372
    goto :goto_3

    .line 353
    .restart local v4    # "srcRemaining":I
    :cond_9
    :goto_2
    if-le v4, v3, :cond_a

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v2, v6}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed3_2(II)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 354
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 355
    :cond_a
    invoke-static {p1, v0, v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 372
    .end local v4    # "srcRemaining":I
    :cond_b
    shr-int/lit8 v4, v2, 0x3

    if-ne v4, v5, :cond_13

    .line 374
    sub-int v4, v1, v0

    .line 375
    .restart local v4    # "srcRemaining":I
    const/4 v5, 0x4

    if-lt v4, v5, :cond_f

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    if-ge v7, v6, :cond_c

    goto :goto_5

    .line 384
    :cond_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 385
    .restart local v3    # "b2":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 386
    .restart local v6    # "b3":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 387
    .local v7, "b4":I
    shl-int/lit8 v8, v2, 0x12

    shl-int/lit8 v9, v3, 0xc

    xor-int/2addr v8, v9

    shl-int/lit8 v9, v6, 0x6

    xor-int/2addr v8, v9

    const v9, 0x381f80

    xor-int/2addr v9, v7

    xor-int/2addr v8, v9

    .line 395
    .local v8, "uc":I
    invoke-static {v3, v6, v7}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4(III)Z

    move-result v9

    if-nez v9, :cond_e

    .line 397
    invoke-static {v8}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_4

    .line 400
    :cond_d
    invoke-static {v8}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 401
    invoke-static {v8}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 402
    nop

    .end local v3    # "b2":I
    .end local v4    # "srcRemaining":I
    .end local v6    # "b3":I
    .end local v7    # "b4":I
    .end local v8    # "uc":I
    add-int/lit8 v0, v0, 0x4

    .line 403
    nop

    .line 406
    .end local v2    # "b1":I
    :goto_3
    goto/16 :goto_0

    .line 398
    .restart local v2    # "b1":I
    .restart local v3    # "b2":I
    .restart local v4    # "srcRemaining":I
    .restart local v6    # "b3":I
    .restart local v7    # "b4":I
    .restart local v8    # "uc":I
    :cond_e
    :goto_4
    invoke-static {p1, v0, v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    .line 376
    .end local v3    # "b2":I
    .end local v6    # "b3":I
    .end local v7    # "b4":I
    .end local v8    # "uc":I
    :cond_f
    :goto_5
    and-int/lit16 v2, v2, 0xff

    .line 377
    const/16 v7, 0xf4

    if-gt v2, v7, :cond_12

    if-le v4, v3, :cond_10

    .line 378
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v2, v7}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4_2(II)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_6

    .line 380
    :cond_10
    if-le v4, v6, :cond_11

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->isMalformed4_3(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 381
    invoke-static {p1, v0, v6}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 382
    :cond_11
    invoke-static {p1, v0, v5}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 379
    :cond_12
    :goto_6
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 404
    .end local v4    # "srcRemaining":I
    :cond_13
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 407
    .end local v2    # "b1":I
    :cond_14
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lj$/sun/nio/cs/UTF_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;[BI)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "ba"    # [B
    .param p2, "sp"    # I

    .line 421
    if-nez p0, :cond_0

    .line 422
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 423
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 424
    return-object p0
.end method

.method private static isMalformed3(III)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I
    .param p2, "b3"    # I

    .line 96
    const/16 v0, -0x20

    const/16 v1, 0x80

    if-ne p0, v0, :cond_0

    and-int/lit16 v0, p1, 0xe0

    if-eq v0, v1, :cond_2

    :cond_0
    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_2

    and-int/lit16 v0, p2, 0xc0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isMalformed3_2(II)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I

    .line 102
    const/16 v0, -0x20

    const/16 v1, 0x80

    if-ne p0, v0, :cond_0

    and-int/lit16 v0, p1, 0xe0

    if-eq v0, v1, :cond_1

    :cond_0
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMalformed4(III)Z
    .locals 2
    .param p0, "b2"    # I
    .param p1, "b3"    # I
    .param p2, "b4"    # I

    .line 112
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, v1, :cond_1

    and-int/lit16 v0, p2, 0xc0

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

.method private static isMalformed4_2(II)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I

    .line 119
    const/16 v0, 0xf0

    if-ne p0, v0, :cond_0

    const/16 v0, 0x90

    if-lt p1, v0, :cond_2

    const/16 v0, 0xbf

    if-gt p1, v0, :cond_2

    :cond_0
    const/16 v0, 0xf4

    const/16 v1, 0x80

    if-ne p0, v0, :cond_1

    and-int/lit16 v0, p1, 0xf0

    if-ne v0, v1, :cond_2

    :cond_1
    and-int/lit16 v0, p1, 0xc0

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMalformed4_3(I)Z
    .locals 2
    .param p0, "b3"    # I

    .line 129
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNotContinuation(I)Z
    .locals 2
    .param p0, "b"    # I

    .line 90
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lookupN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 2
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "n"    # I

    .line 134
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 135
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 2
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "mark"    # I
    .param p2, "nb"    # I

    .line 183
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 184
    invoke-static {p0, p2}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 185
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 186
    return-object v0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/CharBuffer;
    .param p3, "dp"    # I
    .param p4, "nb"    # I

    .line 173
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 174
    invoke-static {p0, p4}, Lj$/sun/nio/cs/UTF_8$Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 175
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-static {p0, p1, p2, p3}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 176
    return-object v0
.end method

.method private static malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "mark"    # I
    .param p2, "malformedNB"    # I

    .line 203
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 204
    invoke-static {p2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/CharBuffer;
    .param p3, "dp"    # I
    .param p4, "malformedNB"    # I

    .line 195
    invoke-static {p0, p1, p2, p3}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 196
    invoke-static {p4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 7
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "nb"    # I

    .line 142
    const/4 v0, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 164
    goto :goto_1

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 154
    .local v3, "b1":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 155
    .local v4, "b2":I
    const/16 v5, 0xf4

    if-gt v3, v5, :cond_4

    const/16 v6, 0xf0

    if-ne v3, v6, :cond_0

    const/16 v6, 0x90

    if-lt v4, v6, :cond_4

    const/16 v6, 0xbf

    if-gt v4, v6, :cond_4

    :cond_0
    if-ne v3, v5, :cond_1

    and-int/lit16 v5, v4, 0xf0

    if-ne v5, v1, :cond_4

    .line 158
    :cond_1
    invoke-static {v4}, Lj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 162
    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 159
    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 147
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 148
    .restart local v3    # "b1":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 150
    .restart local v4    # "b2":I
    const/16 v5, -0x20

    if-ne v3, v5, :cond_5

    and-int/lit16 v5, v4, 0xe0

    if-eq v5, v1, :cond_6

    .line 151
    :cond_5
    invoke-static {v4}, Lj$/sun/nio/cs/UTF_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 149
    :cond_7
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 145
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :pswitch_2
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 165
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "mark"    # I
    .param p2, "nb"    # I

    .line 216
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 217
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 217
    :goto_1
    return-object v0
.end method

.method private static xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "sp"    # I
    .param p2, "sl"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;
    .param p4, "dp"    # I
    .param p5, "nb"    # I

    .line 210
    invoke-static {p0, p1, p3, p4}, Lj$/sun/nio/cs/UTF_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 211
    if-eqz p5, :cond_1

    sub-int v0, p2, p1

    if-ge v0, p5, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 211
    :goto_1
    return-object v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 413
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/UTF_8$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/UTF_8$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
