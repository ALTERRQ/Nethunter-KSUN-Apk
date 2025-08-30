.class abstract Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"

# interfaces
.implements Lj$/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FlatMapSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        "OutSpliteratorT::",
        "Lj$/util/Spliterator<",
        "TOutElementT;>;>",
        "Ljava/lang/Object;",
        "Lj$/util/Spliterator<",
        "TOutElementT;>;"
    }
.end annotation


# instance fields
.field characteristics:I

.field estimatedSize:J

.field final factory:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<",
            "TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field final from:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/Spliterator<",
            "TInElementT;>;"
        }
    .end annotation
.end field

.field final function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field prefix:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutSpliteratorT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;IJ)V
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

    .line 338
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "prefix":Lj$/util/Spliterator;, "TOutSpliteratorT;"
    .local p2, "from":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    .local p3, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<-TInElementT;TOutSpliteratorT;>;"
    .local p4, "factory":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory<TInElementT;TOutSpliteratorT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 340
    iput-object p2, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Lj$/util/Spliterator;

    .line 341
    iput-object p3, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 342
    iput-object p4, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->factory:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;

    .line 343
    iput p5, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    .line 344
    iput-wide p6, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 345
    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    .line 422
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    return v0
.end method

.method public final estimateSize()J
    .locals 4

    .line 414
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    if-eqz v0, :cond_0

    .line 415
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 417
    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
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
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)V"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TOutElementT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Lj$/util/Spliterator;

    new-instance v1, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 384
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 385
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

.method synthetic lambda$forEachRemaining$0$com-google-common-collect-CollectSpliterators$FlatMapSpliterator(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "fromElement"    # Ljava/lang/Object;

    .line 379
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator;

    .line 380
    .local v0, "elements":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TOutElementT;>;"
    if-eqz v0, :cond_0

    .line 381
    invoke-interface {v0, p1}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 383
    :cond_0
    return-void
.end method

.method synthetic lambda$tryAdvance$0$com-google-common-collect-CollectSpliterators$FlatMapSpliterator(Ljava/lang/Object;)V
    .locals 1
    .param p1, "fromElement"    # Ljava/lang/Object;

    .line 365
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Spliterator;

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
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
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)Z"
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TOutElementT;>;"
    nop

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    invoke-interface {v0, p1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 359
    iget-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 361
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 363
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 365
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Lj$/util/Spliterator;

    new-instance v1, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;)V

    invoke-interface {v0, v1}, Lj$/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public final trySplit()Lj$/util/Spliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutSpliteratorT;"
        }
    .end annotation

    .line 389
    .local p0, "this":Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;, "Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator<TInElementT;TOutElementT;TOutSpliteratorT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->from:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v0

    .line 390
    .local v0, "fromSplit":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TInElementT;>;"
    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 391
    iget v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    and-int/lit8 v9, v1, -0x41

    .line 392
    .local v9, "splitCharacteristics":I
    invoke-virtual {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimateSize()J

    move-result-wide v1

    .line 393
    .local v1, "estSplitSize":J
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 394
    const-wide/16 v3, 0x2

    div-long/2addr v1, v3

    .line 395
    iget-wide v3, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->estimatedSize:J

    .line 396
    iput v9, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->characteristics:I

    move-wide v10, v1

    goto :goto_0

    .line 393
    :cond_0
    move-wide v10, v1

    .line 398
    .end local v1    # "estSplitSize":J
    .local v10, "estSplitSize":J
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->factory:Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;

    iget-object v2, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    iget-object v4, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->function:Ljava/util/function/Function;

    .line 399
    move-object v3, v0

    move v5, v9

    move-wide v6, v10

    invoke-interface/range {v1 .. v7}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;->newFlatMapSpliterator(Lj$/util/Spliterator;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator;

    move-result-object v1

    .line 401
    .local v1, "result":Lj$/util/Spliterator;, "TOutSpliteratorT;"
    iput-object v8, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 402
    return-object v1

    .line 403
    .end local v1    # "result":Lj$/util/Spliterator;, "TOutSpliteratorT;"
    .end local v9    # "splitCharacteristics":I
    .end local v10    # "estSplitSize":J
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 405
    .restart local v1    # "result":Lj$/util/Spliterator;, "TOutSpliteratorT;"
    iput-object v8, p0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;->prefix:Lj$/util/Spliterator;

    .line 406
    return-object v1

    .line 408
    .end local v1    # "result":Lj$/util/Spliterator;, "TOutSpliteratorT;"
    :cond_2
    return-object v8
.end method
