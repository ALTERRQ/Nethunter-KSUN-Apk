.class final Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelegatingToFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final owner:Lcom/google/common/util/concurrent/AbstractFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "owner",
            "future"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture<TV;>;"
    .local p1, "owner":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p2, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 200
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 201
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 205
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->value()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->access$000(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "valueToSet":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-static {v1, p0, v0}, Lcom/google/common/util/concurrent/AbstractFutureState;->casValue(Lcom/google/common/util/concurrent/AbstractFutureState;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$DelegatingToFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->access$100(Lcom/google/common/util/concurrent/AbstractFuture;Z)V

    .line 219
    :cond_1
    return-void
.end method
