.class public Lcom/offsec/nethunter/Executor/DuckHuntExecutor;
.super Ljava/lang/Object;
.source "DuckHuntExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;
    }
.end annotation


# static fields
.field public static final ATTACK:Ljava/lang/Object;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private listener:Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->ATTACK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private varargs performTask(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "actionCode"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 30
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const/4 v1, 0x0

    .line 31
    .local v1, "result":Ljava/lang/Object;
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 53
    :pswitch_0
    aget-object v2, p2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 46
    :pswitch_1
    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    aget-object v2, p2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 49
    :cond_0
    const-string v1, ""

    .line 51
    goto :goto_2

    .line 33
    :pswitch_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 34
    const-string v2, "/dev/hidg0"

    const-string v4, "/dev/hidg1"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "hidgs":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 36
    .local v6, "hidg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stat -c \'%a\' "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "666"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 37
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 38
    goto :goto_1

    .line 35
    .end local v6    # "hidg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    aget-object v3, p2, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .end local v2    # "hidgs":[Ljava/lang/String;
    :cond_3
    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public varargs execute(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "actionCode"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/DuckHuntExecutor;I[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-DuckHuntExecutor(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->listener:Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->listener:Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;->onTaskFinished(Ljava/lang/Object;)V

    .line 24
    :cond_0
    return-void
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-DuckHuntExecutor(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "actionCode"    # I
    .param p2, "objects"    # [Ljava/lang/Object;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->performTask(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/Executor/DuckHuntExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/DuckHuntExecutor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;

    .line 60
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/DuckHuntExecutor;->listener:Lcom/offsec/nethunter/Executor/DuckHuntExecutor$DuckHuntExecutorListener;

    .line 61
    return-void
.end method
