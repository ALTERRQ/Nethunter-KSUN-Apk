.class public Lj$/sun/nio/cs/StreamDecoder;
.super Ljava/io/Reader;
.source "StreamDecoder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_BYTE_BUFFER_SIZE:I = 0x2000

.field private static final MIN_BYTE_BUFFER_SIZE:I = 0x20

.field private static volatile channelsAvailable:Z


# instance fields
.field private bb:Ljava/nio/ByteBuffer;

.field private ch:Ljava/nio/channels/ReadableByteChannel;

.field private volatile closed:Z

.field private cs:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private haveLeftoverChar:Z

.field private in:Ljava/io/InputStream;

.field private leftoverChar:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    nop

    .line 209
    const/4 v0, 0x1

    sput-boolean v0, Lj$/sun/nio/cs/StreamDecoder;->channelsAvailable:Z

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "cs"    # Ljava/nio/charset/Charset;

    .line 231
    nop

    .line 232
    invoke-virtual {p3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 233
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 234
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 231
    invoke-direct {p0, p1, p2, v0}, Lj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    .line 235
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .line 238
    invoke-direct {p0, p2}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 239
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    .line 240
    iput-object p3, p0, Lj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 248
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-nez v0, :cond_0

    .line 249
    iput-object p1, p0, Lj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 251
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    .line 253
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 254
    return-void
.end method

.method constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V
    .locals 1
    .param p1, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p3, "mbc"    # I

    .line 256
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    .line 258
    iput-object p1, p0, Lj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 259
    iput-object p2, p0, Lj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 260
    invoke-virtual {p2}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    .line 261
    if-gez p3, :cond_0

    .line 262
    const/16 v0, 0x2000

    goto :goto_0

    .line 263
    :cond_0
    const/16 v0, 0x20

    if-ge p3, v0, :cond_1

    .line 264
    goto :goto_0

    .line 265
    :cond_1
    move v0, p3

    .line 261
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    .line 266
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 267
    return-void
.end method

.method private ensureOpen()V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lj$/sun/nio/cs/StreamDecoder;->closed:Z

    if-nez v0, :cond_0

    .line 47
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lj$/sun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCap"    # I

    .line 95
    new-instance v0, Lj$/sun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)V

    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/lang/String;)Lj$/sun/nio/cs/StreamDecoder;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "charsetName"    # Ljava/lang/String;

    .line 64
    move-object v0, p2

    .line 65
    .local v0, "csn":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Lj$/sun/nio/cs/StreamDecoder;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    :catch_0
    move-exception v1

    :cond_1
    nop

    .line 71
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, v0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)Lj$/sun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "cs"    # Ljava/nio/charset/Charset;

    .line 78
    new-instance v0, Lj$/sun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static forInputStreamReader(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)Lj$/sun/nio/cs/StreamDecoder;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "dec"    # Ljava/nio/charset/CharsetDecoder;

    .line 85
    new-instance v0, Lj$/sun/nio/cs/StreamDecoder;

    invoke-direct {v0, p0, p1, p2}, Lj$/sun/nio/cs/StreamDecoder;-><init>(Ljava/io/InputStream;Ljava/lang/Object;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method private static getChannel(Ljava/io/FileInputStream;)Ljava/nio/channels/FileChannel;
    .locals 3
    .param p0, "in"    # Ljava/io/FileInputStream;

    .line 212
    sget-boolean v0, Lj$/sun/nio/cs/StreamDecoder;->channelsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 213
    return-object v1

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "x":Ljava/lang/UnsatisfiedLinkError;
    const/4 v2, 0x0

    sput-boolean v2, Lj$/sun/nio/cs/StreamDecoder;->channelsAvailable:Z

    .line 218
    return-object v1
.end method

.method private inReady()Z
    .locals 2

    .line 363
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    instance-of v1, v1, Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 365
    :catch_0
    move-exception v1

    .line 366
    .local v1, "x":Ljava/io/IOException;
    return v0
.end method

.method private isOpen()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lj$/sun/nio/cs/StreamDecoder;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private read0()I
    .locals 6

    .line 117
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-boolean v1, p0, Lj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 121
    iput-boolean v2, p0, Lj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 122
    iget-char v1, p0, Lj$/sun/nio/cs/StreamDecoder;->leftoverChar:C

    monitor-exit v0

    return v1

    .line 126
    :cond_0
    const/4 v1, 0x2

    new-array v3, v1, [C

    .line 127
    .local v3, "cb":[C
    invoke-virtual {p0, v3, v2, v1}, Lj$/sun/nio/cs/StreamDecoder;->read([CII)I

    move-result v1

    .line 128
    .local v1, "n":I
    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_0

    .line 138
    :pswitch_0
    goto :goto_0

    .line 132
    :pswitch_1
    const/4 v4, 0x1

    aget-char v5, v3, v4

    iput-char v5, p0, Lj$/sun/nio/cs/StreamDecoder;->leftoverChar:C

    .line 133
    iput-boolean v4, p0, Lj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 136
    :pswitch_2
    aget-char v2, v3, v2

    monitor-exit v0

    return v2

    .line 130
    :pswitch_3
    monitor-exit v0

    return v4

    .line 139
    :goto_0
    monitor-exit v0

    return v4

    .line 141
    .end local v1    # "n":I
    .end local v3    # "cb":[C
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readBytes()I
    .locals 6

    .line 270
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 272
    :try_start_0
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    iget-object v1, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 276
    nop

    .line 295
    iget-object v1, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 276
    return v0

    .line 277
    .end local v0    # "n":I
    :cond_0
    goto :goto_1

    .line 279
    :cond_1
    :try_start_1
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 280
    .local v0, "lim":I
    iget-object v1, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 281
    .local v1, "pos":I
    nop

    .line 282
    if-gt v1, v0, :cond_2

    sub-int v2, v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 283
    .local v2, "rem":I
    :goto_0
    nop

    .line 284
    iget-object v3, p0, Lj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    iget-object v5, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    .local v3, "n":I
    if-gez v3, :cond_3

    .line 286
    nop

    .line 295
    iget-object v4, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 286
    return v3

    .line 287
    :cond_3
    if-eqz v3, :cond_4

    .line 289
    nop

    .line 290
    :try_start_2
    iget-object v4, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    add-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    .end local v0    # "lim":I
    .end local v1    # "pos":I
    .end local v2    # "rem":I
    .end local v3    # "n":I
    :goto_1
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 296
    nop

    .line 298
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 299
    .local v0, "rem":I
    nop

    .line 300
    return v0

    .line 288
    .local v0, "lim":I
    .restart local v1    # "pos":I
    .restart local v2    # "rem":I
    .restart local v3    # "n":I
    :cond_4
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Underlying input stream returned zero bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    .end local v0    # "lim":I
    .end local v1    # "pos":I
    .end local v2    # "rem":I
    .end local v3    # "n":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 296
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 190
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-boolean v1, p0, Lj$/sun/nio/cs/StreamDecoder;->closed:Z

    if-eqz v1, :cond_0

    .line 192
    monitor-exit v0

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamDecoder;->implClose()V

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lj$/sun/nio/cs/StreamDecoder;->closed:Z

    .line 195
    monitor-exit v0

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method encodingName()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lj$/sun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lj$/sun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lj$/sun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamDecoder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamDecoder;->encodingName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method implClose()V
    .locals 1

    .line 375
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 379
    :goto_0
    return-void
.end method

.method implRead([CII)I
    .locals 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "end"    # I

    .line 309
    nop

    .line 311
    sub-int v0, p3, p2

    invoke-static {p1, p2, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 312
    .local v0, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 316
    :cond_0
    const/4 v1, 0x0

    .line 318
    .local v1, "eof":Z
    :cond_1
    :goto_0
    iget-object v2, p0, Lj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    .line 319
    .local v2, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 320
    if-eqz v1, :cond_2

    .line 321
    goto :goto_1

    .line 322
    :cond_2
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_3

    .line 323
    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    if-lez v3, :cond_4

    invoke-direct {p0}, Lj$/sun/nio/cs/StreamDecoder;->inReady()Z

    move-result v3

    if-nez v3, :cond_4

    .line 325
    goto :goto_1

    .line 326
    :cond_4
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamDecoder;->readBytes()I

    move-result v3

    .line 327
    .local v3, "n":I
    if-gez v3, :cond_1

    .line 328
    const/4 v1, 0x1

    .line 329
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_5

    .line 330
    goto :goto_1

    .line 331
    :cond_5
    iget-object v4, p0, Lj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v4}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    goto :goto_0

    .line 335
    .end local v3    # "n":I
    :cond_6
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 336
    nop

    .line 342
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    :goto_1
    if-eqz v1, :cond_7

    .line 344
    iget-object v2, p0, Lj$/sun/nio/cs/StreamDecoder;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 347
    :cond_7
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    if-nez v2, :cond_9

    .line 348
    if-eqz v1, :cond_8

    .line 349
    const/4 v2, -0x1

    return v2

    .line 350
    :cond_8
    nop

    .line 352
    :cond_9
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    return v2

    .line 339
    .restart local v2    # "cr":Ljava/nio/charset/CoderResult;
    :cond_a
    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 340
    .end local v2    # "cr":Ljava/nio/charset/CoderResult;
    goto :goto_0
.end method

.method implReady()Z
    .locals 1

    .line 371
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lj$/sun/nio/cs/StreamDecoder;->inReady()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public read()I
    .locals 1

    .line 112
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamDecoder;->read0()I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 145
    move v0, p2

    .line 146
    .local v0, "off":I
    move v1, p3

    .line 147
    .local v1, "len":I
    iget-object v2, p0, Lj$/sun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_0
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamDecoder;->ensureOpen()V

    .line 149
    if-ltz v0, :cond_6

    array-length v3, p1

    if-gt v0, v3, :cond_6

    if-ltz v1, :cond_6

    add-int v3, v0, v1

    array-length v4, p1

    if-gt v3, v4, :cond_6

    add-int v3, v0, v1

    if-ltz v3, :cond_6

    .line 153
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 154
    monitor-exit v2

    return v3

    .line 156
    :cond_0
    const/4 v4, 0x0

    .line 158
    .local v4, "n":I
    iget-boolean v5, p0, Lj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-eqz v5, :cond_2

    .line 160
    iget-char v5, p0, Lj$/sun/nio/cs/StreamDecoder;->leftoverChar:C

    aput-char v5, p1, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 162
    iput-boolean v3, p0, Lj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    .line 163
    const/4 v4, 0x1

    .line 164
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamDecoder;->implReady()Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    :cond_1
    monitor-exit v2

    return v4

    .line 169
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 171
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamDecoder;->read0()I

    move-result v3

    .line 172
    .local v3, "c":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    .line 173
    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    monitor-exit v2

    return v5

    .line 174
    :cond_4
    int-to-char v5, v3

    aput-char v5, p1, v0

    .line 175
    add-int/lit8 v5, v4, 0x1

    monitor-exit v2

    return v5

    .line 178
    .end local v3    # "c":I
    :cond_5
    add-int v3, v0, v1

    invoke-virtual {p0, p1, v0, v3}, Lj$/sun/nio/cs/StreamDecoder;->implRead([CII)I

    move-result v3

    add-int/2addr v3, v4

    monitor-exit v2

    return v3

    .line 151
    .end local v4    # "n":I
    :cond_6
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local v0    # "off":I
    .end local v1    # "len":I
    .end local p1    # "cbuf":[C
    .end local p2    # "offset":I
    .end local p3    # "length":I
    throw v3

    .line 179
    .restart local v0    # "off":I
    .restart local v1    # "len":I
    .restart local p1    # "cbuf":[C
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public ready()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lj$/sun/nio/cs/StreamDecoder;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-direct {p0}, Lj$/sun/nio/cs/StreamDecoder;->ensureOpen()V

    .line 185
    iget-boolean v1, p0, Lj$/sun/nio/cs/StreamDecoder;->haveLeftoverChar:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lj$/sun/nio/cs/StreamDecoder;->implReady()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
