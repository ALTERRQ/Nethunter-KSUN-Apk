.class Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;
.super Ljava/lang/Object;
.source "KaliServicesData.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->restoreData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    .line 212
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->updateKaliServicesModelListFull(Ljava/util/List;)V

    .line 224
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 225
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 226
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->refreshData()V

    .line 228
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 0

    .line 220
    return-void
.end method

.method public onTaskFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    return-void
.end method
