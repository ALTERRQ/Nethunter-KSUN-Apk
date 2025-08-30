.class public Lj$/sun/nio/cs/DoubleByte$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "DoubleByte.java"

# interfaces
.implements Lj$/sun/nio/cs/DelegatableDecoder;
.implements Lj$/sun/nio/cs/ArrayDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/DoubleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# instance fields
.field final b2Max:I

.field final b2Min:I

.field final b2c:[[C

.field final b2cSB:[C

.field final isASCIICompatible:Z


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "avgcpb"    # F
    .param p3, "maxcpb"    # F
    .param p4, "b2c"    # [[C
    .param p5, "b2cSB"    # [C
    .param p6, "b2Min"    # I
    .param p7, "b2Max"    # I
    .param p8, "isASCIICompatible"    # Z

    .line 138
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 139
    iput-object p4, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    .line 140
    iput-object p5, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    .line 141
    iput p6, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    .line 142
    iput p7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    .line 143
    iput-boolean p8, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->isASCIICompatible:Z

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CII)V
    .locals 9
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [[C
    .param p3, "b2cSB"    # [C
    .param p4, "b2Min"    # I
    .param p5, "b2Max"    # I

    .line 152
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CIIZ)V
    .locals 9
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [[C
    .param p3, "b2cSB"    # [C
    .param p4, "b2Min"    # I
    .param p5, "b2Max"    # I
    .param p6, "isASCIICompatible"    # Z

    .line 148
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    .line 149
    return-void
.end method


# virtual methods
.method protected crMalformedOrUnderFlow(I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "b"    # I

    .line 122
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;
    .locals 2
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 126
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v0, v0, p1

    sget-object v1, Lj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v0, v0, p2

    sget-object v1, Lj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    if-ne v0, v1, :cond_1

    .line 128
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeSingle(I)C

    move-result v0

    const v1, 0xfffd

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([BII[C)I
    .locals 9
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [C

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 230
    .local v1, "sl":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Decoder;->replacement()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 231
    .local v2, "repl":C
    :goto_0
    if-ge p2, v1, :cond_5

    .line 232
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sp":I
    .local v3, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 233
    .local p2, "b1":I
    iget-object v4, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    aget-char v4, v4, p2

    .line 234
    .local v4, "c":C
    const v5, 0xfffd

    if-ne v4, v5, :cond_4

    .line 235
    if-ge v3, v1, :cond_3

    .line 236
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "sp":I
    .local v6, "sp":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 237
    .local v3, "b2":I
    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    if-lt v3, v7, :cond_0

    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    if-gt v3, v7, :cond_0

    iget-object v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v7, v7, p2

    iget v8, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    sub-int v8, v3, v8

    aget-char v7, v7, v8

    move v4, v7

    if-ne v7, v5, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    move v3, v6

    goto :goto_2

    .line 239
    :goto_1
    invoke-virtual {p0, p2, v3}, Lj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/CoderResult;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 240
    add-int/lit8 v6, v6, -0x1

    move v3, v6

    goto :goto_2

    .line 239
    :cond_2
    move v3, v6

    .line 244
    .end local v6    # "sp":I
    .local v3, "sp":I
    :cond_3
    :goto_2
    if-ne v4, v5, :cond_4

    .line 245
    move v4, v2

    .line 248
    :cond_4
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .local v5, "dp":I
    aput-char v4, p4, v0

    .line 249
    .end local v4    # "c":C
    .end local p2    # "b1":I
    move p2, v3

    move v0, v5

    goto :goto_0

    .line 250
    .end local v3    # "sp":I
    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    .local p2, "sp":I
    :cond_5
    return v0
.end method

.method protected decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 13
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 156
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 157
    .local v0, "sa":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 158
    .local v1, "sp":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 160
    .local v2, "sl":I
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    .line 161
    .local v3, "da":[C
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 162
    .local v4, "dp":I
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 165
    .local v5, "dl":I
    :goto_0
    if-ge v1, v2, :cond_4

    if-ge v4, v5, :cond_4

    .line 167
    const/4 v6, 0x1

    .line 168
    .local v6, "inSize":I
    :try_start_0
    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    .line 169
    .local v7, "b1":I
    iget-object v8, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    aget-char v8, v8, v7

    .line 170
    .local v8, "c":C
    const v9, 0xfffd

    if-ne v8, v9, :cond_3

    .line 171
    sub-int v10, v2, v1

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 172
    invoke-virtual {p0, v7}, Lj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnderFlow(I)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v1, v10

    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p2, v10}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/CharBuffer;

    .line 172
    return-object v9

    .line 173
    :cond_0
    add-int/lit8 v10, v1, 0x1

    :try_start_1
    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    .line 174
    .local v10, "b2":I
    iget v11, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    if-lt v10, v11, :cond_1

    iget v11, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    if-gt v10, v11, :cond_1

    iget-object v11, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v11, v11, v7

    iget v12, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    sub-int v12, v10, v12

    aget-char v11, v11, v12

    move v8, v11

    if-ne v11, v9, :cond_2

    :cond_1
    goto :goto_1

    .line 178
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 176
    :goto_1
    invoke-virtual {p0, v7, v10}, Lj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v1, v11

    invoke-virtual {p1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {p2, v11}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v11

    check-cast v11, Ljava/nio/CharBuffer;

    .line 176
    return-object v9

    .line 180
    .end local v10    # "b2":I
    :cond_3
    :goto_2
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .local v9, "dp":I
    :try_start_2
    aput-char v8, v3, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    add-int/2addr v1, v6

    .line 182
    .end local v6    # "inSize":I
    .end local v7    # "b1":I
    .end local v8    # "c":C
    move v4, v9

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v6

    move v4, v9

    goto :goto_4

    .line 183
    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    :cond_4
    if-lt v1, v2, :cond_5

    :try_start_3
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_3

    .line 184
    :cond_5
    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 183
    return-object v6

    .line 186
    :catchall_1
    move-exception v6

    :goto_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 188
    throw v6
.end method

.method protected decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 192
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 195
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 197
    .local v1, "b1":I
    iget-object v2, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    aget-char v2, v2, v1

    .line 198
    .local v2, "c":C
    const/4 v3, 0x1

    .line 199
    .local v3, "inSize":I
    const v4, 0xfffd

    if-ne v2, v4, :cond_3

    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 201
    invoke-virtual {p0, v1}, Lj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnderFlow(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 201
    return-object v4

    .line 202
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 203
    .local v5, "b2":I
    iget v6, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    if-lt v5, v6, :cond_1

    iget v6, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    if-gt v5, v6, :cond_1

    iget-object v6, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v6, v6, v1

    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    sub-int v7, v5, v7

    aget-char v6, v6, v7

    move v2, v6

    if-ne v6, v4, :cond_2

    :cond_1
    goto :goto_1

    .line 206
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 205
    :goto_1
    invoke-virtual {p0, v1, v5}, Lj$/sun/nio/cs/DoubleByte$Decoder;->crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 205
    return-object v4

    .line 208
    .end local v5    # "b2":I
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 209
    add-int/2addr v0, v3

    .line 210
    .end local v1    # "b1":I
    .end local v2    # "c":C
    .end local v3    # "inSize":I
    goto :goto_0

    .line 211
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_3

    .line 212
    :cond_5
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    :goto_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 211
    return-object v1

    .line 214
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 215
    throw v1
.end method

.method public decodeDouble(II)C
    .locals 2
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 273
    if-ltz p1, :cond_1

    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    array-length v0, v0

    if-gt p1, v0, :cond_1

    iget v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    if-lt p2, v0, :cond_1

    iget v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Max:I

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2c:[[C

    aget-object v0, v0, p1

    iget v1, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2Min:I

    sub-int v1, p2, v1

    aget-char v0, v0, v1

    return v0

    .line 275
    :cond_1
    :goto_0
    const v0, 0xfffd

    return v0
.end method

.method public decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 220
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decodeSingle(I)C
    .locals 1
    .param p1, "b"    # I

    .line 269
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->b2cSB:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 263
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public implReset()V
    .locals 0

    .line 259
    invoke-super {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    .line 260
    return-void
.end method

.method public isASCIICompatible()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder;->isASCIICompatible:Z

    return v0
.end method
