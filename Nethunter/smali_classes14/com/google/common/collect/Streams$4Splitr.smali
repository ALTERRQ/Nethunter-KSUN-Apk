.class Lcom/google/common/collect/Streams$4Splitr;
.super Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
.source "Streams.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->mapWithIndex(Lj$/util/stream/DoubleStream;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<",
        "Lj$/util/Spliterator$OfDouble;",
        "TR;",
        "Lcom/google/common/collect/Streams$4Splitr;",
        ">;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# instance fields
.field holder:D

.field final synthetic val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V
    .locals 0
    .param p1, "splitr"    # Lj$/util/Spliterator$OfDouble;
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
            "Lj$/util/Spliterator$OfDouble;",
            "J)V"
        }
    .end annotation

    .line 726
    iput-object p4, p0, Lcom/google/common/collect/Streams$4Splitr;->val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;

    .line 727
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;-><init>(Lj$/util/Spliterator;J)V

    .line 728
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0
    .param p1, "t"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 732
    iput-wide p1, p0, Lcom/google/common/collect/Streams$4Splitr;->holder:D

    .line 733
    return-void
.end method

.method public synthetic andThen(Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/DoubleConsumer$-CC;->$default$andThen(Ljava/util/function/DoubleConsumer;Ljava/util/function/DoubleConsumer;)Ljava/util/function/DoubleConsumer;

    move-result-object p1

    return-object p1
.end method

.method createSplit(Lj$/util/Spliterator$OfDouble;J)Lcom/google/common/collect/Streams$4Splitr;
    .locals 2
    .param p1, "from"    # Lj$/util/Spliterator$OfDouble;
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

    .line 746
    new-instance v0, Lcom/google/common/collect/Streams$4Splitr;

    iget-object v1, p0, Lcom/google/common/collect/Streams$4Splitr;->val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/common/collect/Streams$4Splitr;-><init>(Lj$/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

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

    .line 722
    check-cast p1, Lj$/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/Streams$4Splitr;->createSplit(Lj$/util/Spliterator$OfDouble;J)Lcom/google/common/collect/Streams$4Splitr;

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

    .line 737
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$4Splitr;->fromSpliterator:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    invoke-interface {v0, p0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/google/common/collect/Streams$4Splitr;->val$function:Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;

    iget-wide v1, p0, Lcom/google/common/collect/Streams$4Splitr;->holder:D

    iget-wide v3, p0, Lcom/google/common/collect/Streams$4Splitr;->index:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/collect/Streams$4Splitr;->index:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;->apply(DJ)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 739
    const/4 v0, 0x1

    return v0

    .line 741
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
