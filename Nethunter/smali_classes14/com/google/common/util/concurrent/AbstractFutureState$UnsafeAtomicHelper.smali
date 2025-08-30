.class final Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;
.super Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;
.source "AbstractFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFutureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeAtomicHelper"
.end annotation


# static fields
.field static final LISTENERS_OFFSET:J

.field static final UNSAFE:Lsun/misc/Unsafe;

.field static final VALUE_OFFSET:J

.field static final WAITERS_OFFSET:J

.field static final WAITER_NEXT_OFFSET:J

.field static final WAITER_THREAD_OFFSET:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 588
    const/4 v0, 0x0

    .line 590
    .local v0, "unsafe":Lsun/misc/Unsafe;
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 610
    goto :goto_0

    .line 591
    :catch_0
    move-exception v1

    .line 593
    .local v1, "tryReflectionInstead":Ljava/lang/SecurityException;
    :try_start_1
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 594
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v2

    .line 609
    nop

    .line 612
    .end local v1    # "tryReflectionInstead":Ljava/lang/SecurityException;
    :goto_0
    :try_start_2
    const-class v1, Lcom/google/common/util/concurrent/AbstractFutureState;

    .line 613
    .local v1, "abstractFutureState":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "waitersField"

    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->WAITERS_OFFSET:J

    .line 615
    const-string v2, "listenersField"

    .line 616
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->LISTENERS_OFFSET:J

    .line 617
    const-string v2, "valueField"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->VALUE_OFFSET:J

    .line 618
    const-class v2, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    const-string v3, "thread"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->WAITER_THREAD_OFFSET:J

    .line 619
    const-class v2, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    const-string v3, "next"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->WAITER_NEXT_OFFSET:J

    .line 620
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1

    .line 623
    .end local v1    # "abstractFutureState":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 624
    .end local v0    # "unsafe":Lsun/misc/Unsafe;
    return-void

    .line 621
    .restart local v0    # "unsafe":Lsun/misc/Unsafe;
    :catch_1
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 607
    .local v1, "tryReflectionInstead":Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    .line 608
    .local v2, "e":Ljava/security/PrivilegedActionException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Could not initialize intrinsics"

    invoke-virtual {v2}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private constructor <init>()V
    .locals 1

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFutureState$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFutureState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/AbstractFutureState$1;

    .line 579
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Lsun/misc/Unsafe;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 597
    const-class v0, Lsun/misc/Unsafe;

    .line 598
    .local v0, "k":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 599
    .local v4, "f":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 600
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 601
    .local v5, "x":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 602
    invoke-virtual {v0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/misc/Unsafe;

    return-object v6

    .line 598
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "x":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 605
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_1
    new-instance v1, Ljava/lang/NoSuchFieldError;

    const-string v2, "the Unsafe"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method atomicHelperTypeForTest()Ljava/lang/String;
    .locals 1

    .line 681
    const-string v0, "UnsafeAtomicHelper"

    return-object v0
.end method

.method casListeners(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 6
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

    .line 645
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->LISTENERS_OFFSET:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casValue(Lcom/google/common/util/concurrent/AbstractFutureState;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
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

    .line 676
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->VALUE_OFFSET:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method casWaiters(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z
    .locals 6
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

    .line 639
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->WAITERS_OFFSET:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method gasListeners(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 2
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

    .line 651
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    nop

    :goto_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->listenersField:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 652
    .local v0, "listener":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    if-ne p2, v0, :cond_0

    .line 653
    return-object v0

    .line 655
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    return-object v0

    .line 658
    .end local v0    # "listener":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_1
    goto :goto_0
.end method

.method gasWaiters(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .locals 2
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

    .line 664
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFutureState;, "Lcom/google/common/util/concurrent/AbstractFutureState<*>;"
    nop

    :goto_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFutureState;->waitersField:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    .line 665
    .local v0, "waiter":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    if-ne p2, v0, :cond_0

    .line 666
    return-object v0

    .line 668
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFutureState;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 669
    return-object v0

    .line 671
    .end local v0    # "waiter":Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    :cond_1
    goto :goto_0
.end method

.method putNext(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V
    .locals 3
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

    .line 633
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->WAITER_NEXT_OFFSET:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 634
    return-void
.end method

.method putThread(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Ljava/lang/Thread;)V
    .locals 3
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

    .line 628
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/common/util/concurrent/AbstractFutureState$UnsafeAtomicHelper;->WAITER_THREAD_OFFSET:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 629
    return-void
.end method
