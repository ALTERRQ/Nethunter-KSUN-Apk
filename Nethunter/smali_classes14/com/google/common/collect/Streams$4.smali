.class Lcom/google/common/collect/Streams$4;
.super Lj$/util/Spliterators$AbstractSpliterator;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Streams;->mapWithIndex(Lj$/util/stream/LongStream;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/Spliterators$AbstractSpliterator<",
        "TR;>;"
    }
.end annotation


# instance fields
.field index:J

.field final synthetic val$fromIterator:Lj$/util/PrimitiveIterator$OfLong;

.field final synthetic val$function:Lcom/google/common/collect/Streams$LongFunctionWithIndex;


# direct methods
.method constructor <init>(JILj$/util/PrimitiveIterator$OfLong;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)V
    .locals 0
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            "est",
            "additionalCharacteristics",
            "val$fromIterator",
            "val$function"
        }
    .end annotation

    .line 627
    iput-object p4, p0, Lcom/google/common/collect/Streams$4;->val$fromIterator:Lj$/util/PrimitiveIterator$OfLong;

    iput-object p5, p0, Lcom/google/common/collect/Streams$4;->val$function:Lcom/google/common/collect/Streams$LongFunctionWithIndex;

    invoke-direct {p0, p1, p2, p3}, Lj$/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 628
    const-wide/16 p4, 0x0

    iput-wide p4, p0, Lcom/google/common/collect/Streams$4;->index:J

    .line 627
    return-void
.end method


# virtual methods
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

    .line 632
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TR;>;"
    iget-object v0, p0, Lcom/google/common/collect/Streams$4;->val$fromIterator:Lj$/util/PrimitiveIterator$OfLong;

    invoke-interface {v0}, Lj$/util/PrimitiveIterator$OfLong;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/google/common/collect/Streams$4;->val$function:Lcom/google/common/collect/Streams$LongFunctionWithIndex;

    iget-object v1, p0, Lcom/google/common/collect/Streams$4;->val$fromIterator:Lj$/util/PrimitiveIterator$OfLong;

    invoke-interface {v1}, Lj$/util/PrimitiveIterator$OfLong;->nextLong()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/common/collect/Streams$4;->index:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/collect/Streams$4;->index:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/common/collect/Streams$LongFunctionWithIndex;->apply(JJ)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 634
    const/4 v0, 0x1

    return v0

    .line 636
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
