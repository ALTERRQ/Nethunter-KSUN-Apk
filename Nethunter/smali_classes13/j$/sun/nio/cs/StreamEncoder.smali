.class public Lj$/sun/nio/cs/StreamEncoder;
.super Ljava/io/Writer;
.source "StreamEncoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/WritableByteChannel;

.field private volatile closed:Z

.field private cs:Ljava/nio/charset/Charset;

.field private encoder:Ljava/nio/charset/CharsetEncoder;

.field private haveLeftoverChar:Z

.field private lcb:Ljava/nio/CharBuffer;

.field private leftoverChar:C

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    .line 187
    nop

    .line 188
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 189
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 190
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 187
    invoke-direct {p0, p1, p2, v0}, Lj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    .line 191
    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "enc"    # Ljava/nio/charset/CharsetEncoder;

    .line 194
    invoke-direct {p0, p2}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    .line 195
    iput-object p1, p0, Lj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    .line 196
    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    .line 197
    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    .line 198
    iput-object p3, p0, Lj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 206
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_0

    .line 207
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    .line 209
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V
    .locals 1
    .param p1, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p3, "mbc"    # I

    .line 211
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    .line 212
    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    .line 213
    iput-object p1, p0, Lj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    .line 214
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    .line 215
    iput-object p2, p0, Lj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 216
    if-gez p3, :cond_0

    .line 217
    const/16 v0, 0x2000

    goto :goto_0

    .line 218
    :cond_0
    move v0, p3

    .line 216
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    .line 219
    return-void
.end method

.method private ensureOpen()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lj$/sun/nio/cs/StreamEncoder;->closed:Z

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flushLeftoverChar(Ljava/nio/CharBuffer;Z)V
    .locals 3
    .param p1, "cb"    # Ljava/nio/CharBuffer;
    .param p2, "endOfInput"    # Z

    .line 242
    iget-boolean v0, p0, Lj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 243
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    if-nez v0, :cond_1

    .line 245
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 248
    :goto_0
    iget-boolean v0, p0, Lj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-char v1, p0, Lj$/sun/nio/cs/StreamEncoder;->leftoverChar:C

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 250
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 252
    :cond_3
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    .line 253
    :goto_1
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_6

    .line 254
    :cond_4
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, p2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 255
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 257
    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    iput-char v1, p0, Lj$/sun/nio/cs/StreamEncoder;->leftoverChar:C

    .line 258
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 259
    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 260
    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->lcb:Ljava/nio/CharBuffer;

    iget-char v2, p0, Lj$/sun/nio/cs/StreamEncoder;->leftoverChar:C

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 261
    goto :goto_1

    .line 263
    :cond_5
    return-void

    .line 274
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 275
    return-void

    .line 267
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_7
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 268
    nop

    .line 269
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    .line 270
    goto :goto_1

    .line 272
    :cond_8
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 273
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_1
.end method

.method public static forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lj$/sun/nio/cs/StreamEncoder;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCap"    # I

    .line 85
    new-instance v0, Lj$/sun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)V

    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/lang/String;)Lj$/sun/nio/cs/StreamEncoder;
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "charsetName"    # Ljava/lang/String;

    .line 54
    move-object v0, p2

    .line 55
    .local v0, "csn":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    new-instance v1, Lj$/sun/nio/cs/StreamEncoder;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 60
    :catch_0
    move-exception v1

    :cond_1
    nop

    .line 61
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lj$/sun/nio/cs/StreamEncoder;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .line 68
    new-instance v0, Lj$/sun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static forOutputStreamWriter(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)Lj$/sun/nio/cs/StreamEncoder;
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "enc"    # Ljava/nio/charset/CharsetEncoder;

    .line 75
    new-instance v0, Lj$/sun/nio/cs/StreamEncoder;

    invoke-direct {v0, p0, p1, p2}, Lj$/sun/nio/cs/StreamEncoder;-><init>(Ljava/io/OutputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetEncoder;)V

    return-object v0
.end method

.method private isOpen()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lj$/sun/nio/cs/StreamEncoder;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private writeBytes()V
    .locals 6

    .line 222
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 223
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 224
    .local v0, "lim":I
    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 225
    .local v1, "pos":I
    nop

    .line 226
    if-gt v1, v0, :cond_0

    sub-int v2, v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 228
    .local v2, "rem":I
    :goto_0
    if-lez v2, :cond_2

    .line 229
    iget-object v3, p0, Lj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Lj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 231
    goto :goto_1

    .line 233
    :cond_1
    iget-object v3, p0, Lj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 236
    :cond_2
    :goto_1
    iget-object v3, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 237
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 158
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-boolean v1, p0, Lj$/sun/nio/cs/StreamEncoder;->closed:Z

    if-eqz v1, :cond_0

    .line 160
    monitor-exit v0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamEncoder;->implClose()V

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/sun/nio/cs/StreamEncoder;->closed:Z

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method encodingName()Ljava/lang/String;
    .locals 1

    .line 349
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lj$/sun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lj$/sun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lj$/sun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_0
    return-object v0
