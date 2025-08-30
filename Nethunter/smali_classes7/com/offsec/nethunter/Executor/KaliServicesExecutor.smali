.class public Lcom/offsec/nethunter/Executor/KaliServicesExecutor;
.super Ljava/lang/Object;
.source "KaliServicesExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;
    }
.end annotation


# static fields
.field public static final ADDDATA:I = 0x4

.field public static final BACKUPDATA:I = 0x7

.field public static final DELETEDATA:I = 0x5

.field public static final EDITDATA:I = 0x3

.field public static final GETITEMSTATUS:I = 0x0

.field public static final MOVEDATA:I = 0x6

.field public static final RESETDATA:I = 0x9

.field public static final RESTOREDATA:I = 0x8

.field public static final START_SERVICE_FOR_ITEM:I = 0x1

.field public static final STOP_SERVICE_FOR_ITEM:I = 0x2

.field public static final UPDATE_RUNONCHROOTSTART_SCRIPTS:I = 0xa


# instance fields
.field private final actionCode:I

.field private dataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

.field private listener:Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

.field private originalPositionIndex:I

.field private position:I

.field private selectedPositionsIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private targetPositionIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "actionCode"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    .line 43
    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "position"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    .line 47
    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    .line 48
    iput p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    .line 49
    return-void
.end method

