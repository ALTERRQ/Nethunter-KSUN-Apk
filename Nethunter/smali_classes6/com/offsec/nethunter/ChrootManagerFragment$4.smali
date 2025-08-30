.class Lcom/offsec/nethunter/ChrootManagerFragment$4;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->startDownloadAndRestoreChroot(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

.field final synthetic val$downloadDir:Ljava/io/File;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/ChrootManagerFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 455
    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->val$downloadDir:Ljava/io/File;

    iput-object p3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->val$fileName:Ljava/lang/String;

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

    .line 466
    .local p2, "resultString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$000(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    .line 467
    if-nez p1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->val$downloadDir:Ljava/io/File;

    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->val$fileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$100(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$200(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Download failed."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 472
    :goto_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$4;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$000(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    .line 459
    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 462
    return-void
.end method
