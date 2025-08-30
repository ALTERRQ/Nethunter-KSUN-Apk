.class public final synthetic Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ClosingFuture;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/ClosingFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/ClosingFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->lambda$finishToValueAndCloser$0$com-google-common-util-concurrent-ClosingFuture(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;)V

    return-void
.end method
