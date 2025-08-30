.class final Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
.super Ljava/lang/Object;
.source "AbstractFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFutureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Waiter"
.end annotation


# static fields
.field static final TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;


# instance fields
.field volatile next:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

.field volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 302
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;-><init>(Z)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/AbstractFutureState;->access$000(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Ljava/lang/Thread;)V

    .line 316
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "unused"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unused"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setNext(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V
    .locals 0
    .param p1, "next"    # Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .line 321
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/AbstractFutureState;->access$100(Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;)V

    .line 322
    return-void
.end method

.method unpark()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->thread:Ljava/lang/Thread;

    .line 329
    .local v0, "w":Ljava/lang/Thread;
    if-eqz v0, :cond_0

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractFutureState$Waiter;->thread:Ljava/lang/Thread;

    .line 331
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 333
    :cond_0
    return-void
.end method
