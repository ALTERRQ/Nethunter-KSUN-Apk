.class public Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;
.super Lcom/offsec/nethunter/CARsenalFragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CANCARIBOUFragment"
.end annotation


# instance fields
.field private SelectedFile:Landroid/widget/EditText;

.field private SelectedMessage:Landroid/widget/EditText;

.field private activity:Landroid/app/Activity;

.field private delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private idContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private isCandumpEnabled:Z

.field private isLoopEnabled:Z

.field private isOutputEnabled:Z

.field private isPadEnabled:Z

.field private isReverseEnabled:Z

.field private lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private minContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private selected_caniface:Ljava/lang/String;

.field private separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1692
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 1693
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1694
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isPadEnabled:Z

    .line 1699
    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    .line 1700
    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    .line 1701
    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    .line 1702
    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    .line 1703
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;[Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 1692
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method private createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 3
    .param p1, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1708
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$1;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    return-object v0
.end method

.method private getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2081
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2082
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2083
    .local v0, "input":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2087
    .end local v0    # "input":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method static synthetic lambda$onCreateView$7(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .locals 2
    .param p0, "advancedOptionsLayout"    # Landroid/widget/LinearLayout;
    .param p1, "btnToggle"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1861
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1863
    const v0, 0x7f1300d0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1865
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1866
    const v0, 0x7f1300c9

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 1868
    :goto_0
    return-void
.end method

.method private runFuzzer(Ljava/lang/String;)V
    .locals 11
    .param p1, "fuzzer_module"    # Ljava/lang/String;

    .line 2091
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interface (None)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2096
    :cond_0
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 2097
    .local v0, "outputEnabled":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, " "

    invoke-direct {p0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2098
    .local v1, "idValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, " --seed "

    invoke-direct {p0, v2, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2099
    .local v2, "seedValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    const-string v4, " -min "

    invoke-direct {p0, v3, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2101
    .local v3, "minValue":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fuzzer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2103
    .local v4, "cmdBase":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "brute"

    const-string v7, "identify"

    const-string v8, "replay"

    const-string v9, "random"

    const-string v10, "mutate"

    sparse-switch v5, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_4
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :goto_1
    const/4 v5, -0x1

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 2120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown fuzzer submodule: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2117
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2118
    goto :goto_3

    .line 2114
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2115
    goto :goto_3

    .line 2111
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2112
    goto :goto_3

    .line 2108
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2109
    goto :goto_3

    .line 2105
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2106
    nop

    .line 2122
    :goto_3
    return-void

    .line 2092
    .end local v0    # "outputEnabled":Ljava/lang/String;
    .end local v1    # "idValue":Ljava/lang/String;
    .end local v2    # "seedValue":Ljava/lang/String;
    .end local v3    # "minValue":Ljava/lang/String;
    .end local v4    # "cmdBase":Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2093
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f58d0ba -> :sswitch_4
        -0x37ed1b3d -> :sswitch_3
        -0x37b3b819 -> :sswitch_2
        -0x81790f4 -> :sswitch_1
        0x59a9756 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runSend(Ljava/lang/String;)V
    .locals 10
    .param p1, "send_module"    # Ljava/lang/String;

    .line 2125
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interface (None)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedMessage:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2131
    .local v0, "selected_message":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2132
    .local v1, "selected_file":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    const-string v3, ""

    if-eqz v2, :cond_1

    const-string v2, " -l"

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 2133
    .local v2, "loopEnabled":Ljava/lang/String;
    :goto_0
    iget-boolean v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isPadEnabled:Z

    if-eqz v4, :cond_2

    const-string v3, " -p"

    .line 2134
    .local v3, "padEnabled":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const-string v5, " -d "

    invoke-direct {p0, v4, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2136
    .local v4, "delayValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2138
    .local v5, "cmdBase":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "message"

    const-string v8, "file"

    sparse-switch v6, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    const-string v9, " "

    packed-switch v6, :pswitch_data_0

    .line 2146
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown send submodule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 2143
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2144
    goto :goto_3

    .line 2140
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2141
    nop

    .line 2148
    :goto_3
    return-void

    .line 2126
    .end local v0    # "selected_message":Ljava/lang/String;
    .end local v1    # "selected_file":Ljava/lang/String;
    .end local v2    # "loopEnabled":Ljava/lang/String;
    .end local v3    # "padEnabled":Ljava/lang/String;
    .end local v4    # "delayValue":Ljava/lang/String;
    .end local v5    # "cmdBase":Ljava/lang/String;
    :cond_4
    :goto_4
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2127
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ff57c -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runUDS(Ljava/lang/String;)V
    .locals 9
    .param p1, "uds_module"    # Ljava/lang/String;

    .line 2151
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interface (None)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2156
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, " "

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2157
    .local v0, "srcValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2158
    .local v1, "dstValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, " -min "

    invoke-direct {p0, v2, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2159
    .local v2, "minValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    const-string v4, " -max "

    invoke-direct {p0, v3, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2160
    .local v3, "maxValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const-string v5, " -d "

    invoke-direct {p0, v4, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2162
    .local v4, "delayValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uds "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2164
    .local v5, "cmdBase":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "services"

    const-string v8, "discovery"

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :goto_0
    const/4 v6, -0x1

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 2172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown UDS submodule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 2169
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2170
    goto :goto_2

    .line 2166
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2167
    nop

    .line 2174
    :goto_2
    return-void

    .line 2152
    .end local v0    # "srcValue":Ljava/lang/String;
    .end local v1    # "dstValue":Ljava/lang/String;
    .end local v2    # "minValue":Ljava/lang/String;
    .end local v3    # "maxValue":Ljava/lang/String;
    .end local v4    # "delayValue":Ljava/lang/String;
    .end local v5    # "cmdBase":Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2153
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7397a50 -> :sswitch_1
        0x5235105e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runXCP(Ljava/lang/String;)V
    .locals 12
    .param p1, "xcp_module"    # Ljava/lang/String;

    .line 2177
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interface (None)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2183
    :cond_0
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 2184
    .local v0, "outputEnabled":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, " "

    invoke-direct {p0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2185
    .local v1, "startAddrValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2186
    .local v3, "lengthValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2187
    .local v4, "srcValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2188
    .local v2, "dstValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    const-string v6, " -min "

    invoke-direct {p0, v5, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2189
    .local v5, "minValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    const-string v7, " -max "

    invoke-direct {p0, v6, v7}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2192
    .local v6, "maxValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " xcp "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2194
    .local v7, "cmdBase":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "info"

    const-string v10, "dump"

    const-string v11, "discovery"

    sparse-switch v8, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_0

    .line 2205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown XCP submodule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto :goto_3

    .line 2202
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2203
    goto :goto_3

    .line 2199
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2200
    goto :goto_3

    .line 2196
    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2197
    nop

    .line 2207
    :goto_3
    return-void

    .line 2178
    .end local v0    # "outputEnabled":Ljava/lang/String;
    .end local v1    # "startAddrValue":Ljava/lang/String;
    .end local v2    # "dstValue":Ljava/lang/String;
    .end local v3    # "lengthValue":Ljava/lang/String;
    .end local v4    # "srcValue":Ljava/lang/String;
    .end local v5    # "minValue":Ljava/lang/String;
    .end local v6    # "maxValue":Ljava/lang/String;
    .end local v7    # "cmdBase":Ljava/lang/String;
    :cond_3
    :goto_4
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2179
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7397a50 -> :sswitch_2
        0x2f39f4 -> :sswitch_1
        0x3164ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btnPad"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1771
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isPadEnabled:Z

    .line 1773
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isPadEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1774
    .local v0, "colorRes":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1775
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btnLoop"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1785
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    .line 1787
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1788
    .local v0, "colorRes":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1789
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnMax"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1896
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1897
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1899
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1900
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1901
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnSrc"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1907
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1908
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1910
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1911
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1912
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnDst"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1918
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1919
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1921
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1922
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1923
    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnLength"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1929
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1930
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1932
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1933
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1934
    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnSeed"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1940
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1941
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1943
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1944
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1945
    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnSeparateLine"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1951
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1952
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1954
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1955
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1956
    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnId"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1962
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1963
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1965
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1966
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1967
    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnDelay"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1973
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1974
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1976
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1977
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1978
    return-void
.end method

.method synthetic lambda$onCreateView$18$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1982
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, " -t"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1983
    .local v0, "candumpFormat":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1984
    .local v1, "outputEnabled":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, " -s "

    invoke-direct {p0, v2, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1985
    .local v2, "separateLineValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v4, "Interfaces"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1986
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dump"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1988
    :cond_2
    const-string v3, "Please choose a CAN Interface!"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 1990
    :goto_1
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1991
    return-void
.end method

.method synthetic lambda$onCreateView$19$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1995
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, " -r"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1996
    .local v0, "reverseEnabled":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "Interface (None)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1999
    :cond_1
    const-string v1, "Please choose a CAN Interface!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2001
    :goto_1
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2002
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btnReverse"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1799
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    .line 1801
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1802
    .local v0, "colorRes":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1803
    return-void
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "moduleSpinner"    # Landroid/widget/Spinner;
    .param p2, "subModuleSpinner"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 2051
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2052
    .local v0, "module":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2054
    .local v1, "subModule":Ljava/lang/String;
    const-string v2, "Modules"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Sub-Modules"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 2059
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "Send"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "Fuzz"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v2, "XCP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v2, "UDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 2073
    const-string v2, "Unknown module selected."

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 2070
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runXCP(Ljava/lang/String;)V

    .line 2071
    goto :goto_2

    .line 2067
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runUDS(Ljava/lang/String;)V

    .line 2068
    goto :goto_2

    .line 2064
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runSend(Ljava/lang/String;)V

    .line 2065
    goto :goto_2

    .line 2061
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runFuzzer(Ljava/lang/String;)V

    .line 2062
    nop

    .line 2075
    :goto_2
    return-void

    .line 2055
    :cond_2
    :goto_3
    const-string v2, "Please select a Module and Sub-Module."

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2056
    return-void

    :sswitch_data_0
    .sparse-switch
        0x147a4 -> :sswitch_3
        0x152c5 -> :sswitch_2
        0x21986f -> :sswitch_1
        0x2743a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btnOutput"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1813
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    .line 1815
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1816
    .local v0, "colorRes":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1817
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btnCandump"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1827
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    .line 1829
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1830
    .local v0, "colorRes":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1831
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 1846
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "fileEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1853
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 1854
    .local v0, "dialog":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 1855
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnStartAddr"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1874
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1875
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1877
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1878
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1879
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 3
    .param p1, "btnMin"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1885
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1886
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1888
    if-eqz v0, :cond_2

    const v1, 0x1060016

    goto :goto_1

    :cond_2
    const v1, 0x1060014

    .line 1889
    .local v1, "color":I
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1890
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1730
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1731
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->activity:Landroid/app/Activity;

    .line 1732
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 40
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1736
    move-object/from16 v6, p0

    const v0, 0x7f0d002a

    const/4 v1, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v7, v0, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1738
    .local v9, "rootView":Landroid/view/View;
    const v0, 0x7f0a00fc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    .line 1739
    const v1, 0x7f0a00fd

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedMessage:Landroid/widget/EditText;

    .line 1741
    const v1, 0x7f0a0424

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1742
    const v1, 0x7f0a031f

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1743
    const v1, 0x7f0a0318

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1744
    const v1, 0x7f0a0466

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1745
    const v1, 0x7f0a017c

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1746
    const v1, 0x7f0a014b

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1747
    const v1, 0x7f0a02eb

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1748
    const v1, 0x7f0a0470

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1749
    const v1, 0x7f0a0430

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1750
    const v1, 0x7f0a02ba

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1752
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1753
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1754
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1755
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1756
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1757
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1758
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1759
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1760
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1761
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1764
    const v1, 0x7f0a00d5

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/SwitchCompat;

    .line 1766
    .local v10, "btnPad":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isPadEnabled:Z

    invoke-virtual {v10, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1767
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 1768
    iget-boolean v2, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isPadEnabled:Z

    const v3, 0x1060014

    const v4, 0x1060016

    if-eqz v2, :cond_0

    const v2, 0x1060014

    goto :goto_0

    :cond_0
    const v2, 0x1060016

    .line 1767
    :goto_0
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v10, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1770
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, v6, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v10, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1778
    const v1, 0x7f0a00d0

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/SwitchCompat;

    .line 1780
    .local v11, "btnLoop":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    invoke-virtual {v11, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 1782
    iget-boolean v2, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isLoopEnabled:Z

    if-eqz v2, :cond_1

    const v2, 0x1060014

    goto :goto_1

    :cond_1
    const v2, 0x1060016

    .line 1781
    :goto_1
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1784
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v6, v11}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v11, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1792
    const v1, 0x7f0a00d7

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/SwitchCompat;

    .line 1794
    .local v12, "btnReverse":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    invoke-virtual {v12, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1795
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 1796
    iget-boolean v2, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isReverseEnabled:Z

    if-eqz v2, :cond_2

    const v2, 0x1060014

    goto :goto_2

    :cond_2
    const v2, 0x1060016

    .line 1795
    :goto_2
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1798
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, v6, v12}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v12, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1806
    const v1, 0x7f0a00d4

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/SwitchCompat;

    .line 1808
    .local v13, "btnOutput":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1809
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 1810
    iget-boolean v2, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isOutputEnabled:Z

    if-eqz v2, :cond_3

    const v2, 0x1060014

    goto :goto_3

    :cond_3
    const v2, 0x1060016

    .line 1809
    :goto_3
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1812
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, v6, v13}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1820
    const v1, 0x7f0a00c9

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/appcompat/widget/SwitchCompat;

    .line 1822
    .local v14, "btnCandump":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1823
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 1824
    iget-boolean v2, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->isCandumpEnabled:Z

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const v3, 0x1060016

    .line 1823
    :goto_4
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(I)V

    .line 1826
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6, v14}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v14, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1834
    const v1, 0x7f0a015a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Landroid/widget/Spinner;

    .line 1835
    .local v24, "spinner":Landroid/widget/Spinner;
    const v1, 0x7f0a03e8

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Landroid/widget/ImageButton;

    .line 1837
    .local v25, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 1838
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1843
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$300()Landroid/content/SharedPreferences;

    move-result-object v20

    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)V

    .line 1837
    const-string v21, "selected_usb"

    const/16 v22, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v24

    move-object/from16 v19, v25

    move-object/from16 v23, v3

    invoke-static/range {v15 .. v23}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 1850
    const v1, 0x7f0a00fe

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/google/android/material/button/MaterialButton;

    .line 1851
    .local v15, "browseButton":Lcom/google/android/material/button/MaterialButton;
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1852
    .local v5, "fileEditText":Lcom/google/android/material/textfield/TextInputEditText;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, v6, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v15, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1858
    const v0, 0x7f0a00c8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 1859
    .local v4, "btnToggle":Landroid/widget/Button;
    const v0, 0x7f0a00fb

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1860
    .local v3, "advancedOptionsLayout":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, v3, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda10;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1871
    const v0, 0x7f0a00dc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Button;

    .line 1873
    .local v2, "btnStartAddr":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, v6, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1882
    const v0, 0x7f0a00d3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Button;

    .line 1884
    .local v1, "btnMin":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, v6, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1893
    const v0, 0x7f0a00d2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1895
    .local v0, "btnMax":Landroid/widget/Button;
    move-object/from16 v16, v1

    .end local v1    # "btnMin":Landroid/widget/Button;
    .local v16, "btnMin":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, v6, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1904
    const v1, 0x7f0a00db

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1906
    .local v1, "btnSrc":Landroid/widget/Button;
    move-object/from16 v17, v0

    .end local v0    # "btnMax":Landroid/widget/Button;
    .local v17, "btnMax":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, v6, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1915
    const v0, 0x7f0a00cc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1917
    .local v0, "btnDst":Landroid/widget/Button;
    move-object/from16 v18, v1

    .end local v1    # "btnSrc":Landroid/widget/Button;
    .local v18, "btnSrc":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, v6, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1926
    const v1, 0x7f0a00cf

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1928
    .local v1, "btnLength":Landroid/widget/Button;
    move-object/from16 v19, v0

    .end local v0    # "btnDst":Landroid/widget/Button;
    .local v19, "btnDst":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, v6, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1937
    const v0, 0x7f0a00d8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1939
    .local v0, "btnSeed":Landroid/widget/Button;
    move-object/from16 v20, v1

    .end local v1    # "btnLength":Landroid/widget/Button;
    .local v20, "btnLength":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, v6, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1948
    const v1, 0x7f0a00d9

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1950
    .local v1, "btnSeparateLine":Landroid/widget/Button;
    move-object/from16 v21, v0

    .end local v0    # "btnSeed":Landroid/widget/Button;
    .local v21, "btnSeed":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, v6, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1959
    const v0, 0x7f0a00cd

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1961
    .local v0, "btnId":Landroid/widget/Button;
    move-object/from16 v22, v1

    .end local v1    # "btnSeparateLine":Landroid/widget/Button;
    .local v22, "btnSeparateLine":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, v6, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1970
    const v1, 0x7f0a00cb

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1972
    .local v1, "btnDelay":Landroid/widget/Button;
    move-object/from16 v23, v0

    .end local v0    # "btnId":Landroid/widget/Button;
    .local v23, "btnId":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0, v6, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1981
    const v0, 0x7f0a0482

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v26, v1

    .end local v1    # "btnDelay":Landroid/widget/Button;
    .local v26, "btnDelay":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1994
    const v0, 0x7f0a0487

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2005
    const v0, 0x7f0a0329

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Spinner;

    .line 2006
    .local v1, "moduleSpinner":Landroid/widget/Spinner;
    const v0, 0x7f0a04a5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 2007
    .local v0, "subModuleSpinner":Landroid/widget/Spinner;
    move-object/from16 v27, v2

    .end local v2    # "btnStartAddr":Landroid/widget/Button;
    .local v27, "btnStartAddr":Landroid/widget/Button;
    const v2, 0x7f0a0475

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2009
    .local v2, "startButton":Landroid/widget/Button;
    move-object/from16 v28, v2

    .end local v2    # "startButton":Landroid/widget/Button;
    .local v28, "startButton":Landroid/widget/Button;
    const-string v2, "Modules"

    move-object/from16 v29, v3

    .end local v3    # "advancedOptionsLayout":Landroid/widget/LinearLayout;
    .local v29, "advancedOptionsLayout":Landroid/widget/LinearLayout;
    const-string v3, "Fuzz"

    move-object/from16 v30, v4

    .end local v4    # "btnToggle":Landroid/widget/Button;
    .local v30, "btnToggle":Landroid/widget/Button;
    const-string v4, "Send"

    move-object/from16 v31, v5

    .end local v5    # "fileEditText":Lcom/google/android/material/textfield/TextInputEditText;
    .local v31, "fileEditText":Lcom/google/android/material/textfield/TextInputEditText;
    const-string v5, "UDS"

    const-string v7, "XCP"

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    .line 2010
    .local v2, "modules":[Ljava/lang/String;
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v33, v32

    .line 2011
    .local v33, "subModulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    const-string v38, "random"

    const-string v39, "replay"

    const-string v34, "Sub-Modules"

    const-string v35, "brute"

    const-string v36, "identify"

    const-string v37, "mutate"

    filled-new-array/range {v34 .. v39}, [Ljava/lang/String;

    move-result-object v8

    move-object/from16 v32, v10

    move-object/from16 v10, v33

    .end local v33    # "subModulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .local v10, "subModulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .local v32, "btnPad":Landroidx/appcompat/widget/SwitchCompat;
    invoke-interface {v10, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    const-string v3, "file"

    const-string v8, "message"

    move-object/from16 v33, v11

    .end local v11    # "btnLoop":Landroidx/appcompat/widget/SwitchCompat;
    .local v33, "btnLoop":Landroidx/appcompat/widget/SwitchCompat;
    const-string v11, "Sub-Modules"

    filled-new-array {v11, v3, v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    const-string v3, "services"

    const-string v4, "discovery"

    filled-new-array {v11, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    const-string v3, "info"

    const-string v5, "dump"

    filled-new-array {v11, v4, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    invoke-direct {v6, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 2017
    .local v7, "moduleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v7, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2018
    invoke-virtual {v1, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2020
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    .line 2021
    .local v8, "emptySubModuleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v8, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2022
    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2024
    new-instance v11, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;

    move-object v5, v0

    .end local v0    # "subModuleSpinner":Landroid/widget/Spinner;
    .local v5, "subModuleSpinner":Landroid/widget/Spinner;
    move-object v0, v11

    move-object v4, v1

    .end local v1    # "moduleSpinner":Landroid/widget/Spinner;
    .local v4, "moduleSpinner":Landroid/widget/Spinner;
    move-object/from16 v1, p0

    move-object/from16 v3, v28

    move-object/from16 v28, v2

    .end local v2    # "modules":[Ljava/lang/String;
    .local v3, "startButton":Landroid/widget/Button;
    .local v28, "modules":[Ljava/lang/String;
    move-object/from16 v34, v7

    move-object v7, v3

    .end local v3    # "startButton":Landroid/widget/Button;
    .local v7, "startButton":Landroid/widget/Button;
    .local v34, "moduleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v3, v10

    move-object/from16 v35, v10

    move-object v10, v4

    .end local v4    # "moduleSpinner":Landroid/widget/Spinner;
    .local v10, "moduleSpinner":Landroid/widget/Spinner;
    .local v35, "subModulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    move-object v4, v5

    move-object/from16 v36, v12

    move-object v12, v5

    .end local v5    # "subModuleSpinner":Landroid/widget/Spinner;
    .local v12, "subModuleSpinner":Landroid/widget/Spinner;
    .local v36, "btnReverse":Landroidx/appcompat/widget/SwitchCompat;
    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;[Ljava/lang/String;Ljava/util/Map;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2050
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, v6, v10, v12}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2077
    return-object v9
.end method
