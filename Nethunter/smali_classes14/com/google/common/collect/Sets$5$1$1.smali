.class Lcom/google/common/collect/Sets$5$1$1;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$5$1;->computeNext()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Sets$5$1;

.field final synthetic val$copy:Ljava/util/BitSet;

.field final synthetic val$index:Lcom/google/common/collect/ImmutableMap;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$5$1;Lcom/google/common/collect/ImmutableMap;Ljava/util/BitSet;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/common/collect/Sets$5$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$index",
            "val$copy",
            "val$size"
        }
    .end annotation

    .line 1728
    iput-object p2, p0, Lcom/google/common/collect/Sets$5$1$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    iput-object p3, p0, Lcom/google/common/collect/Sets$5$1$1;->val$copy:Ljava/util/BitSet;

    iput p4, p0, Lcom/google/common/collect/Sets$5$1$1;->val$size:I

    iput-object p1, p0, Lcom/google/common/collect/Sets$5$1$1;->this$1:Lcom/google/common/collect/Sets$5$1;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 1731
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1732
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Sets$5$1$1;->val$copy:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1737
    new-instance v0, Lcom/google/common/collect/Sets$5$1$1$1;

    iget-object v1, p0, Lcom/google/common/collect/Sets$5$1$1;->val$copy:Ljava/util/BitSet;

    iget-object v2, p0, Lcom/google/common/collect/Sets$5$1$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/collect/Sets$5$1$1$1;-><init>(Lcom/google/common/collect/Sets$5$1$1;Ljava/util/BitSet;Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1753
    iget v0, p0, Lcom/google/common/collect/Sets$5$1$1;->val$size:I

    return v0
.end method
