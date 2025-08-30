.class final Lcom/google/common/collect/CollectCollectors;
.super Ljava/lang/Object;
.source "CollectCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;,
        Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;
    }
.end annotation


# static fields
.field private static final TO_IMMUTABLE_LIST:Lj$/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_RANGE_SET:Lj$/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Comparable<",
            "*>;>;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_SET:Lj$/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda12;-><init>()V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda13;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda14;-><init>()V

    const/4 v4, 0x0

    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 48
    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_LIST:Lj$/util/stream/Collector;

    .line 54
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda15;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda16;-><init>()V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda17;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda18;-><init>()V

    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 55
    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_SET:Lj$/util/stream/Collector;

    .line 63
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda19;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda20;-><init>()V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda9;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda10;-><init>()V

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    .line 64
    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Lj$/util/stream/Collector;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lj$/util/stream/Collector;
    .locals 1

    .line 45
    invoke-static {}, Lcom/google/common/collect/CollectCollectors;->toImmutableEnumSetGeneric()Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static flatteningToImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valuesFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Lj$/util/stream/Stream<",
            "+TV;>;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 380
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valuesFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TV;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda24;-><init>(Ljava/util/function/Function;)V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda25;-><init>(Ljava/util/function/Function;)V

    .line 386
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->linkedHashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda26;

    invoke-direct {v3, v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda26;-><init>(Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;)V

    .line 383
    invoke-static {v0, v1, v3}, Lcom/google/common/collect/CollectCollectors;->flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda27;-><init>()V

    .line 382
    invoke-static {v0, v1}, Lj$/util/stream/Collectors;->collectingAndThen(Lj$/util/stream/Collector;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static flatteningToImmutableSetMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valuesFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Lj$/util/stream/Stream<",
            "+TV;>;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 407
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valuesFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TV;>;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda32;-><init>(Ljava/util/function/Function;)V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda34;

    invoke-direct {v1, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda34;-><init>(Ljava/util/function/Function;)V

    .line 413
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->linkedHashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda35;

    invoke-direct {v3, v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda35;-><init>(Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;)V

    .line 410
    invoke-static {v0, v1, v3}, Lcom/google/common/collect/CollectCollectors;->flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda36;-><init>()V

    .line 409
    invoke-static {v0, v1}, Lj$/util/stream/Collectors;->collectingAndThen(Lj$/util/stream/Collector;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static flatteningToMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction",
            "multimapSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Lj$/util/stream/Stream<",
            "+TV;>;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 447
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TV;>;>;"
    .local p2, "multimapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda21;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda23;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, v1, v2}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$flatteningToImmutableListMultimap$0(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;

    .line 384
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$flatteningToImmutableListMultimap$1(Ljava/util/function/Function;Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 2
    .param p0, "valuesFunction"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;

    .line 385
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda39;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda39;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$flatteningToImmutableSetMultimap$0(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;

    .line 411
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$flatteningToImmutableSetMultimap$1(Ljava/util/function/Function;Ljava/lang/Object;)Lj$/util/stream/Stream;
    .locals 2
    .param p0, "valuesFunction"    # Ljava/util/function/Function;
    .param p1, "input"    # Ljava/lang/Object;

    .line 412
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda39;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda39;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$flatteningToMultimap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 4
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "multimap"    # Lcom/google/common/collect/Multimap;
    .param p3, "input"    # Ljava/lang/Object;

    .line 453
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p2, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 455
    .local v1, "valuesForKey":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/util/stream/Stream;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda73;

    invoke-direct {v3, v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda73;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 456
    return-void
.end method

.method static synthetic lambda$flatteningToMultimap$1(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .locals 0
    .param p0, "multimap1"    # Lcom/google/common/collect/Multimap;
    .param p1, "multimap2"    # Lcom/google/common/collect/Multimap;

    .line 458
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 459
    return-object p0
.end method

.method static synthetic lambda$toImmutableBiMap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableBiMap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableBiMap$Builder;
    .param p3, "input"    # Ljava/lang/Object;

    .line 254
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableEnumMap$0()Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;
    .locals 2

    .line 268
    new-instance v0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda64;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda64;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableEnumMap$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "v1"    # Ljava/lang/Object;
    .param p1, "v2"    # Ljava/lang/Object;

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple values for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$toImmutableEnumMap$2(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;Ljava/lang/Object;)V
    .locals 4
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "accum"    # Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;
    .param p3, "t"    # Ljava/lang/Object;

    .line 277
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 278
    .local v0, "key":Ljava/lang/Enum;, "TK;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 279
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    nop

    .line 280
    const-string v2, "Null key for input %s"

    invoke-static {v0, v2, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 281
    const-string v3, "Null value for input %s"

    invoke-static {v1, v3, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 279
    invoke-virtual {p2, v2, v3}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->put(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method static synthetic lambda$toImmutableEnumMap$3(Ljava/util/function/BinaryOperator;)Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;
    .locals 1
    .param p0, "mergeFunction"    # Ljava/util/function/BinaryOperator;

    .line 298
    new-instance v0, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableEnumMap$4(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;Ljava/lang/Object;)V
    .locals 4
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "accum"    # Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;
    .param p3, "t"    # Ljava/lang/Object;

    .line 304
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 305
    .local v0, "key":Ljava/lang/Enum;, "TK;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 306
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    nop

    .line 307
    const-string v2, "Null key for input %s"

    invoke-static {v0, v2, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 308
    const-string v3, "Null value for input %s"

    invoke-static {v1, v3, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 306
    invoke-virtual {p2, v2, v3}, Lcom/google/common/collect/CollectCollectors$EnumMapAccumulator;->put(Ljava/lang/Enum;Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method static synthetic lambda$toImmutableEnumSetGeneric$0()Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;
    .locals 2

    .line 102
    new-instance v0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;-><init>(Lcom/google/common/collect/CollectCollectors$1;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableListMultimap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableListMultimap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableListMultimap$Builder;
    .param p3, "t"    # Ljava/lang/Object;

    .line 371
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableMap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableMap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableMap$Builder;
    .param p3, "input"    # Ljava/lang/Object;

    .line 196
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableMultiset$0(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 2
    .param p0, "elementFunction"    # Ljava/util/function/Function;
    .param p1, "countFunction"    # Ljava/util/function/ToIntFunction;
    .param p2, "multiset"    # Lcom/google/common/collect/Multiset;
    .param p3, "t"    # Ljava/lang/Object;

    .line 162
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method static synthetic lambda$toImmutableMultiset$1(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 0
    .param p0, "multiset1"    # Lcom/google/common/collect/Multiset;
    .param p1, "multiset2"    # Lcom/google/common/collect/Multiset;

    .line 164
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-object p0
.end method

.method static synthetic lambda$toImmutableMultiset$2(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .param p0, "multiset"    # Lcom/google/common/collect/Multiset;

    .line 167
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableRangeMap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableRangeMap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableRangeMap$Builder;
    .param p3, "input"    # Ljava/lang/Object;

    .line 356
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSetMultimap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSetMultimap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .param p3, "t"    # Ljava/lang/Object;

    .line 398
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedMap$0(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 225
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedMap$1(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableSortedMap$Builder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "builder"    # Lcom/google/common/collect/ImmutableSortedMap$Builder;
    .param p3, "input"    # Ljava/lang/Object;

    .line 226
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedMap$2(Ljava/util/Comparator;)Ljava/util/TreeMap;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 243
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedSet$0(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 88
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toMultimap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyFunction"    # Ljava/util/function/Function;
    .param p1, "valueFunction"    # Ljava/util/function/Function;
    .param p2, "multimap"    # Lcom/google/common/collect/Multimap;
    .param p3, "input"    # Ljava/lang/Object;

    .line 431
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$toMultimap$1(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .locals 0
    .param p0, "multimap1"    # Lcom/google/common/collect/Multimap;
    .param p1, "multimap2"    # Lcom/google/common/collect/Multimap;

    .line 433
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 434
    return-object p0
.end method

.method static synthetic lambda$toMultiset$0(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 2
    .param p0, "elementFunction"    # Ljava/util/function/Function;
    .param p1, "countFunction"    # Ljava/util/function/ToIntFunction;
    .param p2, "ms"    # Lcom/google/common/collect/Multiset;
    .param p3, "t"    # Ljava/lang/Object;

    .line 180
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method static synthetic lambda$toMultiset$1(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 0
    .param p0, "ms1"    # Lcom/google/common/collect/Multiset;
    .param p1, "ms2"    # Lcom/google/common/collect/Multiset;

    .line 182
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->addAll(Ljava/util/Collection;)Z

    .line 183
    return-object p0
.end method

.method static toImmutableBiMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 250
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda74;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda74;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 264
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda40;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda41;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda41;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda42;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda42;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda43;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda43;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    sget-object v5, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableEnumMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction",
            "mergeFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 293
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda68;

    invoke-direct {v0, p2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda68;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda69;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda69;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda42;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda42;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda43;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda43;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableEnumSet()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>()",
            "Lj$/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->TO_IMMUTABLE_ENUM_SET:Lj$/util/stream/Collector;

    return-object v0
.end method

.method private static toImmutableEnumSetGeneric()Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>()",
            "Lj$/util/stream/Collector<",
            "TE;",
            "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<",
            "TE;>;",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda7;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    sget-object v5, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableList()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_LIST:Lj$/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableListMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 367
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const-string v0, "keyFunction"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v0, "valueFunction"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda53;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda53;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda54;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda54;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda56;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda56;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda57;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda57;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 192
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda45;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda46;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda47;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda47;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda48;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda48;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction",
            "mergeFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 205
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda62;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda62;-><init>()V

    .line 209
    invoke-static {p0, p1, p2, v0}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda63;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda63;-><init>()V

    .line 208
    invoke-static {v0, v1}, Lj$/util/stream/Collectors;->collectingAndThen(Lj$/util/stream/Collector;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elementFunction",
            "countFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;>;"
        }
    .end annotation

    .line 157
    .local p0, "elementFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TE;>;"
    .local p1, "countFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda28;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda29;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda30;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda30;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda31;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda31;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;",
            "Lcom/google/common/collect/Range<",
            "TK;>;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 352
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;Lcom/google/common/collect/Range<TK;>;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda33;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda33;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableRangeSet()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Lj$/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "TE;>;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Lj$/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSet()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/google/common/collect/CollectCollectors;->TO_IMMUTABLE_SET:Lj$/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSetMultimap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 394
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const-string v0, "keyFunction"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v0, "valueFunction"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda58;-><init>()V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda59;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda59;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda60;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda60;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda61;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda61;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "comparator",
            "keyFunction",
            "valueFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 217
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda44;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda55;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda55;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda66;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda66;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda72;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda72;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    sget-object v5, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "comparator",
            "keyFunction",
            "valueFunction",
            "mergeFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 238
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p3, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda37;-><init>(Ljava/util/Comparator;)V

    .line 243
    invoke-static {p1, p2, p3, v0}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda38;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda38;-><init>()V

    .line 242
    invoke-static {v0, v1}, Lj$/util/stream/Collectors;->collectingAndThen(Lj$/util/stream/Collector;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableSortedSet(Ljava/util/Comparator;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comparator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lj$/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 86
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda49;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda50;-><init>()V

    new-instance v2, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda51;

    invoke-direct {v2}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda51;-><init>()V

    new-instance v3, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda52;

    invoke-direct {v3}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda52;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toMultimap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyFunction",
            "valueFunction",
            "multimapSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 426
    .local p0, "keyFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p2, "multimapSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda70;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda71;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda71;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, v1, v2}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elementFunction",
            "countFunction",
            "multisetSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;>(",
            "Ljava/util/function/Function<",
            "-TT;TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 175
    .local p0, "elementFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;TE;>;"
    .local p1, "countFunction":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    .local p2, "multisetSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda65;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda65;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    new-instance v1, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda67;

    invoke-direct {v1}, Lcom/google/common/collect/CollectCollectors$$ExternalSyntheticLambda67;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, v1, v2}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method
