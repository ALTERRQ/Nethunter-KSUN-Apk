.class public Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;
.super Ljava/lang/Object;
.source "KaliServicesData.java"


# static fields
.field private static instance:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

.field public static isDataInitiated:Z


# instance fields
.field private final copyOfKaliServicesModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final kaliServicesModelArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation
.end field

.field public kaliServicesModelListFull:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->isDataInitiated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelArrayList:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->copyOfKaliServicesModelListFull:Ljava/util/List;

    return-void
.end method

.method private getInitCopyOfKaliServicesModelListFull()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->copyOfKaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 290
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->copyOfKaliServicesModelListFull:Ljava/util/List;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->copyOfKaliServicesModelListFull:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;
    .locals 2

    const-class v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->instance:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    invoke-direct {v1}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;-><init>()V

    sput-object v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->instance:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    .line 29
    :cond_0
    sget-object v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->instance:Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    .line 139
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x4

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 140
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$5;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$5;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 157
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 158
    return-void
.end method

.method public backupData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;
    .param p2, "storedDBpath"    # Ljava/lang/String;

    .line 205
    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->backupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 4
    .param p3, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    .line 161
    .local p1, "selectedPositionsIndex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "selectedTargetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1, v2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 162
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$6;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 179
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 180
    return-void
.end method

.method public editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    .line 117
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x3

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 118
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$4;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$4;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 135
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public getKaliServicesModels()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;>;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getKaliServicesModels(Landroid/content/Context;)Landroidx/lifecycle/MutableLiveData;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;>;"
        }
    .end annotation

    .line 33
    sget-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->isDataInitiated:Z

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->isDataInitiated:Z

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->data:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public moveData(IILcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .param p1, "originalPositionIndex"    # I
    .param p2, "targetPositionIndex"    # I
    .param p3, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    .line 183
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(IIILcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 184
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$7;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 201
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 202
    return-void
.end method

.method public refreshData()V
    .locals 2

    .line 46
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(I)V

    .line 47
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$1;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 65
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 66
    return-void
.end method

.method public resetData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .param p1, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    .line 238
    invoke-virtual {p1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->resetData()V

    .line 239
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(ILcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 240
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$9;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$9;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 258
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 259
    return-void
.end method

.method public restoreData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;
    .param p2, "storedDBpath"    # Ljava/lang/String;

    .line 209
    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->restoreData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 211
    new-instance v1, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(ILcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 212
    .local v1, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v2, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$8;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 230
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 231
    const/4 v2, 0x0

    return-object v2

    .line 233
    .end local v1    # "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    :cond_0
    return-object v0
.end method

.method public startServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "mSwitch"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p3, "context"    # Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(II)V

    .line 70
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$2;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;Landroidx/appcompat/widget/SwitchCompat;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 89
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 90
    return-void
.end method

.method public stopServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "mSwitch"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p3, "context"    # Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(II)V

    .line 94
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$3;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;Landroidx/appcompat/widget/SwitchCompat;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 113
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 114
    return-void
.end method

.method public updateKaliServicesModelListFull(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p1, "copyOfKaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 285
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    return-void
.end method

.method public updateRunOnChrootStartServices(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 3
    .param p1, "position"    # I
    .param p3, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    .line 262
    .local p2, "dataArrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;

    const/16 v1, 0xa

    move-object v2, p2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1, v2, p3}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;-><init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 263
    .local v0, "kaliServicesExecutor":Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData$10;-><init>(Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V

    .line 280
    invoke-direct {p0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInitCopyOfKaliServicesModelListFull()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->execute(Ljava/util/List;)V

    .line 281
    return-void
.end method
