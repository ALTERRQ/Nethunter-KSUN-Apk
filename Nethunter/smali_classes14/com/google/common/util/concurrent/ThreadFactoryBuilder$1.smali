.class Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->doBuild(Lcom/google/common/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$daemon:Ljava/lang/Boolean;

.field final synthetic val$nameFormat:Ljava/lang/String;

.field final synthetic val$priority:Ljava/lang/Integer;

.field final synthetic val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$backingThreadFactory",
            "val$nameFormat",
            "val$count",
            "val$daemon",
            "val$priority",
            "val$uncaughtExceptionHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 178
    .local v0, "thread":Ljava/lang/Thread;
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 192
    :cond_3
    return-object v0
.end method
