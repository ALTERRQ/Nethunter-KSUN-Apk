.class public final synthetic Lcom/google/common/util/concurrent/MoreExecutors$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/BlockingQueue;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/MoreExecutors$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$$ExternalSyntheticLambda2;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/BlockingQueue;

    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$$ExternalSyntheticLambda2;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->lambda$submitAndAddQueueListener$0(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
