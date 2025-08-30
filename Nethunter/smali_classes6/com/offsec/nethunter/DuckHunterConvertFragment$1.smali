.class Lcom/offsec/nethunter/DuckHunterConvertFragment$1;
.super Ljava/lang/Object;
.source "DuckHunterConvertFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/DuckHunterConvertFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/DuckHunterConvertFragment;

    .line 72
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .line 89
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->access$000(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "ACTION"

    const-string v3, "SHOULDCONVERT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 91
    const-string v2, "com.offsec.nethunter.SHOULDCONVERT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    .line 92
    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->access$000(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 76
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 81
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->access$000(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "ACTION"

    const-string v3, "SHOULDCONVERT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 83
    const-string v2, "com.offsec.nethunter.SHOULDCONVERT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    .line 84
    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->access$000(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
