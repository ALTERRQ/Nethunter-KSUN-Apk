.class final Lcom/google/common/graph/InvalidatableSet;
.super Lcom/google/common/collect/ForwardingSet;
.source "InvalidatableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final errorMessage:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final validator:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delegate",
            "validator",
            "errorMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/google/common/graph/InvalidatableSet;, "Lcom/google/common/graph/InvalidatableSet<TE;>;"
    .local p1, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "validator":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    .local p3, "errorMessage":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/common/graph/InvalidatableSet;->delegate:Ljava/util/Set;

    .line 33
    iput-object p2, p0, Lcom/google/common/graph/InvalidatableSet;->validator:Lcom/google/common/base/Supplier;

    .line 34
    iput-object p3, p0, Lcom/google/common/graph/InvalidatableSet;->errorMessage:Lcom/google/common/base/Supplier;

    .line 35
    return-void
.end method

.method static of(Ljava/util/Set;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)Lcom/google/common/graph/InvalidatableSet;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delegate",
            "validator",
            "errorMessage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/graph/InvalidatableSet<",
            "TE;>;"
        }
    .end annotation

    .line 20
    .local p0, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "validator":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/Boolean;>;"
    .local p2, "errorMessage":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/common/graph/InvalidatableSet;

    .line 21
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/Supplier;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/graph/InvalidatableSet;-><init>(Ljava/util/Set;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 20
    return-object v0
.end method

.method private validate()V
    .locals 2

    .line 49
    .local p0, "this":Lcom/google/common/graph/InvalidatableSet;, "Lcom/google/common/graph/InvalidatableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/InvalidatableSet;->validator:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/common/graph/InvalidatableSet;->errorMessage:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 13
    .local p0, "this":Lcom/google/common/graph/InvalidatableSet;, "Lcom/google/common/graph/InvalidatableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/InvalidatableSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 13
    .local p0, "this":Lcom/google/common/graph/InvalidatableSet;, "Lcom/google/common/graph/InvalidatableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/InvalidatableSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 26
    .local p0, "this":Lcom/google/common/graph/InvalidatableSet;, "Lcom/google/common/graph/InvalidatableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/graph/InvalidatableSet;->validate()V

    .line 27
    iget-object v0, p0, Lcom/google/common/graph/InvalidatableSet;->delegate:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 41
    .local p0, "this":Lcom/google/common/graph/InvalidatableSet;, "Lcom/google/common/graph/InvalidatableSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/graph/InvalidatableSet;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method
