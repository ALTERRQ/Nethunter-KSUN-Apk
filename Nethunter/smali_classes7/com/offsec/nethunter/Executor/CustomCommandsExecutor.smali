.class public Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;
.super Ljava/lang/Object;
.source "CustomCommandsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;
    }
.end annotation


# static fields
.field public static final ADDDATA:I = 0x2

.field public static final ANDROID_CMD_FAIL:I = 0x65

.field public static final ANDROID_CMD_SUCCESS:I = 0x64

.field public static final BACKUPDATA:I = 0x5

.field public static final DELETEDATA:I = 0x3

.field public static final EDITDATA:I = 0x1

.field public static final KALI_CMD_FAIL:I = 0x67

.field public static final KALI_CMD_SUCCESS:I = 0x66

.field public static final MOVEDATA:I = 0x4

.field public static final RESETDATA:I = 0x7

.field public static final RESTOREDATA:I = 0x6

.field public static final RUNCMD:I

.field private static context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actionCode:I

.field private customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

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

.field private listener:Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

.field private originalPositionIndex:I

.field private position:I

.field private returnValue:I

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
.method public constructor <init>(IIILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "originalPositionIndex"    # I
    .param p3, "targetPositionIndex"    # I
    .param p4, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    .line 71
    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    .line 72
    iput p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    .line 73
    iput p3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    .line 74
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    .line 75
    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "position"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    .line 51
    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    .line 52
    iput p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method

.method public constructor <init>(IILjava/util/ArrayList;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "position"    # I
    .param p4, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/offsec/nethunter/SQL/CustomCommandsSQL;",
            ")V"
        }
    .end annotation

    .line 56
    .local p3, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    .line 57
    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    .line 58
    iput p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    .line 59
    iput-object p3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 60
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    .line 61
    return-void
.end method

.method public constructor <init>(ILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    .line 78
    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    .line 79
    iput-object p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    .line 80
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p4, "customCommandsSQL"    # Lcom/offsec/nethunter/SQL/CustomCommandsSQL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/offsec/nethunter/SQL/CustomCommandsSQL;",
            ")V"
        }
    .end annotation

    .line 63
    .local p2, "selectedPositionsIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "selectedTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    .line 64
    iput p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    .line 65
    iput-object p2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    .line 66
    iput-object p3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    .line 67
    iput-object p4, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    .line 68
    return-void
.end method

.method private performTask(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;"
        }
    .end annotation

    .line 102
    .local p1, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->actionCode:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 184
    :pswitch_0
    if-eqz p1, :cond_9

    .line 185
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 186
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->bindData(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_5

    .line 182
    :pswitch_1
    goto/16 :goto_5

    .line 164
    :pswitch_2
    if-eqz p1, :cond_9

    .line 165
    new-instance v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    .line 166
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v7

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    .line 167
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v8

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    .line 168
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v9

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    .line 169
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getExecutionMode()Ljava/lang/String;

    move-result-object v10

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRunOnBoot()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/offsec/nethunter/models/CustomCommandsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v0, "tempCustomCommandsModel":Lcom/offsec/nethunter/models/CustomCommandsModel;
    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    if-ge v1, v2, :cond_0

    .line 174
    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    .line 176
    :cond_0
    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->originalPositionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->targetPositionIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->moveData(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 178
    .end local v0    # "tempCustomCommandsModel":Lcom/offsec/nethunter/models/CustomCommandsModel;
    goto/16 :goto_5

    .line 155
    :pswitch_3
    if-eqz p1, :cond_9

    .line 156
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedPositionsIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 158
    .local v1, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 159
    .end local v1    # "selectedPosition":Ljava/lang/Integer;
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->selectedTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->deleteData(Ljava/util/List;)V

    goto/16 :goto_5

    .line 141
    :pswitch_4
    if-eqz p1, :cond_9

    .line 142
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    sub-int/2addr v0, v5

    new-instance v12, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v6, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    iget-object v3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    iget-object v3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/offsec/nethunter/models/CustomCommandsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {p1, v0, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->updateRunOnBootScripts(Ljava/util/List;)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->addData(ILjava/util/List;)V

    goto/16 :goto_5

    .line 130
    :pswitch_5
    if-eqz p1, :cond_9

    .line 131
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v6, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setCommandLabel(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setCommand(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setRuntimeEnv(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setExecutionMode(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->setRunOnBoot(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->updateRunOnBootScripts(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->customCommandsSQL:Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->dataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->editData(Ljava/lang/Integer;Ljava/util/List;)V

    goto/16 :goto_5

    .line 104
    :pswitch_6
    if-eqz p1, :cond_9

    .line 105
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getExecutionMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "interactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android"

    if-eqz v0, :cond_5

    .line 106
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->run_cmd_android(Ljava/lang/String;)V

    .end local v0    # "cmd":Ljava/lang/String;
    goto :goto_1

    .line 109
    :cond_3
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kali"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v0}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0    # "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->run_cmd(Ljava/lang/String;)V

    .line 112
    .end local v0    # "cmd":Ljava/lang/String;
    goto/16 :goto_5

    .line 109
    :cond_4
    :goto_1
    goto/16 :goto_5

    .line 114
    :cond_5
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/offsec/nethunter/service/NotificationChannelService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v2, "com.offsec.nethunter.CUSTOMCOMMAND_START"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ENV"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    .line 117
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v3}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CMD"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    sget-object v2, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 119
    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 120
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    .line 121
    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    if-nez v1, :cond_6

    const/16 v1, 0x64

    goto :goto_2

    :cond_6
    const/16 v1, 0x65

    :goto_2
    iput v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    goto :goto_4

    .line 123
    :cond_7
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootReturnValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    .line 124
    iget v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    if-nez v1, :cond_8

    const/16 v1, 0x66

    goto :goto_3

    :cond_8
    const/16 v1, 0x67

    :goto_3
    iput v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_4
    nop

    .line 190
    :cond_9
    :goto_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .line 212
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p0}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public static run_cmd_android(Ljava/lang/String;)V
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;

    .line 217
    const-string v0, "/system/bin/sh"

    invoke-static {v0, p0}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private updateRunOnBootScripts(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation

    .line 202
    .local p1, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .local v0, "tmpStringBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    .line 204
    .local v2, "model":Lcom/offsec/nethunter/models/CustomCommandsModel;
    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRunOnBoot()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getRuntimeEnv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .end local v2    # "model":Lcom/offsec/nethunter/models/CustomCommandsModel;
    :cond_0
    goto :goto_0

    .line 208
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

    const-string v3, "/runonboot_services\n"

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

    .line 209
    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p1, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-CustomCommandsExecutor(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "result"    # Ljava/util/List;
    .param p2, "customCommandsModelList"    # Ljava/util/List;

    .line 86
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->listener:Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->listener:Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;->onTaskFinished(Ljava/util/List;)V

    .line 89
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    .line 90
    iget v0, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/offsec/nethunter/service/NotificationChannelService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string v1, "com.offsec.nethunter.CUSTOMCOMMAND_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "RETURNCODE"

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->returnValue:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->position:I

    .line 94
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CMD"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    sget-object v1, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-CustomCommandsExecutor(Ljava/util/List;)V
    .locals 3
    .param p1, "customCommandsModelList"    # Ljava/util/List;

    .line 84
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->performTask(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1}, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;

    .line 194
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/CustomCommandsExecutor;->listener:Lcom/offsec/nethunter/Executor/CustomCommandsExecutor$CustomCommandsExecutorListener;

    .line 195
    return-void
.end method
