.class abstract Lj$/sun/nio/cs/UnicodeDecoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UnicodeDecoder.java"


# static fields
.field protected static final BIG:I = 0x1

.field protected static final BYTE_ORDER_MARK:C = '\ufeff'

.field protected static final LITTLE:I = 0x2

.field protected static final NONE:I = 0x0

.field protected static final REVERSED_MARK:C = '\ufffe'


# instance fields
.field private currentByteOrder:I

.field private defaultByteOrder:I

.field private final expectedByteOrder:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "bo"    # I

    .line 51
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lj$/sun/nio/cs/UnicodeDecoder;->defaultByteOrder:I

    .line 52
    iput p2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    iput p2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->expectedByteOrder:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;II)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "bo"    # I
    .param p3, "defaultBO"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/UnicodeDecoder;-><init>(Ljava/nio/charset/Charset;I)V

    .line 57
    iput p3, p0, Lj$/sun/nio/cs/UnicodeDecoder;->defaultByteOrder:I

    .line 58
    return-void
.end method

.method private decode(II)C
    .locals 2
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 61
    iget v0, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 62
    shl-int/lit8 v0, p1, 0x8

    or-int/2addr v0, p2

    int-to-char v0, v0

    return v0

    .line 64
    :cond_0
    shl-int/lit8 v0, p2, 0x8

    or-int/2addr v0, p1

    int-to-char v0, v0

    return v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 71
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 73
    .local v1, "b1":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 76
    .local v3, "b2":I
    iget v4, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    const v5, 0xfffe

    const/4 v6, 0x2

    if-nez v4, :cond_2

    .line 77
    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v4, v3

    int-to-char v4, v4

    .line 78
    .local v4, "c":C
    const v7, 0xfeff

    if-ne v4, v7, :cond_0

    .line 79
    iput v2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    .line 80
    add-int/lit8 v0, v0, 0x2

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    if-ne v4, v5, :cond_1

    .line 83
    iput v6, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    .line 84
    add-int/lit8 v0, v0, 0x2

    .line 85
    goto :goto_0

    .line 87
    :cond_1
    iget v2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->defaultByteOrder:I

    iput v2, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    .line 92
    .end local v4    # "c":C
    :cond_2
    invoke-direct {p0, v1, v3}, Lj$/sun/nio/cs/UnicodeDecoder;->decode(II)C

    move-result v2

    .line 94
    .local v2, "c":C
    if-ne v2, v5, :cond_3

    .line 96
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 96
    return-object v4

    .line 100
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 101
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v6, :cond_4

    .line 103
    sget-object v4, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 103
    return-object v4

    .line 104
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-direct {p0, v4, v5}, Lj$/sun/nio/cs/UnicodeDecoder;->decode(II)C

    move-result v4

    .line 105
    .local v4, "c2":C
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_5

    .line 106
    const/4 v5, 0x4

    invoke-static {v5}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 106
    return-object v5

    .line 107
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_6

    .line 108
    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 108
    return-object v5

    .line 109
    :cond_6
    add-int/lit8 v0, v0, 0x4

    .line 110
    :try_start_4
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 111
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 112
    goto/16 :goto_0

    .line 115
    .end local v4    # "c2":C
    :cond_7
    invoke-static {v6}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 115
    return-object v4

    .line 118
    :cond_8
    :try_start_5
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_9

    .line 119
    sget-object v4, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 119
    return-object v4

    .line 120
    :cond_9
    add-int/lit8 v0, v0, 0x2

    .line 121
    :try_start_6
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 123
    nop

    .end local v1    # "b1":I
    .end local v2    # "c":C
    .end local v3    # "b2":I
    goto/16 :goto_0

    .line 124
    :cond_a
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 127
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 124
    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 128
    throw v1
.end method

.method protected implReset()V
    .locals 1

    .line 132
    iget v0, p0, Lj$/sun/nio/cs/UnicodeDecoder;->expectedByteOrder:I

    iput v0, p0, Lj$/sun/nio/cs/UnicodeDecoder;->currentByteOrder:I

    .line 133
    return-void
.end method
