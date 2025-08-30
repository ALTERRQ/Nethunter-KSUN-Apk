.class public abstract Lj$/sun/nio/cs/UnicodeEncoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UnicodeEncoder.java"


# static fields
.field protected static final BIG:I = 0x0

.field protected static final BYTE_ORDER_MARK:C = '\ufeff'

.field protected static final LITTLE:I = 0x1

.field protected static final REVERSED_MARK:C = '\ufffe'


# instance fields
.field private byteOrder:I

.field private needsMark:Z

.field private final sgp:Lj$/sun/nio/cs/Surrogate$Parser;

.field private usesMark:Z


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;IZ)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "bo"    # I
    .param p3, "m"    # Z

    .line 47
    nop

    .line 49
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_0

    const/high16 v1, 0x40800000    # 4.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 51
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, -0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez p2, :cond_1

    .line 52
    new-array v6, v6, [B

    aput-byte v2, v6, v5

    aput-byte v4, v6, v3

    goto :goto_1

    .line 53
    :cond_1
    new-array v6, v6, [B

    aput-byte v4, v6, v5

    aput-byte v2, v6, v3

    .line 47
    :goto_1
    invoke-direct {p0, p1, v0, v1, v6}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 68
    new-instance v0, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Lj$/sun/nio/cs/UnicodeEncoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 54
    iput-boolean p3, p0, Lj$/sun/nio/cs/UnicodeEncoder;->needsMark:Z

    iput-boolean p3, p0, Lj$/sun/nio/cs/UnicodeEncoder;->usesMark:Z

    .line 55
    iput p2, p0, Lj$/sun/nio/cs/UnicodeEncoder;->byteOrder:I

    .line 56
    return-void
.end method

.method private put(CLjava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 59
    iget v0, p0, Lj$/sun/nio/cs/UnicodeEncoder;->byteOrder:I

    if-nez v0, :cond_0

    .line 60
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 63
    :cond_0
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 66
    :goto_0
    return-void
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 109
    invoke-static {p1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 6
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 73
    .local v0, "mark":I
    iget-boolean v1, p0, Lj$/sun/nio/cs/UnicodeEncoder;->needsMark:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 75
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1

    .line 76
    :cond_0
    const v1, 0xfeff

    invoke-direct {p0, v1, p2}, Lj$/sun/nio/cs/UnicodeEncoder;->put(CLjava/nio/ByteBuffer;)V

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lj$/sun/nio/cs/UnicodeEncoder;->needsMark:Z

    .line 80
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 82
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_2

    .line 84
    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 84
    return-object v2

    .line 85
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 86
    :try_start_1
    invoke-direct {p0, v1, p2}, Lj$/sun/nio/cs/UnicodeEncoder;->put(CLjava/nio/ByteBuffer;)V

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    iget-object v3, p0, Lj$/sun/nio/cs/UnicodeEncoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3, v1, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    .line 90
    .local v3, "d":I
    if-gez v3, :cond_4

    .line 91
    iget-object v2, p0, Lj$/sun/nio/cs/UnicodeEncoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 91
    return-object v2

    .line 92
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_5

    .line 93
    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 93
    return-object v2

    .line 94
    :cond_5
    add-int/lit8 v0, v0, 0x2

    .line 95
    :try_start_3
    invoke-static {v3}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v4

    invoke-direct {p0, v4, p2}, Lj$/sun/nio/cs/UnicodeEncoder;->put(CLjava/nio/ByteBuffer;)V

    .line 96
    invoke-static {v3}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v4

    invoke-direct {p0, v4, p2}, Lj$/sun/nio/cs/UnicodeEncoder;->put(CLjava/nio/ByteBuffer;)V

    .line 97
    .end local v1    # "c":C
    .end local v3    # "d":I
    goto :goto_0

    .line 98
    :cond_6
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 98
    return-object v1

    .line 100
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 101
    throw v1
.end method

.method protected implReset()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lj$/sun/nio/cs/UnicodeEncoder;->usesMark:Z

    iput-boolean v0, p0, Lj$/sun/nio/cs/UnicodeEncoder;->needsMark:Z

    .line 106
    return-void
.end method
