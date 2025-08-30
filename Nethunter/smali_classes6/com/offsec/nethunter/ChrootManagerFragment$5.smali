.class Lcom/offsec/nethunter/ChrootManagerFragment$5;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->restoreChrootImage(Ljava/lang/String;)V
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

    .line 503
    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecutorFinished(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 512
    .local p2, "resultString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$000(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    .line 513
    if-nez p1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$200(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Chroot image restored successfully."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$300(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    goto :goto_0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$200(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Failed to restore chroot image."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$5;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$000(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    .line 507
    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 509
    return-void
.end method
