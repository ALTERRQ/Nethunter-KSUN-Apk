.class Lj$/sun/nio/cs/GB18030$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "GB18030.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/GB18030;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currentState:I

.field private final sgp:Lj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12557
    const-class v0, Lj$/sun/nio/cs/GB18030;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 12562
    const/high16 v0, 0x40800000    # 4.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 12559
    const/4 v0, 0x2

    iput v0, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    .line 12569
    new-instance v0, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Lj$/sun/nio/cs/GB18030$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 12563
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/GB18030$Encoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/GB18030$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 20
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 12585
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    .line 12586
    .local v4, "sa":[C
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    .line 12587
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 12588
    .local v5, "sl":I
    nop

    .line 12589
    if-gt v0, v5, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    move v0, v6

    .line 12590
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    .line 12591
    .local v6, "da":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 12592
    .local v7, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    .line 12593
    .local v8, "dl":I
    nop

    .line 12594
    if-gt v7, v8, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    move v7, v9

    .line 12596
    const/4 v9, 0x0

    .line 12597
    .local v9, "condensedKey":I
    const/4 v10, 0x0

    .local v10, "hiByte":I
    const/4 v11, 0x0

    .line 12598
    .local v11, "loByte":I
    const/4 v12, 0x2

    iput v12, v1, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    move v13, v11

    move v11, v10

    move v10, v9

    move v9, v7

    move v7, v0

    .line 12601
    .end local v0    # "sp":I
    .local v7, "sp":I
    .local v9, "dp":I
    .local v10, "condensedKey":I
    .local v11, "hiByte":I
    .local v13, "loByte":I
    :goto_2
    if-ge v7, v5, :cond_f

    .line 12602
    const/4 v0, 0x1

    .line 12603
    .local v0, "inputSize":I
    :try_start_0
    aget-char v14, v4, v7

    .line 12605
    .local v14, "c":C
    invoke-static {v14}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v12, 0x1

    if-eqz v15, :cond_3

    .line 12606
    :try_start_1
    iget-object v15, v1, Lj$/sun/nio/cs/GB18030$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v15, v14, v4, v7, v5}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v15

    move v10, v15

    if-gez v15, :cond_2

    .line 12607
    iget-object v12, v1, Lj$/sun/nio/cs/GB18030$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v12}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12683
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 12684
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 12607
    return-object v12

    .line 12611
    :cond_2
    const v15, 0x1e248

    add-int/2addr v10, v15

    .line 12612
    const/4 v15, 0x3

    :try_start_2
    iput v15, v1, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    .line 12613
    iget-object v15, v1, Lj$/sun/nio/cs/GB18030$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v15}, Lj$/sun/nio/cs/Surrogate$Parser;->increment()I

    move-result v15

    move v0, v15

    goto/16 :goto_6

    .line 12683
    .end local v0    # "inputSize":I
    .end local v14    # "c":C
    :catchall_0
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_8

    .line 12615
    .restart local v0    # "inputSize":I
    .restart local v14    # "c":C
    :cond_3
    if-ltz v14, :cond_4

    const/16 v15, 0x7f

    if-gt v14, v15, :cond_4

    .line 12616
    iput v12, v1, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto/16 :goto_6

    .line 12618
    :cond_4
    const v15, 0xa4c6

    const v12, 0xe000

    if-le v14, v15, :cond_6

    if-lt v14, v12, :cond_5

    goto :goto_3

    .line 12640
    :cond_5
    const v12, 0xa4c7

    if-lt v14, v12, :cond_b

    const v12, 0xd7ff

    if-gt v14, v12, :cond_b

    .line 12641
    add-int/lit16 v10, v14, -0x5543

    .line 12642
    const/4 v12, 0x3

    iput v12, v1, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 12619
    :cond_6
    :goto_3
    :try_start_3
    invoke-static {}, Lj$/sun/nio/cs/GB18030;->-$$Nest$sfgetencoderIndex1()[S

    move-result-object v15

    sget-object v12, Lj$/sun/nio/cs/GB18030;->encoderIndex2:[Ljava/lang/String;

    invoke-direct {v1, v15, v12, v14}, Lj$/sun/nio/cs/GB18030$Encoder;->getGB18030([S[Ljava/lang/String;C)I

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 12622
    .local v12, "outByteVal":I
    const v15, 0xfffd

    if-ne v12, v15, :cond_7

    .line 12623
    const/4 v15, 0x1

    :try_start_4
    invoke-static {v15}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12683
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v16

    move/from16 v19, v0

    .end local v0    # "inputSize":I
    .local v19, "inputSize":I
    sub-int v0, v7, v16

    invoke-virtual {v2, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 12684
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 12623
    return-object v15

    .line 12625
    .end local v19    # "inputSize":I
    .restart local v0    # "inputSize":I
    :cond_7
    move/from16 v19, v0

    .end local v0    # "inputSize":I
    .restart local v19    # "inputSize":I
    const v0, 0xff00

    and-int/2addr v0, v12

    shr-int/lit8 v11, v0, 0x8

    .line 12626
    and-int/lit16 v13, v12, 0xff

    .line 12628
    add-int/lit8 v0, v11, -0x20

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v13

    .line 12630
    .end local v10    # "condensedKey":I
    .local v0, "condensedKey":I
    const v10, 0xf900

    const v15, 0xe000

    if-lt v14, v15, :cond_8

    if-ge v14, v10, :cond_8

    .line 12631
    const v10, 0x82bd

    add-int/2addr v0, v10

    move v10, v0

    goto :goto_4

    .line 12632
    :cond_8
    if-lt v14, v10, :cond_9

    .line 12633
    const v10, 0x93a9

    add-int/2addr v0, v10

    move v10, v0

    goto :goto_4

    .line 12632
    :cond_9
    move v10, v0

    .line 12635
    .end local v0    # "condensedKey":I
    .restart local v10    # "condensedKey":I
    :goto_4
    const/16 v0, 0x80

    if-le v11, v0, :cond_a

    .line 12636
    const/4 v0, 0x2

    :try_start_5
    iput v0, v1, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 12638
    :cond_a
    const/4 v0, 0x3

    :try_start_6
    iput v0, v1, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    .line 12639
    .end local v12    # "outByteVal":I
    :goto_5
    move/from16 v0, v19

    .line 12645
    .end local v19    # "inputSize":I
    .local v0, "inputSize":I
    :cond_b
    :goto_6
    iget v12, v1, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    packed-switch v12, :pswitch_data_0

    .line 12677
    move-object/from16 v17, v4

    const/4 v4, 0x2

    .end local v4    # "sa":[C
    .local v17, "sa":[C
    goto/16 :goto_7

    .line 12662
    .end local v17    # "sa":[C
    .restart local v4    # "sa":[C
    :pswitch_0
    sub-int v12, v8, v9

    const/4 v15, 0x4

    if-ge v12, v15, :cond_c

    .line 12663
    :try_start_7
    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 12683
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 12684
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 12663
    return-object v12

    .line 12665
    :cond_c
    :try_start_8
    rem-int/lit8 v12, v10, 0xa

    add-int/lit8 v12, v12, 0x30

    int-to-byte v12, v12

    .line 12666
    .local v12, "b4":B
    div-int/lit8 v15, v10, 0xa

    move v10, v15

    .line 12667
    rem-int/lit8 v15, v10, 0x7e

    add-int/lit16 v15, v15, 0x81

    int-to-byte v15, v15

    .line 12668
    .local v15, "b3":B
    div-int/lit8 v17, v10, 0x7e

    move/from16 v10, v17

    .line 12669
    rem-int/lit8 v17, v10, 0xa
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    add-int/lit8 v1, v17, 0x30

    int-to-byte v1, v1

    .line 12670
    .local v1, "b2":B
    move-object/from16 v17, v4

    .end local v4    # "sa":[C
    .restart local v17    # "sa":[C
    :try_start_9
    div-int/lit8 v4, v10, 0xa
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    add-int/lit16 v4, v4, 0x81

    int-to-byte v4, v4

    .line 12671
    .local v4, "b1":B
    add-int/lit8 v18, v9, 0x1

    .end local v9    # "dp":I
    .local v18, "dp":I
    :try_start_a
    aput-byte v4, v6, v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 12672
    add-int/lit8 v9, v18, 0x1

    .end local v18    # "dp":I
    .restart local v9    # "dp":I
    :try_start_b
    aput-byte v1, v6, v18
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 12673
    add-int/lit8 v18, v9, 0x1

    .end local v9    # "dp":I
    .restart local v18    # "dp":I
    :try_start_c
    aput-byte v15, v6, v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 12674
    add-int/lit8 v9, v18, 0x1

    .end local v18    # "dp":I
    .restart local v9    # "dp":I
    :try_start_d
    aput-byte v12, v6, v18

    .line 12675
    const/4 v4, 0x2

    goto :goto_7

    .line 12683
    .end local v0    # "inputSize":I
    .end local v1    # "b2":B
    .end local v4    # "b1":B
    .end local v9    # "dp":I
    .end local v12    # "b4":B
    .end local v14    # "c":C
    .end local v15    # "b3":B
    .restart local v18    # "dp":I
    :catchall_1
    move-exception v0

    move/from16 v9, v18

    goto/16 :goto_8

    .line 12653
    .end local v17    # "sa":[C
    .end local v18    # "dp":I
    .restart local v0    # "inputSize":I
    .local v4, "sa":[C
    .restart local v9    # "dp":I
    .restart local v14    # "c":C
    :pswitch_1
    move-object/from16 v17, v4

    .end local v4    # "sa":[C
    .restart local v17    # "sa":[C
    sub-int v1, v8, v9

    const/4 v4, 0x2

    if-ge v1, v4, :cond_d

    .line 12654
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 12683
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v2, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 12684
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v9, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 12654
    return-object v1

    .line 12655
    :cond_d
    add-int/lit8 v1, v9, 0x1

    .end local v9    # "dp":I
    .local v1, "dp":I
    int-to-byte v12, v11

    :try_start_e
    aput-byte v12, v6, v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 12656
    add-int/lit8 v9, v1, 0x1

    .end local v1    # "dp":I
    .restart local v9    # "dp":I
    int-to-byte v12, v13

    :try_start_f
    aput-byte v12, v6, v1

    .line 12657
    goto :goto_7

    .line 12647
    .end local v17    # "sa":[C
    .restart local v4    # "sa":[C
    :pswitch_2
    move-object/from16 v17, v4

    const/4 v4, 0x2

    .end local v4    # "sa":[C
    .restart local v17    # "sa":[C
    sub-int v1, v8, v9

    const/4 v12, 0x1

    if-ge v1, v12, :cond_e

    .line 12648
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 12683
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v2, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 12684
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    sub-int v4, v9, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 12648
    return-object v1

    .line 12649
    :cond_e
    add-int/lit8 v1, v9, 0x1

    .end local v9    # "dp":I
    .restart local v1    # "dp":I
    int-to-byte v12, v14

    :try_start_10
    aput-byte v12, v6, v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 12650
    move v9, v1

    goto :goto_7

    .line 12683
    .end local v0    # "inputSize":I
    .end local v14    # "c":C
    :catchall_2
    move-exception v0

    move v9, v1

    goto :goto_8

    .line 12679
    .end local v1    # "dp":I
    .restart local v0    # "inputSize":I
    .restart local v9    # "dp":I
    .restart local v14    # "c":C
    :goto_7
    add-int/2addr v7, v0

    .line 12680
    .end local v0    # "inputSize":I
    .end local v14    # "c":C
    const/4 v12, 0x2

    move-object/from16 v1, p0

    move-object/from16 v4, v17

    goto/16 :goto_2

    .line 12683
    .end local v17    # "sa":[C
    .restart local v4    # "sa":[C
    :catchall_3
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "sa":[C
    .restart local v17    # "sa":[C
    goto :goto_8

    .line 12681
    .end local v17    # "sa":[C
    .restart local v4    # "sa":[C
    :cond_f
    move-object/from16 v17, v4

    .end local v4    # "sa":[C
    .restart local v17    # "sa":[C
    :try_start_11
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 12683
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v7, v1

    invoke-virtual {v2, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 12684
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v9, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 12681
    return-object v0

    .line 12683
    :catchall_4
    move-exception v0

    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v7, v1

    invoke-virtual {v2, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 12684
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    sub-int v1, v9, v1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 12685
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 12
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 12691
    const/4 v0, 0x0

    .line 12692
    .local v0, "condensedKey":I
    const/4 v1, 0x0

    .local v1, "hiByte":I
    const/4 v2, 0x0

    .line 12693
    .local v2, "loByte":I
    const/4 v3, 0x2

    iput v3, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    .line 12694
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 12696
    .local v4, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 12697
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v5

    .line 12698
    .local v5, "c":C
    const/4 v6, 0x1

    .line 12699
    .local v6, "inputSize":I
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    .line 12700
    iget-object v7, p0, Lj$/sun/nio/cs/GB18030$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v7, v5, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v7

    move v0, v7

    if-gez v7, :cond_0

    .line 12701
    iget-object v3, p0, Lj$/sun/nio/cs/GB18030$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12767
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 12701
    return-object v3

    .line 12702
    :cond_0
    const v7, 0x1e248

    add-int/2addr v0, v7

    .line 12703
    :try_start_1
    iput v8, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    .line 12704
    const/4 v6, 0x2

    goto/16 :goto_4

    .line 12706
    :cond_1
    if-ltz v5, :cond_2

    const/16 v7, 0x7f

    if-gt v5, v7, :cond_2

    .line 12707
    iput v9, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto :goto_4

    .line 12709
    :cond_2
    const v7, 0xa4c6

    const v10, 0xe000

    if-le v5, v7, :cond_4

    if-lt v5, v10, :cond_3

    goto :goto_1

    .line 12731
    :cond_3
    const v7, 0xa4c7

    if-lt v5, v7, :cond_9

    const v7, 0xd7ff

    if-gt v5, v7, :cond_9

    .line 12732
    add-int/lit16 v0, v5, -0x5543

    .line 12733
    iput v8, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto :goto_4

    .line 12710
    :cond_4
    :goto_1
    invoke-static {}, Lj$/sun/nio/cs/GB18030;->-$$Nest$sfgetencoderIndex1()[S

    move-result-object v7

    sget-object v11, Lj$/sun/nio/cs/GB18030;->encoderIndex2:[Ljava/lang/String;

    invoke-direct {p0, v7, v11, v5}, Lj$/sun/nio/cs/GB18030$Encoder;->getGB18030([S[Ljava/lang/String;C)I

    move-result v7

    .line 12713
    .local v7, "outByteVal":I
    const v11, 0xfffd

    if-ne v7, v11, :cond_5

    .line 12714
    invoke-static {v9}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12767
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/CharBuffer;

    .line 12714
    return-object v3

    .line 12716
    :cond_5
    const v11, 0xff00

    and-int/2addr v11, v7

    shr-int/lit8 v1, v11, 0x8

    .line 12717
    and-int/lit16 v2, v7, 0xff

    .line 12719
    add-int/lit8 v11, v1, -0x20

    mul-int/lit16 v11, v11, 0x100

    add-int/2addr v11, v2

    .line 12721
    .end local v0    # "condensedKey":I
    .local v11, "condensedKey":I
    const v0, 0xf900

    if-lt v5, v10, :cond_6

    if-ge v5, v0, :cond_6

    .line 12722
    const v0, 0x82bd

    add-int/2addr v11, v0

    move v0, v11

    goto :goto_2

    .line 12723
    :cond_6
    if-lt v5, v0, :cond_7

    .line 12724
    const v0, 0x93a9

    add-int/2addr v11, v0

    move v0, v11

    goto :goto_2

    .line 12723
    :cond_7
    move v0, v11

    .line 12726
    .end local v11    # "condensedKey":I
    .restart local v0    # "condensedKey":I
    :goto_2
    const/16 v10, 0x80

    if-le v1, v10, :cond_8

    .line 12727
    :try_start_2
    iput v3, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    goto :goto_3

    .line 12729
    :cond_8
    iput v8, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    .line 12730
    .end local v7    # "outByteVal":I
    :goto_3
    nop

    .line 12736
    :cond_9
    :goto_4
    iget v7, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    if-ne v7, v9, :cond_b

    .line 12737
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v9, :cond_a

    .line 12738
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12767
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 12738
    return-object v3

    .line 12739
    :cond_a
    int-to-byte v7, v5

    :try_start_3
    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 12740
    :cond_b
    iget v7, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    if-ne v7, v3, :cond_d

    .line 12741
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v3, :cond_c

    .line 12742
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 12767
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 12742
    return-object v3

    .line 12743
    :cond_c
    int-to-byte v7, v1

    :try_start_4
    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12744
    int-to-byte v7, v2

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 12749
    :cond_d
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_e

    .line 12750
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12767
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 12750
    return-object v3

    .line 12752
    :cond_e
    :try_start_5
    rem-int/lit8 v7, v0, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    .line 12753
    .local v7, "b4":B
    div-int/lit8 v8, v0, 0xa

    move v0, v8

    .line 12754
    rem-int/lit8 v8, v0, 0x7e

    add-int/lit16 v8, v8, 0x81

    int-to-byte v8, v8

    .line 12755
    .local v8, "b3":B
    div-int/lit8 v9, v0, 0x7e

    move v0, v9

    .line 12756
    rem-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, 0x30

    int-to-byte v9, v9

    .line 12757
    .local v9, "b2":B
    div-int/lit8 v10, v0, 0xa

    add-int/lit16 v10, v10, 0x81

    int-to-byte v10, v10

    .line 12758
    .local v10, "b1":B
    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12759
    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12760
    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12761
    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 12763
    .end local v7    # "b4":B
    .end local v8    # "b3":B
    .end local v9    # "b2":B
    .end local v10    # "b1":B
    :goto_5
    add-int/2addr v4, v6

    .line 12764
    .end local v5    # "c":C
    .end local v6    # "inputSize":I
    goto/16 :goto_0

    .line 12765
    :cond_f
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 12767
    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 12765
    return-object v3

    .line 12767
    :catchall_0
    move-exception v3

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/CharBuffer;

    .line 12768
    throw v3
.end method

.method private getGB18030([S[Ljava/lang/String;C)I
    .locals 4
    .param p1, "outerIndex"    # [S
    .param p2, "innerEncoderIndex"    # [Ljava/lang/String;
    .param p3, "ch"    # C

    .line 12573
    const v0, 0xff00

    and-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x8

    aget-short v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    .line 12574
    .local v0, "offset":I
    shr-int/lit8 v1, v0, 0xc

    aget-object v1, p2, v1

    and-int/lit16 v2, v0, 0xfff

    and-int/lit16 v3, p3, 0xff

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 12566
    invoke-static {p1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 12773
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12774
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/GB18030$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 12776
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/GB18030$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReset()V
    .locals 1

    .line 12579
    const/4 v0, 0x2

    iput v0, p0, Lj$/sun/nio/cs/GB18030$Encoder;->currentState:I

    .line 12580
    return-void
.end method
