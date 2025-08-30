.class public final synthetic Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/AsyncFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AsyncFunction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticLambda3;->f$0:Lcom/google/common/util/concurrent/AsyncFunction;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$$ExternalSyntheticLambda3;->f$0:Lcom/google/common/util/concurrent/AsyncFunction;

    invoke-static {v0, p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture;->lambda$withoutCloser$0(Lcom/google/common/util/concurrent/AsyncFunction;Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object p1

    return-object p1
.end method
