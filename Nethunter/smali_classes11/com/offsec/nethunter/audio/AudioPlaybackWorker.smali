.class public Lcom/offsec/nethunter/audio/AudioPlaybackWorker;
.super Ljava/lang/Object;
.source "AudioPlaybackWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;
    }
.end annotation


# static fields
.field private static final LOOPS_PER_SECOND:I = 0x8


# instance fields
.field private audioBuffer:[B

.field private audioData:Ljava/io/InputStream;

.field private audioTrack:Landroid/media/AudioTrack;

.field private bufferPos:I

.field private byteRate:I

.field private chunkSize:I

.field private error:Ljava/lang/Throwable;

.field private final handler:Landroid/os/Handler;

.field private volatile headroomUsec:J

.field private final host:Ljava/lang/String;

.field private volatile latencyUsec:J

.field private final listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

.field private numSkip:I

.field private final port:I

.field private sock:Ljava/net/Socket;

.field private volatile stopped:Z

.field private waitingForBufferFill:Z

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Handler;Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "listener"    # Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->stopped:Z

    .line 33
    const-wide/16 v0, 0x7d

    iput-wide v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->headroomUsec:J

    .line 34
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->latencyUsec:J

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->waitingForBufferFill:Z

    .line 47
    iput-object p1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->host:Ljava/lang/String;

    .line 48
    iput p2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->port:I

    .line 49
    iput-object p3, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    iput-object p4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    .line 51
    iput-object p5, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    .line 52
    return-void
.end method

.method private cleanup()V
    .locals 5

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioBuffer:[B

    .line 233
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    const-class v2, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-eqz v1, :cond_0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error closing audioData in cleanup()"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 243
    :try_start_1
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    goto :goto_1

    .line 244
    :catch_1
    move-exception v1

    .line 245
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error closing socket in cleanup()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 253
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    .line 256
    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    .line 258
    :cond_3
    return-void
.end method

.method private connect()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 273
    .local v0, "addresses":[Ljava/net/InetAddress;
    array-length v1, v0

    if-eqz v1, :cond_4

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 278
    aget-object v2, v0, v1

    .line 280
    .local v2, "address":Ljava/net/InetAddress;
    const/4 v3, 0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    .line 282
    iget-boolean v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->stopped:Z

    if-nez v4, :cond_0

    .line 285
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    .line 286
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :try_start_2
    iget-object v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3, v5}, Ljava/net/Socket;->setPerformancePreferences(III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :try_start_3
    iget-object v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    new-instance v5, Ljava/net/InetSocketAddress;

    iget v6, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->port:I

    invoke-direct {v5, v2, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 294
    nop

    .line 297
    return-void

    .line 290
    :catch_0
    move-exception v4

    .line 291
    .local v4, "e":Ljava/net/ConnectException;
    :try_start_4
    const-class v5, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    iget-object v5, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v4}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;Ljava/net/ConnectException;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 293
    return-void

    .line 283
    .end local v4    # "e":Ljava/net/ConnectException;
    :cond_0
    :try_start_5
    new-instance v4, Lcom/offsec/nethunter/exception/AudioStoppedException;

    invoke-direct {v4}, Lcom/offsec/nethunter/exception/AudioStoppedException;-><init>()V

    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .end local v1    # "i":I
    .end local v2    # "address":Ljava/net/InetAddress;
    throw v4

    .line 286
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    .restart local v1    # "i":I
    .restart local v2    # "address":Ljava/net/InetAddress;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "addresses":[Ljava/net/InetAddress;
    .end local v1    # "i":I
    .end local v2    # "address":Ljava/net/InetAddress;
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 298
    .restart local v0    # "addresses":[Ljava/net/InetAddress;
    .restart local v1    # "i":I
    .restart local v2    # "address":Ljava/net/InetAddress;
    :catch_1
    move-exception v4

    .line 300
    .local v4, "connException":Ljava/io/IOException;
    :try_start_7
    iget-object v5, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    if-eqz v5, :cond_1

    .line 301
    iget-object v5, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 305
    :cond_1
    goto :goto_1

    .line 303
    :catch_2
    move-exception v5

    .line 304
    .local v5, "e":Ljava/io/IOException;
    const-class v6, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing socket: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    array-length v5, v0

    sub-int/2addr v5, v3

    if-eq v1, v5, :cond_2

    .line 277
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v4    # "connException":Ljava/io/IOException;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 309
    .restart local v2    # "address":Ljava/net/InetAddress;
    .restart local v4    # "connException":Ljava/io/IOException;
    :cond_2
    throw v4

    .line 314
    .end local v1    # "i":I
    .end local v2    # "address":Ljava/net/InetAddress;
    .end local v4    # "connException":Ljava/io/IOException;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "should never happen"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 274
    :cond_4
    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "No addresses returned by InetAddress.getAllByName()"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private manageBufferSize()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->latencyUsec:J

    .line 162
    .local v1, "latencyUsec":J
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-ltz v6, :cond_3

    .line 163
    iget-wide v3, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->headroomUsec:J

    add-long/2addr v3, v1

    .line 164
    .local v3, "bufUsecTotal":J
    iget v6, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->byteRate:I

    int-to-long v6, v6

    mul-long v6, v6, v1

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    .line 165
    .local v6, "latencyBytes":J
    iget v10, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->byteRate:I

    int-to-long v10, v10

    mul-long v10, v10, v3

    div-long/2addr v10, v8

    long-to-int v8, v10

    .line 167
    .local v8, "bufferSize":I
    iget-object v9, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 169
    .local v9, "available":I
    int-to-long v10, v9

    cmp-long v12, v10, v6

    if-lez v12, :cond_0

    .line 170
    iput-boolean v5, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->waitingForBufferFill:Z

    .line 173
    :cond_0
    if-le v9, v8, :cond_2

    .line 176
    iget v10, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->numSkip:I

    add-int/2addr v10, v9

    int-to-long v10, v10

    sub-long/2addr v10, v6

    .line 177
    .local v10, "wantSkip":J
    iget-object v12, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    invoke-virtual {v12, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v12

    .line 180
    .local v12, "actual":J
    iget v14, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    int-to-long v14, v14

    add-long/2addr v14, v12

    const-wide/16 v16, 0x3

    and-long v14, v14, v16

    long-to-int v15, v14

    .line 181
    .local v15, "malign":I
    if-eqz v15, :cond_1

    .line 182
    rsub-int/lit8 v14, v15, 0x4

    iput v14, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->numSkip:I

    goto :goto_0

    .line 184
    :cond_1
    iput v5, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->numSkip:I

    .line 186
    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipped: wantSkip="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " actual="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " numSkip="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v14, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->numSkip:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " bufferPos="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v14, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "Worker"

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v5, 0x0

    iput v5, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    .line 189
    .end local v3    # "bufUsecTotal":J
    .end local v6    # "latencyBytes":J
    .end local v8    # "bufferSize":I
    .end local v9    # "available":I
    .end local v10    # "wantSkip":J
    .end local v12    # "actual":J
    .end local v15    # "malign":I
    :cond_2
    goto :goto_1

    .line 191
    :cond_3
    iput-boolean v5, v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->waitingForBufferFill:Z

    .line 193
    :goto_1
    return-void
.end method

.method private readFromSocket()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->chunkSize:I

    iget v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    sub-int/2addr v0, v1

    .line 200
    .local v0, "wantRead":I
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioBuffer:[B

    iget v3, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 201
    .local v1, "nRead":I
    if-ltz v1, :cond_0

    .line 204
    iget v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    .line 205
    return-void

    .line 202
    :cond_0
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "Connection closed"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setup()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    const v0, 0xbb80

    .line 126
    .local v0, "sampleRate":I
    const v1, 0x2ee00

    iput v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->byteRate:I

    .line 128
    const/16 v1, 0xc

    const/4 v2, 0x2

    const v3, 0xbb80

    invoke-static {v3, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 132
    .local v1, "minBufferSize":I
    iget v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->byteRate:I

    div-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->chunkSize:I

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup: minBufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-double v3, v1

    iget v5, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->byteRate:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "us) chunkSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->chunkSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioPlaybackWorker"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->connect()V

    .line 139
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioData:Ljava/io/InputStream;

    .line 142
    new-instance v2, Landroid/media/AudioTrack;

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x3

    const v6, 0xbb80

    const/16 v7, 0xc

    move-object v4, v2

    move v9, v1

    invoke-direct/range {v4 .. v10}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    .line 146
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 151
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    .line 153
    const/4 v2, 0x0

    iput v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    .line 154
    iput v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->numSkip:I

    .line 155
    iget v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->chunkSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioBuffer:[B

    .line 156
    return-void

    .line 147
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not initialize AudioTrack. state == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    .line 149
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeToAudioTrack()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->numSkip:I

    .line 210
    .local v0, "writeStart":I
    iget v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    iget v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->numSkip:I

    sub-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x4

    .line 212
    .local v1, "wantWrite":I
    const/4 v2, 0x0

    .line 213
    .local v2, "sizeWrite":I
    if-lez v1, :cond_0

    .line 214
    iget-object v3, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioBuffer:[B

    invoke-virtual {v3, v4, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    .line 217
    :cond_0
    if-ltz v2, :cond_2

    .line 220
    if-lez v2, :cond_1

    .line 222
    add-int v3, v0, v2

    .line 223
    .local v3, "writeEnd":I
    iget v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    sub-int/2addr v4, v3

    .line 224
    .local v4, "len":I
    iget-object v5, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioBuffer:[B

    iget-object v6, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioBuffer:[B

    const/4 v7, 0x0

    invoke-static {v5, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    iput v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->bufferPos:I

    .line 226
    iput v7, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->numSkip:I

    .line 229
    .end local v3    # "writeEnd":I
    .end local v4    # "len":I
    :cond_1
    return-void

    .line 218
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioTrack.write() returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$connect$6$com-offsec-nethunter-audio-AudioPlaybackWorker(Ljava/net/ConnectException;)V
    .locals 1
    .param p1, "e"    # Ljava/net/ConnectException;

    .line 292
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0, p1}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;->onPlaybackError(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$run$0$com-offsec-nethunter-audio-AudioPlaybackWorker()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;->onPlaybackStarted(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$1$com-offsec-nethunter-audio-AudioPlaybackWorker()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;->onPlaybackBuffering(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$2$com-offsec-nethunter-audio-AudioPlaybackWorker()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;->onPlaybackStopped(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$3$com-offsec-nethunter-audio-AudioPlaybackWorker()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;->onPlaybackStopped(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$4$com-offsec-nethunter-audio-AudioPlaybackWorker()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;->onPlaybackStopped(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    return-void
.end method

.method synthetic lambda$run$5$com-offsec-nethunter-audio-AudioPlaybackWorker(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .line 116
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->listener:Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;

    invoke-interface {v0, p0, p1}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;->onPlaybackError(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;Ljava/lang/Throwable;)V

    return-void
.end method

.method public run()V
    .locals 5

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->setup()V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "didBuffer":Z
    const/4 v1, 0x0

    .line 82
    .local v1, "started":Z
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->stopped:Z

    if-nez v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 84
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->manageBufferSize()V

    .line 86
    iget-boolean v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->waitingForBufferFill:Z

    if-nez v2, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->readFromSocket()V

    .line 89
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->writeToAudioTrack()V

    .line 91
    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x1

    .line 93
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 96
    :cond_1
    if-nez v0, :cond_2

    .line 97
    const/4 v0, 0x1

    .line 98
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    :cond_2
    const-wide/16 v2, 0x7d

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/offsec/nethunter/exception/AudioStoppedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    nop

    .end local v0    # "didBuffer":Z
    .end local v1    # "started":Z
    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-boolean v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->stopped:Z

    if-eqz v1, :cond_4

    instance-of v1, v0, Ljava/net/SocketException;

    if-eqz v1, :cond_4

    .line 112
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 114
    :cond_4
    const-class v1, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopWithError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->error:Ljava/lang/Throwable;

    .line 116
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 107
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Lcom/offsec/nethunter/exception/AudioStoppedException;
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    nop

    .end local v0    # "e":Lcom/offsec/nethunter/exception/AudioStoppedException;
    :goto_2
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->cleanup()V

    .line 120
    nop

    .line 121
    return-void

    .line 119
    :goto_3
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->cleanup()V

    .line 120
    throw v0
.end method

.method public setBufferUsec(JJ)V
    .locals 0
    .param p1, "headroomUsec"    # J
    .param p3, "latencyUsec"    # J

    .line 318
    iput-wide p1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->headroomUsec:J

    .line 319
    iput-wide p3, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->latencyUsec:J

    .line 320
    return-void
.end method

.method public stop()V
    .locals 4

    .line 56
    monitor-enter p0

    .line 57
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->stopped:Z

    .line 58
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->sock:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 64
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-class v2, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error closing socket in stop()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .end local v0    # "s":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
