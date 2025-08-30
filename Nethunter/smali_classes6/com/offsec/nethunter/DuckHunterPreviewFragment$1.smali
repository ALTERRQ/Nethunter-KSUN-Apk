.class Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DuckHunterPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/DuckHunterPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 36
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$0$com-offsec-nethunter-DuckHunterPreviewFragment$1(Ljava/lang/String;)V
    .locals 1
    .param p1, "previewResult"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$600(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onReceive$1$com-offsec-nethunter-DuckHunterPreviewFragment$1()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$400(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$300(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "previewResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$500(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method

.method synthetic lambda$onReceive$2$com-offsec-nethunter-DuckHunterPreviewFragment$1()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$600(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f13012a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method synthetic lambda$onReceive$3$com-offsec-nethunter-DuckHunterPreviewFragment$1(Z)V
    .locals 2
    .param p1, "convertResult"    # Z

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$100(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$500(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :goto_0
    return-void
.end method

.method synthetic lambda$onReceive$4$com-offsec-nethunter-DuckHunterPreviewFragment$1()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$400(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/duckyconverter -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 47
    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$200(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -o "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 48
    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$300(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -l "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/DuckHunterFragment;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    .local v0, "convertResult":Z
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$500(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 39
    const-string v0, "ACTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREVIEWDUCKY"

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$000(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 41
    const-string v3, "SHOULDCONVERT"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 43
    const-string v2, "com.offsec.nethunter.SHOULDCONVERT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$000(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 45
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->access$100(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 62
    :cond_0
    return-void
.end method
