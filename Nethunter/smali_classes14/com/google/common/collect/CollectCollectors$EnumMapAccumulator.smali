.class Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;
.super Ljava/lang/Object;
.source "CollectCollectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumMapAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final mergeFunction:Ljava/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BinaryOperator<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/BinaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mergeFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 319
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator<TK;TV;>;"
    .local p1, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    .line 320
    iput-object p1, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->mergeFunction:Ljava/util/function/BinaryOperator;

    .line 321
    return-void
.end method


# virtual methods
.method combine(Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;)Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator<TK;TV;>;"
    .local p1, "other":Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 333
    return-object p1

    .line 334
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_1

    .line 335
    return-object p0

    .line 337
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    new-instance v1, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 338
    return-object p0
.end method

.method put(Ljava/lang/Enum;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator<TK;TV;>;"
    .local p1, "key":Ljava/lang/Enum;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/EnumMap;

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    iget-object v1, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->mergeFunction:Ljava/util/function/BinaryOperator;

    invoke-static {v0, p1, p2, v1}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 329
    :goto_0
    return-void
.end method

.method toImmutableMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 343
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->map:Ljava/util/EnumMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumMap;->asImmutable(Ljava/util/EnumMap;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    :goto_0
    return-object v0
.end method
