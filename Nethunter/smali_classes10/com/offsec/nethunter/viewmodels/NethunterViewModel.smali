.class public Lcom/offsec/nethunter/viewmodels/NethunterViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NethunterViewModel.java"


# instance fields
.field private mutableLiveDataNethunterModelList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getLiveDataNethunterModelList()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->mutableLiveDataNethunterModelList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->mutableLiveDataNethunterModelList:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    .line 27
    .local v0, "nethunterData":Lcom/offsec/nethunter/RecyclerViewData/NethunterData;
    sget-boolean v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->isDataInitiated:Z

    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->mutableLiveDataNethunterModelList:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels(Landroid/content/Context;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->mutableLiveDataNethunterModelList:Landroidx/lifecycle/MutableLiveData;

    .line 32
    :goto_0
    return-void
.end method
