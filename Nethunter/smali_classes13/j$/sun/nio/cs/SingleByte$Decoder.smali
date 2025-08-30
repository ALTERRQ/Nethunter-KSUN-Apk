.class public final Lj$/sun/nio/cs/SingleByte$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "SingleByte.java"

# interfaces
.implements Lj$/sun/nio/cs/ArrayDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/SingleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Decoder"
.end annotation


# instance fields
.field private final b2c:[C

.field private final isASCIICompatible:Z

.field private repl:C


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[C)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [C

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 122
    const v0, 0xfffd

    iput-char v0, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->repl:C

    .line 56
    iput-object p2, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->b2c:[C

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->isASCIICompatible:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[CZ)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [C
    .param p3, "isASCIICompatible"    # Z

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 122
    const v0, 0xfffd

    iput-char v0, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->repl:C

    .line 62
    iput-object p2, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->b2c:[C

    .line 63
    iput-boolean p3, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->isASCIICompatible:Z

    .line 64
    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 68
    .local v0, "sa":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 69
    .local v1, "sp":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 71
    .local v2, "sl":I
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    .line 72
    .local v3, "da":[C
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 73
    .local v4, "dp":I
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 75
    .local v5, "dl":I
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    .line 76
    .local v6, "cr":Ljava/nio/charset/CoderResult;
    sub-int v7, v5, v4

    sub-int v8, v2, v1

    if-ge v7, v8, :cond_0

    .line 77
    sub-int v7, v5, v4

    add-int v2, v1, v7

    .line 78
    sget-object v6, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    .line 81
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_2

    .line 82
    aget-byte v7, v0, v1

    invoke-virtual {p0, v7}, Lj$/sun/nio/cs/SingleByte$Decoder;->decode(I)C

    move-result v7

    .line 83
    .local v7, "c":C
    const v8, 0xfffd

    if-ne v7, v8, :cond_1

    .line 84
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v8

    invoke-static {v8, p1, v1, p2, v4}, Lj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v8

    return-object v8

    .line 87
    :cond_1
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "dp":I
    .local v8, "dp":I
    aput-char v7, v3, v4

    .line 88
    nop

    .end local v7    # "c":C
    add-int/lit8 v1, v1, 0x1

    .line 89
    move v4, v8

    goto :goto_0

    .line 90
    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    :cond_2
    invoke-static {v6, p1, v1, p2, v4}, Lj$/sun/nio/cs/SingleByte;->-$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object v7

    return-object v7
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 96
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lj$/sun/nio/cs/SingleByte$Decoder;->decode(I)C

    move-result v1

    .line 98
    .local v1, "c":C
    const v2, 0xfffd

    if-ne v1, v2, :cond_0

    .line 99
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 99
    return-object v2

    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 101
    return-object v2

    .line 102
    :cond_1
    :try_start_2
    invoke-virtual {p2, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 103
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 105
    return-object v1

    .line 107
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 108
    throw v1
.end method


# virtual methods
.method public final decode(I)C
    .locals 2
    .param p1, "b"    # I

    .line 119
    iget-object v0, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->b2c:[C

    add-int/lit16 v1, p1, 0x80

    aget-char v0, v0, v1

    return v0
.end method

.method public decode([BII[C)I
    .locals 3
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [C

    .line 129
    array-length v0, p4

    if-le p3, v0, :cond_0

    .line 130
    array-length p3, p4

    .line 131
    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, "dp":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 133
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "sp":I
    .local v1, "sp":I
    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/SingleByte$Decoder;->decode(I)C

    move-result p2

    aput-char p2, p4, v0

    .line 134
    aget-char p2, p4, v0

    const v2, 0xfffd

    if-ne p2, v2, :cond_1

    .line 135
    iget-char p2, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->repl:C

    aput-char p2, p4, v0

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    .line 139
    .end local v1    # "sp":I
    .restart local p2    # "sp":I
    :cond_2
    return v0
.end method

.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 112
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/SingleByte$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/SingleByte$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected implReplaceWith(Ljava/lang/String;)V
    .locals 1
    .param p1, "newReplacement"    # Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->repl:C

    .line 125
    return-void
.end method

.method public isASCIICompatible()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lj$/sun/nio/cs/SingleByte$Decoder;->isASCIICompatible:Z

    return v0
.end method
