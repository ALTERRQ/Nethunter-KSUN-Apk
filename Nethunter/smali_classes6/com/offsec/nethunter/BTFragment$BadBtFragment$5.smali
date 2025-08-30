.class Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;
.super Ljava/lang/Object;
.source "BTFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/BTFragment$BadBtFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    .line 1361
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1364
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$602(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1365
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$600(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows 7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v1, "win7"

    iput-object v1, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto :goto_0

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$600(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows 8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1368
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v1, "win8"

    iput-object v1, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$600(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows 10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v1, "win10"

    iput-object v1, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto :goto_0

    .line 1371
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$600(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows 11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1372
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v1, "win11"

    iput-object v1, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto :goto_0

    .line 1373
    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$500(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1374
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v1, "-"

    iput-object v1, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    .line 1376
    :cond_4
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1379
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
