.class Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;
.super Landroid/widget/Filter;
.source "NethunterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    .line 155
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;->this$0:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 158
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 159
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "filterPattern":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v2, "tempNethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v3

    iget-object v3, v3, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/offsec/nethunter/models/NethunterModel;

    .line 165
    .local v4, "nethunterModel":Lcom/offsec/nethunter/models/NethunterModel;
    invoke-virtual {v4}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v4    # "nethunterModel":Lcom/offsec/nethunter/models/NethunterModel;
    :cond_1
    goto :goto_0

    .line 169
    :cond_2
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 160
    .end local v1    # "filterPattern":Ljava/lang/String;
    .end local v2    # "tempNethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    :cond_3
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v2

    iget-object v2, v2, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 171
    :goto_2
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 176
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 179
    return-void
.end method
