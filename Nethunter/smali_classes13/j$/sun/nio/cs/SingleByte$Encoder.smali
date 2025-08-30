.class public final Lj$/sun/nio/cs/SingleByte$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "SingleByte.java"

# interfaces
.implements Lj$/sun/nio/cs/ArrayEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/SingleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Encoder"
.end annotation


# instance fields
.field private final c2b:[C

.field private final c2bIndex:[C

.field private final isASCIICompatible:Z

.field private repl:B

.field private sgp:Lj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[C[CZ)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "c2b"    # [C
    .param p3, "c2bIndex"    # [C
    .param p4, "isASCIICompatible"    # Z

    .line 156
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 244
    const/16 v0, 0x3f

    iput-byte v0, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    .line 157
    iput-object p2, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->c2b:[C

    .line 158
    iput-object p3, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->c2bIndex:[C

    .line 159
    iput-boolean p4, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->isASCIICompatible:Z

    .line 160
    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 11
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 172
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 173
    .local v0, "sa":[C
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 174
    .local v1, "sp":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 176
    .local v2, "sl":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 177
    .local v3, "da":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 178
    .local v4, "dp":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 179
    .local v5, "dl":I
    sub-int v6, v5, v4

    sub-int v7, v2, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 181
    .local v6, "len":I
    :goto_0
    add-int/lit8 v7, v6, -0x1

    .end local v6    # "len":I
    .local v7, "len":I
    if-lez v6, :cond_4

    .line 182
    aget-char v6, v0, v1

    .line 183
    .local v6, "c":C
    invoke-virtual {p0, v6}, Lj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v8

    .line 184
    .local v8, "b":I
    const v9, 0xfffd

    if-ne v8, v9, :cond_3

    .line 185
    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 186
    iget-object v9, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v9, :cond_0

    .line 187
    new-instance v9, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v9}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v9, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 188
    :cond_0
    iget-object v9, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9, v6, v0, v1, v2}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v9

    if-gez v9, :cond_1

    .line 189
    iget-object v9, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v9

    invoke-static {v9, p1, v1, p2, v4}, Lj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v9

    return-object v9

    .line 191
    :cond_1
    iget-object v9, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v9}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v9

    invoke-static {v9, p1, v1, p2, v4}, Lj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v9

    return-object v9

    .line 193
    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v9

    invoke-static {v9, p1, v1, p2, v4}, Lj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v9

    return-object v9

    .line 196
    :cond_3
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "dp":I
    .local v9, "dp":I
    int-to-byte v10, v8

    aput-byte v10, v3, v4

    .line 197
    nop

    .end local v6    # "c":C
    .end local v8    # "b":I
    add-int/lit8 v1, v1, 0x1

    .line 198
    move v6, v7

    move v4, v9

    goto :goto_0

    .line 199
    .end local v9    # "dp":I
    .restart local v4    # "dp":I
    :cond_4
    if-ge v1, v2, :cond_5

    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_5
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_1
    invoke-static {v6, p1, v1, p2, v4}, Lj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v6

    return-object v6
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 5
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 206
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 207
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 208
    .local v1, "c":C
    invoke-virtual {p0, v1}, Lj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v2

    .line 209
    .local v2, "b":I
    const v3, 0xfffd

    if-ne v2, v3, :cond_3

    .line 210
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    if-nez v3, :cond_0

    .line 212
    new-instance v3, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v3}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v3, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 213
    :cond_0
    iget-object v3, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3, v1, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    if-gez v3, :cond_1

    .line 214
    iget-object v3, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 214
    return-object v3

    .line 215
    :cond_1
    :try_start_1
    iget-object v3, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 215
    return-object v3

    .line 217
    :cond_2
    const/4 v3, 0x1

    :try_start_2
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 217
    return-object v3

    .line 219
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_4

    .line 220
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 220
    return-object v3

    .line 221
    :cond_4
    int-to-byte v3, v2

    :try_start_4
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    nop

    .end local v1    # "c":C
    .end local v2    # "b":I
    add-int/lit8 v0, v0, 0x1

    .line 223
    goto :goto_0

    .line 224
    :cond_5
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 224
    return-object v1

    .line 226
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 227
    throw v1
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 2
    .param p1, "c"    # C

    .line 163
    invoke-virtual {p0, p1}, Lj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

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

.method public final encode(C)I
    .locals 3
    .param p1, "ch"    # C

    .line 238
    iget-object v0, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->c2bIndex:[C

    shr-int/lit8 v1, p1, 0x8

    aget-char v0, v0, v1

    .line 239
    .local v0, "index":C
    const v1, 0xfffd

    if-ne v0, v1, :cond_0

    .line 240
    return v1

    .line 241
    :cond_0
    iget-object v1, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->c2b:[C

    and-int/lit16 v2, p1, 0xff

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    return v1
.end method

.method public encode([CII[B)I
    .locals 6
    .param p1, "src"    # [C
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "dp":I
    array-length v1, p4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p2

    .line 252
    .local v1, "sl":I
    :goto_0
    if-ge p2, v1, :cond_3

    .line 253
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "sp":I
    .local v2, "sp":I
    aget-char p2, p1, p2

    .line 254
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v3

    .line 255
    .local v3, "b":I
    const v4, 0xfffd

    if-eq v3, v4, :cond_0

    .line 256
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .local v4, "dp":I
    int-to-byte v5, v3

    aput-byte v5, p4, v0

    .line 257
    move p2, v2

    move v0, v4

    goto :goto_0

    .line 259
    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v2, v1, :cond_2

    aget-char v4, p1, v2

    .line 260
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    array-length v4, p4

    if-le p3, v4, :cond_1

    .line 262
    add-int/lit8 v1, v1, 0x1

    .line 263
    add-int/lit8 p3, p3, -0x1

    .line 265
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 267
    :cond_2
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    iget-byte v5, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    aput-byte v5, p4, v0

    .line 268
    .end local v3    # "b":I
    .end local p2    # "c":C
    move p2, v2

    move v0, v4

    goto :goto_0

    .line 269
    .end local v2    # "sp":I
    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    .local p2, "sp":I
    :cond_3
    return v0
.end method

.method public encodeFromLatin1([BII[B)I
    .locals 6
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "dp":I
    array-length v1, p4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p2

    .line 276
    .local v1, "sl":I
    :goto_0
    if-ge p2, v1, :cond_1

    .line 277
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "sp":I
    .local v2, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    .line 278
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v3

    .line 279
    .local v3, "b":I
    const v4, 0xfffd

    if-ne v3, v4, :cond_0

    .line 280
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .local v4, "dp":I
    iget-byte v5, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    aput-byte v5, p4, v0

    move v0, v4

    goto :goto_1

    .line 282
    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    :cond_0
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v5, v3

    aput-byte v5, p4, v0

    move v0, v4

    .line 284
    .end local v3    # "b":I
    .end local v4    # "dp":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_1
    move p2, v2

    goto :goto_0

    .line 285
    .end local v2    # "sp":I
    .local p2, "sp":I
    :cond_1
    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .locals 6
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "dp":I
    array-length v1, p4

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, p2

    .line 292
    .local v1, "sl":I
    :goto_0
    if-ge p2, v1, :cond_3

    .line 293
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "sp":I
    .local v2, "sp":I
    invoke-static {p1, p2}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result p2

    .line 294
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/SingleByte$Encoder;->encode(C)I

    move-result v3

    .line 295
    .local v3, "b":I
    const v4, 0xfffd

    if-eq v3, v4, :cond_0

    .line 296
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .local v4, "dp":I
    int-to-byte v5, v3

    aput-byte v5, p4, v0

    .line 297
    move p2, v2

    move v0, v4

    goto :goto_0

    .line 299
    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    :cond_0
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v2, v1, :cond_2

    .line 300
    invoke-static {p1, v2}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    array-length v4, p4

    if-le p3, v4, :cond_1

    .line 302
    add-int/lit8 v1, v1, 0x1

    .line 303
    add-int/lit8 p3, p3, -0x1

    .line 305
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 307
    :cond_2
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "dp":I
    .restart local v4    # "dp":I
    iget-byte v5, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    aput-byte v5, p4, v0

    .line 308
    .end local v3    # "b":I
    .end local p2    # "c":C
    move p2, v2

    move v0, v4

    goto :goto_0

    .line 309
    .end local v2    # "sp":I
    .end local v4    # "dp":I
    .restart local v0    # "dp":I
    .local p2, "sp":I
    :cond_3
    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 231
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/SingleByte$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/SingleByte$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReplaceWith([B)V
    .locals 1
    .param p1, "newReplacement"    # [B

    .line 246
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->repl:B

    .line 247
    return-void
.end method

.method public isASCIICompatible()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lj$/sun/nio/cs/SingleByte$Encoder;->isASCIICompatible:Z

    return v0
.end method

.method public isLegalReplacement([B)Z
    .locals 4
    .param p1, "repl"    # [B

    .line 167
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-byte v0, p1, v1

    const/16 v3, 0x3f

    if-eq v0, v3, :cond_1

    .line 168
    :cond_0
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetEncoder;->isLegalReplacement([B)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 167
    :cond_2
    return v1
.end method
