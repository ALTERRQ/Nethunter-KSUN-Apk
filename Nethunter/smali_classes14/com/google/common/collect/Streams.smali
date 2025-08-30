.class public final Lcom/google/common/collect/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Streams$FunctionWithIndex;,
        Lcom/google/common/collect/Streams$IntFunctionWithIndex;,
        Lcom/google/common/collect/Streams$LongFunctionWithIndex;,
        Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;,
        Lcom/google/common/collect/Streams$TemporaryPair;,
        Lcom/google/common/collect/Streams$MapWithIndexSpliterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeAll([Lj$/util/stream/BaseStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toClose"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lj$/util/stream/BaseStream<",
            "**>;)V"
        }
    .end annotation

    .line 164
    .local p0, "toClose":[Lj$/util/stream/BaseStream;, "[Ljava/util/stream/BaseStream<**>;"
    const/4 v0, 0x0

    .line 165
    .local v0, "exception":Ljava/lang/Exception;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 167
    .local v3, "stream":Lj$/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    :try_start_0
    invoke-interface {v3}, Lj$/util/stream/BaseStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_1

    .line 168
    :catch_0
    move-exception v4

    .line 169
    .local v4, "e":Ljava/lang/Exception;
    if-nez v0, :cond_0

    .line 170
    move-object v0, v4

    goto :goto_1

    .line 172
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 165
    .end local v3    # "stream":Lj$/util/stream/BaseStream;, "Ljava/util/stream/BaseStream<**>;"
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_1
    if-eqz v0, :cond_2

    .line 179
    invoke-static {v0}, Lcom/google/common/collect/SneakyThrows;->sneakyThrow(Ljava/lang/Throwable;)Ljava/lang/Error;

    .line 181
    :cond_2
    return-void
.end method

.method public static varargs concat([Lj$/util/stream/DoubleStream;)Lj$/util/stream/DoubleStream;
    .locals 11
    .param p0, "streams"    # [Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 294
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 295
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 297
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfDouble;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 298
    .local v7, "stream":Lj$/util/stream/DoubleStream;
    invoke-interface {v7}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 299
    invoke-interface {v7}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v8

    .line 300
    .local v8, "splitr":Lj$/util/Spliterator$OfDouble;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 301
    invoke-interface {v8}, Lj$/util/Spliterator$OfDouble;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 302
    invoke-interface {v8}, Lj$/util/Spliterator$OfDouble;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 297
    .end local v7    # "stream":Lj$/util/stream/DoubleStream;
    .end local v8    # "splitr":Lj$/util/Spliterator$OfDouble;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 304
    :cond_0
    nop

    .line 306
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda9;-><init>()V

    .line 305
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToDouble(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfDouble;

    move-result-object v5

    .line 304
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->doubleStream(Lj$/util/Spliterator$OfDouble;Z)Lj$/util/stream/DoubleStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda10;-><init>([Lj$/util/stream/DoubleStream;)V

    .line 311
    invoke-interface {v5, v6}, Lj$/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/DoubleStream;

    .line 304
    return-object v5
.end method

.method public static varargs concat([Lj$/util/stream/IntStream;)Lj$/util/stream/IntStream;
    .locals 11
    .param p0, "streams"    # [Lj$/util/stream/IntStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 230
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 231
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 233
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfInt;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 234
    .local v7, "stream":Lj$/util/stream/IntStream;
    invoke-interface {v7}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 235
    invoke-interface {v7}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v8

    .line 236
    .local v8, "splitr":Lj$/util/Spliterator$OfInt;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 237
    invoke-interface {v8}, Lj$/util/Spliterator$OfInt;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 238
    invoke-interface {v8}, Lj$/util/Spliterator$OfInt;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 233
    .end local v7    # "stream":Lj$/util/stream/IntStream;
    .end local v8    # "splitr":Lj$/util/Spliterator$OfInt;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 240
    :cond_0
    nop

    .line 242
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda17;-><init>()V

    .line 241
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToInt(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfInt;

    move-result-object v5

    .line 240
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->intStream(Lj$/util/Spliterator$OfInt;Z)Lj$/util/stream/IntStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda1;-><init>([Lj$/util/stream/IntStream;)V

    .line 247
    invoke-interface {v5, v6}, Lj$/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/IntStream;

    .line 240
    return-object v5
.end method

.method public static varargs concat([Lj$/util/stream/LongStream;)Lj$/util/stream/LongStream;
    .locals 11
    .param p0, "streams"    # [Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 262
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 263
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 265
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator$OfLong;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 266
    .local v7, "stream":Lj$/util/stream/LongStream;
    invoke-interface {v7}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 267
    invoke-interface {v7}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v8

    .line 268
    .local v8, "splitr":Lj$/util/Spliterator$OfLong;
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 269
    invoke-interface {v8}, Lj$/util/Spliterator$OfLong;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 270
    invoke-interface {v8}, Lj$/util/Spliterator$OfLong;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 265
    .end local v7    # "stream":Lj$/util/stream/LongStream;
    .end local v8    # "splitr":Lj$/util/Spliterator$OfLong;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 272
    :cond_0
    nop

    .line 274
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda11;-><init>()V

    .line 273
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMapToLong(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator$OfLong;

    move-result-object v5

    .line 272
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->longStream(Lj$/util/Spliterator$OfLong;Z)Lj$/util/stream/LongStream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda12;-><init>([Lj$/util/stream/LongStream;)V

    .line 279
    invoke-interface {v5, v6}, Lj$/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/LongStream;

    .line 272
    return-object v5
.end method

.method public static varargs concat([Lj$/util/stream/Stream;)Lj$/util/stream/Stream;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lj$/util/stream/Stream<",
            "+TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 196
    .local p0, "streams":[Lj$/util/stream/Stream;, "[Ljava/util/stream/Stream<+TT;>;"
    const/4 v0, 0x0

    .line 197
    .local v0, "isParallel":Z
    const/16 v1, 0x150

    .line 198
    .local v1, "characteristics":I
    const-wide/16 v2, 0x0

    .line 199
    .local v2, "estimatedSize":J
    new-instance v4, Lcom/google/common/collect/ImmutableList$Builder;

    array-length v5, p0

    invoke-direct {v4, v5}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 201
    .local v4, "splitrsBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Ljava/util/Spliterator<+TT;>;>;"
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, p0, v6

    .line 202
    .local v7, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    invoke-interface {v7}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v8

    or-int/2addr v0, v8

    .line 203
    invoke-interface {v7}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v8

    .line 204
    .local v8, "splitr":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 205
    invoke-interface {v8}, Lj$/util/Spliterator;->characteristics()I

    move-result v9

    and-int/2addr v1, v9

    .line 206
    invoke-interface {v8}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v9

    invoke-static {v2, v3, v9, v10}, Lcom/google/common/math/LongMath;->saturatedAdd(JJ)J

    move-result-wide v2

    .line 201
    .end local v7    # "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TT;>;"
    .end local v8    # "splitr":Lj$/util/Spliterator;, "Ljava/util/Spliterator<+TT;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 208
    :cond_0
    nop

    .line 210
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->spliterator()Lj$/util/Spliterator;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda14;-><init>()V

    .line 209
    invoke-static {v5, v6, v1, v2, v3}, Lcom/google/common/collect/CollectSpliterators;->flatMap(Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator;

    move-result-object v5

    .line 208
    invoke-static {v5, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda15;-><init>([Lj$/util/stream/Stream;)V

    .line 215
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v5

    check-cast v5, Lj$/util/stream/Stream;

    .line 208
    return-object v5
.end method

.method public static findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TT;>;)",
            "Lj$/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 898
    .local p0, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    new-instance v0, Lcom/google/common/collect/Streams$1OptionalState;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$1OptionalState;-><init>()V

    .line 900
    .local v0, "state":Lcom/google/common/collect/Streams$1OptionalState;
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 901
    .local v1, "splits":Ljava/util/Deque;, "Ljava/util/Deque<Ljava/util/Spliterator<TT;>;>;"
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 903
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 904
    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/Spliterator;

    .line 906
    .local v2, "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-interface {v2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 907
    goto :goto_0

    .line 912
    :cond_1
    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 915
    :goto_1
    invoke-interface {v2}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v3

    .line 916
    .local v3, "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_2

    .line 917
    goto :goto_2

    .line 918
    :cond_2
    invoke-interface {v2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_3

    .line 919
    move-object v2, v3

    .line 920
    goto :goto_2

    .line 922
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_3
    goto :goto_1

    .line 925
    :cond_4
    :goto_2
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>(Lcom/google/common/collect/Streams$1OptionalState;)V

    invoke-interface {v2, v3}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 926
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v3

    return-object v3

    .line 929
    :cond_5
    invoke-interface {v2}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v3

    .line 930
    .restart local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-nez v4, :cond_6

    goto :goto_3

    .line 939
    :cond_6
    invoke-interface {v1, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 940
    invoke-interface {v1, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 941
    .end local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    goto :goto_0

    .line 932
    .restart local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .restart local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_7
    :goto_3
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda4;-><init>(Lcom/google/common/collect/Streams$1OptionalState;)V

    invoke-interface {v2, v4}, Lj$/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 933
    iget-boolean v4, v0, Lcom/google/common/collect/Streams$1OptionalState;->set:Z

    if-eqz v4, :cond_0

    .line 934
    invoke-virtual {v0}, Lcom/google/common/collect/Streams$1OptionalState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v4

    return-object v4

    .line 942
    .end local v2    # "spliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    .end local v3    # "prefix":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    :cond_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method public static findLast(Lj$/util/stream/DoubleStream;)Lj$/util/OptionalDouble;
    .locals 3
    .param p0, "stream"    # Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 995
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 996
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Double;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/OptionalDouble;

    return-object v1
.end method

.method public static findLast(Lj$/util/stream/IntStream;)Lj$/util/OptionalInt;
    .locals 3
    .param p0, "stream"    # Lj$/util/stream/IntStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 959
    invoke-interface {p0}, Lj$/util/stream/IntStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 960
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/OptionalInt;

    return-object v1
.end method

.method public static findLast(Lj$/util/stream/LongStream;)Lj$/util/OptionalLong;
    .locals 3
    .param p0, "stream"    # Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 977
    invoke-interface {p0}, Lj$/util/stream/LongStream;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Streams;->findLast(Lj$/util/stream/Stream;)Lj$/util/Optional;

    move-result-object v0

    .line 978
    .local v0, "boxedLast":Lj$/util/Optional;, "Ljava/util/Optional<Ljava/lang/Long;>;"
    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    invoke-static {}, Lj$/util/OptionalLong;->empty()Lj$/util/OptionalLong;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/util/OptionalLong;

    return-object v1
.end method

.method public static forEachPair(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Ljava/util/function/BiConsumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamA",
            "streamB",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TA;>;",
            "Lj$/util/stream/Stream<",
            "TB;>;",
            "Ljava/util/function/BiConsumer<",
            "-TA;-TB;>;)V"
        }
    .end annotation

    .line 405
    .local p0, "streamA":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TA;>;"
    .local p1, "streamB":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TB;>;"
    .local p2, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TA;-TB;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    invoke-interface {p0}, Lj$/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    .local v0, "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    invoke-interface {p1}, Lj$/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 412
    .local v1, "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    .end local v0    # "iterA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    .end local v1    # "iterB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    :cond_1
    :goto_1
    new-instance v0, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Streams;->zip(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 416
    :cond_2
    return-void
.end method

.method static synthetic lambda$concat$0(Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator;

    .line 211
    return-object p0
.end method

.method static synthetic lambda$concat$1([Lj$/util/stream/Stream;)V
    .locals 0
    .param p0, "streams"    # [Lj$/util/stream/Stream;

    .line 215
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Lj$/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$2(Lj$/util/Spliterator$OfInt;)Lj$/util/Spliterator$OfInt;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator$OfInt;

    .line 243
    return-object p0
.end method

.method static synthetic lambda$concat$3([Lj$/util/stream/IntStream;)V
    .locals 0
    .param p0, "streams"    # [Lj$/util/stream/IntStream;

    .line 247
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Lj$/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$4(Lj$/util/Spliterator$OfLong;)Lj$/util/Spliterator$OfLong;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator$OfLong;

    .line 275
    return-object p0
.end method

.method static synthetic lambda$concat$5([Lj$/util/stream/LongStream;)V
    .locals 0
    .param p0, "streams"    # [Lj$/util/stream/LongStream;

    .line 279
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Lj$/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$concat$6(Lj$/util/Spliterator$OfDouble;)Lj$/util/Spliterator$OfDouble;
    .locals 0
    .param p0, "splitr"    # Lj$/util/Spliterator$OfDouble;

    .line 307
    return-object p0
.end method

.method static synthetic lambda$concat$7([Lj$/util/stream/DoubleStream;)V
    .locals 0
    .param p0, "streams"    # [Lj$/util/stream/DoubleStream;

    .line 311
    invoke-static {p0}, Lcom/google/common/collect/Streams;->closeAll([Lj$/util/stream/BaseStream;)V

    return-void
.end method

.method static synthetic lambda$forEachPair$0(Ljava/util/function/BiConsumer;Lcom/google/common/collect/Streams$TemporaryPair;)V
    .locals 2
    .param p0, "consumer"    # Ljava/util/function/BiConsumer;
    .param p1, "pair"    # Lcom/google/common/collect/Streams$TemporaryPair;

    .line 408
    iget-object v0, p1, Lcom/google/common/collect/Streams$TemporaryPair;->a:Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/common/collect/Streams$TemporaryPair;->b:Ljava/lang/Object;

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static mapWithIndex(Lj$/util/stream/DoubleStream;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Lj$/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/DoubleStream;",
            "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 697
    .local p1, "function":Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;, "Lcom/google/common/collect/Streams$DoubleFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->isParallel()Z

    move-result v0

    .line 700
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/DoubleStream;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v1

    .line 702
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfDouble;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfDouble;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v2

    .line 704
    .local v2, "fromIterator":Lj$/util/PrimitiveIterator$OfDouble;
    new-instance v9, Lcom/google/common/collect/Streams$5;

    .line 706
    invoke-interface {v1}, Lj$/util/Spliterator$OfDouble;->estimateSize()J

    move-result-wide v4

    .line 707
    invoke-interface {v1}, Lj$/util/Spliterator$OfDouble;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$5;-><init>(JILj$/util/PrimitiveIterator$OfDouble;Lcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    .line 704
    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    .line 720
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;-><init>(Lj$/util/stream/DoubleStream;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;

    .line 704
    return-object v3

    .line 749
    .end local v2    # "fromIterator":Lj$/util/PrimitiveIterator$OfDouble;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$4Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$4Splitr;-><init>(Lj$/util/Spliterator$OfDouble;JLcom/google/common/collect/Streams$DoubleFunctionWithIndex;)V

    invoke-static {v2, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda7;-><init>(Lj$/util/stream/DoubleStream;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Lj$/util/stream/IntStream;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Lj$/util/stream/IntStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/IntStream;",
            "Lcom/google/common/collect/Streams$IntFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 537
    .local p1, "function":Lcom/google/common/collect/Streams$IntFunctionWithIndex;, "Lcom/google/common/collect/Streams$IntFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-interface {p0}, Lj$/util/stream/IntStream;->isParallel()Z

    move-result v0

    .line 540
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/IntStream;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v1

    .line 542
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfInt;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfInt;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfInt;)Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v2

    .line 544
    .local v2, "fromIterator":Lj$/util/PrimitiveIterator$OfInt;
    new-instance v9, Lcom/google/common/collect/Streams$3;

    .line 546
    invoke-interface {v1}, Lj$/util/Spliterator$OfInt;->estimateSize()J

    move-result-wide v4

    .line 547
    invoke-interface {v1}, Lj$/util/Spliterator$OfInt;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$3;-><init>(JILj$/util/PrimitiveIterator$OfInt;Lcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    .line 544
    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    .line 560
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;-><init>(Lj$/util/stream/IntStream;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;

    .line 544
    return-object v3

    .line 589
    .end local v2    # "fromIterator":Lj$/util/PrimitiveIterator$OfInt;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$2Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$2Splitr;-><init>(Lj$/util/Spliterator$OfInt;JLcom/google/common/collect/Streams$IntFunctionWithIndex;)V

    invoke-static {v2, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda5;-><init>(Lj$/util/stream/IntStream;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Lj$/util/stream/LongStream;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 10
    .param p0, "stream"    # Lj$/util/stream/LongStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/LongStream;",
            "Lcom/google/common/collect/Streams$LongFunctionWithIndex<",
            "TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 617
    .local p1, "function":Lcom/google/common/collect/Streams$LongFunctionWithIndex;, "Lcom/google/common/collect/Streams$LongFunctionWithIndex<TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-interface {p0}, Lj$/util/stream/LongStream;->isParallel()Z

    move-result v0

    .line 620
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/LongStream;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v1

    .line 622
    .local v1, "fromSpliterator":Lj$/util/Spliterator$OfLong;
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator$OfLong;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 623
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfLong;)Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v2

    .line 624
    .local v2, "fromIterator":Lj$/util/PrimitiveIterator$OfLong;
    new-instance v9, Lcom/google/common/collect/Streams$4;

    .line 626
    invoke-interface {v1}, Lj$/util/Spliterator$OfLong;->estimateSize()J

    move-result-wide v4

    .line 627
    invoke-interface {v1}, Lj$/util/Spliterator$OfLong;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$4;-><init>(JILj$/util/PrimitiveIterator$OfLong;Lcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    .line 624
    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    .line 640
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;-><init>(Lj$/util/stream/LongStream;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;

    .line 624
    return-object v3

    .line 669
    .end local v2    # "fromIterator":Lj$/util/PrimitiveIterator$OfLong;
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$3Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$3Splitr;-><init>(Lj$/util/Spliterator$OfLong;JLcom/google/common/collect/Streams$LongFunctionWithIndex;)V

    invoke-static {v2, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda8;-><init>(Lj$/util/stream/LongStream;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static mapWithIndex(Lj$/util/stream/Stream;Lcom/google/common/collect/Streams$FunctionWithIndex;)Lj$/util/stream/Stream;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TT;>;",
            "Lcom/google/common/collect/Streams$FunctionWithIndex<",
            "-TT;+TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 453
    .local p0, "stream":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    .local p1, "function":Lcom/google/common/collect/Streams$FunctionWithIndex;, "Lcom/google/common/collect/Streams$FunctionWithIndex<-TT;+TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    .line 456
    .local v0, "isParallel":Z
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    .line 458
    .local v1, "fromSpliterator":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    const/16 v2, 0x4000

    invoke-interface {v1, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v2

    .line 460
    .local v2, "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v9, Lcom/google/common/collect/Streams$2;

    .line 462
    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    .line 463
    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v3

    and-int/lit8 v6, v3, 0x50

    move-object v3, v9

    move-object v7, v2

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/Streams$2;-><init>(JILjava/util/Iterator;Lcom/google/common/collect/Streams$FunctionWithIndex;)V

    .line 460
    invoke-static {v9, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v3

    .line 476
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v3

    check-cast v3, Lj$/util/stream/Stream;

    .line 460
    return-object v3

    .line 509
    .end local v2    # "fromIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    new-instance v2, Lcom/google/common/collect/Streams$1Splitr;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v1, v3, v4, p1}, Lcom/google/common/collect/Streams$1Splitr;-><init>(Lj$/util/Spliterator;JLcom/google/common/collect/Streams$FunctionWithIndex;)V

    invoke-static {v2, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v2

    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    return-object v2
.end method

.method public static stream(Lj$/util/OptionalDouble;)Lj$/util/stream/DoubleStream;
    .locals 2
    .param p0, "optional"    # Lj$/util/OptionalDouble;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lj$/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/stream/DoubleStream$-CC;->of(D)Lj$/util/stream/DoubleStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/DoubleStream$-CC;->empty()Lj$/util/stream/DoubleStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/OptionalInt;)Lj$/util/stream/IntStream;
    .locals 1
    .param p0, "optional"    # Lj$/util/OptionalInt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lj$/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalInt;->getAsInt()I

    move-result v0

    invoke-static {v0}, Lj$/util/stream/IntStream$-CC;->of(I)Lj$/util/stream/IntStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/IntStream$-CC;->empty()Lj$/util/stream/IntStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/OptionalLong;)Lj$/util/stream/LongStream;
    .locals 2
    .param p0, "optional"    # Lj$/util/OptionalLong;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lj$/util/OptionalLong;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/OptionalLong;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/util/stream/LongStream$-CC;->of(J)Lj$/util/stream/LongStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/LongStream$-CC;->empty()Lj$/util/stream/LongStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lcom/google/common/base/Optional;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Optional<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 103
    .local p0, "optional":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Lj$/util/Optional;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optional"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/Optional<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "optional":Lj$/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/stream/Stream$-CC;->empty()Lj$/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/lang/Iterable;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 74
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p0}, Lj$/lang/Iterable$-EL;->spliterator(Ljava/lang/Iterable;)Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/util/Collection;)Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stream(Ljava/util/Iterator;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 95
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v1

    invoke-static {v1, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lj$/util/stream/Stream;Lj$/util/stream/Stream;Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamA",
            "streamB",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Stream<",
            "TA;>;",
            "Lj$/util/stream/Stream<",
            "TB;>;",
            "Ljava/util/function/BiFunction<",
            "-TA;-TB;TR;>;)",
            "Lj$/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation

    .line 343
    .local p0, "streamA":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TA;>;"
    .local p1, "streamB":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<TB;>;"
    .local p2, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TA;-TB;TR;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static/range {p2 .. p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-interface {p0}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lj$/util/stream/Stream;->isParallel()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 347
    .local v0, "isParallel":Z
    :goto_1
    invoke-interface {p0}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v1

    .line 348
    .local v1, "splitrA":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TA;>;"
    invoke-interface {p1}, Lj$/util/stream/Stream;->spliterator()Lj$/util/Spliterator;

    move-result-object v2

    .line 349
    .local v2, "splitrB":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TB;>;"
    nop

    .line 350
    invoke-interface {v1}, Lj$/util/Spliterator;->characteristics()I

    move-result v3

    .line 351
    invoke-interface {v2}, Lj$/util/Spliterator;->characteristics()I

    move-result v4

    and-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x50

    .line 353
    .local v3, "characteristics":I
    invoke-static {v1}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v11

    .line 354
    .local v11, "itrA":Ljava/util/Iterator;, "Ljava/util/Iterator<TA;>;"
    invoke-static {v2}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator;)Ljava/util/Iterator;

    move-result-object v12

    .line 355
    .local v12, "itrB":Ljava/util/Iterator;, "Ljava/util/Iterator<TB;>;"
    new-instance v13, Lcom/google/common/collect/Streams$1;

    .line 357
    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    move-object v4, v13

    move v7, v3

    move-object v8, v11

    move-object v9, v12

    move-object/from16 v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/common/collect/Streams$1;-><init>(JILjava/util/Iterator;Ljava/util/Iterator;Ljava/util/function/BiFunction;)V

    .line 355
    invoke-static {v13, v0}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v4

    .line 368
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    move-object v6, p0

    invoke-direct {v5, p0}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Lj$/util/stream/Stream;

    .line 369
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;

    move-object v7, p1

    invoke-direct {v5, p1}, Lcom/google/common/collect/Streams$$ExternalSyntheticLambda13;-><init>(Lj$/util/stream/Stream;)V

    invoke-interface {v4, v5}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Lj$/util/stream/Stream;

    .line 355
    return-object v4
.end method
