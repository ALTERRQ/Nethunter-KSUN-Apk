.class Lcom/google/common/collect/Sets$5$1$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$5$1$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$2:Lcom/google/common/collect/Sets$5$1$1;

.field final synthetic val$copy:Ljava/util/BitSet;

.field final synthetic val$index:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$5$1$1;Ljava/util/BitSet;Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .param p1, "this$2"    # Lcom/google/common/collect/Sets$5$1$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$2",
            "val$copy",
            "val$index"
        }
    .end annotation

    .line 1737
    iput-object p2, p0, Lcom/google/common/collect/Sets$5$1$1$1;->val$copy:Ljava/util/BitSet;

    iput-object p3, p0, Lcom/google/common/collect/Sets$5$1$1$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    iput-object p1, p0, Lcom/google/common/collect/Sets$5$1$1$1;->this$2:Lcom/google/common/collect/Sets$5$1$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1738
    const/4 p2, -0x1

    iput p2, p0, Lcom/google/common/collect/Sets$5$1$1$1;->i:I

    .line 1737
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1742
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1$1$1;->val$copy:Ljava/util/BitSet;

    iget v1, p0, Lcom/google/common/collect/Sets$5$1$1$1;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/Sets$5$1$1$1;->i:I

    .line 1743
    iget v0, p0, Lcom/google/common/collect/Sets$5$1$1$1;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1744
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$5$1$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1746
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$5$1$1$1;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/Sets$5$1$1$1;->i:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
