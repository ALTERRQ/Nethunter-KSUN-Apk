.class public Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;
.super Ljava/lang/Object;
.source "CustomCommandsData.java"


# static fields
.field private static instance:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

.field public static isDataInitiated:Z


# instance fields
.field private final copyOfCustomCommandsModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final customCommandsModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;"
        }
    .end annotation
.end field

.field public customCommandsModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->isDataInitiated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelArrayList:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->data:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->copyOfCustomCommandsModelListFull:Ljava/util/List;

    return-void
.end method

.method private getInitCopyOfCustomCommandsModelListFull()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->copyOfCustomCommandsModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->copyOfCustomCommandsModelListFull:Ljava/util/List;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->copyOfCustomCommandsModelListFull:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;
    .locals 2

    const-class v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->instance:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;-><init>()V

    sput-object v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->instance:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    .line 27
    :cond_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->instance:Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;
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
.method public addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/CustomCommandsSQL;",
            ")V"
        }
    .end annotation

    .line 80
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;

    const/4 v1, 0x2

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 81
    .local v0, "customCommandsExecutor":Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$3;-><init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V

    .line 94
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInitCopyOfCustomCommandsModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->execute(Ljava/util/List;)V

    .line 95
    return-void
.end method

.method public backupData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;
    .param p2, "storedDBpath"    # Ljava/lang/String;

    .line 134
    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->backupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 4
    .param p3, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/offsec/nethunter/SQL/CustomCommandsSQL;",
            ")V"
        }
    .end annotation

    .line 98
    .local p1, "selectedPositionsIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "selectedTargetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 99
    .local v0, "customCommandsExecutor":Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$4;-><init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V

    .line 112
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInitCopyOfCustomCommandsModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->execute(Ljava/util/List;)V

    .line 113
    return-void
.end method

.method public editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/CustomCommandsSQL;",
            ")V"
        }
    .end annotation

    .line 62
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;

    const/4 v1, 0x1

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 63
    .local v0, "customCommandsExecutor":Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$2;-><init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V

    .line 76
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInitCopyOfCustomCommandsModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->execute(Ljava/util/List;)V

    .line 77
    return-void
.end method

.method public getCustomCommandsModels()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCustomCommandsModels(Landroid/content/Context;)Landroidx/lifecycle/MutableLiveData;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;>;"
        }
    .end annotation

    .line 31
    sget-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->isDataInitiated:Z

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->isDataInitiated:Z

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public moveData(IILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2
    .param p1, "originalPositionIndex"    # I
    .param p2, "targetPositionIndex"    # I
    .param p3, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    .line 116
    new-instance v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;-><init>(IIILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 117
    .local v0, "customCommandsExecutor":Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$5;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$5;-><init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V

    .line 130
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInitCopyOfCustomCommandsModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->execute(Ljava/util/List;)V

    .line 131
    return-void
.end method

.method public resetData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2
    .param p1, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    .line 162
    invoke-virtual {p1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->resetData()V

    .line 163
    new-instance v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;-><init>(ILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 164
    .local v0, "customCommandsExecutor":Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$7;-><init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V

    .line 177
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInitCopyOfCustomCommandsModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->execute(Ljava/util/List;)V

    .line 178
    return-void
.end method

.method public restoreData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;
    .param p2, "storedDBpath"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->restoreData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 140
    new-instance v1, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;-><init>(ILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 141
    .local v1, "customCommandsExecutor":Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
    new-instance v2, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$6;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$6;-><init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V

    .line 154
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInitCopyOfCustomCommandsModelListFull()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->execute(Ljava/util/List;)V

    .line 155
    const/4 v2, 0x0

    return-object v2

    .line 157
    .end local v1    # "customCommandsExecutor":Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
    :cond_0
    return-object v0
.end method

.method public runCommandforitem(ILandroid/content/Context;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;-><init>(IILandroid/content/Context;)V

    .line 45
    .local v0, "customCommandsExecutor":Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData$1;-><init>(Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V

    .line 58
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInitCopyOfCustomCommandsModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->execute(Ljava/util/List;)V

    .line 59
    return-void
.end method

.method public updateCustomCommandsModelListFull(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p1, "copyOfCustomCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    return-void
.end method
