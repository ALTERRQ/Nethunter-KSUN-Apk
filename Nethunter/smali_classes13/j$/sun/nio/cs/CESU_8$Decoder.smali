.class Lj$/sun/nio/cs/CESU_8$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "CESU_8.java"

# interfaces
.implements Lj$/sun/nio/cs/ArrayDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/CESU_8;
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

    .line 76
    const-class v0, Lj$/sun/nio/cs/CESU_8;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 79
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/CESU_8$Decoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/CESU_8$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 18
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 204
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 205
    .local v8, "sa":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int v9, v1, v2

    .line 208
    .local v9, "sl":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v10

    .line 209
    .local v10, "da":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 210
    .local v1, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int v11, v2, v3

    .line 211
    .local v11, "dl":I
    sub-int v2, v9, v0

    sub-int v3, v11, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v12, v1, v2

    .line 214
    .local v12, "dlASCII":I
    :goto_0
    if-ge v1, v12, :cond_0

    aget-byte v2, v8, v0

    if-ltz v2, :cond_0

    .line 215
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

    .line 216
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
    if-ge v13, v9, :cond_c

    .line 217
    aget-byte v15, v8, v13

    .line 218
    .local v15, "b1":I
    if-ltz v15, :cond_2

    .line 220
    if-lt v14, v11, :cond_1

    .line 221
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 222
    :cond_1
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "dp":I
    .local v0, "dp":I
    int-to-char v1, v15

    aput-char v1, v10, v14

    .line 223
    add-int/lit8 v13, v13, 0x1

    move v14, v0

    goto/16 :goto_3

    .line 224
    .end local v0    # "dp":I
    .restart local v14    # "dp":I
    :cond_2
    shr-int/lit8 v0, v15, 0x5

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_6

    and-int/lit8 v0, v15, 0x1e

    if-eqz v0, :cond_6

    .line 226
    sub-int v0, v9, v13

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    if-lt v14, v11, :cond_3

    goto :goto_2

    .line 228
    :cond_3
    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    .line 229
    .local v0, "b2":I
    invoke-static {v0}, Lj$/sun/nio/cs/CESU_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    invoke-static {v6, v13, v7, v14, v2}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v1

    return-object v1

    .line 231
    :cond_4
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "dp":I
    .restart local v1    # "dp":I
    shl-int/lit8 v2, v15, 0x6

    xor-int/2addr v2, v0

    xor-int/lit16 v2, v2, 0xf80

    int-to-char v2, v2

    aput-char v2, v10, v14

    .line 235
    nop

    .end local v0    # "b2":I
    add-int/lit8 v13, v13, 0x2

    .line 236
    move v14, v1

    goto :goto_3

    .line 227
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

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 236
    :cond_6
    shr-int/lit8 v0, v15, 0x4

    if-ne v0, v1, :cond_b

    .line 238
    sub-int v5, v9, v13

    .line 239
    .local v5, "srcRemaining":I
    const/4 v0, 0x3

    if-lt v5, v0, :cond_9

    if-lt v14, v11, :cond_7

    goto :goto_4

    .line 244
    :cond_7
    add-int/lit8 v1, v13, 0x1

    aget-byte v1, v8, v1

    .line 245
    .local v1, "b2":I
    add-int/lit8 v2, v13, 0x2

    aget-byte v2, v8, v2

    .line 246
    .local v2, "b3":I
    invoke-static {v15, v1, v2}, Lj$/sun/nio/cs/CESU_8$Decoder;->isMalformed3(III)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 247
    invoke-static {v6, v13, v7, v14, v0}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 248
    :cond_8
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "dp":I
    .local v0, "dp":I
    shl-int/lit8 v3, v15, 0xc

    shl-int/lit8 v4, v1, 0x6

    xor-int/2addr v3, v4

    const v4, -0x1e080

    xor-int/2addr v4, v2

    xor-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v10, v14

    .line 255
    nop

    .end local v1    # "b2":I
    .end local v2    # "b3":I
    .end local v5    # "srcRemaining":I
    add-int/lit8 v13, v13, 0x3

    .line 256
    move v14, v0

    .line 259
    .end local v0    # "dp":I
    .end local v15    # "b1":I
    .restart local v14    # "dp":I
    :goto_3
    goto/16 :goto_1

    .line 240
    .restart local v5    # "srcRemaining":I
    .restart local v15    # "b1":I
    :cond_9
    :goto_4
    if-le v5, v2, :cond_a

    add-int/lit8 v0, v13, 0x1

    aget-byte v0, v8, v0

    invoke-static {v15, v0}, Lj$/sun/nio/cs/CESU_8$Decoder;->isMalformed3_2(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 241
    invoke-static {v6, v13, v7, v14, v2}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 242
    :cond_a
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

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 257
    .end local v17    # "srcRemaining":I
    :cond_b
    invoke-static {v6, v13, v7, v14, v2}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 260
    .end local v15    # "b1":I
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v9

    move-object/from16 v3, p2

    move v4, v14

    invoke-static/range {v0 .. v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->xflow(Ljava/nio/Buffer;IILjava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 266
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 267
    .local v0, "mark":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 268
    .local v1, "limit":I
    :goto_0
    if-ge v0, v1, :cond_b

    .line 269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 270
    .local v2, "b1":I
    const/4 v3, 0x1

    if-ltz v2, :cond_1

    .line 272
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 273
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/CESU_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 274
    :cond_0
    int-to-char v3, v2

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 276
    :cond_1
    shr-int/lit8 v4, v2, 0x5

    const/4 v5, -0x2

    if-ne v4, v5, :cond_5

    and-int/lit8 v4, v2, 0x1e

    if-eqz v4, :cond_5

    .line 278
    sub-int v4, v1, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_2

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 281
    .local v4, "b2":I
    invoke-static {v4}, Lj$/sun/nio/cs/CESU_8$Decoder;->isNotContinuation(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 282
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 283
    :cond_3
    shl-int/lit8 v3, v2, 0x6

    xor-int/2addr v3, v4

    xor-int/lit16 v3, v3, 0xf80

    int-to-char v3, v3

    invoke-virtual {p2, v3}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 287
    nop

    .end local v4    # "b2":I
    add-int/lit8 v0, v0, 0x2

    .line 288
    goto :goto_2

    .line 279
    :cond_4
    :goto_1
    invoke-static {p1, v0, v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 288
    :cond_5
    shr-int/lit8 v4, v2, 0x4

    if-ne v4, v5, :cond_a

    .line 290
    sub-int v4, v1, v0

    .line 291
    .local v4, "srcRemaining":I
    const/4 v5, 0x3

    if-lt v4, v5, :cond_8

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v6

    if-ge v6, v3, :cond_6

    goto :goto_3

    .line 296
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 297
    .local v3, "b2":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 298
    .local v6, "b3":I
    invoke-static {v2, v3, v6}, Lj$/sun/nio/cs/CESU_8$Decoder;->isMalformed3(III)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 299
    invoke-static {p1, v0, v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v5

    return-object v5

    .line 300
    :cond_7
    shl-int/lit8 v5, v2, 0xc

    shl-int/lit8 v7, v3, 0x6

    xor-int/2addr v5, v7

    const v7, -0x1e080

    xor-int/2addr v7, v6

    xor-int/2addr v5, v7

    int-to-char v5, v5

    invoke-virtual {p2, v5}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 307
    nop

    .end local v3    # "b2":I
    .end local v4    # "srcRemaining":I
    .end local v6    # "b3":I
    add-int/lit8 v0, v0, 0x3

    .line 308
    nop

    .line 311
    .end local v2    # "b1":I
    :goto_2
    goto/16 :goto_0

    .line 292
    .restart local v2    # "b1":I
    .restart local v4    # "srcRemaining":I
    :cond_8
    :goto_3
    if-le v4, v3, :cond_9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v2, v6}, Lj$/sun/nio/cs/CESU_8$Decoder;->isMalformed3_2(II)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 293
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 294
    :cond_9
    invoke-static {p1, v0, v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 309
    .end local v4    # "srcRemaining":I
    :cond_a
    invoke-static {p1, v0, v3}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v3

    return-object v3

    .line 312
    .end local v2    # "b1":I
    :cond_b
    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lj$/sun/nio/cs/CESU_8$Decoder;->xflow(Ljava/nio/Buffer;II)Ljava/nio/charset/CoderResult;

    move-result-object v2

    return-object v2
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;[BI)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "ba"    # [B
    .param p2, "sp"    # I

    .line 326
    if-nez p0, :cond_0

    .line 327
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 328
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 329
    return-object p0
.end method

.method private static isMalformed3(III)Z
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I
    .param p2, "b3"    # I

    .line 89
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

    .line 95
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

    .line 106
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

    .line 112
    const/16 v0, 0xf0

    if-ne p0, v0, :cond_0

    const/16 v0, 0x90

    if-eq p1, v0, :cond_1

    :cond_0
    and-int/lit16 v0, p1, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMalformed4_3(I)Z
    .locals 2
    .param p0, "b3"    # I

    .line 117
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

    .line 83
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

.method private static malformed(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 2
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "mark"    # I
    .param p2, "nb"    # I

    .line 162
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 163
    invoke-static {p0, p2}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 164
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 165
    return-object v0
.end method

.method private static malformed(Ljava/nio/ByteBuffer;ILjava/nio/CharBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/CharBuffer;
    .param p3, "dp"    # I
    .param p4, "nb"    # I

    .line 152
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 153
    invoke-static {p0, p4}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 154
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-static {p0, p1, p2, p3}, Lj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 155
    return-object v0
.end method

.method private static malformedForLength(Ljava/nio/ByteBuffer;II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "mark"    # I
    .param p2, "malformedNB"    # I

    .line 182
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 183
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

    .line 174
    invoke-static {p0, p1, p2, p3}, Lj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 175
    invoke-static {p4}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method private static malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;
    .locals 7
    .param p0, "src"    # Ljava/nio/ByteBuffer;
    .param p1, "nb"    # I

    .line 121
    const/4 v0, 0x2

    const/16 v1, 0x80

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 143
    goto :goto_1

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 133
    .local v3, "b1":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 134
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

    .line 137
    :cond_1
    invoke-static {v4}, Lj$/sun/nio/cs/CESU_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lj$/sun/nio/cs/CESU_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 141
    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 138
    :cond_4
    :goto_0
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 126
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 127
    .restart local v3    # "b1":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 129
    .restart local v4    # "b2":I
    const/16 v5, -0x20

    if-ne v3, v5, :cond_5

    and-int/lit16 v5, v4, 0xe0

    if-eq v5, v1, :cond_6

    .line 130
    :cond_5
    invoke-static {v4}, Lj$/sun/nio/cs/CESU_8$Decoder;->isNotContinuation(I)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 128
    :cond_7
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 124
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    :pswitch_2
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 144
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

    .line 195
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 196
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 196
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

    .line 189
    invoke-static {p0, p1, p3, p4}, Lj$/sun/nio/cs/CESU_8;->-$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    .line 190
    if-eqz p5, :cond_1

    sub-int v0, p2, p1

    if-ge v0, p5, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 190
    :goto_1
    return-object v0
.end method


# virtual methods
.method public decode([BII[C)I
    .locals 11
    .param p1, "sa"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "da"    # [C

    .line 335
    add-int v0, p2, p3

    .line 336
    .local v0, "sl":I
    const/4 v1, 0x0

    .line 337
    .local v1, "dp":I
    array-length v2, p4

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 338
    .local v2, "dlASCII":I
    const/4 v3, 0x0

    .line 341
    .local v3, "bb":Ljava/nio/ByteBuffer;
    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v4, p1, p2

    if-ltz v4, :cond_0

    .line 342
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "dp":I
    .local v4, "dp":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "sp":I
    .local v5, "sp":I
    aget-byte p2, p1, p2

    int-to-char p2, p2

    aput-char p2, p4, v1

    move v1, v4

    move p2, v5

    goto :goto_0

    .line 344
    .end local v4    # "dp":I
    .end local v5    # "sp":I
    .restart local v1    # "dp":I
    .restart local p2    # "sp":I
    :cond_0
    :goto_1
    if-ge p2, v0, :cond_e

    .line 345
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "sp":I
    .local v4, "sp":I
    aget-byte p2, p1, p2

    .line 346
    .local p2, "b1":I
    if-ltz p2, :cond_1

    .line 348
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .local v5, "dp":I
    int-to-char v6, p2

    aput-char v6, p4, v1

    move v1, v5

    goto/16 :goto_2

    .line 349
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    :cond_1
    shr-int/lit8 v5, p2, 0x5

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_6

    and-int/lit8 v5, p2, 0x1e

    if-eqz v5, :cond_6

    .line 351
    if-ge v4, v0, :cond_4

    .line 352
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "sp":I
    .local v5, "sp":I
    aget-byte v4, p1, v4

    .line 353
    .local v4, "b2":I
    invoke-static {v4}, Lj$/sun/nio/cs/CESU_8$Decoder;->isNotContinuation(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 354
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v6

    sget-object v9, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-eq v6, v9, :cond_2

    .line 355
    return v7

    .line 356
    :cond_2
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dp":I
    .local v6, "dp":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->replacement()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, p4, v1

    .line 357
    add-int/lit8 v1, v5, -0x1

    move p2, v1

    move v1, v6

    .end local v5    # "sp":I
    .local v1, "sp":I
    goto :goto_1

    .line 359
    .end local v6    # "dp":I
    .local v1, "dp":I
    .restart local v5    # "sp":I
    :cond_3
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "dp":I
    .restart local v6    # "dp":I
    shl-int/lit8 v7, p2, 0x6

    xor-int/2addr v7, v4

    xor-int/lit16 v7, v7, 0xf80

    int-to-char v7, v7

    aput-char v7, p4, v1

    .line 363
    move p2, v5

    move v1, v6

    goto :goto_1

    .line 365
    .end local v5    # "sp":I
    .end local v6    # "dp":I
    .restart local v1    # "dp":I
    .local v4, "sp":I
    :cond_4
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-eq v5, v6, :cond_5

    .line 366
    return v7

    .line 367
    :cond_5
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .local v5, "dp":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->replacement()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p4, v1

    .line 368
    return v5

    .line 369
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    :cond_6
    shr-int/lit8 v5, p2, 0x4

    if-ne v5, v6, :cond_c

    .line 371
    add-int/lit8 v5, v4, 0x1

    if-ge v5, v0, :cond_9

    .line 372
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "sp":I
    .local v5, "sp":I
    aget-byte v4, p1, v4

    .line 373
    .local v4, "b2":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "sp":I
    .local v6, "sp":I
    aget-byte v5, p1, v5

    .line 374
    .local v5, "b3":I
    invoke-static {p2, v4, v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->isMalformed3(III)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 375
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v9

    sget-object v10, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-eq v9, v10, :cond_7

    .line 376
    return v7

    .line 377
    :cond_7
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dp":I
    .local v7, "dp":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->replacement()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, p4, v1

    .line 378
    add-int/lit8 v6, v6, -0x3

    .line 379
    invoke-static {v3, p1, v6}, Lj$/sun/nio/cs/CESU_8$Decoder;->getByteBuffer(Ljava/nio/ByteBuffer;[BI)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 380
    const/4 v1, 0x3

    invoke-static {v3, v1}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedN(Ljava/nio/ByteBuffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->length()I

    move-result v1

    add-int/2addr v1, v6

    move p2, v1

    move v1, v7

    .end local v6    # "sp":I
    .local v1, "sp":I
    goto/16 :goto_1

    .line 382
    .end local v7    # "dp":I
    .local v1, "dp":I
    .restart local v6    # "sp":I
    :cond_8
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "dp":I
    .restart local v7    # "dp":I
    shl-int/lit8 v8, p2, 0xc

    shl-int/lit8 v9, v4, 0x6

    xor-int/2addr v8, v9

    const v9, -0x1e080

    xor-int/2addr v9, v5

    xor-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, p4, v1

    .line 389
    move p2, v6

    move v1, v7

    goto/16 :goto_1

    .line 391
    .end local v5    # "b3":I
    .end local v6    # "sp":I
    .end local v7    # "dp":I
    .restart local v1    # "dp":I
    .local v4, "sp":I
    :cond_9
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-eq v5, v6, :cond_a

    .line 392
    return v7

    .line 393
    :cond_a
    if-ge v4, v0, :cond_b

    aget-byte v5, p1, v4

    invoke-static {p2, v5}, Lj$/sun/nio/cs/CESU_8$Decoder;->isMalformed3_2(II)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 394
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .local v5, "dp":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->replacement()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p4, v1

    .line 395
    move p2, v4

    move v1, v5

    goto/16 :goto_1

    .line 398
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    :cond_b
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .restart local v5    # "dp":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->replacement()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p4, v1

    .line 399
    return v5

    .line 401
    .end local v5    # "dp":I
    .restart local v1    # "dp":I
    :cond_c
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->malformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-eq v5, v6, :cond_d

    .line 402
    return v7

    .line 403
    :cond_d
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "dp":I
    .restart local v5    # "dp":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/CESU_8$Decoder;->replacement()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p4, v1

    move v1, v5

    .line 405
    .end local v5    # "dp":I
    .end local p2    # "b1":I
    .restart local v1    # "dp":I
    :goto_2
    move p2, v4

    goto/16 :goto_1

    .line 406
    .end local v4    # "sp":I
    .local p2, "sp":I
    :cond_e
    return v1
.end method

.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/CESU_8$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/CESU_8$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isASCIICompatible()Z
    .locals 1

    invoke-static {p0}, Lj$/sun/nio/cs/ArrayDecoder$-CC;->$default$isASCIICompatible(Lj$/sun/nio/cs/ArrayDecoder;)Z

    move-result v0

    return v0
.end method
