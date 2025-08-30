.class Lcom/offsec/nethunter/ChrootManagerFragment$10;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->compatCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/ChrootManagerFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/ChrootManagerFragment;

    .line 800
    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 811
    .local p2, "resultString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$500(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V

    .line 812
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$600(Lcom/offsec/nethunter/ChrootManagerFragment;I)V

    .line 813
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$700(Lcom/offsec/nethunter/ChrootManagerFragment;I)V

    .line 814
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$000(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    .line 815
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$200(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$200(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/offsec/nethunter/service/CompatCheckService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "RESULTCODE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 816
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$10;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$500(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V

    .line 804
    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 807
    return-void
.end method
