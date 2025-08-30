.class public Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;
.super Landroidx/fragment/app/Fragment;
.source "WifipumpkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/WifipumpkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BdfProxyConfigFragment"
.end annotation


# instance fields
.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 719
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-WifipumpkinFragment$BdfProxyConfigFragment(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 746
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 747
    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0451

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 750
    .local v0, "source1":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "newSource":Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v2}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 752
    .local v2, "exe1":Lcom/offsec/nethunter/utils/ShellExecuter;
    iget-object v3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    .line 753
    iget-object v3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->context:Landroid/content/Context;

    const-string v4, "Source updated"

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 725
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 726
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->context:Landroid/content/Context;

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/configs/bdfproxy.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->configFilePath:Ljava/lang/String;

    .line 728
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 733
    const v0, 0x7f0d00df

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 735
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, "description":Ljava/lang/String;
    const v2, 0x7f0a0153

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 737
    .local v2, "desc":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    const-string v3, "BDFPATH"

    iget-object v4, p0, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->configFilePath:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const v3, 0x7f0a0451

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 741
    .local v3, "source":Landroid/widget/EditText;
    new-instance v4, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v4}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 742
    .local v4, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    iget-object v5, p0, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 744
    const v5, 0x7f0a050a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 745
    .local v5, "button":Landroid/widget/Button;
    new-instance v6, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    return-object v0
.end method
