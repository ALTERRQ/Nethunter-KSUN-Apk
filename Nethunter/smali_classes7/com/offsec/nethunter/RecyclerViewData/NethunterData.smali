.class public Lcom/offsec/nethunter/RecyclerViewData/NethunterData;
.super Ljava/lang/Object;
.source "NethunterData.java"


# static fields
.field private static instance:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

.field public static isDataInitiated:Z


# instance fields
.field private final copyOfNethunterModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nethunterModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation
.end field

.field public nethunterModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->isDataInitiated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelArrayList:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->copyOfNethunterModelListFull:Ljava/util/List;

    return-void
.end method

.method private getInitCopyOfNethunterModelListFull()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->copyOfNethunterModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->copyOfNethunterModelListFull:Ljava/util/List;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->copyOfNethunterModelListFull:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;
    .locals 2

    const-class v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->instance:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;-><init>()V

    sput-object v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->instance:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    .line 27
    :cond_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->instance:Lcom/offsec/nethunter/RecyclerViewData/NethunterData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    .line 99
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x3

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 100
    .local v0, "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$4;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$4;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    .line 114
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    .line 115
    return-void
.end method

.method public backupData(Lcom/offsec/nethunter/SQL/NethunterSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;
    .param p2, "storedDBpath"    # Ljava/lang/String;

    .line 156
    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->backupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 4
    .param p3, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    .line 118
    .local p1, "selectedPositionsIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "selectedTargetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 119
    .local v0, "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$5;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$5;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    .line 133
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    .line 134
    return-void
.end method

.method public editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    .line 80
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x2

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 81
    .local v0, "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$3;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    .line 95
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    .line 96
    return-void
.end method

.method public getNethunterModels()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNethunterModels(Landroid/content/Context;)Landroidx/lifecycle/MutableLiveData;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;>;"
        }
    .end annotation

    .line 31
    sget-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->isDataInitiated:Z

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->isDataInitiated:Z

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public moveData(IILcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .param p1, "originalPositionIndex"    # I
    .param p2, "targetPositionIndex"    # I
    .param p3, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;

    .line 137
    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(IIILcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 138
    .local v0, "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$6;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    .line 152
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    .line 153
    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 44
    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(I)V

    .line 45
    .local v0, "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$1;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    .line 58
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public resetData(Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .param p1, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;

    .line 186
    invoke-virtual {p1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->resetData()V

    .line 187
    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(ILcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 188
    .local v0, "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$8;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$8;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    .line 203
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    .line 204
    return-void
.end method

.method public restoreData(Lcom/offsec/nethunter/SQL/NethunterSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;
    .param p2, "storedDBpath"    # Ljava/lang/String;

    .line 160
    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->restoreData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 162
    new-instance v1, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(ILcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 163
    .local v1, "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    new-instance v2, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$7;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$7;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    .line 178
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    .line 179
    const/4 v2, 0x0

    return-object v2

    .line 181
    .end local v1    # "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    :cond_0
    return-object v0
.end method

.method public runCommandforItem(I)V
    .locals 2
    .param p1, "position"    # I

    .line 62
    new-instance v0, Lcom/offsec/nethunter/Executor/NethunterExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;-><init>(II)V

    .line 63
    .local v0, "nethunterExecutor":Lcom/offsec/nethunter/Executor/NethunterExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData$2;-><init>(Lcom/offsec/nethunter/RecyclerViewData/NethunterData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    .line 76
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInitCopyOfNethunterModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->execute(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public updateNethunterModelListFull(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p1, "copyOfNethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    return-void
.end method
