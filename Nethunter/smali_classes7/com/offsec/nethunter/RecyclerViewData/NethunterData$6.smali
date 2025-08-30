.class Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;
.super Ljava/lang/Object;
.source "NethunterData.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->moveData(IILcom/offsec/nethunter/SQL/NethunterSQL;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    .line 138
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;->this$0:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "nethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;->this$0:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->updateNethunterModelListFull(Ljava/util/List;)V

    .line 147
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;->this$0:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;->this$0:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;->this$0:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;->this$0:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    invoke-virtual {v1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getNethunterModels()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .line 142
    return-void
.end method
