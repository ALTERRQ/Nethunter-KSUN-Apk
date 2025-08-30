.class public Lcom/offsec/nethunter/BTFragment$ToolsFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolsFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private flood:Ljava/lang/String;

.field private reverse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 610
    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    .line 612
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->reverse:Ljava/lang/String;

    .line 614
    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->flood:Ljava/lang/String;

    return-void
.end method

.method private startSDPtool(Landroid/view/View;)V
    .locals 13
    .param p1, "BTFragment"    # Landroid/view/View;

    .line 719
    const v0, 0x7f0a0413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 720
    .local v0, "sdp_address":Landroid/widget/EditText;
    const v1, 0x7f0a02a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 721
    .local v1, "hci_interface":Landroid/widget/EditText;
    const v2, 0x7f0a001e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 722
    .local v2, "output":Landroid/widget/TextView;
    new-instance v6, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v6}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 723
    .local v6, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 724
    .local v9, "sdp_target":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 726
    .local v10, "sdp_interface":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    new-instance v12, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda9;

    move-object v3, v12

    move-object v4, p0

    move-object v5, v9

    move-object v7, v10

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v11, v12}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 733
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3
    .param p1, "sdp_address"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 638
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->context:Landroid/content/Context;

    const-string v1, "selected_address"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "selected_addr":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "floodCheckBox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 651
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    const-string v0, " -f "

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->flood:Ljava/lang/String;

    goto :goto_0

    .line 654
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->flood:Ljava/lang/String;

    .line 655
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "reverseCheckBox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 657
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const-string v0, " -r "

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->reverse:Ljava/lang/String;

    goto :goto_0

    .line 660
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->reverse:Ljava/lang/String;

    .line 661
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 6
    .param p1, "sdp_address"    # Landroid/widget/EditText;
    .param p2, "l2ping_Size"    # Landroid/widget/EditText;
    .param p3, "l2ping_Count"    # Landroid/widget/EditText;
    .param p4, "hci_interface"    # Landroid/widget/EditText;
    .param p5, "v"    # Landroid/view/View;

    .line 664
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "l2ping_target":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "l2ping_size":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "l2ping_count":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "l2ping_interface":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo -ne \"\\033]0;Pinging BT device\\007\" && clear;l2ping -i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->flood:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->reverse:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " && echo \"\nPinging done, closing in 3 secs..\";sleep 3 && exit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)V

    .line 670
    .end local v1    # "l2ping_size":Ljava/lang/String;
    .end local v2    # "l2ping_count":Ljava/lang/String;
    .end local v3    # "l2ping_interface":Ljava/lang/String;
    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No target address!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 673
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 4
    .param p1, "sdp_address"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 679
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "sdp_target":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo -ne \"\\033]0;RFComm Scan\\007\" && clear;rfcomm_scan "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No target address!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 684
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5
    .param p1, "redfang_Range"    # Landroid/widget/EditText;
    .param p2, "redfang_Log"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 690
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "redfang_range":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "redfang_logfile":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo -ne \"\\033]0;Redfang\\007\" && clear;fang -r "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -o "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No target range!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 696
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5
    .param p1, "sdp_address"    # Landroid/widget/EditText;
    .param p2, "hci_interface"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 701
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "blueranger_target":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "blueranger_interface":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo -ne \"\\033]0;Blueranger\\007\" && clear;blueranger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No target address!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 707
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .line 713
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->startSDPtool(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-BTFragment$ToolsFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 712
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Discovery started..\nCheck the output below"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 713
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method synthetic lambda$startSDPtool$9$com-offsec-nethunter-BTFragment$ToolsFragment(Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "sdp_target"    # Ljava/lang/String;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "sdp_interface"    # Ljava/lang/String;
    .param p4, "output"    # Landroid/widget/TextView;

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd sdptool -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " browse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | sed \'/^\\[/d\' | sed \'/^Linux/d\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "CMDout":Ljava/lang/String;
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    .end local v0    # "CMDout":Ljava/lang/String;
    goto :goto_0

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No target address!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 732
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 618
    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    .line 619
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->context:Landroid/content/Context;

    .line 620
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 621
    .local v0, "activity":Landroid/app/Activity;
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 626
    move-object/from16 v6, p0

    const v0, 0x7f0d0025

    const/4 v1, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v7, v0, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 627
    .local v9, "rootView":Landroid/view/View;
    const v0, 0x7f0a02a5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    .line 628
    .local v10, "hci_interface":Landroid/widget/EditText;
    const v0, 0x7f0a02e3

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/CheckBox;

    .line 629
    .local v11, "floodCheckBox":Landroid/widget/CheckBox;
    const v0, 0x7f0a02e4

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/CheckBox;

    .line 632
    .local v12, "reverseCheckBox":Landroid/widget/CheckBox;
    const v0, 0x7f0a0413

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 635
    .local v13, "sdp_address":Landroid/widget/EditText;
    const v0, 0x7f0a043b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    .line 637
    .local v14, "SetTarget":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6, v13}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    const v0, 0x7f0a0485

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Button;

    .line 644
    .local v15, "StartL2ping":Landroid/widget/Button;
    const v0, 0x7f0a02e5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/EditText;

    .line 645
    .local v16, "l2ping_Size":Landroid/widget/EditText;
    const v0, 0x7f0a02e2

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/EditText;

    .line 646
    .local v17, "l2ping_Count":Landroid/widget/EditText;
    const v0, 0x7f0a03df

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 647
    .local v5, "redfang_Range":Landroid/widget/EditText;
    const v0, 0x7f0a03de

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 650
    .local v4, "redfang_Log":Landroid/widget/EditText;
    new-instance v0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6, v11}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    new-instance v0, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6, v12}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v12, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    new-instance v3, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda3;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v7, v3

    move-object/from16 v3, v16

    move-object v8, v4

    .end local v4    # "redfang_Log":Landroid/widget/EditText;
    .local v8, "redfang_Log":Landroid/widget/EditText;
    move-object/from16 v4, v17

    move-object/from16 v18, v11

    move-object v11, v5

    .end local v5    # "redfang_Range":Landroid/widget/EditText;
    .local v11, "redfang_Range":Landroid/widget/EditText;
    .local v18, "floodCheckBox":Landroid/widget/CheckBox;
    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v15, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    const v0, 0x7f0a048d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 678
    .local v0, "StartRFCommscan":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6, v13}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    const v1, 0x7f0a048a

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 689
    .local v1, "StartRedfang":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, v6, v11, v8}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    const v2, 0x7f0a0474

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 700
    .local v2, "StartBlueranger":Landroid/widget/Button;
    new-instance v3, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v6, v13, v10}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    const v3, 0x7f0a048f

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 711
    .local v3, "StartSDPButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, v6, v9}, Lcom/offsec/nethunter/BTFragment$ToolsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/BTFragment$ToolsFragment;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    return-object v9
.end method
