.class public Lj$/sun/nio/cs/UTF_32Coder$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "UTF_32Coder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/UTF_32Coder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Decoder"
.end annotation


# instance fields
.field private currentBO:I

.field private expectedBO:I


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;I)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "bo"    # I

    .line 47
    const/high16 v0, 0x3e800000    # 0.25f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v1}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 48
    iput p2, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    .line 50
    return-void
.end method

.method private getCP(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 53
    iget v0, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 57
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 60
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 53
    :goto_0
    return v0
.end method


# virtual methods
.method protected decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 66
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 70
    .local v0, "mark":I
    :try_start_0
    iget v2, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    const/4 v3, 0x2

    if-nez v2, :cond_4

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 75
    .local v2, "cp":I
    const v4, 0xfeff

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    iget v4, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    if-eq v4, v3, :cond_1

    .line 76
    iput v5, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    .line 77
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 78
    :cond_1
    const/high16 v4, -0x20000

    if-ne v2, v4, :cond_2

    iget v4, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    if-eq v4, v5, :cond_2

    .line 79
    iput v3, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    .line 80
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 82
    :cond_2
    iget v4, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    if-nez v4, :cond_3

    .line 83
    iput v5, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    goto :goto_0

    .line 85
    :cond_3
    iget v4, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->expectedBO:I

    iput v4, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    .line 86
    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 89
    .end local v2    # "cp":I
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_9

    .line 90
    invoke-direct {p0, p1}, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->getCP(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 91
    .restart local v2    # "cp":I
    invoke-static {v2}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 92
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_5

    .line 93
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 93
    return-object v1

    .line 94
    :cond_5
    add-int/lit8 v0, v0, 0x4

    .line 95
    int-to-char v4, v2

    :try_start_1
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_1

    .line 96
    :cond_6
    invoke-static {v2}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 97
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    if-ge v4, v3, :cond_7

    .line 98
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 98
    return-object v1

    .line 99
    :cond_7
    add-int/lit8 v0, v0, 0x4

    .line 100
    :try_start_2
    invoke-static {v2}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 101
    invoke-static {v2}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v4

    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_1

    .line 103
    :cond_8
    invoke-static {v1}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 103
    return-object v1

    .line 106
    .end local v2    # "cp":I
    :cond_9
    :try_start_3
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 106
    return-object v1

    .line 108
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 109
    throw v1
.end method

.method protected implReset()V
    .locals 1

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;->currentBO:I

    .line 113
    return-void
.end method
