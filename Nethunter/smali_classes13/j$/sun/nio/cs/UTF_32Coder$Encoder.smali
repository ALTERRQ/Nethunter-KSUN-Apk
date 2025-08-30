.class public Lj$/sun/nio/cs/UTF_32Coder$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "UTF_32Coder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/UTF_32Coder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Encoder"
.end annotation


# instance fields
.field private byteOrder:I

.field private doBOM:Z

.field private doneBOM:Z


# direct methods
.method protected constructor <init>(Ljava/nio/charset/Charset;IZ)V
    .locals 9
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "byteOrder"    # I
    .param p3, "doBOM"    # Z

    .line 136
    nop

    .line 137
    const/high16 v0, 0x40800000    # 4.0f

    if-eqz p3, :cond_0

    const/high16 v1, 0x41000000    # 8.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    .line 138
    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne p2, v7, :cond_1

    new-array v6, v6, [B

    aput-byte v8, v6, v8

    aput-byte v8, v6, v7

    aput-byte v4, v6, v3

    aput-byte v5, v6, v2

    goto :goto_1

    .line 139
    :cond_1
    new-array v6, v6, [B

    aput-byte v5, v6, v8

    aput-byte v4, v6, v7

    aput-byte v8, v6, v3

    aput-byte v8, v6, v2

    .line 136
    :goto_1
    invoke-direct {p0, p1, v0, v1, v6}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF[B)V

    .line 117
    iput-boolean v8, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->doBOM:Z

    .line 118
    iput-boolean v7, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    .line 140
    iput p2, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->byteOrder:I

    .line 141
    iput-boolean p3, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->doBOM:Z

    .line 142
    xor-int/lit8 v0, p3, 0x1

    iput-boolean v0, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    .line 143
    return-void
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 6
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 147
    .local v0, "mark":I
    iget-boolean v1, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 149
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v1

    .line 150
    :cond_0
    const v1, 0xfeff

    invoke-virtual {p0, v1, p2}, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->put(ILjava/nio/ByteBuffer;)V

    .line 151
    iput-boolean v3, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    .line 154
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 155
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 156
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 157
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 158
    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 158
    return-object v2

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 160
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->put(ILjava/nio/ByteBuffer;)V

    goto :goto_1

    .line 161
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 162
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_4

    .line 163
    sget-object v2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 163
    return-object v2

    .line 164
    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    .line 165
    .local v4, "low":C
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 166
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v2, :cond_5

    .line 167
    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 167
    return-object v2

    .line 168
    :cond_5
    add-int/lit8 v0, v0, 0x2

    .line 169
    :try_start_3
    invoke-static {v1, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v5

    invoke-virtual {p0, v5, p2}, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->put(ILjava/nio/ByteBuffer;)V

    .line 173
    .end local v4    # "low":C
    nop

    .line 177
    .end local v1    # "c":C
    :goto_1
    goto :goto_0

    .line 171
    .restart local v1    # "c":C
    .restart local v4    # "low":C
    :cond_6
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 171
    return-object v2

    .line 175
    .end local v4    # "low":C
    :cond_7
    :try_start_4
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 175
    return-object v2

    .line 178
    .end local v1    # "c":C
    :cond_8
    :try_start_5
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 178
    return-object v1

    .line 180
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 181
    throw v1
.end method

.method protected implReset()V
    .locals 1

    .line 185
    iget-boolean v0, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->doBOM:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->doneBOM:Z

    .line 186
    return-void
.end method

.method protected put(ILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "cp"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 122
    iget v0, p0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;->byteOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 124
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 128
    :cond_0
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 129
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 130
    shr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    :goto_0
    return-void
.end method
