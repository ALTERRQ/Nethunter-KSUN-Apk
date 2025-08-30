.class Lj$/sun/nio/cs/GB18030$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "GB18030.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/GB18030;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final REPLACE_CHAR:C = '\ufffd'


# instance fields
.field private currentState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12292
    const-class v0, Lj$/sun/nio/cs/GB18030;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 12298
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 12295
    const/4 v0, 0x2

    iput v0, p0, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    .line 12299
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/GB18030$Decoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/GB18030$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 21
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 12332
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 12333
    .local v4, "sa":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    .line 12334
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 12335
    .local v5, "sl":I
    nop

    .line 12336
    if-gt v0, v5, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    move v0, v6

    .line 12338
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    .line 12339
    .local v6, "da":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 12340
    .local v7, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    .line 12341
    .local v8, "dl":I
    nop

    .line 12342
    if-gt v7, v8, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    move v7, v9

    .line 12344
    const/4 v9, 0x1

    move v10, v9

    move v9, v7

    move v7, v0

    .line 12347
    .end local v0    # "sp":I
    .local v7, "sp":I
    .local v9, "dp":I
    .local v10, "inputSize":I
    :goto_2
    if-ge v7, v5, :cond_18

    .line 12348
    const/4 v0, 0x0

    .local v0, "byte1":I
    const/4 v11, 0x0

    .local v11, "byte2":I
    const/4 v12, 0x0

    .local v12, "byte3":I
    const/4 v13, 0x0

    .line 12350
    .local v13, "byte4":I
    :try_start_0
    aget-byte v14, v4, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/16 v15, 0xff

    and-int/lit16 v0, v14, 0xff

    .line 12351
    const/4 v10, 0x1

    .line 12353
    and-int/lit8 v14, v0, -0x80

    const/4 v15, 0x1

    if-nez v14, :cond_2

    .line 12354
    :try_start_1
    iput v15, v1, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    goto/16 :goto_4

    .line 12440
    .end local v0    # "byte1":I
    .end local v11    # "byte2":I
    .end local v12    # "byte3":I
    .end local v13    # "byte4":I
    :catchall_0
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    goto/16 :goto_8

    .line 12356
    .restart local v0    # "byte1":I
    .restart local v11    # "byte2":I
    .restart local v12    # "byte3":I
    .restart local v13    # "byte4":I
    :cond_2
    const/16 v14, 0x81

    if-lt v0, v14, :cond_17

    const/16 v14, 0xfe

    if-le v0, v14, :cond_3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    goto/16 :goto_7

    .line 12360
    :cond_3
    sub-int v14, v5, v7

    const/4 v15, 0x2

    if-ge v14, v15, :cond_4

    .line 12361
    sget-object v14, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 12361
    return-object v14

    .line 12362
    :cond_4
    add-int/lit8 v14, v7, 0x1

    :try_start_2
    aget-byte v14, v4, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/16 v15, 0xff

    and-int/lit16 v11, v14, 0xff

    .line 12363
    const/4 v10, 0x2

    .line 12365
    const/16 v14, 0x30

    if-ge v11, v14, :cond_5

    .line 12366
    const/4 v14, 0x1

    :try_start_3
    invoke-static {v14}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 12366
    return-object v14

    .line 12367
    :cond_5
    const/16 v14, 0x30

    if-lt v11, v14, :cond_a

    const/16 v14, 0x39

    if-gt v11, v14, :cond_a

    .line 12368
    const/4 v15, 0x3

    :try_start_4
    iput v15, v1, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    .line 12370
    sub-int v15, v5, v7

    const/4 v14, 0x4

    if-ge v15, v14, :cond_6

    .line 12371
    sget-object v14, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 12371
    return-object v14

    .line 12373
    :cond_6
    add-int/lit8 v14, v7, 0x2

    :try_start_5
    aget-byte v14, v4, v14

    const/16 v15, 0xff

    and-int/lit16 v12, v14, 0xff

    .line 12374
    const/16 v14, 0x81

    if-lt v12, v14, :cond_9

    const/16 v14, 0xfe

    if-le v12, v14, :cond_7

    goto :goto_3

    .line 12377
    :cond_7
    add-int/lit8 v14, v7, 0x3

    aget-byte v14, v4, v14

    const/16 v15, 0xff

    and-int/lit16 v13, v14, 0xff

    .line 12378
    const/4 v10, 0x4

    .line 12380
    const/16 v14, 0x30

    if-lt v13, v14, :cond_8

    const/16 v14, 0x39

    if-le v13, v14, :cond_c

    .line 12381
    :cond_8
    const/4 v14, 0x4

    invoke-static {v14}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 12381
    return-object v14

    .line 12375
    :cond_9
    :goto_3
    const/4 v14, 0x3

    :try_start_6
    invoke-static {v14}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 12375
    return-object v14

    .line 12383
    :cond_a
    const/16 v14, 0x7f

    if-eq v11, v14, :cond_16

    const/16 v14, 0xff

    if-eq v11, v14, :cond_16

    const/16 v14, 0x40

    if-ge v11, v14, :cond_b

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    goto/16 :goto_6

    .line 12388
    :cond_b
    const/4 v14, 0x2

    :try_start_7
    iput v14, v1, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 12391
    :cond_c
    :goto_4
    sub-int v14, v8, v9

    const/4 v15, 0x1

    if-ge v14, v15, :cond_d

    .line 12392
    :try_start_8
    sget-object v14, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 12392
    return-object v14

    .line 12393
    :cond_d
    :try_start_9
    iget v14, v1, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    packed-switch v14, :pswitch_data_0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    .end local v4    # "sa":[B
    .end local v5    # "sl":I
    .end local v8    # "dl":I
    .local v17, "dl":I
    .local v18, "sa":[B
    .local v19, "sl":I
    goto/16 :goto_5

    .line 12401
    .end local v17    # "dl":I
    .end local v18    # "sa":[B
    .end local v19    # "sl":I
    .restart local v4    # "sa":[B
    .restart local v5    # "sl":I
    .restart local v8    # "dl":I
    :pswitch_0
    add-int/lit16 v14, v0, -0x81

    mul-int/lit8 v14, v14, 0xa

    add-int/lit8 v15, v11, -0x30

    add-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0x7e

    add-int/2addr v14, v12

    const/16 v15, 0x81

    sub-int/2addr v14, v15

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v13

    const/16 v15, 0x30

    sub-int/2addr v14, v15

    .line 12404
    .local v14, "offset":I
    shr-int/lit8 v15, v14, 0x8

    move-object/from16 v18, v4

    const/16 v4, 0xff

    .end local v4    # "sa":[B
    .restart local v18    # "sa":[B
    and-int/2addr v4, v15

    .line 12405
    .local v4, "hiByte":I
    and-int/lit16 v15, v14, 0xff

    .line 12411
    .local v15, "lowByte":I
    move/from16 v16, v4

    .end local v4    # "hiByte":I
    .local v16, "hiByte":I
    const/16 v4, 0x4a62

    if-gt v14, v4, :cond_e

    .line 12412
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .local v4, "dp":I
    :try_start_a
    invoke-direct {v1, v14}, Lj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v17

    aput-char v17, v6, v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v9, v4

    move/from16 v19, v5

    move/from16 v17, v8

    goto/16 :goto_5

    .line 12440
    .end local v0    # "byte1":I
    .end local v11    # "byte2":I
    .end local v12    # "byte3":I
    .end local v13    # "byte4":I
    .end local v14    # "offset":I
    .end local v15    # "lowByte":I
    .end local v16    # "hiByte":I
    :catchall_1
    move-exception v0

    move v9, v4

    move/from16 v19, v5

    move/from16 v17, v8

    goto/16 :goto_8

    .line 12413
    .end local v4    # "dp":I
    .restart local v0    # "byte1":I
    .restart local v9    # "dp":I
    .restart local v11    # "byte2":I
    .restart local v12    # "byte3":I
    .restart local v13    # "byte4":I
    .restart local v14    # "offset":I
    .restart local v15    # "lowByte":I
    .restart local v16    # "hiByte":I
    :cond_e
    if-le v14, v4, :cond_f

    const v4, 0x82bc

    if-gt v14, v4, :cond_f

    .line 12414
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    move/from16 v17, v4

    .end local v4    # "dp":I
    .local v17, "dp":I
    add-int/lit16 v4, v14, 0x5543

    int-to-char v4, v4

    :try_start_b
    aput-char v4, v6, v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v19, v5

    move/from16 v9, v17

    move/from16 v17, v8

    goto/16 :goto_5

    .line 12440
    .end local v0    # "byte1":I
    .end local v11    # "byte2":I
    .end local v12    # "byte3":I
    .end local v13    # "byte4":I
    .end local v14    # "offset":I
    .end local v15    # "lowByte":I
    .end local v16    # "hiByte":I
    :catchall_2
    move-exception v0

    move/from16 v19, v5

    move/from16 v9, v17

    move/from16 v17, v8

    goto/16 :goto_8

    .line 12415
    .end local v17    # "dp":I
    .restart local v0    # "byte1":I
    .restart local v9    # "dp":I
    .restart local v11    # "byte2":I
    .restart local v12    # "byte3":I
    .restart local v13    # "byte4":I
    .restart local v14    # "offset":I
    .restart local v15    # "lowByte":I
    .restart local v16    # "hiByte":I
    :cond_f
    const v4, 0x82bd

    move/from16 v19, v5

    .end local v5    # "sl":I
    .restart local v19    # "sl":I
    const v5, 0x830d

    if-lt v14, v4, :cond_10

    if-gt v14, v5, :cond_10

    .line 12416
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    :try_start_c
    invoke-direct {v1, v14}, Lj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v5

    aput-char v5, v6, v9

    move v9, v4

    move/from16 v17, v8

    goto/16 :goto_5

    .line 12440
    .end local v0    # "byte1":I
    .end local v11    # "byte2":I
    .end local v12    # "byte3":I
    .end local v13    # "byte4":I
    .end local v14    # "offset":I
    .end local v15    # "lowByte":I
    .end local v16    # "hiByte":I
    :catchall_3
    move-exception v0

    move v9, v4

    move/from16 v17, v8

    goto/16 :goto_8

    .line 12417
    .end local v4    # "dp":I
    .restart local v0    # "byte1":I
    .restart local v9    # "dp":I
    .restart local v11    # "byte2":I
    .restart local v12    # "byte3":I
    .restart local v13    # "byte4":I
    .restart local v14    # "offset":I
    .restart local v15    # "lowByte":I
    .restart local v16    # "hiByte":I
    :cond_10
    if-lt v14, v5, :cond_11

    const v4, 0x93a8

    if-gt v14, v4, :cond_11

    .line 12418
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    add-int/lit16 v5, v14, 0x6557

    int-to-char v5, v5

    aput-char v5, v6, v9

    move v9, v4

    move/from16 v17, v8

    goto/16 :goto_5

    .line 12419
    .end local v4    # "dp":I
    .restart local v9    # "dp":I
    :cond_11
    const v4, 0x93a9

    if-lt v14, v4, :cond_12

    const v4, 0x99fb

    if-gt v14, v4, :cond_12

    .line 12420
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    invoke-direct {v1, v14}, Lj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v5

    aput-char v5, v6, v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move v9, v4

    move/from16 v17, v8

    goto/16 :goto_5

    .line 12422
    .end local v4    # "dp":I
    .restart local v9    # "dp":I
    :cond_12
    const v4, 0x2e248

    if-lt v14, v4, :cond_15

    const v4, 0x12e248

    if-ge v14, v4, :cond_15

    .line 12423
    if-lt v14, v4, :cond_13

    .line 12424
    const/4 v4, 0x4

    :try_start_d
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v7, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 12424
    return-object v4

    .line 12440
    .end local v0    # "byte1":I
    .end local v11    # "byte2":I
    .end local v12    # "byte3":I
    .end local v13    # "byte4":I
    .end local v14    # "offset":I
    .end local v15    # "lowByte":I
    .end local v16    # "hiByte":I
    :catchall_4
    move-exception v0

    move/from16 v17, v8

    goto/16 :goto_8

    .line 12425
    .restart local v0    # "byte1":I
    .restart local v11    # "byte2":I
    .restart local v12    # "byte3":I
    .restart local v13    # "byte4":I
    .restart local v14    # "offset":I
    .restart local v15    # "lowByte":I
    .restart local v16    # "hiByte":I
    :cond_13
    const v4, 0x1e248

    sub-int/2addr v14, v4

    .line 12426
    sub-int v4, v8, v9

    const/4 v5, 0x2

    if-ge v4, v5, :cond_14

    .line 12427
    :try_start_e
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v7, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 12427
    return-object v4

    .line 12429
    :cond_14
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    const/high16 v5, 0x10000

    move/from16 v17, v8

    .end local v8    # "dl":I
    .local v17, "dl":I
    sub-int v8, v14, v5

    :try_start_f
    div-int/lit16 v8, v8, 0x400

    const v20, 0xd800

    add-int v8, v8, v20

    int-to-char v8, v8

    aput-char v8, v6, v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 12430
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .restart local v9    # "dp":I
    sub-int v5, v14, v5

    :try_start_10
    rem-int/lit16 v5, v5, 0x400

    const v8, 0xdc00

    add-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v6, v4

    goto :goto_5

    .line 12422
    .end local v17    # "dl":I
    .restart local v8    # "dl":I
    :cond_15
    move/from16 v17, v8

    .line 12433
    .end local v8    # "dl":I
    .restart local v17    # "dl":I
    invoke-static {v10}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v7, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 12433
    return-object v4

    .line 12398
    .end local v14    # "offset":I
    .end local v15    # "lowByte":I
    .end local v16    # "hiByte":I
    .end local v17    # "dl":I
    .end local v18    # "sa":[B
    .end local v19    # "sl":I
    .local v4, "sa":[B
    .restart local v5    # "sl":I
    .restart local v8    # "dl":I
    :pswitch_1
    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    .end local v4    # "sa":[B
    .end local v5    # "sl":I
    .end local v8    # "dl":I
    .restart local v17    # "dl":I
    .restart local v18    # "sa":[B
    .restart local v19    # "sl":I
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .local v4, "dp":I
    :try_start_11
    invoke-virtual {v1, v0, v11}, Lj$/sun/nio/cs/GB18030$Decoder;->decodeDouble(II)C

    move-result v5

    aput-char v5, v6, v9

    .line 12399
    move v9, v4

    goto :goto_5

    .line 12395
    .end local v17    # "dl":I
    .end local v18    # "sa":[B
    .end local v19    # "sl":I
    .local v4, "sa":[B
    .restart local v5    # "sl":I
    .restart local v8    # "dl":I
    .restart local v9    # "dp":I
    :pswitch_2
    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    .end local v4    # "sa":[B
    .end local v5    # "sl":I
    .end local v8    # "dl":I
    .restart local v17    # "dl":I
    .restart local v18    # "sa":[B
    .restart local v19    # "sl":I
    add-int/lit8 v4, v9, 0x1

    .end local v9    # "dp":I
    .local v4, "dp":I
    int-to-char v5, v0

    aput-char v5, v6, v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 12396
    move v9, v4

    goto :goto_5

    .line 12440
    .end local v0    # "byte1":I
    .end local v11    # "byte2":I
    .end local v12    # "byte3":I
    .end local v13    # "byte4":I
    :catchall_5
    move-exception v0

    move v9, v4

    goto/16 :goto_8

    .line 12436
    .end local v4    # "dp":I
    .restart local v0    # "byte1":I
    .restart local v9    # "dp":I
    .restart local v11    # "byte2":I
    .restart local v12    # "byte3":I
    .restart local v13    # "byte4":I
    :goto_5
    add-int/2addr v7, v10

    .line 12437
    .end local v0    # "byte1":I
    .end local v11    # "byte2":I
    .end local v12    # "byte3":I
    .end local v13    # "byte4":I
    move/from16 v8, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    goto/16 :goto_2

    .line 12383
    .end local v17    # "dl":I
    .end local v18    # "sa":[B
    .end local v19    # "sl":I
    .restart local v0    # "byte1":I
    .local v4, "sa":[B
    .restart local v5    # "sl":I
    .restart local v8    # "dl":I
    .restart local v11    # "byte2":I
    .restart local v12    # "byte3":I
    .restart local v13    # "byte4":I
    :cond_16
    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    .line 12385
    .end local v4    # "sa":[B
    .end local v5    # "sl":I
    .end local v8    # "dl":I
    .restart local v17    # "dl":I
    .restart local v18    # "sa":[B
    .restart local v19    # "sl":I
    :goto_6
    const/4 v4, 0x2

    :try_start_12
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v7, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 12385
    return-object v4

    .line 12356
    .end local v17    # "dl":I
    .end local v18    # "sa":[B
    .end local v19    # "sl":I
    .restart local v4    # "sa":[B
    .restart local v5    # "sl":I
    .restart local v8    # "dl":I
    :cond_17
    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    .line 12357
    .end local v4    # "sa":[B
    .end local v5    # "sl":I
    .end local v8    # "dl":I
    .restart local v17    # "dl":I
    .restart local v18    # "sa":[B
    .restart local v19    # "sl":I
    :goto_7
    const/4 v4, 0x1

    :try_start_13
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v7, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v9, v5

    invoke-virtual {v3, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 12357
    return-object v4

    .line 12440
    .end local v0    # "byte1":I
    .end local v11    # "byte2":I
    .end local v12    # "byte3":I
    .end local v13    # "byte4":I
    .end local v17    # "dl":I
    .end local v18    # "sa":[B
    .end local v19    # "sl":I
    .restart local v4    # "sa":[B
    .restart local v5    # "sl":I
    .restart local v8    # "dl":I
    :catchall_6
    move-exception v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    .end local v4    # "sa":[B
    .end local v5    # "sl":I
    .end local v8    # "dl":I
    .restart local v17    # "dl":I
    .restart local v18    # "sa":[B
    .restart local v19    # "sl":I
    goto :goto_8

    .line 12438
    .end local v17    # "dl":I
    .end local v18    # "sa":[B
    .end local v19    # "sl":I
    .restart local v4    # "sa":[B
    .restart local v5    # "sl":I
    .restart local v8    # "dl":I
    :cond_18
    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v17, v8

    .end local v4    # "sa":[B
    .end local v5    # "sl":I
    .end local v8    # "dl":I
    .restart local v17    # "dl":I
    .restart local v18    # "sa":[B
    .restart local v19    # "sl":I
    :try_start_14
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 12440
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v9, v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 12438
    return-object v0

    .line 12440
    :catchall_7
    move-exception v0

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 12441
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v9, v4

    invoke-virtual {v3, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 12442
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 16
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 12448
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v4, v0

    .line 12451
    .local v4, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 12452
    const/4 v0, 0x0

    .local v0, "byte1":I
    const/4 v5, 0x0

    .local v5, "byte2":I
    const/4 v6, 0x0

    .local v6, "byte3":I
    const/4 v7, 0x0

    .line 12453
    .local v7, "byte4":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    const/16 v9, 0xff

    and-int/lit16 v0, v8, 0xff

    .line 12454
    const/4 v8, 0x1

    .line 12456
    .local v8, "inputSize":I
    and-int/lit8 v10, v0, -0x80

    const/4 v12, 0x2

    const/16 v13, 0x81

    const/16 v14, 0x30

    const/4 v15, 0x1

    if-nez v10, :cond_0

    .line 12457
    iput v15, v1, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    goto/16 :goto_2

    .line 12459
    :cond_0
    if-lt v0, v13, :cond_15

    const/16 v10, 0xfe

    if-le v0, v10, :cond_1

    goto/16 :goto_5

    .line 12463
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-ge v11, v15, :cond_2

    .line 12464
    sget-object v9, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 12464
    return-object v9

    .line 12465
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v5, v11, 0xff

    .line 12466
    const/4 v8, 0x2

    .line 12468
    if-ge v5, v14, :cond_3

    .line 12469
    invoke-static {v15}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 12469
    return-object v9

    .line 12470
    :cond_3
    if-lt v5, v14, :cond_8

    const/16 v11, 0x39

    if-gt v5, v11, :cond_8

    .line 12471
    const/4 v15, 0x3

    :try_start_2
    iput v15, v1, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    .line 12473
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    if-ge v15, v12, :cond_4

    .line 12474
    sget-object v9, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 12474
    return-object v9

    .line 12476
    :cond_4
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v6, v15, 0xff

    .line 12477
    if-lt v6, v13, :cond_7

    if-le v6, v10, :cond_5

    goto :goto_1

    .line 12480
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v7, v10, 0xff

    .line 12481
    const/4 v8, 0x4

    .line 12483
    if-lt v7, v14, :cond_6

    if-le v7, v11, :cond_a

    .line 12484
    :cond_6
    const/4 v9, 0x4

    invoke-static {v9}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 12484
    return-object v9

    .line 12478
    :cond_7
    :goto_1
    const/4 v9, 0x3

    :try_start_4
    invoke-static {v9}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 12478
    return-object v9

    .line 12486
    :cond_8
    const/16 v10, 0x7f

    if-eq v5, v10, :cond_14

    if-eq v5, v9, :cond_14

    const/16 v10, 0x40

    if-ge v5, v10, :cond_9

    goto/16 :goto_4

    .line 12491
    :cond_9
    :try_start_5
    iput v12, v1, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    .line 12494
    :cond_a
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_b

    .line 12495
    sget-object v9, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 12495
    return-object v9

    .line 12496
    :cond_b
    :try_start_6
    iget v10, v1, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 12504
    :pswitch_0
    add-int/lit16 v10, v0, -0x81

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v11, v5, -0x30

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x7e

    add-int/2addr v10, v6

    sub-int/2addr v10, v13

    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v7

    sub-int/2addr v10, v14

    .line 12507
    .local v10, "offset":I
    shr-int/lit8 v11, v10, 0x8

    and-int/2addr v9, v11

    .line 12508
    .local v9, "hiByte":I
    and-int/lit16 v11, v10, 0xff

    .line 12514
    .local v11, "lowByte":I
    const/16 v13, 0x4a62

    if-gt v10, v13, :cond_c

    .line 12515
    invoke-direct {v1, v10}, Lj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_3

    .line 12516
    :cond_c
    if-le v10, v13, :cond_d

    const v13, 0x82bc

    if-gt v10, v13, :cond_d

    .line 12517
    add-int/lit16 v12, v10, 0x5543

    int-to-char v12, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_3

    .line 12518
    :cond_d
    const v13, 0x82bd

    const v14, 0x830d

    if-lt v10, v13, :cond_e

    if-gt v10, v14, :cond_e

    .line 12519
    invoke-direct {v1, v10}, Lj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_3

    .line 12520
    :cond_e
    if-lt v10, v14, :cond_f

    const v13, 0x93a8

    if-gt v10, v13, :cond_f

    .line 12521
    add-int/lit16 v12, v10, 0x6557

    int-to-char v12, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_3

    .line 12522
    :cond_f
    const v13, 0x93a9

    if-lt v10, v13, :cond_10

    const v13, 0x99fb

    if-gt v10, v13, :cond_10

    .line 12523
    invoke-direct {v1, v10}, Lj$/sun/nio/cs/GB18030$Decoder;->getChar(I)C

    move-result v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_3

    .line 12525
    :cond_10
    const v13, 0x2e248

    if-lt v10, v13, :cond_13

    const v13, 0x12e248

    if-ge v10, v13, :cond_13

    .line 12526
    if-lt v10, v13, :cond_11

    .line 12527
    const/4 v12, 0x4

    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 12527
    return-object v12

    .line 12528
    :cond_11
    const v13, 0x1e248

    sub-int/2addr v10, v13

    .line 12529
    :try_start_7
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v13

    if-ge v13, v12, :cond_12

    .line 12530
    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 12530
    return-object v12

    .line 12532
    :cond_12
    const/high16 v12, 0x10000

    sub-int v13, v10, v12

    :try_start_8
    div-int/lit16 v13, v13, 0x400

    const v14, 0xd800

    add-int/2addr v13, v14

    int-to-char v13, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 12533
    sub-int v12, v10, v12

    rem-int/lit16 v12, v12, 0x400

    const v13, 0xdc00

    add-int/2addr v12, v13

    int-to-char v12, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_3

    .line 12535
    :cond_13
    invoke-static {v8}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 12535
    return-object v12

    .line 12501
    .end local v9    # "hiByte":I
    .end local v10    # "offset":I
    .end local v11    # "lowByte":I
    :pswitch_1
    :try_start_9
    invoke-virtual {v1, v0, v5}, Lj$/sun/nio/cs/GB18030$Decoder;->decodeDouble(II)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 12502
    goto :goto_3

    .line 12498
    :pswitch_2
    int-to-char v9, v0

    invoke-virtual {v3, v9}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 12499
    nop

    .line 12538
    :goto_3
    add-int/2addr v4, v8

    .line 12539
    .end local v0    # "byte1":I
    .end local v5    # "byte2":I
    .end local v6    # "byte3":I
    .end local v7    # "byte4":I
    .end local v8    # "inputSize":I
    goto/16 :goto_0

    .line 12488
    .restart local v0    # "byte1":I
    .restart local v5    # "byte2":I
    .restart local v6    # "byte3":I
    .restart local v7    # "byte4":I
    .restart local v8    # "inputSize":I
    :cond_14
    :goto_4
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 12488
    return-object v9

    .line 12460
    :cond_15
    :goto_5
    const/4 v9, 0x1

    :try_start_a
    invoke-static {v9}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 12460
    return-object v9

    .line 12540
    .end local v0    # "byte1":I
    .end local v5    # "byte2":I
    .end local v6    # "byte3":I
    .end local v7    # "byte4":I
    .end local v8    # "inputSize":I
    :cond_16
    :try_start_b
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 12542
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 12540
    return-object v0

    .line 12542
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 12543
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getChar(I)C
    .locals 7
    .param p1, "offset"    # I

    .line 12302
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 12303
    .local v0, "byte1":I
    and-int/lit16 v1, p1, 0xff

    .line 12304
    .local v1, "byte2":I
    const/4 v2, 0x0

    .local v2, "start":I
    const/16 v3, 0xff

    .line 12306
    .local v3, "end":I
    if-ltz v0, :cond_1

    invoke-static {}, Lj$/sun/nio/cs/GB18030;->-$$Nest$sfgetdecoderIndex1()[S

    move-result-object v4

    array-length v4, v4

    if-gt v0, v4, :cond_1

    if-lt v1, v2, :cond_1

    if-le v1, v3, :cond_0

    goto :goto_0

    .line 12311
    :cond_0
    invoke-static {}, Lj$/sun/nio/cs/GB18030;->-$$Nest$sfgetdecoderIndex1()[S

    move-result-object v4

    aget-short v4, v4, v0

    and-int/lit8 v4, v4, 0xf

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    mul-int v4, v4, v5

    sub-int v5, v1, v2

    add-int/2addr v4, v5

    .line 12312
    .local v4, "n":I
    sget-object v5, Lj$/sun/nio/cs/GB18030;->decoderIndex2:[Ljava/lang/String;

    invoke-static {}, Lj$/sun/nio/cs/GB18030;->-$$Nest$sfgetdecoderIndex1()[S

    move-result-object v6

    aget-short v6, v6, v0

    shr-int/lit8 v6, v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    return v5

    .line 12308
    .end local v4    # "n":I
    :cond_1
    :goto_0
    const v4, 0xfffd

    return v4
.end method


# virtual methods
.method protected decodeDouble(II)C
    .locals 5
    .param p1, "byte1"    # I
    .param p2, "byte2"    # I

    .line 12316
    const/16 v0, 0x40

    .local v0, "start":I
    const/16 v1, 0xfe

    .line 12317
    .local v1, "end":I
    if-ltz p1, :cond_1

    sget-object v2, Lj$/sun/nio/cs/GB18030;->index1:[S

    array-length v2, v2

    if-gt p1, v2, :cond_1

    if-lt p2, v0, :cond_1

    if-le p2, v1, :cond_0

    goto :goto_0

    .line 12321
    :cond_0
    sget-object v2, Lj$/sun/nio/cs/GB18030;->index1:[S

    aget-short v2, v2, p1

    and-int/lit8 v2, v2, 0xf

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    mul-int v2, v2, v3

    sub-int v3, p2, v0

    add-int/2addr v2, v3

    .line 12322
    .local v2, "n":I
    sget-object v3, Lj$/sun/nio/cs/GB18030;->index2:[Ljava/lang/String;

    sget-object v4, Lj$/sun/nio/cs/GB18030;->index1:[S

    aget-short v4, v4, p1

    shr-int/lit8 v4, v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    return v3

    .line 12319
    .end local v2    # "n":I
    :cond_1
    :goto_0
    const v2, 0xfffd

    return v2
.end method

.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 12550
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12551
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/GB18030$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 12553
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/GB18030$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReset()V
    .locals 1

    .line 12326
    const/4 v0, 0x2

    iput v0, p0, Lj$/sun/nio/cs/GB18030$Decoder;->currentState:I

    .line 12327
    return-void
.end method
