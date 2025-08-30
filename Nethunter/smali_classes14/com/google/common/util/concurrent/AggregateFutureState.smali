.class abstract Lcom/google/common/util/concurrent/AggregateFutureState;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;,
        Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

.field private static final log:Lcom/google/common/util/concurrent/LazyLogger;


# instance fields
.field volatile remainingField:I

.field volatile seenExceptionsField:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Lcom/google/common/util/concurrent/LazyLogger;

    const-class v1, Lcom/google/common/util/concurrent/AggregateFutureState;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/LazyLogger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFutureState;->log:Lcom/google/common/util/concurrent/LazyLogger;

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "thrownReflectionFailure":Ljava/lang/Throwable;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/AggregateFutureState$SafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 71
    .local v1, "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    goto :goto_0

    .line 64
    .end local v1    # "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    :catchall_0
    move-exception v2

    .line 69
    .local v2, "reflectionFailure":Ljava/lang/Throwable;
    move-object v0, v2

    .line 70
    new-instance v3, Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;

    invoke-direct {v3, v1}, Lcom/google/common/util/concurrent/AggregateFutureState$SynchronizedAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AggregateFutureState$1;)V

    move-object v1, v3

    .line 72
    .end local v2    # "reflectionFailure":Ljava/lang/Throwable;
    .restart local v1    # "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    :goto_0
    sput-object v1, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    sget-object v2, Lcom/google/common/util/concurrent/AggregateFutureState;->log:Lcom/google/common/util/concurrent/LazyLogger;

    invoke-virtual {v2}, Lcom/google/common/util/concurrent/LazyLogger;->get()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "SafeAtomicHelper is broken!"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "thrownReflectionFailure":Ljava/lang/Throwable;
    .end local v1    # "helper":Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;
    :cond_0
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "remainingFutures"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remainingFutures"
        }
    .end annotation

    .line 80
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFutureState;, "Lcom/google/common/util/concurrent/AggregateFutureState<TOutputT;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptionsField:Ljava/util/Set;

    .line 81
    iput p1, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->remainingField:I

    .line 82
    return-void
.end method

.method static atomicHelperTypeForTest()Ljava/lang/String;
    .locals 1

    .line 156
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;->atomicHelperTypeForTest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract addInitialException(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method final clearSeenExceptions()V
    .locals 1

    .line 151
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFutureState;, "Lcom/google/common/util/concurrent/AggregateFutureState<TOutputT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptionsField:Ljava/util/Set;

    .line 152
    return-void
.end method

.method final decrementRemainingAndGet()I
    .locals 1

    .line 147
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFutureState;, "Lcom/google/common/util/concurrent/AggregateFutureState<TOutputT;>;"
    sget-object v0, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;->decrementAndGetRemainingCount(Lcom/google/common/util/concurrent/AggregateFutureState;)I

    move-result v0

    return v0
.end method

.method final getOrInitSeenExceptions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/google/common/util/concurrent/AggregateFutureState;, "Lcom/google/common/util/concurrent/AggregateFutureState<TOutputT;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptionsField:Ljava/util/Set;

    .line 104
    .local v0, "seenExceptionsLocal":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AggregateFutureState;->addInitialException(Ljava/util/Set;)V

    .line 128
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFutureState;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AggregateFutureState$AtomicHelper;->compareAndSetSeenExceptions(Lcom/google/common/util/concurrent/AggregateFutureState;Ljava/util/Set;Ljava/util/Set;)V

    .line 138
    iget-object v1, p0, Lcom/google/common/util/concurrent/AggregateFutureState;->seenExceptionsField:Ljava/util/Set;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Set;

    .line 140
    :cond_0
    return-object v0
.end method
