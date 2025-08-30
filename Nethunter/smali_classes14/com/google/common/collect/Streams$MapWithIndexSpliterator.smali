.class abstract Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MapWithIndexSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lj$/util/Spliterator<",
        "*>;R:",
        "Ljava/lang/Object;",
        "S:",
        "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<",
        "TF;TR;TS;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final fromSpliterator:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field index:J


# direct methods
.method constructor <init>(Lj$/util/Spliterator;J)V
    .locals 0
    .param p2, "index"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromSpliterator",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;J)V"
        }
    .end annotation

    .line 780
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    .local p1, "fromSpliterator":Lj$/util/Spliterator;, "TF;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput-object p1, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Lj$/util/Spliterator;

    .line 782
    iput-wide p2, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 783
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 807
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, 0x4050

    return v0
.end method

.method abstract createSplit(Lj$/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
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
            "(TF;J)TS;"
        }
    .end annotation
.end method

.method public estimateSize()J
    .locals 2

    .line 802
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$forEachRemaining(Lj$/util/Spliterator;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getComparator(Lj$/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    invoke-static {p0}, Lj$/util/Spliterator$-CC;->$default$getExactSizeIfKnown(Lj$/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Spliterator$-CC;->$default$hasCharacteristics(Lj$/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public trySplit()Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 789
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->fromSpliterator:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    .line 790
    .local v0, "splitOrNull":Lj$/util/Spliterator;, "Ljava/util/Spliterator<*>;"
    if-nez v0, :cond_0

    .line 791
    const/4 v1, 0x0

    return-object v1

    .line 794
    :cond_0
    move-object v1, v0

    .line 795
    .local v1, "split":Lj$/util/Spliterator;, "TF;"
    iget-wide v2, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->createSplit(Lj$/util/Spliterator;J)Lcom/google/common/collect/Streams$MapWithIndexSpliterator;

    move-result-object v2

    .line 796
    .local v2, "result":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "TS;"
    iget-wide v3, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    invoke-interface {v1}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->index:J

    .line 797
    return-object v2
.end method

.method public bridge synthetic trySplit()Lj$/util/Spliterator;
    .locals 1

    .line 771
    .local p0, "this":Lcom/google/common/collect/Streams$MapWithIndexSpliterator;, "Lcom/google/common/collect/Streams$MapWithIndexSpliterator<TF;TR;TS;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Streams$MapWithIndexSpliterator;->trySplit()Lcom/google/common/collect/Streams$MapWithIndexSpliterator;

    move-result-object v0

    return-object v0
.end method
