.class Lcom/offsec/nethunter/ChrootManagerFragment$3;
.super Ljava/lang/Object;
.source "ChrootManagerFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/ChrootManagerFragment;->setStopKaliButton()V
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

    .line 393
    iput-object p1, p0, Lcom/offsec/nethunter/ChrootManagerFragment$3;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

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

    .line 404
    .local p2, "resultString":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$3;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$700(Lcom/offsec/nethunter/ChrootManagerFragment;I)V

    .line 406
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$3;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$600(Lcom/offsec/nethunter/ChrootManagerFragment;I)V

    .line 407
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$3;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$000(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    .line 408
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$3;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$300(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    .line 410
    :cond_0
    return-void
.end method

.method public onExecutorPrepare()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment$3;->this$0:Lcom/offsec/nethunter/ChrootManagerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->access$000(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V

    .line 397
    return-void
.end method

.method public onExecutorProgressUpdate(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 400
    return-void
.end method
