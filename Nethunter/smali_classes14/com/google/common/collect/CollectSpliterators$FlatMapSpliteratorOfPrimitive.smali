.class abstract Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;
.super Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;
.source "CollectSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FlatMapSpliteratorOfPrimitive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        "OutConsumerT:",
        "Ljava/lang/Object;",
        "OutSpliteratorT::",
        "Lj$/util/Spliterator$OfPrimitive<",
        "TOutElementT;TOutConsumerT;TOutSpliteratorT;>;>",
        "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<",
        "TInElementT;TOutElementT;TOutSpliteratorT;>;",
        "Lj$/util/Spliterator$OfPrimitive<",
        "TOutElementT;TOutConsumerT;TOutSpliteratorT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V
    .locals 0
    .param p5, "characteristics"    # I
    .param p6, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "from",
            "function",
            "factory",
            "characteristics",
            "estimatedSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutSpliteratorT;",
            "Lj$/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;",
            "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<",
            "TInElementT;TOutSpliteratorT;>;IJ)V"
        }
    .end annotation

    .line 477
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<TInElementT;TOutElementT;TOutConsumerT;TOutSpliteratorT;>;"
    .local p1, "prefix":Lj$/util/Spliterator$OfPrimitive;, "TOutSpliteratorT;"
    .local p2, "from":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;TOutSpliteratorT;>;"
    .local p4, "factory":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<TInElementT;TOutSpliteratorT;>;"
    invoke-direct/range {p0 .. p7}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;-><init>(Lj$/util/Spliterator;Lj$/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V

    .line 478
    return-void
.end method


# virtual methods
.method public final forEachRemaining(Ljava/lang/Object;)V
    .locals 2
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
            "(TOutConsumerT;)V"
        }
    .end annotation

    .line 499
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<TInElementT;TOutElementT;TOutConsumerT;TOutSpliteratorT;>;"
    .local p1, "action":Ljava/lang/Object;, "TOutConsumerT;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->prefix:Lj$/util/Spliterator;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->prefix:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->prefix:Lj$/util/Spliterator;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->from:Lj$/util/Spliterator;

    new-instance v1, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 510
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->estimatedSize:J

    .line 511
    return-void
.end method

.method synthetic lambda$forEachRemaining$0$com-google-common-collect-CollectSpliterators$FlatMapSpliteratorOfPrimitive(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "fromElement"    # Ljava/lang/Object;

    .line 505
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<TInElementT;TOutElementT;TOutConsumerT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->function:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    .line 506
    .local v0, "elements":Lj$/util/Spliterator$OfPrimitive;, "TOutSpliteratorT;"
    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    .line 509
    :cond_0
    return-void
.end method

.method synthetic lambda$tryAdvance$0$com-google-common-collect-CollectSpliterators$FlatMapSpliteratorOfPrimitive(Ljava/lang/Object;)V
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .line 491
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<TInElementT;TOutElementT;TOutConsumerT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator;

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->prefix:Lj$/util/Spliterator;

    return-void
.end method

.method public final tryAdvance(Ljava/lang/Object;)Z
    .locals 5
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
            "(TOutConsumerT;)Z"
        }
    .end annotation

    .line 483
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<TInElementT;TOutElementT;TOutConsumerT;TOutSpliteratorT;>;"
    .local p1, "action":Ljava/lang/Object;, "TOutConsumerT;"
    nop

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->prefix:Lj$/util/Spliterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->prefix:Lj$/util/Spliterator;

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    invoke-interface {v0, p1}, Lj$/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->estimatedSize:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 485
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->estimatedSize:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->estimatedSize:J

    .line 487
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 489
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->prefix:Lj$/util/Spliterator;

    .line 491
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->from:Lj$/util/Spliterator;

    new-instance v1, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;)V

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 460
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<TInElementT;TOutElementT;TOutConsumerT;TOutSpliteratorT;>;"
    invoke-super {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfPrimitive;

    return-object v0
.end method
