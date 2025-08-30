.class Lcom/offsec/nethunter/AppNavHomeActivity$2;
.super Ljava/lang/Object;
.source "AppNavHomeActivity.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/AppNavHomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AppNavHomeActivity;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 177
    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onExecutorFinished$0$com-offsec-nethunter-AppNavHomeActivity$2()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    return-void
.end method

.method synthetic lambda$onExecutorFinished$1$com-offsec-nethunter-AppNavHomeActivity$2()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    return-void
.end method

.method synthetic lambda$onExecutorFinished$2$com-offsec-nethunter-AppNavHomeActivity$2()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    return-void
.end method

.method synthetic lambda$onExecutorFinished$3$com-offsec-nethunter-AppNavHomeActivity$2()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    return-void
.end method

.method public onExecutorFinished(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .line 202
    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->getBusyboxPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    .line 204
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 206
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 207
    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 208
    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$2$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 209
    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$2$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 212
    nop

    .line 214
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->setDefaultSharePreference()V

    .line 217
    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isBusyboxInstalled()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "NetHunter app cannot be run properly"

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const-string v4, "No busybox is detected, please make sure you have busybox installed!!"

    invoke-virtual {v1, v3, v4, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.offsec.nhterm"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const-string v4, "NetHunter terminal is not installed yet."

    invoke-virtual {v1, v3, v4, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$300(Lcom/offsec/nethunter/AppNavHomeActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$400(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    .line 230
    :cond_2
    return-void

    .line 211
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 212
    throw v1
.end method

.method public onExecutorPrepare()V
    .locals 0

    .line 197
    return-void
.end method

.method public onFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CopyBootFilesExecutor finished with result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppNavHomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const-string v1, "NetHunter app cannot be run properly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 191
    :cond_0
    const-string v0, "Boot files copied successfully."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .line 183
    return-void
.end method
