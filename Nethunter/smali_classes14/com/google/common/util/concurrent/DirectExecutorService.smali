.class final Lcom/google/common/util/concurrent/DirectExecutorService;
.super Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.source "DirectExecutorService.java"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private runningTasks:I

.field private shutdown:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->runningTasks:I

    .line 45
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->shutdown:Z

    return-void
.end method

.method private endTask()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->runningTasks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->runningTasks:I

    .line 125
    .local v1, "numRunning":I
    if-nez v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 128
    .end local v1    # "numRunning":I
    :cond_0
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startTask()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->shutdown:Z

    if-nez v1, :cond_0

    .line 117
    iget v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->runningTasks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->runningTasks:I

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 115
    :cond_0
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Executor already shutdown"

    invoke-direct {v1, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeout",
            "unit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 91
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 92
    .local v0, "nanos":J
    iget-object v2, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->shutdown:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->runningTasks:I

    if-nez v3, :cond_0

    .line 95
    monitor-exit v2

    const/4 v2, 0x1

    return v2

    .line 96
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gtz v5, :cond_1

    .line 97
    monitor-exit v2

    const/4 v2, 0x0

    return v2

    .line 99
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 100
    .local v3, "now":J
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 101
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sub-long/2addr v0, v5

    .line 102
    .end local v3    # "now":J
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/google/common/util/concurrent/DirectExecutorService;->startTask()V

    .line 52
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-direct {p0}, Lcom/google/common/util/concurrent/DirectExecutorService;->endTask()V

    .line 55
    nop

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/DirectExecutorService;->endTask()V

    .line 55
    throw v0
.end method

.method public isShutdown()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->shutdown:Z

    monitor-exit v0

    return v1

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminated()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->shutdown:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->runningTasks:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->shutdown:Z

    .line 69
    iget v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->runningTasks:I

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/google/common/util/concurrent/DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 72
    :cond_0
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/DirectExecutorService;->shutdown()V

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
