.class final Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;
.super Ljava/lang/Object;
.source "CollectCollectors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectCollectors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnumSetAccumulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final TO_IMMUTABLE_ENUM_SET:Lj$/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Collector<",
            "Ljava/lang/Enum<",
            "*>;*",
            "Lcom/google/common/collect/ImmutableSet<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private set:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    invoke-static {}, Lcom/google/common/collect/CollectCollectors;->access$100()Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->TO_IMMUTABLE_ENUM_SET:Lj$/util/stream/Collector;

    .line 112
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 110
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/CollectCollectors$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/CollectCollectors$1;

    .line 110
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method add(Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<TE;>;"
    .local p1, "e":Ljava/lang/Enum;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 119
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 123
    :goto_0
    return-void
.end method

.method combine(Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;)Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;
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
            "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<",
            "TE;>;)",
            "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<",
            "TE;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<TE;>;"
    .local p1, "other":Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 127
    return-object p1

    .line 128
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    if-nez v0, :cond_1

    .line 129
    return-object p0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    iget-object v1, p1, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-object p0
.end method

.method toImmutableSet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;, "Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 141
    .local v0, "ret":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CollectCollectors$EnumSetAccumulator;->set:Ljava/util/EnumSet;

    .line 142
    return-object v0
.end method
