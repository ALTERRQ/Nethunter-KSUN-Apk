.class public Lcom/offsec/nethunter/Executor/NethunterExecutor;
.super Ljava/lang/Object;
.source "NethunterExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;
    }
.end annotation


# static fields
.field public static final ADDDATA:I = 0x3

.field public static final BACKUPDATA:I = 0x6

.field public static final DELETEDATA:I = 0x4

.field public static final EDITDATA:I = 0x2

.field public static final GETITEMRESULTS:I = 0x0

.field public static final MOVEDATA:I = 0x5

.field public static final RESETDATA:I = 0x8

.field public static final RESTOREDATA:I = 0x7

.field public static final RUNCMDFORITEM:I = 0x1


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

.field private listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

.field private nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

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

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    .line 42
    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "position"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    .line 46
    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    .line 47
    iput p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    .line 48
    return-void
.end method

.method public constructor <init>(IIILcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "originalPositionIndex"    # I
    .param p3, "targetPositionIndex"    # I
    .param p4, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    .line 65
    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    .line 66
    iput p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    .line 67
    iput p3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    .line 68
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    .line 69
    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "position"    # I
    .param p4, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    .line 50
    .local p3, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    .line 51
    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    .line 52
    iput p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    .line 53
    iput-object p3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 54
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    .line 55
    return-void
.end method

.method public constructor <init>(ILcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    .line 72
    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    .line 73
    iput-object p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/NethunterSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p4, "nethunterSQL"    # Lcom/offsec/nethunter/SQL/NethunterSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/offsec/nethunter/SQL/NethunterSQL;",
            ")V"
        }
    .end annotation

    .line 57
    .local p2, "selectedPositionsIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "selectedTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    .line 58
    iput p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    .line 59
    iput-object p2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    .line 60
    iput-object p3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    .line 61
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    .line 62
    return-void
.end method

.method public static checkVulkanSupportOnStart(Lcom/offsec/nethunter/NetHunterFragment;)V
    .locals 2
    .param p0, "netHunterFragment"    # Lcom/offsec/nethunter/NetHunterFragment;

    .line 77
    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/utils/VulkanChecker;->isVulkanSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "NethunterExecutor"

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Vulkan is supported on this device."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_0
    const-string v0, "Vulkan is NOT supported on this device."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void
.end method

.method private performTask(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation

    .line 101
    .local p1, "nethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->actionCode:I

    const/4 v1, 0x0

    const-string v2, "\\n"

    const-string v3, "1"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 170
    :pswitch_1
    if-eqz p1, :cond_7

    .line 171
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 172
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 159
    :pswitch_2
    if-eqz p1, :cond_7

    .line 160
    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    .line 161
    .local v0, "tempNethunterModel":Lcom/offsec/nethunter/models/NethunterModel;
    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 162
    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    iget v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    if-ge v1, v2, :cond_0

    .line 163
    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    .line 165
    :cond_0
    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    iget v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->originalPositionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->targetPositionIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/offsec/nethunter/SQL/NethunterSQL;->moveData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 167
    .end local v0    # "tempNethunterModel":Lcom/offsec/nethunter/models/NethunterModel;
    goto/16 :goto_4

    .line 150
    :pswitch_3
    if-eqz p1, :cond_7

    .line 151
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 153
    .local v1, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 154
    .end local v1    # "selectedPosition":Ljava/lang/Integer;
    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->deleteData(Ljava/util/List;)V

    goto/16 :goto_4

    .line 136
    :pswitch_4
    if-eqz p1, :cond_7

    .line 137
    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    sub-int/2addr v0, v6

    new-instance v2, Lcom/offsec/nethunter/models/NethunterModel;

    iget-object v7, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/offsec/nethunter/models/NethunterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    sub-int/2addr v0, v6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/NethunterSQL;->addData(ILjava/util/List;)V

    goto/16 :goto_4

    .line 123
    :pswitch_5
    if-eqz p1, :cond_7

    .line 124
    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    .line 125
    .local v0, "model":Lcom/offsec/nethunter/models/NethunterModel;
    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setTitle(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setCommand(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setDelimiter(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setRunOnCreate(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->nethunterSQL:Lcom/offsec/nethunter/SQL/NethunterSQL;

    iget v2, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/offsec/nethunter/SQL/NethunterSQL;->editData(Ljava/lang/Integer;Ljava/util/List;)V

    .line 133
    .end local v0    # "model":Lcom/offsec/nethunter/models/NethunterModel;
    goto :goto_4

    .line 112
    :pswitch_6
    if-eqz p1, :cond_7

    .line 113
    iget v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    .line 115
    .restart local v0    # "model":Lcom/offsec/nethunter/models/NethunterModel;
    const-string v1, "vulkan_check"

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    const-string v1, "Vulkan check is not a shell command."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    goto :goto_1

    .line 118
    :cond_4
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    .line 120
    .end local v0    # "model":Lcom/offsec/nethunter/models/NethunterModel;
    :goto_1
    goto :goto_4

    .line 103
    :pswitch_7
    if-eqz p1, :cond_7

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/NethunterModel;

    .line 105
    .local v1, "model":Lcom/offsec/nethunter/models/NethunterModel;
    invoke-virtual {v1}, Lcom/offsec/nethunter/models/NethunterModel;->getRunOnCreate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    new-instance v4, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v4}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/NethunterModel;->getCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 107
    :cond_5
    const-string v4, "Please click RUN button manually."

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 105
    :goto_3
    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/models/NethunterModel;->setResult([Ljava/lang/String;)V

    .line 108
    .end local v1    # "model":Lcom/offsec/nethunter/models/NethunterModel;
    goto :goto_2

    :cond_6
    nop

    .line 176
    :cond_7
    :goto_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public execute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p1, "nethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/NethunterExecutor;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-NethunterExecutor(Ljava/util/List;)V
    .locals 1
    .param p1, "result"    # Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;->onFinished(Ljava/util/List;)V

    .line 96
    :cond_0
    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-NethunterExecutor(Ljava/util/List;)V
    .locals 3
    .param p1, "nethunterModelList"    # Ljava/util/List;

    .line 90
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->performTask(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 92
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/Executor/NethunterExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/Executor/NethunterExecutor;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    .line 180
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/NethunterExecutor;->listener:Lcom/offsec/nethunter/Executor/NethunterExecutor$NethunterExecutorListener;

    .line 181
    return-void
.end method