.method public constructor <init>(IIILcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "originalPositionIndex"    # I
    .param p3, "targetPositionIndex"    # I
    .param p4, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    .line 66
    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    .line 67
    iput p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    .line 68
    iput p3, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    .line 69
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    .line 70
    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "position"    # I
    .param p4, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    .line 51
    .local p3, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    .line 52
    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    .line 53
    iput p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    .line 54
    iput-object p3, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 55
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    .line 56
    return-void
.end method

.method public constructor <init>(ILcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    .line 73
    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    .line 74
    iput-object p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p4, "kaliServicesSQL"    # Lcom/offsec/nethunter/SQL/KaliServicesSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/offsec/nethunter/SQL/KaliServicesSQL;",
            ")V"
        }
    .end annotation

    .line 58
    .local p2, "selectedPositionsIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "selectedTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    .line 59
    iput p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    .line 60
    iput-object p2, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    .line 61
    iput-object p3, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    .line 62
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    .line 63
    return-void
.end method

.method private performTask(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;"
        }
    .end annotation

    .line 90
    .local p1, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->actionCode:I

    const-string v3, "[+] Service is running"

    const-string v4, "[-] Service is NOT running"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 168
    :pswitch_1
    if-eqz v1, :cond_7

    .line 169
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setServiceName(Ljava/lang/String;)V

    .line 170
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforStartService(Ljava/lang/String;)V

    .line 171
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforStopService(Ljava/lang/String;)V

    .line 172
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforCheckServiceStatus(Ljava/lang/String;)V

    .line 173
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setRunOnChrootStart(Ljava/lang/String;)V

    .line 174
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->editData(Ljava/lang/Integer;Ljava/util/List;)V

    .line 175
    invoke-direct/range {p0 .. p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->updateRunOnChrootStartScripts(Ljava/util/List;)V

    goto/16 :goto_4

    .line 162
    :pswitch_2
    if-eqz v1, :cond_7

    .line 163
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 164
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    invoke-virtual {v2, v1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_4

    .line 144
    :pswitch_3
    if-eqz v1, :cond_7

    .line 145
    new-instance v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    .line 146
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v11

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    .line 147
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v12

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    .line 148
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStopService()Ljava/lang/String;

    move-result-object v13

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforCheckServiceStatus()Ljava/lang/String;

    move-result-object v14

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    .line 150
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getRunOnChrootStart()Ljava/lang/String;

    move-result-object v15

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    .line 151
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v16

    move-object v10, v2

    invoke-direct/range {v10 .. v16}, Lcom/offsec/nethunter/models/KaliServicesModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .local v2, "tempKaliServicesModel":Lcom/offsec/nethunter/models/KaliServicesModel;
    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    iget v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    if-ge v3, v4, :cond_0

    .line 155
    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    sub-int/2addr v3, v9

    iput v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    .line 157
    :cond_0
    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 158
    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->originalPositionIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->targetPositionIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->moveData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 159
    .end local v2    # "tempKaliServicesModel":Lcom/offsec/nethunter/models/KaliServicesModel;
    goto/16 :goto_4

    .line 135
    :pswitch_4
    if-eqz v1, :cond_7

    .line 136
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 138
    .local v3, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    .end local v3    # "selectedPosition":Ljava/lang/Integer;
    goto :goto_0

    .line 140
    :cond_1
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->deleteData(Ljava/util/List;)V

    goto/16 :goto_4

    .line 120
    :pswitch_5
    if-eqz v1, :cond_7

    .line 121
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    sub-int/2addr v2, v9

    new-instance v3, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    const-string v16, ""

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/offsec/nethunter/models/KaliServicesModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 128
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    invoke-direct/range {p0 .. p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->updateRunOnChrootStartScripts(Ljava/util/List;)V

    .line 131
    :cond_2
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->addData(ILjava/util/List;)V

    goto/16 :goto_4

    .line 109
    :pswitch_6
    if-eqz v1, :cond_7

    .line 110
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setServiceName(Ljava/lang/String;)V

    .line 111
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforStartService(Ljava/lang/String;)V

    .line 112
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforStopService(Ljava/lang/String;)V

    .line 113
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setCommandforCheckServiceStatus(Ljava/lang/String;)V

    .line 114
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    iget-object v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setRunOnChrootStart(Ljava/lang/String;)V

    .line 115
    invoke-direct/range {p0 .. p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->updateRunOnChrootStartScripts(Ljava/util/List;)V

    .line 116
    iget-object v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->kaliServicesSQL:Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    iget v3, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->editData(Ljava/lang/Integer;Ljava/util/List;)V

    goto/16 :goto_4

    .line 104
    :pswitch_7
    if-eqz v1, :cond_7

    .line 105
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    new-instance v5, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v5}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v6, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v6}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStopService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootReturnValue(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    move-object v3, v4

    :cond_3
    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 99
    :pswitch_8
    if-eqz v1, :cond_7

    .line 100
    iget v2, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    new-instance v5, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v5}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v6, v0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->position:I

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v6}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootReturnValue(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/models/KaliServicesModel;->setStatus(Ljava/lang/String;)V

    goto :goto_4

    .line 92
    :pswitch_9
    if-eqz v1, :cond_7

    .line 93
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 94
    .local v5, "model":Lcom/offsec/nethunter/models/KaliServicesModel;
    new-instance v6, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v6}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ps | grep -v grep | grep -w \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforCheckServiceStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v3

    goto :goto_3

    :cond_5
    move-object v6, v4

    :goto_3
    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/models/KaliServicesModel;->setStatus(Ljava/lang/String;)V

    .line 95
    .end local v5    # "model":Lcom/offsec/nethunter/models/KaliServicesModel;
    goto :goto_2

    :cond_6
    nop

    .line 179
    :cond_7
    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRunOnChrootStartScripts(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "tmpStringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 193
    .local v2, "model":Lcom/offsec/nethunter/models/KaliServicesModel;
    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getRunOnChrootStart()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .end local v2    # "model":Lcom/offsec/nethunter/models/KaliServicesModel;
    :cond_0
    goto :goto_0

    .line 197
    :cond_1
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat << \'EOF\' > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/kaliservices\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nEOF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/KaliServicesExecutor;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-KaliServicesExecutor(Ljava/util/List;)V
    .locals 1
    .param p1, "result"    # Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->listener:Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->listener:Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;->onTaskFinished(Ljava/util/List;)V

    .line 84
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    .line 85
    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-KaliServicesExecutor(Ljava/util/List;)V
    .locals 3
    .param p1, "kaliServicesModelList"    # Ljava/util/List;

    .line 79
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->performTask(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/Executor/KaliServicesExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/KaliServicesExecutor;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;

    .line 183
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/KaliServicesExecutor;->listener:Lcom/offsec/nethunter/Executor/KaliServicesExecutor$KaliServicesExecutorListener;

    .line 184
    return-void
.end method
