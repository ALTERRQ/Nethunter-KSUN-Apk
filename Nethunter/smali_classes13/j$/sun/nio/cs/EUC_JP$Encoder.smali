.class Lj$/sun/nio/cs/EUC_JP$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "EUC_JP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/EUC_JP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ENC0201:Lj$/sun/nio/cs/SingleByte$Encoder;

.field static final ENC0208:Lj$/sun/nio/cs/DoubleByte$Encoder;

.field static final ENC0212:Lj$/sun/nio/cs/DoubleByte$Encoder;


# instance fields
.field private final enc0201:Lj$/sun/nio/cs/SingleByte$Encoder;

.field private final enc0208:Lj$/sun/nio/cs/DoubleByte$Encoder;

.field private final enc0212:Lj$/sun/nio/cs/DoubleByte$Encoder;

.field private final sgp:Lj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 230
    const-class v0, Lj$/sun/nio/cs/EUC_JP;

    .line 232
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0201;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0201;-><init>()V

    .line 233
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0201;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/SingleByte$Encoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP$Encoder;->ENC0201:Lj$/sun/nio/cs/SingleByte$Encoder;

    .line 235
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0208;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0208;-><init>()V

    .line 236
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0208;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Encoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP$Encoder;->ENC0208:Lj$/sun/nio/cs/DoubleByte$Encoder;

    .line 238
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0212;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0212;-><init>()V

    .line 239
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0212;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Encoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP$Encoder;->ENC0212:Lj$/sun/nio/cs/DoubleByte$Encoder;

    .line 238
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 249
    sget-object v4, Lj$/sun/nio/cs/EUC_JP$Encoder;->ENC0201:Lj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v5, Lj$/sun/nio/cs/EUC_JP$Encoder;->ENC0208:Lj$/sun/nio/cs/DoubleByte$Encoder;

    sget-object v6, Lj$/sun/nio/cs/EUC_JP$Encoder;->ENC0212:Lj$/sun/nio/cs/DoubleByte$Encoder;

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40400000    # 3.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lj$/sun/nio/cs/EUC_JP$Encoder;-><init>(Ljava/nio/charset/Charset;FFLj$/sun/nio/cs/SingleByte$Encoder;Lj$/sun/nio/cs/DoubleByte$Encoder;Lj$/sun/nio/cs/DoubleByte$Encoder;)V

    .line 250
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FFLj$/sun/nio/cs/SingleByte$Encoder;Lj$/sun/nio/cs/DoubleByte$Encoder;Lj$/sun/nio/cs/DoubleByte$Encoder;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "avgBpc"    # F
    .param p3, "maxBpc"    # F
    .param p4, "enc0201"    # Lj$/sun/nio/cs/SingleByte$Encoder;
    .param p5, "enc0208"    # Lj$/sun/nio/cs/DoubleByte$Encoder;
    .param p6, "enc0212"    # Lj$/sun/nio/cs/DoubleByte$Encoder;

    .line 256
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 241
    new-instance v0, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 257
    iput-object p4, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->enc0201:Lj$/sun/nio/cs/SingleByte$Encoder;

    .line 258
    iput-object p5, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->enc0208:Lj$/sun/nio/cs/DoubleByte$Encoder;

    .line 259
    iput-object p6, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->enc0212:Lj$/sun/nio/cs/DoubleByte$Encoder;

    .line 260
    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 19
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 296
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    .line 297
    .local v4, "sa":[C
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    .line 298
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 299
    .local v5, "sl":I
    nop

    .line 300
    if-gt v0, v5, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    move v0, v6

    .line 301
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 302
    .local v6, "da":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 303
    .local v7, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    .line 304
    .local v8, "dl":I
    nop

    .line 305
    if-gt v7, v8, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    move v7, v9

    .line 307
    const/4 v9, 0x0

    .line 309
    .local v9, "outputSize":I
    const/4 v10, 0x0

    .line 310
    .local v10, "inputSize":I
    const/4 v11, 0x3

    new-array v11, v11, [B

    move v12, v9

    move v9, v7

    move v7, v0

    .line 313
    .end local v0    # "sp":I
    .local v7, "sp":I
    .local v9, "dp":I
    .local v11, "tmpBuf":[B
    .local v12, "outputSize":I
    :goto_2
    if-ge v7, v5, :cond_9

    .line 314
    move-object v0, v11

    .line 315
    .local v0, "outputByte":[B
    :try_start_0
    aget-char v13, v4, v7

    .line 316
    .local v13, "c":C
    invoke-static {v13}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 317
    iget-object v14, v1, Lj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v14, v13, v4, v7, v5}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v14

    if-gez v14, :cond_2

    .line 318
    iget-object v14, v1, Lj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v14}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 318
    return-object v14

    .line 319
    :cond_2
    :try_start_1
    iget-object v14, v1, Lj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v14}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 319
    return-object v14

    .line 321
    :cond_3
    :try_start_2
    invoke-virtual {v1, v13, v0}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeSingle(C[B)I

    move-result v14

    move v12, v14

    .line 322
    if-nez v12, :cond_6

    .line 323
    invoke-virtual {v1, v13}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeDouble(C)I

    move-result v14

    .line 324
    .local v14, "ncode":I
    const v15, 0xfffd

    const/16 v16, 0x1

    if-eq v14, v15, :cond_5

    .line 325
    const/high16 v15, 0xff0000

    and-int/2addr v15, v14

    const v17, 0xff00

    const/16 v18, 0x0

    if-nez v15, :cond_4

    .line 326
    and-int v15, v14, v17

    shr-int/lit8 v15, v15, 0x8

    int-to-byte v15, v15

    aput-byte v15, v0, v18

    .line 327
    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    aput-byte v15, v0, v16

    .line 328
    const/4 v12, 0x2

    goto :goto_3

    .line 330
    :cond_4
    const/16 v15, -0x71

    aput-byte v15, v0, v18

    .line 331
    and-int v15, v14, v17

    shr-int/lit8 v15, v15, 0x8

    int-to-byte v15, v15

    aput-byte v15, v0, v16

    .line 332
    and-int/lit16 v15, v14, 0xff

    int-to-byte v15, v15

    const/16 v16, 0x2

    aput-byte v15, v0, v16

    .line 333
    const/4 v12, 0x3

    goto :goto_3

    .line 336
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v16

    sub-int v1, v7, v16

    invoke-virtual {v2, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v9, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 336
    return-object v15

    .line 339
    .end local v14    # "ncode":I
    :cond_6
    :goto_3
    sub-int v1, v8, v9

    if-ge v1, v12, :cond_7

    .line 340
    :try_start_3
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 340
    return-object v1

    .line 342
    :cond_7
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v12, :cond_8

    .line 343
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "dp":I
    .local v14, "dp":I
    :try_start_4
    aget-byte v15, v0, v1

    aput-byte v15, v6, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    add-int/lit8 v1, v1, 0x1

    move v9, v14

    goto :goto_4

    .line 349
    .end local v0    # "outputByte":[B
    .end local v1    # "i":I
    .end local v13    # "c":C
    :catchall_0
    move-exception v0

    move v9, v14

    goto :goto_5

    .line 345
    .end local v14    # "dp":I
    .restart local v0    # "outputByte":[B
    .restart local v9    # "dp":I
    .restart local v13    # "c":C
    :cond_8
    nop

    .end local v13    # "c":C
    add-int/lit8 v7, v7, 0x1

    .line 346
    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 347
    .end local v0    # "outputByte":[B
    :cond_9
    :try_start_5
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 349
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v7, v1

    invoke-virtual {v2, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v9, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 347
    return-object v0

    .line 349
    :catchall_1
    move-exception v0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v7, v1

    invoke-virtual {v2, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v9, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 351
    throw v0
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 11
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "outputSize":I
    const/4 v1, 0x0

    .line 360
    .local v1, "inputSize":I
    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 362
    .local v2, "tmpBuf":[B
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    .line 365
    .local v3, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 366
    move-object v4, v2

    .line 367
    .local v4, "outputByte":[B
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v5

    .line 368
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 369
    iget-object v6, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v6, v5, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v6

    if-gez v6, :cond_0

    .line 370
    iget-object v6, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v6}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 370
    return-object v6

    .line 371
    :cond_0
    :try_start_1
    iget-object v6, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v6}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 371
    return-object v6

    .line 373
    :cond_1
    :try_start_2
    invoke-virtual {p0, v5, v4}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeSingle(C[B)I

    move-result v6

    move v0, v6

    .line 374
    if-nez v0, :cond_4

    .line 375
    invoke-virtual {p0, v5}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeDouble(C)I

    move-result v6

    .line 376
    .local v6, "ncode":I
    const v7, 0xfffd

    const/4 v8, 0x1

    if-eq v6, v7, :cond_3

    .line 377
    const/high16 v7, 0xff0000

    and-int/2addr v7, v6

    const v9, 0xff00

    const/4 v10, 0x0

    if-nez v7, :cond_2

    .line 378
    and-int v7, v6, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    .line 379
    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v8

    .line 380
    const/4 v0, 0x2

    goto :goto_1

    .line 382
    :cond_2
    const/16 v7, -0x71

    aput-byte v7, v4, v10

    .line 383
    and-int v7, v6, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v8

    .line 384
    and-int/lit16 v7, v6, 0xff

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v4, v8

    .line 385
    const/4 v0, 0x3

    goto :goto_1

    .line 388
    :cond_3
    invoke-static {v8}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    .line 388
    return-object v7

    .line 391
    .end local v6    # "ncode":I
    :cond_4
    :goto_1
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v0, :cond_5

    .line 392
    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 392
    return-object v6

    .line 394
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v0, :cond_6

    .line 395
    :try_start_4
    aget-byte v7, v4, v6

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 394
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 397
    .end local v6    # "i":I
    :cond_6
    nop

    .end local v5    # "c":C
    add-int/lit8 v3, v3, 0x1

    .line 398
    goto/16 :goto_0

    .line 399
    .end local v4    # "outputByte":[B
    :cond_7
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 401
    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 399
    return-object v4

    .line 401
    :catchall_0
    move-exception v4

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 402
    throw v4
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 3
    .param p1, "c"    # C

    .line 263
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 264
    .local v0, "encodedBytes":[B
    invoke-virtual {p0, p1, v0}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeSingle(C[B)I

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-virtual {p0, p1}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeDouble(C)I

    move-result v1

    const v2, 0xfffd

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 264
    :goto_1
    return v1
.end method

.method protected encodeDouble(C)I
    .locals 3
    .param p1, "ch"    # C

    .line 282
    iget-object v0, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->enc0208:Lj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v0, p1}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    .line 283
    .local v0, "b":I
    const v1, 0xfffd

    if-eq v0, v1, :cond_0

    .line 284
    const v1, 0x8080

    add-int/2addr v1, v0

    return v1

    .line 285
    :cond_0
    iget-object v2, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->enc0212:Lj$/sun/nio/cs/DoubleByte$Encoder;

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->enc0212:Lj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v2, p1}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    .line 287
    if-eq v0, v1, :cond_1

    .line 288
    const v1, 0x8f8080

    add-int/2addr v0, v1

    .line 290
    :cond_1
    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 408
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected encodeSingle(C[B)I
    .locals 4
    .param p1, "inputChar"    # C
    .param p2, "outputByte"    # [B

    .line 269
    iget-object v0, p0, Lj$/sun/nio/cs/EUC_JP$Encoder;->enc0201:Lj$/sun/nio/cs/SingleByte$Encoder;

    invoke-virtual {v0, p1}, Lj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v0

    .line 270
    .local v0, "b":I
    const v1, 0xfffd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 271
    return v2

    .line 272
    :cond_0
    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const/16 v3, 0x80

    if-ge v0, v3, :cond_1

    .line 273
    int-to-byte v3, v0

    aput-byte v3, p2, v2

    .line 274
    return v1

    .line 276
    :cond_1
    const/16 v3, -0x72

    aput-byte v3, p2, v2

    .line 277
    int-to-byte v2, v0

    aput-byte v2, p2, v1

    .line 278
    const/4 v1, 0x2

    return v1
.end method
