.class Lcom/google/common/collect/Streams$1Splitr;
.super Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->mapWithIndex(Lj$/util/stream/Stream;Lcom/google/common/collect/Streams$FunctionWithIndex;)Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<",
        "Lj$/util/Spliterator<",
        "TT;>;TR;",
        "Lcom/google/common/collect/Streams$1Splitr;",
        ">;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field holder:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$function:Lcom/google/common/collect/Streams$FunctionWithIndex;


# direct methods
.method constructor <init>(Lj$/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V
    .locals 0
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x1010
        }
        names = {
            "splitr",
            "index",
            "val$function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;J)V"
        }
    .end annotation

    .line 481
    .local p1, "splitr":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    iput-object p4, p0, Lcom/google/common/collect/Streams$1Splitr;->val$function:Lcom/google/common/collect/Streams$FunctionWithIndex;

    .line 482
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;-><init>(Lj$/util/Spliterator;J)V

    .line 483
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 487
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/google/common/collect/Streams$1Splitr;->holder:Ljava/lang/Object;

    .line 488
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method createSplit(Lj$/util/Spliterator;J)Lcom/google/common/collect/Streams$1Splitr;
    .locals 2
    .param p2, "i"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator<",
            "TT;>;J)",
            "Lcom/google/common/collect/Streams$1Splitr;"
        }
    .end annotation

    .line 506
    .local p1, "from":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    new-instance v0, Lcom/google/common/collect/Streams$1Splitr;

    iget-object v1, p0, Lcom/google/common/collect/Streams$1Splitr;->val$function:Lcom/google/common/collect/Streams$FunctionWithIndex;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/common/collect/Streams$1Splitr;-><init>(Lj$/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V

    return-object v0
.end method

.method bridge synthetic createSplit(Lj$/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "from",
            "i"
        }
    .end annotation

    .line 478
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$1Splitr;->createSplit(Lj$/util/Spliterator;J)Lcom/google/common/collect/Streams$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 492
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$1Splitr;->fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0, p0}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Streams$1Splitr;->val$function:Lcom/google/common/collect/Streams$FunctionWithIndex;

    iget-object v2, p0, Lcom/google/common/collect/Streams$1Splitr;->holder:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/common/collect/Streams$1Splitr;->index:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/collect/Streams$1Splitr;->index:J

    invoke-interface {v1, v2, v3, v4}, Lcom/google/common/collect/Streams$FunctionWithIndex;->apply(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    nop

    .line 498
    iput-object v0, p0, Lcom/google/common/collect/Streams$1Splitr;->holder:Ljava/lang/Object;

    .line 496
    const/4 v0, 0x1

    return v0

    .line 498
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/google/common/collect/Streams$1Splitr;->holder:Ljava/lang/Object;

    .line 499
    throw v1

    .line 501
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
