.class abstract Lcom/google/common/util/concurrent/AbstractFutureState;
.super Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;
.source "AbstractFutureState.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;,
        Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFutureState$AtomicReferenceFieldUpdaterAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field static final log:Lcom/google/common/util/concurrent/LazyLogger;


# instance fields
.field volatile listenersField:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

.field volatile valueField:Ljava/lang/Object;

.field volatile waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 277
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->NULL:Ljava/lang/Object;

    .line 284
    new-instance v0, Lcom/google/common/util/concurrent/LazyLogger;

    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/LazyLogger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->log:Lcom/google/common/util/concurrent/LazyLogger;

    .line 292
    :try_start_0
    const-string v0, "guava.concurrent.generate_cancellation_cause"

    const-string v1, "false"

    .line 293
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .local v0, "generateCancellationCauses":Z
    goto :goto_0

    .line 294
    .end local v0    # "generateCancellationCauses":Z
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    move v0, v1

    .line 297
    .local v0, "generateCancellationCauses":Z
    :goto_0
    sput-boolean v0, Lcom/google/common/util/concurrent/AbstractFutureState;->GENERATE_CANCELLATION_CAUSES:Z

    .line 345
    .end local v0    # "generateCancellationCauses":Z
    const/4 v0, 0x0

    .line 346
    .local v0, "thrownUnsafeFailure":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 348
    .local v1, "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFutureState;->mightBeAndroid()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 350
    :try_start_1
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    .local v2, "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    :goto_1
    goto :goto_4

    .line 351
    .end local v2    # "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 352
    .local v2, "unsafeFailure":Ljava/lang/Throwable;
    :goto_2
    move-object v0, v2

    .line 355
    :try_start_2
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicReferenceFieldUpdaterAtomicHelper;

    invoke-direct {v4, v3}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicReferenceFieldUpdaterAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 364
    .local v3, "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    move-object v2, v3

    goto :goto_1

    .line 356
    .end local v3    # "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    :catch_3
    move-exception v4

    goto :goto_3

    :catch_4
    move-exception v4

    .line 362
    .local v4, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    :goto_3
    move-object v1, v4

    .line 363
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;

    invoke-direct {v5, v3}, Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V

    move-object v3, v5

    move-object v2, v3

    .restart local v3    # "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    goto :goto_1

    .line 383
    .end local v2    # "unsafeFailure":Ljava/lang/Throwable;
    .end local v3    # "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    .end local v4    # "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    :cond_0
    :try_start_3
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicReferenceFieldUpdaterAtomicHelper;

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicReferenceFieldUpdaterAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V
    :try_end_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_5

    .line 398
    .local v2, "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    goto :goto_4

    .line 384
    .end local v2    # "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    :catch_5
    move-exception v2

    .line 397
    .local v2, "fromAggregateFutureStateFallbackAtomicHelperTest":Ljava/lang/NoClassDefFoundError;
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;

    invoke-direct {v4, v3}, Lcom/google/common/util/concurrent/AbstractFutureState$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V

    move-object v3, v4

    move-object v2, v3

    .line 400
    .local v2, "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    :goto_4
    sput-object v2, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    .line 405
    const-class v3, Ljava/util/concurrent/locks/LockSupport;

    .line 409
    .local v3, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_1

    .line 410
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFutureState;->log:Lcom/google/common/util/concurrent/LazyLogger;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/LazyLogger;->get()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 411
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFutureState;->log:Lcom/google/common/util/concurrent/LazyLogger;

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/LazyLogger;->get()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 412
    const-string v6, "AtomicReferenceFieldUpdaterAtomicHelper is broken!"

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    .end local v0    # "thrownUnsafeFailure":Ljava/lang/Throwable;
    .end local v1    # "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    .end local v2    # "helper":Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
    .end local v3    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 266
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/internal/InternalFutureFailureAccess;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Ljava/lang/Thread;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .param p1, "x1"    # Ljava/lang/Thread;

    .line 49
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AbstractFutureState;->putThread(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Ljava/lang/Thread;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 49
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AbstractFutureState;->putNext(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V

    return-void
.end method

.method static atomicHelperTypeForTest()Ljava/lang/String;
    .locals 1

    .line 541
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->atomicHelperTypeForTest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static casValue(Lcom/google/common/util/concurrent/AbstractFutureState;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "expect"    # Ljava/lang/Object;
    .param p2, "update"    # Ljava/lang/Object;
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

    .line 72
    .local p0, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFutureState;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casWaiters(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z
    .locals 1
    .param p1, "expect"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .param p2, "update"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expect",
            "update"
        }
    .end annotation

    .line 485
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z

    move-result v0

    return v0
.end method

.method private final gasWaiters(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .locals 1
    .param p1, "update"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update"
        }
    .end annotation

    .line 493
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->gasWaiters(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    move-result-object v0

    return-object v0
.end method

.method private static mightBeAndroid()Z
    .locals 2

    .line 827
    const-string v0, "java.runtime.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "runtime":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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
    return v1
.end method

.method private static putNext(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V
    .locals 1
    .param p0, "waiter"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .param p1, "newValue"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
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

    .line 477
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->putNext(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V

    .line 478
    return-void
.end method

.method private static putThread(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Ljava/lang/Thread;)V
    .locals 1
    .param p0, "waiter"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .param p1, "newValue"    # Ljava/lang/Thread;
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

    .line 472
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->putThread(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Ljava/lang/Thread;)V

    .line 473
    return-void
.end method

.method private removeWaiter(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V
    .locals 4
    .param p1, "node"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 508
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->thread:Ljava/lang/Thread;

    .line 511
    :goto_0
    const/4 v0, 0x0

    .line 512
    .local v0, "pred":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 513
    .local v1, "curr":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    if-ne v1, v2, :cond_0

    .line 514
    return-void

    .line 517
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    .line 518
    iget-object v2, v1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 519
    .local v2, "succ":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    iget-object v3, v1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 520
    move-object v0, v1

    goto :goto_2

    .line 521
    :cond_1
    if-eqz v0, :cond_2

    .line 522
    iput-object v2, v0, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 523
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_3

    .line 524
    goto :goto_0

    .line 526
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFutureState;->casWaiters(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 527
    goto :goto_0

    .line 529
    :cond_3
    :goto_2
    move-object v1, v2

    goto :goto_1

    .line 533
    .end local v0    # "pred":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .end local v1    # "curr":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .end local v2    # "succ":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :cond_4
    return-void
.end method


# virtual methods
.method final blockingGet()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 230
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    .line 231
    .local v0, "localValue":Ljava/lang/Object;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->notInstanceOfDelegatingToFuture(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 232
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 235
    .local v3, "oldHead":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    if-eq v3, v4, :cond_7

    .line 236
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    invoke-direct {v4}, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;-><init>()V

    .line 238
    .local v4, "node":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :cond_2
    invoke-virtual {v4, v3}, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V

    .line 239
    invoke-direct {p0, v3, v4}, Lcom/google/common/util/concurrent/AbstractFutureState;->casWaiters(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 242
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 244
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_5

    .line 250
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    .line 251
    if-eqz v0, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->notInstanceOfDelegatingToFuture(Ljava/lang/Object;)Z

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    .line 252
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 245
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/AbstractFutureState;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V

    .line 246
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 256
    :cond_6
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 257
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    if-ne v3, v5, :cond_2

    .line 262
    .end local v4    # "node":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :cond_7
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 228
    .end local v0    # "localValue":Ljava/lang/Object;
    .end local v3    # "oldHead":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final blockingGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 27
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 127
    .local v4, "timeoutNanos":J
    move-wide v6, v4

    .line 128
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-nez v8, :cond_16

    .line 131
    iget-object v8, v0, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    .line 132
    .local v8, "localValue":Ljava/lang/Object;
    if-eqz v8, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-static {v8}, Lcom/google/common/util/concurrent/AbstractFuture;->notInstanceOfDelegatingToFuture(Ljava/lang/Object;)Z

    move-result v12

    and-int/2addr v11, v12

    if-eqz v11, :cond_1

    .line 133
    invoke-static {v8}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 136
    :cond_1
    const-wide/16 v11, 0x0

    cmp-long v13, v6, v11

    if-lez v13, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    add-long/2addr v13, v6

    goto :goto_1

    :cond_2
    move-wide v13, v11

    .line 138
    .local v13, "endNanos":J
    :goto_1
    const-wide/16 v15, 0x3e8

    cmp-long v17, v6, v15

    if-ltz v17, :cond_a

    .line 139
    iget-object v9, v0, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 140
    .local v9, "oldHead":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    sget-object v10, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    if-eq v9, v10, :cond_9

    .line 141
    new-instance v10, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    invoke-direct {v10}, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;-><init>()V

    .line 143
    .local v10, "node":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :goto_2
    invoke-virtual {v10, v9}, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V

    .line 144
    invoke-direct {v0, v9, v10}, Lcom/google/common/util/concurrent/AbstractFutureState;->casWaiters(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 146
    :cond_3
    invoke-static {v0, v6, v7}, Lcom/google/common/util/concurrent/OverflowAvoidingLockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 148
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v19

    if-nez v19, :cond_6

    .line 155
    iget-object v8, v0, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    .line 156
    if-eqz v8, :cond_4

    const/16 v19, 0x1

    goto :goto_3

    :cond_4
    const/16 v19, 0x0

    :goto_3
    invoke-static {v8}, Lcom/google/common/util/concurrent/AbstractFuture;->notInstanceOfDelegatingToFuture(Ljava/lang/Object;)Z

    move-result v20

    and-int v19, v19, v20

    if-eqz v19, :cond_5

    .line 157
    invoke-static {v8}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    return-object v11

    .line 161
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v19

    sub-long v6, v13, v19

    .line 162
    cmp-long v19, v6, v15

    if-gez v19, :cond_3

    .line 164
    invoke-direct {v0, v10}, Lcom/google/common/util/concurrent/AbstractFutureState;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V

    .line 165
    goto :goto_5

    .line 149
    :cond_6
    invoke-direct {v0, v10}, Lcom/google/common/util/concurrent/AbstractFutureState;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V

    .line 150
    new-instance v11, Ljava/lang/InterruptedException;

    invoke-direct {v11}, Ljava/lang/InterruptedException;-><init>()V

    throw v11

    .line 169
    :cond_7
    iget-object v9, v0, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 170
    sget-object v15, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    if-ne v9, v15, :cond_8

    goto :goto_4

    :cond_8
    const-wide/16 v15, 0x3e8

    goto :goto_2

    .line 175
    .end local v10    # "node":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :cond_9
    :goto_4
    iget-object v10, v0, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    invoke-static {v10}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    return-object v10

    .line 179
    .end local v9    # "oldHead":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :cond_a
    :goto_5
    cmp-long v9, v6, v11

    if-lez v9, :cond_e

    .line 180
    iget-object v8, v0, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    .line 181
    if-eqz v8, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    invoke-static {v8}, Lcom/google/common/util/concurrent/AbstractFuture;->notInstanceOfDelegatingToFuture(Ljava/lang/Object;)Z

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_c

    .line 182
    invoke-static {v8}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    return-object v9

    .line 184
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-nez v9, :cond_d

    .line 187
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v6, v13, v9

    goto :goto_5

    .line 185
    :cond_d
    new-instance v9, Ljava/lang/InterruptedException;

    invoke-direct {v9}, Ljava/lang/InterruptedException;-><init>()V

    throw v9

    .line 190
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 191
    .local v9, "futureToString":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "unitString":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Waited "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "message":Ljava/lang/String;
    const-wide/16 v15, 0x3e8

    add-long v23, v6, v15

    const-wide/16 v15, 0x0

    cmp-long v11, v23, v15

    if-gez v11, :cond_14

    .line 196
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, " (plus "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    neg-long v1, v6

    .line 198
    .local v1, "overWaitNanos":J
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v15, v4

    .end local v4    # "timeoutNanos":J
    .local v15, "timeoutNanos":J
    invoke-virtual {v3, v1, v2, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 199
    .local v4, "overWaitUnits":J
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v23

    move-wide/from16 v25, v6

    .end local v6    # "remainingNanos":J
    .local v25, "remainingNanos":J
    sub-long v6, v1, v23

    .line 200
    .local v6, "overWaitLeftoverNanos":J
    const-wide/16 v21, 0x0

    cmp-long v11, v4, v21

    if-eqz v11, :cond_10

    const-wide/16 v19, 0x3e8

    cmp-long v11, v6, v19

    if-lez v11, :cond_f

    goto :goto_7

    :cond_f
    const/16 v17, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    const/16 v17, 0x1

    :goto_8
    move/from16 v11, v17

    .line 202
    .local v11, "shouldShowExtraNanos":Z
    const-wide/16 v17, 0x0

    cmp-long v19, v4, v17

    if-lez v19, :cond_12

    .line 203
    move-wide/from16 v17, v1

    .end local v1    # "overWaitNanos":J
    .local v17, "overWaitNanos":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    if-eqz v11, :cond_11

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 202
    .end local v17    # "overWaitNanos":J
    .restart local v1    # "overWaitNanos":J
    :cond_12
    move-wide/from16 v17, v1

    .line 209
    .end local v1    # "overWaitNanos":J
    .restart local v17    # "overWaitNanos":J
    :goto_9
    if-eqz v11, :cond_13

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nanoseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 194
    .end local v11    # "shouldShowExtraNanos":Z
    .end local v15    # "timeoutNanos":J
    .end local v17    # "overWaitNanos":J
    .end local v25    # "remainingNanos":J
    .local v4, "timeoutNanos":J
    .local v6, "remainingNanos":J
    :cond_14
    move-wide v15, v4

    move-wide/from16 v25, v6

    .line 218
    .end local v4    # "timeoutNanos":J
    .end local v6    # "remainingNanos":J
    .restart local v15    # "timeoutNanos":J
    .restart local v25    # "remainingNanos":J
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/AbstractFutureState;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 219
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " but future completed as timeout expired"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0    # "message":Ljava/lang/String;
    .end local v8    # "localValue":Ljava/lang/Object;
    .end local v9    # "futureToString":Ljava/lang/String;
    .end local v10    # "unitString":Ljava/lang/String;
    .end local v13    # "endNanos":J
    .end local v15    # "timeoutNanos":J
    .end local v25    # "remainingNanos":J
    .restart local v4    # "timeoutNanos":J
    .restart local v6    # "remainingNanos":J
    :cond_16
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final casListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 1
    .param p1, "expect"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .param p2, "update"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expect",
            "update"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v0

    return v0
.end method

.method final gasListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 1
    .param p1, "update"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "update"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;->gasListeners(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v0

    return-object v0
.end method

.method final listeners()Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 1

    .line 82
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->listenersField:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object v0
.end method

.method final releaseWaiters()V
    .locals 2

    .line 87
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFutureState;->gasWaiters(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    move-result-object v0

    .line 88
    .local v0, "head":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    move-object v1, v0

    .local v1, "currentWaiter":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :goto_0
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->unpark()V

    .line 88
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    goto :goto_0

    .line 91
    .end local v1    # "currentWaiter":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :cond_0
    return-void
.end method

.method final value()Ljava/lang/Object;
    .locals 1

    .line 77
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFutureState;->valueField:Ljava/lang/Object;

    return-object v0
.end method
