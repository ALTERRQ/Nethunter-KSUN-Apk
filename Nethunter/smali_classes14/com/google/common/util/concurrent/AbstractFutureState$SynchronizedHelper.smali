.class final Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;
.super Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
.source "AbstractFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFutureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 752
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/AbstractFutureState$1;

    .line 752
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method atomicHelperTypeForTest()Ljava/lang/String;
    .locals 1

    .line 822
    const-string v0, "SynchronizedHelper"

    return-object v0
.end method

.method casListeners(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .param p3, "update"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "future",
            "expect",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFutureState<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 778
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    monitor-enter p1

    .line 779
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->listenersField:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-ne v0, p2, :cond_0

    .line 780
    iput-object p3, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->listenersField:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 781
    monitor-exit p1

    const/4 v0, 0x1

    return v0

    .line 783
    :cond_0
    monitor-exit p1

    const/4 v0, 0x0

    return v0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casValue(Lcom/google/common/util/concurrent/AbstractFutureState;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "future",
            "expect",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFutureState<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 811
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    monitor-enter p1

    .line 812
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 813
    iput-object p3, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    .line 814
    monitor-exit p1

    const/4 v0, 0x1

    return v0

    .line 816
    :cond_0
    monitor-exit p1

    const/4 v0, 0x0

    return v0

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casWaiters(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .param p3, "update"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "future",
            "expect",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFutureState<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;",
            "Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;",
            ")Z"
        }
    .end annotation

    .line 766
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    monitor-enter p1

    .line 767
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    if-ne v0, p2, :cond_0

    .line 768
    iput-object p3, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 769
    monitor-exit p1

    const/4 v0, 0x1

    return v0

    .line 771
    :cond_0
    monitor-exit p1

    const/4 v0, 0x0

    return v0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method gasListeners(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 1
    .param p2, "update"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "future",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFutureState<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            ")",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;"
        }
    .end annotation

    .line 789
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    monitor-enter p1

    .line 790
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->listenersField:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 791
    .local v0, "old":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    if-eq v0, p2, :cond_0

    .line 792
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->listenersField:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 794
    :cond_0
    monitor-exit p1

    return-object v0

    .line 795
    .end local v0    # "old":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method gasWaiters(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .locals 1
    .param p2, "update"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "future",
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFutureState<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;",
            ")",
            "Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;"
        }
    .end annotation

    .line 800
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    monitor-enter p1

    .line 801
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 802
    .local v0, "old":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    if-eq v0, p2, :cond_0

    .line 803
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 805
    :cond_0
    monitor-exit p1

    return-object v0

    .line 806
    .end local v0    # "old":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putNext(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V
    .locals 0
    .param p1, "waiter"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .param p2, "newValue"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "waiter",
            "newValue"
        }
    .end annotation

    .line 760
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 761
    return-void
.end method

.method putThread(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "waiter"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "waiter",
            "newValue"
        }
    .end annotation

    .line 755
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->thread:Ljava/lang/Thread;

    .line 756
    return-void
.end method