.end method

.method public flush()V
    .locals 2

    .line 151
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->ensureOpen()V

    .line 153
    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamEncoder;->implFlush()V

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flushBuffer()V
    .locals 3

    .line 102
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamEncoder;->implFlushBuffer()V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 106
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 96
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamEncoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method implClose()V
    .locals 2

    .line 322
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lj$/sun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    .line 325
    :goto_0
    :try_start_0
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 326
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    nop

    .line 336
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 337
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    .line 338
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->ch:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    goto :goto_1

    .line 341
    :cond_1
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 345
    :goto_1
    nop

    .line 346
    return-void

    .line 328
    .restart local v0    # "cr":Ljava/nio/charset/CoderResult;
    :cond_2
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    nop

    .line 330
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    .line 331
    goto :goto_0

    .line 333
    :cond_3
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "x":Ljava/io/IOException;
    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 344
    throw v0
.end method

.method implFlush()V
    .locals 1

    .line 316
    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamEncoder;->implFlushBuffer()V

    .line 317
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 319
    :cond_0
    return-void
.end method

.method implFlushBuffer()V
    .locals 1

    .line 311
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    .line 313
    :cond_0
    return-void
.end method

.method implWrite(Ljava/nio/CharBuffer;)V
    .locals 3
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .line 287
    iget-boolean v0, p0, Lj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 288
    invoke-direct {p0, p1, v1}, Lj$/sun/nio/cs/StreamEncoder;->flushLeftoverChar(Ljava/nio/CharBuffer;Z)V

    .line 291
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lj$/sun/nio/cs/StreamEncoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 293
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    nop

    .line 295
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 296
    iput-boolean v2, p0, Lj$/sun/nio/cs/StreamEncoder;->haveLeftoverChar:Z

    .line 297
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    iput-char v1, p0, Lj$/sun/nio/cs/StreamEncoder;->leftoverChar:C

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    nop

    .line 303
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->writeBytes()V

    .line 304
    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 307
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_0

    .line 308
    :cond_3
    :goto_1
    return-void
.end method

.method implWrite([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 280
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 281
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {p0, v0}, Lj$/sun/nio/cs/StreamEncoder;->implWrite(Ljava/nio/CharBuffer;)V

    .line 282
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "c"    # I

    .line 111
    const/4 v0, 0x1

    new-array v1, v0, [C

    .line 112
    .local v1, "cbuf":[C
    int-to-char v2, p1

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 113
    invoke-virtual {p0, v1, v3, v0}, Lj$/sun/nio/cs/StreamEncoder;->write([CII)V

    .line 114
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 131
    if-ltz p3, :cond_0

    .line 133
    new-array v0, p3, [C

    .line 134
    .local v0, "cbuf":[C
    add-int v1, p2, p3

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 135
    invoke-virtual {p0, v0, v2, p3}, Lj$/sun/nio/cs/StreamEncoder;->write([CII)V

    .line 136
    return-void

    .line 132
    .end local v0    # "cbuf":[C
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/CharBuffer;)V
    .locals 3
    .param p1, "cb"    # Ljava/nio/CharBuffer;

    .line 139
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 141
    .local v0, "position":I
    :try_start_0
    iget-object v1, p0, Lj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->ensureOpen()V

    .line 143
    invoke-virtual {p0, p1}, Lj$/sun/nio/cs/StreamEncoder;->implWrite(Ljava/nio/CharBuffer;)V

    .line 144
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 147
    nop

    .line 148
    return-void

    .line 144
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "position":I
    .end local p1    # "cb":Ljava/nio/CharBuffer;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    .restart local v0    # "position":I
    .restart local p1    # "cb":Ljava/nio/CharBuffer;
    :catchall_1
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 147
    throw v1
.end method

.method public write([CII)V
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 117
    iget-object v0, p0, Lj$/sun/nio/cs/StreamEncoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamEncoder;->ensureOpen()V

    .line 119
    if-ltz p2, :cond_1

    array-length v1, p1

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_1

    add-int v1, p2, p3

    if-ltz v1, :cond_1

    .line 122
    if-nez p3, :cond_0

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lj$/sun/nio/cs/StreamEncoder;->implWrite([CII)V

    .line 126
    monitor-exit v0

    .line 127
    return-void

    .line 121
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 126
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
