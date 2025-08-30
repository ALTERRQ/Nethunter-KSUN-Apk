.class public Lcom/offsec/nethunter/BTFragment$SpoofFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpoofFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 736
    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    return-void
.end method

.method private refreshSpoof(Landroid/view/View;)V
    .locals 16
    .param p1, "BTFragment"    # Landroid/view/View;

    .line 804
    move-object/from16 v0, p1

    new-instance v4, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v4}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 805
    .local v4, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const v1, 0x7f0a0460

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    .line 806
    .local v9, "spoof_interface":Landroid/widget/EditText;
    const v1, 0x7f0a012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 807
    .local v10, "currentAddress":Landroid/widget/TextView;
    const v1, 0x7f0a012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    .line 808
    .local v11, "currentClass":Landroid/widget/TextView;
    const v1, 0x7f0a012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    .line 809
    .local v12, "currentClassType":Landroid/widget/TextView;
    const v1, 0x7f0a0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    .line 811
    .local v13, "currentName":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    new-instance v15, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda0;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    invoke-direct/range {v1 .. v8}, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment$SpoofFragment;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v14, v15}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 828
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-BTFragment$SpoofFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5
    .param p1, "targetAddress"    # Landroid/widget/EditText;
    .param p2, "targetClass"    # Landroid/widget/EditText;
    .param p3, "targetName"    # Landroid/widget/EditText;
    .param p4, "v"    # Landroid/view/View;

    .line 766
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->context:Landroid/content/Context;

    const-string v1, "selected_address"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "selected_address":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->context:Landroid/content/Context;

    const-string v3, "selected_class"

    invoke-static {v1, v3, v2}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, "selected_class":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->context:Landroid/content/Context;

    const-string v4, "selected_name"

    invoke-static {v3, v4, v2}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, "selected_name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 770
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 771
    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 772
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BTFragment$SpoofFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 776
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->refreshSpoof(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BTFragment$SpoofFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7
    .param p1, "spoof_interface"    # Landroid/widget/EditText;
    .param p2, "targetAddress"    # Landroid/widget/EditText;
    .param p3, "targetClass"    # Landroid/widget/EditText;
    .param p4, "targetName"    # Landroid/widget/EditText;
    .param p5, "v"    # Landroid/view/View;

    .line 782
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "target_interface":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "target_address":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -c "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, "target_class":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -n \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 786
    .local v5, "target_name":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, ""

    .line 787
    :cond_0
    const-string v4, " -n \"\""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v5, ""

    .line 788
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 789
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "Please enter at least one parameter!"

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 791
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, "target_classname":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "echo -ne \"\\033]0;Spoofing Bluetooth\\007\" && clear;echo \'Spooftooph started..\';spooftooph -i "

    if-nez v2, :cond_3

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "; sleep 2 && hciconfig "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " up && spooftooph -i "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " && echo \'\nBringing interface up with hciconfig..\n\nClass/Name changed, closing in 3 secs..\';sleep 3 && exit"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    .line 796
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " && echo \'\nClass/Name changed, closing in 3 secs..\';sleep 3 && exit"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->run_cmd(Ljava/lang/String;)V

    .line 799
    .end local v4    # "target_classname":Ljava/lang/String;
    :goto_0
    return-void
.end method

.method synthetic lambda$refreshSpoof$3$com-offsec-nethunter-BTFragment$SpoofFragment(Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7
    .param p1, "spoof_interface"    # Landroid/widget/EditText;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "currentAddress"    # Landroid/widget/TextView;
    .param p4, "currentClass"    # Landroid/widget/TextView;
    .param p5, "currentClassType"    # Landroid/widget/TextView;
    .param p6, "currentName"    # Landroid/widget/TextView;

    .line 812
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "selectedIface":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bootkali custom_cmd hciconfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | awk \'/Address/ { print $3 }\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "currentAddress_CMD":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 815
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -a | awk \'/Class:/ { print $2 }\' | sed \'/^Class:/d\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, "currentClassCMD":Ljava/lang/String;
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -a | awk \'/Device Class:/ { print $3, $4, $5 }\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 821
    .local v4, "currentClassTypeCMD":Ljava/lang/String;
    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " -a | grep Name | cut -d\\\' -f2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, "currentNameCMD":Ljava/lang/String;
    invoke-virtual {p6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    .end local v2    # "currentNameCMD":Ljava/lang/String;
    .end local v3    # "currentClassCMD":Ljava/lang/String;
    .end local v4    # "currentClassTypeCMD":Ljava/lang/String;
    goto :goto_0

    .line 826
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Interface is down!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 827
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 741
    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    .line 742
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;->context:Landroid/content/Context;

    .line 743
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 748
    move-object/from16 v6, p0

    const v0, 0x7f0d0024

    const/4 v1, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v7, v0, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 751
    .local v9, "rootView":Landroid/view/View;
    const v0, 0x7f0a0460

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/EditText;

    .line 754
    .local v10, "spoof_interface":Landroid/widget/EditText;
    const v0, 0x7f0a04ba

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    .line 757
    .local v11, "targetAddress":Landroid/widget/EditText;
    const v0, 0x7f0a04bb

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    .line 760
    .local v12, "targetClass":Landroid/widget/EditText;
    const v0, 0x7f0a04bd

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 763
    .local v13, "targetName":Landroid/widget/EditText;
    const v0, 0x7f0a043b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Button;

    .line 765
    .local v14, "SetTarget":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6, v11, v12, v13}, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment$SpoofFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    const v0, 0x7f0a03e5

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Button;

    .line 776
    .local v15, "RefreshStatus":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6, v9}, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment$SpoofFragment;Landroid/view/View;)V

    invoke-virtual {v15, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    const v0, 0x7f0a0089

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    .line 781
    .local v5, "ApplySpoof":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda3;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v6, v4

    move-object v4, v12

    move-object v7, v5

    .end local v5    # "ApplySpoof":Landroid/widget/Button;
    .local v7, "ApplySpoof":Landroid/widget/Button;
    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$SpoofFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment$SpoofFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    return-object v9
.end method
