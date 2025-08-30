.class public Lcom/offsec/nethunter/PineappleFragment;
.super Landroidx/fragment/app/Fragment;
.source "PineappleFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "PineappleFragment"


# instance fields
.field private context:Landroid/content/Context;

.field private proxy_type:Ljava/lang/String;

.field private start_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 21
    const-string v0, "start "

    iput-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->start_type:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1
    .param p1, "buttonId"    # I
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "rootView"    # Landroid/view/View;

    .line 114
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method static synthetic lambda$onCreateView$4()V
    .locals 3

    .line 85
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 86
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su -c \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/pine-nano stop\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "command":Ljava/lang/String;
    const-string v2, "PineappleFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/PineappleFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 29
    new-instance v0, Lcom/offsec/nethunter/PineappleFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/PineappleFragment;-><init>()V

    .line 30
    .local v0, "fragment":Lcom/offsec/nethunter/PineappleFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/PineappleFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method

.method private startConnection(Landroid/view/View;)Ljava/lang/String;
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .line 98
    const v0, 0x7f0a03c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 101
    .local v0, "port":Landroid/widget/EditText;
    const v1, 0x7f0a03bc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 104
    .local v1, "gateway_ip":Landroid/widget/EditText;
    const v2, 0x7f0a03ba

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 107
    .local v2, "web_ip":Landroid/widget/EditText;
    const v3, 0x7f0a03b9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 110
    .local v3, "CIDR":Landroid/widget/EditText;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-PineappleFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "noupCheckbox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "start_noup "

    iput-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->start_type:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "start "

    iput-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->start_type:Ljava/lang/String;

    .line 57
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-PineappleFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "noupCheckbox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 63
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string v0, " start_proxy "

    iput-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->proxy_type:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->proxy_type:Ljava/lang/String;

    .line 68
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-PineappleFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .line 74
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 75
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su -c \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/pine-nano "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/PineappleFragment;->start_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/PineappleFragment;->startConnection(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/PineappleFragment;->proxy_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "command":Ljava/lang/String;
    const-string v2, "PineappleFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-PineappleFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/PineappleFragment;Landroid/view/View;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    iget-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->context:Landroid/content/Context;

    const-string v1, "Starting eth0 connection"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-PineappleFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    iget-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->context:Landroid/content/Context;

    const-string v1, "Bringing down eth0 conneciton"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/offsec/nethunter/PineappleFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/PineappleFragment;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    const v0, 0x7f0d00c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/offsec/nethunter/PineappleFragment;->context:Landroid/content/Context;

    const-string v3, "com.offsec.nethunter"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47
    .local v1, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v2, "PineappleFragment"

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const v2, 0x7f0a03be

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 51
    .local v2, "noupCheckbox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/PineappleFragment;Landroid/widget/CheckBox;)V

    .line 58
    .local v3, "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v4, 0x7f0a03c0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 62
    .local v4, "transCheckbox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v2}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/PineappleFragment;Landroid/widget/CheckBox;)V

    move-object v3, v5

    .line 69
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v5, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v0}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/PineappleFragment;Landroid/view/View;)V

    const v6, 0x7f0a03bf

    invoke-direct {p0, v6, v5, v0}, Lcom/offsec/nethunter/PineappleFragment;->addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 83
    new-instance v5, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/PineappleFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/PineappleFragment;)V

    const v6, 0x7f0a03bb

    invoke-direct {p0, v6, v5, v0}, Lcom/offsec/nethunter/PineappleFragment;->addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 93
    return-object v0
.end method
