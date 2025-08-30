.class final Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;
.super Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;
.source "CollectSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlatMapSpliteratorOfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive<",
        "TInElementT;",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Lj$/util/Spliterator$OfDouble;",
        ">;",
        "Lj$/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Lj$/util/Spliterator$OfDouble;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)V
    .locals 8
    .param p1, "prefix"    # Lj$/util/Spliterator$OfDouble;
    .param p4, "characteristics"    # I
    .param p5, "estimatedSize"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "characteristics",
            "estimatedSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/Spliterator$OfDouble;",
            "Lj$/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;",
            "Lj$/util/Spliterator$OfDouble;",
            ">;IJ)V"
        }
    .end annotation

    .line 556
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble<TInElementT;>;"
    .local p2, "from":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;Ljava/util/Spliterator$OfDouble;>;"
    new-instance v4, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;-><init>(Lj$/util/Spliterator$OfPrimitive;Lj$/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V

    .line 558
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "action"
        }
    .end annotation

    .line 545
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble<TInElementT;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "action"
        }
    .end annotation

    .line 545
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble<TInElementT;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator$OfDouble;
    .locals 1

    .line 545
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble<TInElementT;>;"
    invoke-super {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfPrimitive;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method
