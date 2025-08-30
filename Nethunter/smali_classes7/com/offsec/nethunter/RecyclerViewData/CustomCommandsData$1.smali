.class Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;
.super Ljava/lang/Object;
.source "CustomCommandsData.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->runCommandforitem(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    .line 45
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorPrepare()V
    .locals 0

    .line 56
    return-void
.end method

.method public onTaskFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->updateCustomCommandsModelListFull(Ljava/util/List;)V

    .line 49
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;->this$0:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-virtual {v1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
