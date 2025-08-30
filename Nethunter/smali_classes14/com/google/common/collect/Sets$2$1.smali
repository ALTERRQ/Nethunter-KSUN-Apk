.class Lcom/google/common/collect/Sets$2$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$2;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
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
.field final itr:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/Sets$2;

.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$2;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/collect/Sets$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$set1",
            "val$set2"
        }
    .end annotation

    .line 843
    iput-object p2, p0, Lcom/google/common/collect/Sets$2$1;->val$set1:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/common/collect/Sets$2$1;->val$set2:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/common/collect/Sets$2$1;->this$0:Lcom/google/common/collect/Sets$2;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 844
    iget-object p2, p0, Lcom/google/common/collect/Sets$2$1;->val$set1:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    .line 843
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

    .line 848
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/google/common/collect/Sets$2$1;->itr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 850
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$2$1;->val$set2:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    return-object v0

    .line 853
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$2$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
