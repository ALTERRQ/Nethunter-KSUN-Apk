.class Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;
.super Ljava/lang/Object;
.source "KaliServicesData.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->stopServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;Landroidx/appcompat/widget/SwitchCompat;ILandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iput p3, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$position:I

    iput-object p4, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[+]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed stopping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->this$0:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-virtual {v2}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget v3, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;->val$mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 102
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

    .line 98
    .local p1, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    return-void
.end method
