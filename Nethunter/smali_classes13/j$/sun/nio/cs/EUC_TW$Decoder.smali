.class public Lj$/sun/nio/cs/EUC_TW$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "EUC_TW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/EUC_TW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final b1Max:I = 0xfe

.field static final b1Min:I = 0xa1

.field static final b2Max:I = 0xfe

.field static final b2Min:I = 0xa1

.field static final b2c:[Ljava/lang/String;

.field static final b2cIsSupp:[B

.field static final cnspToIndex:[B

.field static final dbSegSize:I = 0x5e


# instance fields
.field c1:[C

.field c2:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 113
    sget-object v0, Lj$/sun/nio/cs/EUC_TWMapping;->b2c:[Ljava/lang/String;

    sput-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->b2c:[Ljava/lang/String;

    .line 122
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    .line 124
    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 125
    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa3

    const/4 v3, 0x2

    aput-byte v3, v0, v1

    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa4

    const/4 v3, 0x3

    aput-byte v3, v0, v1

    .line 126
    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa5

    const/4 v3, 0x4

    aput-byte v3, v0, v1

    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa6

    const/4 v3, 0x5

    aput-byte v3, v0, v1

    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xa7

    const/4 v3, 0x6

    aput-byte v3, v0, v1

    .line 127
    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    const/16 v1, 0xaf

    const/4 v3, 0x7

    aput-byte v3, v0, v1

    .line 132
    sget-object v0, Lj$/sun/nio/cs/EUC_TWMapping;->b2cIsSuppStr:Ljava/lang/String;

    .line 135
    .local v0, "b2cIsSuppStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    shl-int/2addr v1, v2

    new-array v1, v1, [B

    .line 136
    .local v1, "flag":[B
    const/4 v2, 0x0

    .line 137
    .local v2, "off":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 139
    .local v4, "c":C
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "off":I
    .local v5, "off":I
    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 140
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "off":I
    .restart local v2    # "off":I
    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 137
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3    # "i":I
    :cond_0
    sput-object v1, Lj$/sun/nio/cs/EUC_TW$Decoder;->b2cIsSupp:[B

    .line 143
    .end local v0    # "b2cIsSuppStr":Ljava/lang/String;
    .end local v1    # "flag":[B
    .end local v2    # "off":I
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 104
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lj$/sun/nio/cs/EUC_TW$Decoder;->c1:[C

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lj$/sun/nio/cs/EUC_TW$Decoder;->c2:[C

    .line 105
    return-void
.end method

.method static decode(III[C[C)[C
    .locals 6
    .param p0, "b1"    # I
    .param p1, "b2"    # I
    .param p2, "p"    # I
    .param p3, "c1"    # [C
    .param p4, "c2"    # [C

    .line 151
    const/4 v0, 0x0

    const/16 v1, 0xa1

    if-lt p0, v1, :cond_3

    const/16 v2, 0xfe

    if-gt p0, v2, :cond_3

    if-lt p1, v1, :cond_3

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    add-int/lit16 v2, p0, -0xa1

    mul-int/lit8 v2, v2, 0x5e

    add-int/2addr v2, p1

    sub-int/2addr v2, v1

    .line 154
    .local v2, "index":I
    sget-object v1, Lj$/sun/nio/cs/EUC_TW$Decoder;->b2c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 155
    .local v1, "c":C
    const v3, 0xfffd

    if-ne v1, v3, :cond_1

    .line 156
    return-object v0

    .line 157
    :cond_1
    sget-object v0, Lj$/sun/nio/cs/EUC_TW$Decoder;->b2cIsSupp:[B

    aget-byte v0, v0, v2

    const/4 v3, 0x1

    shl-int v4, v3, p2

    and-int/2addr v0, v4

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 158
    aput-char v1, p3, v4

    .line 159
    return-object p3

    .line 161
    :cond_2
    const/high16 v0, 0x20000

    add-int v5, v1, v0

    invoke-static {v5}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v5

    aput-char v5, p4, v4

    .line 162
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v0

    aput-char v0, p4, v3

    .line 163
    return-object p4

    .line 152
    .end local v1    # "c":C
    .end local v2    # "index":I
    :cond_3
    :goto_0
    return-object v0
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 16
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 170
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 171
    .local v4, "sa":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    .line 172
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 174
    .local v5, "sl":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    .line 175
    .local v6, "da":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 176
    .local v7, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v7

    move v7, v0

    .line 178
    .end local v0    # "sp":I
    .local v7, "sp":I
    .local v8, "dl":I
    .local v9, "dp":I
    :goto_0
    if-ge v7, v5, :cond_f

    .line 179
    :try_start_0
    aget-byte v0, v4, v7

    and-int/lit16 v0, v0, 0xff

    .line 180
    .local v0, "byte1":I
    const/16 v10, 0x8e

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v0, v10, :cond_7

    .line 181
    sub-int v10, v5, v7

    const/4 v14, 0x4

    if-ge v10, v14, :cond_0

    .line 182
    sget-object v10, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v9, v11

    invoke-virtual {v3, v11}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/CharBuffer;

    .line 182
    return-object v10

    .line 183
    :cond_0
    :try_start_1
    sget-object v10, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    add-int/lit8 v15, v7, 0x1

    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    aget-byte v10, v10, v15

    .line 184
    .local v10, "cnsPlane":I
    if-gez v10, :cond_1

    .line 185
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v7, v12

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v12

    sub-int v12, v9, v12

    invoke-virtual {v3, v12}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v12

    check-cast v12, Ljava/nio/CharBuffer;

    .line 185
    return-object v11

    .line 186
    :cond_1
    add-int/lit8 v12, v7, 0x2

    :try_start_2
    aget-byte v12, v4, v12

    and-int/lit16 v0, v12, 0xff

    .line 187
    add-int/lit8 v12, v7, 0x3

    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    .line 188
    .local v12, "byte2":I
    invoke-virtual {v1, v0, v12, v10}, Lj$/sun/nio/cs/EUC_TW$Decoder;->toUnicode(III)[C

    move-result-object v15

    .line 189
    .local v15, "cc":[C
    if-nez v15, :cond_4

    .line 190
    invoke-static {v0}, Lj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v12}, Lj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .line 192
    :cond_2
    invoke-static {v14}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 192
    return-object v11

    .line 191
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v14}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 191
    return-object v11

    .line 194
    :cond_4
    sub-int v14, v8, v9

    :try_start_4
    array-length v11, v15

    if-ge v14, v11, :cond_5

    .line 195
    sget-object v11, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 195
    return-object v11

    .line 196
    :cond_5
    :try_start_5
    array-length v11, v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v11, v13, :cond_6

    .line 197
    add-int/lit8 v11, v9, 0x1

    const/4 v13, 0x0

    .end local v9    # "dp":I
    .local v11, "dp":I
    :try_start_6
    aget-char v13, v15, v13

    aput-char v13, v6, v9

    goto :goto_2

    .line 199
    .end local v11    # "dp":I
    .restart local v9    # "dp":I
    :cond_6
    add-int/lit8 v11, v9, 0x1

    const/4 v14, 0x0

    .end local v9    # "dp":I
    .restart local v11    # "dp":I
    aget-char v14, v15, v14

    aput-char v14, v6, v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 200
    add-int/lit8 v9, v11, 0x1

    .end local v11    # "dp":I
    .restart local v9    # "dp":I
    :try_start_7
    aget-char v13, v15, v13

    aput-char v13, v6, v11

    move v11, v9

    .line 202
    .end local v9    # "dp":I
    .restart local v11    # "dp":I
    :goto_2
    nop

    .end local v10    # "cnsPlane":I
    .end local v12    # "byte2":I
    .end local v15    # "cc":[C
    add-int/lit8 v7, v7, 0x4

    .line 203
    move v9, v11

    goto/16 :goto_4

    .line 226
    .end local v0    # "byte1":I
    :catchall_0
    move-exception v0

    move v9, v11

    goto/16 :goto_5

    .line 203
    .end local v11    # "dp":I
    .restart local v0    # "byte1":I
    .restart local v9    # "dp":I
    :cond_7
    const/16 v10, 0x80

    if-ge v0, v10, :cond_9

    .line 204
    sub-int v10, v8, v9

    if-ge v10, v13, :cond_8

    .line 205
    sget-object v10, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v9, v11

    invoke-virtual {v3, v11}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/CharBuffer;

    .line 205
    return-object v10

    .line 206
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "dp":I
    .local v10, "dp":I
    int-to-char v11, v0

    :try_start_8
    aput-char v11, v6, v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 207
    add-int/lit8 v7, v7, 0x1

    move v9, v10

    goto/16 :goto_4

    .line 226
    .end local v0    # "byte1":I
    :catchall_1
    move-exception v0

    move v9, v10

    goto/16 :goto_5

    .line 209
    .end local v10    # "dp":I
    .restart local v0    # "byte1":I
    .restart local v9    # "dp":I
    :cond_9
    sub-int v10, v5, v7

    if-ge v10, v12, :cond_a

    .line 210
    :try_start_9
    sget-object v10, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v9, v11

    invoke-virtual {v3, v11}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/CharBuffer;

    .line 210
    return-object v10

    .line 211
    :cond_a
    add-int/lit8 v10, v7, 0x1

    :try_start_a
    aget-byte v10, v4, v10

    and-int/lit16 v10, v10, 0xff

    .line 212
    .local v10, "byte2":I
    const/4 v11, 0x0

    invoke-virtual {v1, v0, v10, v11}, Lj$/sun/nio/cs/EUC_TW$Decoder;->toUnicode(III)[C

    move-result-object v14

    move-object v11, v14

    .line 213
    .local v11, "cc":[C
    if-nez v11, :cond_d

    .line 214
    invoke-static {v0}, Lj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-static {v10}, Lj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v14

    if-nez v14, :cond_b

    goto :goto_3

    .line 216
    :cond_b
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 216
    return-object v12

    .line 215
    :cond_c
    :goto_3
    :try_start_b
    invoke-static {v13}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 215
    return-object v12

    .line 218
    :cond_d
    sub-int v12, v8, v9

    if-ge v12, v13, :cond_e

    .line 219
    :try_start_c
    sget-object v12, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v7, v13

    invoke-virtual {v2, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v13

    sub-int v13, v9, v13

    invoke-virtual {v3, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    check-cast v13, Ljava/nio/CharBuffer;

    .line 219
    return-object v12

    .line 220
    :cond_e
    add-int/lit8 v12, v9, 0x1

    const/4 v13, 0x0

    .end local v9    # "dp":I
    .local v12, "dp":I
    :try_start_d
    aget-char v13, v11, v13

    aput-char v13, v6, v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 221
    add-int/lit8 v7, v7, 0x2

    move v9, v12

    .line 223
    .end local v0    # "byte1":I
    .end local v10    # "byte2":I
    .end local v11    # "cc":[C
    .end local v12    # "dp":I
    .restart local v9    # "dp":I
    :goto_4
    goto/16 :goto_0

    .line 226
    .end local v9    # "dp":I
    .restart local v12    # "dp":I
    :catchall_2
    move-exception v0

    move v9, v12

    goto :goto_5

    .line 224
    .end local v12    # "dp":I
    .restart local v9    # "dp":I
    :cond_f
    :try_start_e
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 224
    return-object v0

    .line 226
    :catchall_3
    move-exception v0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {v3, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 228
    throw v0
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 236
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 238
    .local v1, "byte1":I
    const/16 v2, 0x8e

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_7

    .line 239
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    .line 240
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 240
    return-object v2

    .line 241
    :cond_0
    :try_start_1
    sget-object v2, Lj$/sun/nio/cs/EUC_TW$Decoder;->cnspToIndex:[B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v2, v2, v6

    .line 242
    .local v2, "cnsPlane":I
    if-gez v2, :cond_1

    .line 243
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 243
    return-object v3

    .line 244
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 245
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 246
    .local v3, "byte2":I
    invoke-virtual {p0, v1, v3, v2}, Lj$/sun/nio/cs/EUC_TW$Decoder;->toUnicode(III)[C

    move-result-object v6

    .line 247
    .local v6, "cc":[C
    if-nez v6, :cond_4

    .line 248
    invoke-static {v1}, Lj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    invoke-static {v3}, Lj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 250
    :cond_2
    invoke-static {v5}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 250
    return-object v4

    .line 249
    :cond_3
    :goto_1
    :try_start_3
    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 249
    return-object v4

    .line 252
    :cond_4
    :try_start_4
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v7

    array-length v8, v6

    if-ge v7, v8, :cond_5

    .line 253
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 253
    return-object v4

    .line 254
    :cond_5
    :try_start_5
    array-length v7, v6

    if-ne v7, v4, :cond_6

    .line 255
    aget-char v4, v6, v5

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_2

    .line 257
    :cond_6
    aget-char v5, v6, v5

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 258
    aget-char v4, v6, v4

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 260
    :goto_2
    nop

    .end local v2    # "cnsPlane":I
    .end local v3    # "byte2":I
    .end local v6    # "cc":[C
    add-int/lit8 v0, v0, 0x4

    .line 261
    goto :goto_4

    :cond_7
    const/16 v2, 0x80

    if-ge v1, v2, :cond_9

    .line 262
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_8

    .line 263
    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 263
    return-object v2

    .line 264
    :cond_8
    int-to-char v2, v1

    :try_start_6
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 267
    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_a

    .line 268
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 268
    return-object v2

    .line 269
    :cond_a
    :try_start_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 270
    .local v2, "byte2":I
    invoke-virtual {p0, v1, v2, v5}, Lj$/sun/nio/cs/EUC_TW$Decoder;->toUnicode(III)[C

    move-result-object v6

    .line 271
    .restart local v6    # "cc":[C
    if-nez v6, :cond_d

    .line 272
    invoke-static {v1}, Lj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v2}, Lj$/sun/nio/cs/EUC_TW$Decoder;->isLegalDB(I)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_3

    .line 274
    :cond_b
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 274
    return-object v3

    .line 273
    :cond_c
    :goto_3
    :try_start_8
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 273
    return-object v3

    .line 276
    :cond_d
    :try_start_9
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_e

    .line 277
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 277
    return-object v3

    .line 278
    :cond_e
    :try_start_a
    aget-char v3, v6, v5

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 279
    add-int/lit8 v0, v0, 0x2

    .line 281
    .end local v1    # "byte1":I
    .end local v2    # "byte2":I
    .end local v6    # "cc":[C
    :goto_4
    goto/16 :goto_0

    .line 282
    :cond_f
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 284
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 282
    return-object v1

    .line 284
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 285
    throw v1
.end method

.method static isLegalDB(I)Z
    .locals 1
    .param p0, "b"    # I

    .line 146
    const/16 v0, 0xa1

    if-lt p0, v0, :cond_0

    const/16 v0, 0xfe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/EUC_TW$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 293
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/EUC_TW$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public toUnicode(III)[C
    .locals 2
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "p"    # I

    .line 110
    iget-object v0, p0, Lj$/sun/nio/cs/EUC_TW$Decoder;->c1:[C

    iget-object v1, p0, Lj$/sun/nio/cs/EUC_TW$Decoder;->c2:[C

    invoke-static {p1, p2, p3, v0, v1}, Lj$/sun/nio/cs/EUC_TW$Decoder;->decode(III[C[C)[C

    move-result-object v0

    return-object v0
.end method
