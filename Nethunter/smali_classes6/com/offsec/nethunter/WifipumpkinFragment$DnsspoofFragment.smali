.class public Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;
.super Landroidx/fragment/app/Fragment;
.source "WifipumpkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/WifipumpkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsspoofFragment"
.end annotation


# instance fields
.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 559
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 562
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-WifipumpkinFragment$DnsspoofFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 584
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 585
    return-void

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0451

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 588
    .local v0, "source1":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "newSource":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    .line 590
    iget-object v2, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->context:Landroid/content/Context;

    const-string v3, "Source updated"

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 566
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 567
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->context:Landroid/content/Context;

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc/mana-toolkit/dnsspoof.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->configFilePath:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 574
    const v0, 0x7f0d00df

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1301ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "description":Ljava/lang/String;
    const v2, 0x7f0a0153

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 577
    .local v2, "desc":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    const v3, 0x7f0a0451

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 580
    .local v3, "source":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v5, p0, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 582
    const v4, 0x7f0a050a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 583
    .local v4, "button":Landroid/widget/Button;
    new-instance v5, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    return-object v0
.end method
