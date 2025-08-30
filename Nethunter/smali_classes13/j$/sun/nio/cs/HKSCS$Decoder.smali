.class public Lj$/sun/nio/cs/HKSCS$Decoder;
.super Lj$/sun/nio/cs/DoubleByte$Decoder;
.source "HKSCS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/HKSCS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static b2Max:I

.field static b2Min:I


# instance fields
.field private b2cBmp:[[C

.field private b2cSupp:[[C

.field private big5Dec:Lj$/sun/nio/cs/DoubleByte$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/16 v0, 0x40

    sput v0, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    .line 43
    const/16 v0, 0xfe

    sput v0, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Max:I

    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/DoubleByte$Decoder;[[C[[C)V
    .locals 9
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "big5Dec"    # Lj$/sun/nio/cs/DoubleByte$Decoder;
    .param p3, "b2cBmp"    # [[C
    .param p4, "b2cSupp"    # [[C

    .line 56
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    .line 57
    iput-object p2, p0, Lj$/sun/nio/cs/HKSCS$Decoder;->big5Dec:Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 58
    iput-object p3, p0, Lj$/sun/nio/cs/HKSCS$Decoder;->b2cBmp:[[C

    .line 59
    iput-object p4, p0, Lj$/sun/nio/cs/HKSCS$Decoder;->b2cSupp:[[C

    .line 60
    return-void
.end method

.method public static initb2c([[C[Ljava/lang/String;)V
    .locals 2
    .param p0, "b2c"    # [[C
    .param p1, "b2cStr"    # [Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 223
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 224
    sget-object v1, Lj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    aput-object v1, p0, v0

    goto :goto_1

    .line 226
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aput-object v1, p0, v0

    .line 222
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public decode([BII[C)I
    .locals 9
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [C

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 182
    .local v1, "sl":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/HKSCS$Decoder;->replacement()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 183
    .local v2, "repl":C
    :goto_0
    if-ge p2, v1, :cond_6

    .line 184
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sp":I
    .local v3, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 185
    .local p2, "b1":I
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeSingle(I)C

    move-result v4

    .line 186
    .local v4, "c":C
    const v5, 0xfffd

    if-ne v4, v5, :cond_4

    .line 187
    if-ne v1, v3, :cond_0

    .line 188
    move v4, v2

    move v6, v3

    goto :goto_2

    .line 190
    :cond_0
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "sp":I
    .local v6, "sp":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 191
    .local v3, "b2":I
    sget v7, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    if-lt v3, v7, :cond_3

    sget v7, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Max:I

    if-le v3, v7, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {p0, p2, v3}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeDouble(II)C

    move-result v7

    move v4, v7

    if-ne v7, v5, :cond_5

    .line 194
    invoke-virtual {p0, p2, v3}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeDoubleEx(II)C

    move-result v4

    .line 195
    if-ne v4, v5, :cond_2

    .line 196
    invoke-virtual {p0, p2, v3}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeBig5(II)C

    move-result v4

    .line 197
    if-ne v4, v5, :cond_5

    .line 198
    move v4, v2

    goto :goto_2

    .line 201
    :cond_2
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .local v5, "dp":I
    const/high16 v7, 0x20000

    add-int v8, v4, v7

    invoke-static {v8}, Lj$/sun/nio/cs/Surrogate;->high(I)C

    move-result v8

    aput-char v8, p4, v0

    .line 202
    add-int/lit8 v0, v5, 0x1

    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    add-int/2addr v7, v4

    invoke-static {v7}, Lj$/sun/nio/cs/Surrogate;->low(I)C

    move-result v7

    aput-char v7, p4, v5

    .line 203
    move p2, v6

    goto :goto_0

    .line 192
    :cond_3
    :goto_1
    move v4, v2

    goto :goto_2

    .line 186
    .end local v6    # "sp":I
    .local v3, "sp":I
    :cond_4
    move v6, v3

    .line 208
    .end local v3    # "sp":I
    .restart local v6    # "sp":I
    :cond_5
    :goto_2
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .local v3, "dp":I
    aput-char v4, p4, v0

    .line 209
    .end local v4    # "c":C
    .end local p2    # "b1":I
    move v0, v3

    move p2, v6

    goto :goto_0

    .line 210
    .end local v3    # "dp":I
    .end local v6    # "sp":I
    .restart local v0    # "dp":I
    .local p2, "sp":I
    :cond_6
    return v0
.end method

.method protected decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 18
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 84
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 85
    .local v4, "sa":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    .line 86
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 88
    .local v5, "sl":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    .line 89
    .local v6, "da":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 90
    .local v7, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v7

    move v7, v0

    .line 93
    .end local v0    # "sp":I
    .local v7, "sp":I
    .local v8, "dl":I
    .local v9, "dp":I
    :goto_0
    if-ge v7, v5, :cond_9

    .line 94
    :try_start_0
    aget-byte v0, v4, v7

    and-int/lit16 v0, v0, 0xff

    .line 95
    .local v0, "b1":I
    invoke-virtual {v1, v0}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeSingle(I)C

    move-result v10

    .line 96
    .local v10, "c":C
    const/4 v11, 0x1

    .local v11, "inSize":I
    const/4 v12, 0x1

    .line 97
    .local v12, "outSize":I
    const/4 v13, 0x0

    .line 98
    .local v13, "cc":[C
    const/4 v14, 0x2

    const v15, 0xfffd

    if-ne v10, v15, :cond_6

    .line 99
    sub-int v15, v5, v7

    if-ge v15, v14, :cond_0

    .line 100
    sget-object v14, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v7, v15

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v15

    sub-int v15, v9, v15

    invoke-virtual {v3, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 100
    return-object v14

    .line 101
    :cond_0
    add-int/lit8 v15, v7, 0x1

    :try_start_1
    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    .line 102
    .local v15, "b2":I
    add-int/lit8 v11, v11, 0x1

    .line 103
    sget v14, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    if-lt v15, v14, :cond_5

    sget v14, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Max:I

    if-le v15, v14, :cond_1

    move/from16 v17, v0

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {v1, v0, v15}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeDouble(II)C

    move-result v14

    move v10, v14

    .line 106
    const v14, 0xfffd

    if-ne v10, v14, :cond_4

    .line 107
    invoke-virtual {v1, v0, v15}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeDoubleEx(II)C

    move-result v16

    move/from16 v10, v16

    .line 108
    if-ne v10, v14, :cond_3

    .line 109
    invoke-virtual {v1, v0, v15}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeBig5(II)C

    move-result v16

    move/from16 v10, v16

    .line 110
    if-ne v10, v14, :cond_2

    .line 111
    const/4 v14, 0x2

    invoke-static {v14}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v16

    move/from16 v17, v0

    .end local v0    # "b1":I
    .local v17, "b1":I
    sub-int v0, v7, v16

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, v9, v0

    invoke-virtual {v3, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 111
    return-object v14

    .line 110
    .end local v17    # "b1":I
    .restart local v0    # "b1":I
    :cond_2
    move/from16 v17, v0

    .end local v0    # "b1":I
    .restart local v17    # "b1":I
    goto :goto_2

    .line 114
    .end local v17    # "b1":I
    .restart local v0    # "b1":I
    :cond_3
    move/from16 v17, v0

    .end local v0    # "b1":I
    .restart local v17    # "b1":I
    const/4 v12, 0x2

    goto :goto_2

    .line 106
    .end local v17    # "b1":I
    .restart local v0    # "b1":I
    :cond_4
    move/from16 v17, v0

    .end local v0    # "b1":I
    .restart local v17    # "b1":I
    goto :goto_2

    .line 103
    .end local v17    # "b1":I
    .restart local v0    # "b1":I
    :cond_5
    move/from16 v17, v0

    .line 104
    .end local v0    # "b1":I
    .restart local v17    # "b1":I
    :goto_1
    const/4 v0, 0x2

    :try_start_2
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 104
    return-object v0

    .line 98
    .end local v15    # "b2":I
    .end local v17    # "b1":I
    .restart local v0    # "b1":I
    :cond_6
    move/from16 v17, v0

    .line 118
    .end local v0    # "b1":I
    .restart local v17    # "b1":I
    :goto_2
    sub-int v0, v8, v9

    if-ge v0, v12, :cond_7

    .line 119
    :try_start_3
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 119
    return-object v0

    .line 120
    :cond_7
    const/4 v0, 0x2

    if-ne v12, v0, :cond_8

    .line 122
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "dp":I
    .local v14, "dp":I
    const/high16 v0, 0x20000

    add-int v15, v10, v0

    :try_start_4
    invoke-static {v15}, Lj$/sun/nio/cs/Surrogate;->high(I)C

    move-result v15

    aput-char v15, v6, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 123
    add-int/lit8 v9, v14, 0x1

    .end local v14    # "dp":I
    .restart local v9    # "dp":I
    add-int/2addr v0, v10

    :try_start_5
    invoke-static {v0}, Lj$/sun/nio/cs/Surrogate;->low(I)C

    move-result v0

    aput-char v0, v6, v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 125
    :cond_8
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "dp":I
    .restart local v14    # "dp":I
    :try_start_6
    aput-char v10, v6, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v9, v14

    .line 127
    .end local v14    # "dp":I
    .restart local v9    # "dp":I
    :goto_3
    add-int/2addr v7, v11

    .line 128
    .end local v10    # "c":C
    .end local v11    # "inSize":I
    .end local v12    # "outSize":I
    .end local v13    # "cc":[C
    .end local v17    # "b1":I
    goto/16 :goto_0

    .line 131
    .end local v9    # "dp":I
    .restart local v14    # "dp":I
    :catchall_0
    move-exception v0

    move v9, v14

    goto :goto_4

    .line 129
    .end local v14    # "dp":I
    .restart local v9    # "dp":I
    :cond_9
    :try_start_7
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 131
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 129
    return-object v0

    .line 131
    :catchall_1
    move-exception v0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 133
    throw v0
.end method

.method public decodeBig5(II)C
    .locals 1
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 67
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Decoder;->big5Dec:Lj$/sun/nio/cs/DoubleByte$Decoder;

    invoke-virtual {v0, p1, p2}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v0

    return v0
.end method

.method protected decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 139
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "cc":[C
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 142
    .local v2, "b1":I
    const/4 v3, 0x1

    .local v3, "inSize":I
    const/4 v4, 0x1

    .line 143
    .local v4, "outSize":I
    invoke-virtual {p0, v2}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeSingle(I)C

    move-result v5

    .line 144
    .local v5, "c":C
    const/4 v6, 0x2

    const v7, 0xfffd

    if-ne v5, v7, :cond_4

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    .line 146
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 146
    return-object v6

    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 148
    .local v8, "b2":I
    add-int/lit8 v3, v3, 0x1

    .line 149
    sget v9, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    if-lt v8, v9, :cond_3

    sget v9, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Max:I

    if-le v8, v9, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {p0, v2, v8}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeDouble(II)C

    move-result v9

    move v5, v9

    .line 152
    if-ne v5, v7, :cond_4

    .line 153
    invoke-virtual {p0, v2, v8}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeDoubleEx(II)C

    move-result v9

    move v5, v9

    .line 154
    if-ne v5, v7, :cond_2

    .line 155
    invoke-virtual {p0, v2, v8}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeBig5(II)C

    move-result v9

    move v5, v9

    .line 156
    if-ne v5, v7, :cond_4

    .line 157
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 157
    return-object v6

    .line 159
    :cond_2
    const/4 v4, 0x2

    goto :goto_2

    .line 150
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 150
    return-object v6

    .line 163
    .end local v8    # "b2":I
    :cond_4
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    if-ge v7, v4, :cond_5

    .line 164
    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 164
    return-object v6

    .line 165
    :cond_5
    if-ne v4, v6, :cond_6

    .line 166
    const/high16 v6, 0x20000

    add-int v7, v5, v6

    :try_start_4
    invoke-static {v7}, Lj$/sun/nio/cs/Surrogate;->high(I)C

    move-result v7

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 167
    add-int/2addr v6, v5

    invoke-static {v6}, Lj$/sun/nio/cs/Surrogate;->low(I)C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_3

    .line 169
    :cond_6
    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 171
    :goto_3
    add-int/2addr v0, v3

    .line 172
    .end local v1    # "cc":[C
    .end local v2    # "b1":I
    .end local v3    # "inSize":I
    .end local v4    # "outSize":I
    .end local v5    # "c":C
    goto/16 :goto_0

    .line 173
    :cond_7
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 175
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 173
    return-object v1

    .line 175
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 176
    throw v1
.end method

.method public decodeDouble(II)C
    .locals 2
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 71
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Decoder;->b2cBmp:[[C

    aget-object v0, v0, p1

    sget v1, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    sub-int v1, p2, v1

    aget-char v0, v0, v1

    return v0
.end method

.method public decodeDoubleEx(II)C
    .locals 2
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 80
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Decoder;->b2cSupp:[[C

    aget-object v0, v0, p1

    sget v1, Lj$/sun/nio/cs/HKSCS$Decoder;->b2Min:I

    sub-int v1, p2, v1

    aget-char v0, v0, v1

    return v0
.end method

.method public decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 217
    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/HKSCS$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decodeSingle(I)C
    .locals 1
    .param p1, "b"    # I

    .line 63
    iget-object v0, p0, Lj$/sun/nio/cs/HKSCS$Decoder;->big5Dec:Lj$/sun/nio/cs/DoubleByte$Decoder;

    invoke-virtual {v0, p1}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeSingle(I)C

    move-result v0

    return v0
.end method
