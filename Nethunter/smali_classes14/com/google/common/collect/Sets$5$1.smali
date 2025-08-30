.class Lcom/google/common/collect/Sets$5$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$5;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final bits:Ljava/util/BitSet;

.field final synthetic this$0:Lcom/google/common/collect/Sets$5;

.field final synthetic val$index:Lcom/google/common/collect/ImmutableMap;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$5;Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/Sets$5;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$index",
            "val$size"
        }
    .end annotation

    .line 1695
    iput-object p2, p0, Lcom/google/common/collect/Sets$5$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    iput p3, p0, Lcom/google/common/collect/Sets$5$1;->val$size:I

    iput-object p1, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1696
    new-instance p2, Ljava/util/BitSet;

    iget-object p3, p0, Lcom/google/common/collect/Sets$5$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    .line 1695
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 1695
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$5$1;->computeNext()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1700
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    iget v2, p0, Lcom/google/common/collect/Sets$5$1;->val$size:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    goto :goto_0

    .line 1703
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 1704
    .local v0, "firstSetBit":I
    iget-object v2, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v2

    .line 1706
    .local v2, "bitToFlip":I
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1707
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$5$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    return-object v1

    .line 1723
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v4, v2, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v1, v4}, Ljava/util/BitSet;->set(II)V

    .line 1724
    iget-object v1, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->clear(II)V

    .line 1725
    iget-object v1, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1727
    .end local v0    # "firstSetBit":I
    .end local v2    # "bitToFlip":I
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 1728
    .local v0, "copy":Ljava/util/BitSet;
    new-instance v1, Lcom/google/common/collect/Sets$5$1$1;

    iget-object v2, p0, Lcom/google/common/collect/Sets$5$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    iget v3, p0, Lcom/google/common/collect/Sets$5$1;->val$size:I

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/google/common/collect/Sets$5$1$1;-><init>(Lcom/google/common/collect/Sets$5$1;Lcom/google/common/collect/ImmutableMap;Ljava/util/BitSet;I)V

    return-object v1
.end method
