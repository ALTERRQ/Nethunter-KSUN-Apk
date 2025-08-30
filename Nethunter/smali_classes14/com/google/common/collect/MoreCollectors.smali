.class public final Lcom/google/common/collect/MoreCollectors;
.super Ljava/lang/Object;
.source "MoreCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MoreCollectors$ToOptionalState;
    }
.end annotation


# static fields
.field private static final NULL_PLACEHOLDER:Ljava/lang/Object;

.field private static final ONLY_ELEMENT:Lj$/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TO_OPTIONAL:Lj$/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lj$/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
    new-instance v0, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda3;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    sget-object v6, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 47
    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MoreCollectors;->TO_OPTIONAL:Lj$/util/stream/Collector;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda4;-><init>()V

    new-instance v2, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/google/common/collect/MoreCollectors$$ExternalSyntheticLambda5;-><init>()V

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    sget-object v5, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    aput-object v5, v4, v7

    .line 70
    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/MoreCollectors;->ONLY_ELEMENT:Lj$/util/stream/Collector;

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/google/common/collect/MoreCollectors$ToOptionalState;Ljava/lang/Object;)V
    .locals 1
    .param p0, "state"    # Lcom/google/common/collect/MoreCollectors$ToOptionalState;
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    if-nez p1, :cond_0

    sget-object v0, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->add(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$static$1(Lcom/google/common/collect/MoreCollectors$ToOptionalState;)Ljava/lang/Object;
    .locals 2
    .param p0, "state"    # Lcom/google/common/collect/MoreCollectors$ToOptionalState;

    .line 75
    invoke-virtual {p0}, Lcom/google/common/collect/MoreCollectors$ToOptionalState;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 76
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lcom/google/common/collect/MoreCollectors;->NULL_PLACEHOLDER:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static onlyElement()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/google/common/collect/MoreCollectors;->ONLY_ELEMENT:Lj$/util/stream/Collector;

    return-object v0
.end method

.method public static toOptional()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/google/common/collect/MoreCollectors;->TO_OPTIONAL:Lj$/util/stream/Collector;

    return-object v0
.end method
