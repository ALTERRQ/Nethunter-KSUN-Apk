.class public Lcom/offsec/nethunter/CARsenalFragment$MainFragment;
.super Lcom/offsec/nethunter/CARsenalFragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragment"
.end annotation


# static fields
.field private static final SHORT_DELAY:J = 0x3e8L


# instance fields
.field private SelectedIface:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 406
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 407
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    .line 406
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showMainConfig()V

    return-void
.end method

.method private getStringArrayAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 978
    const-string v0, "vcan"

    const-string v1, "slcan"

    const-string v2, "Type"

    const-string v3, "can"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "interfaceTypeOptions":[Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$2;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 1000
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1001
    return-object v1
.end method

.method static synthetic lambda$onCreateView$12(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 582
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$13(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 586
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 587
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 588
    return-void
.end method

.method static synthetic lambda$onCreateView$17(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 635
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$18(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 639
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 640
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 641
    return-void
.end method

.method static synthetic lambda$onCreateView$2(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 476
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$22(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 688
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$23(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 692
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 693
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 694
    return-void
.end method

.method static synthetic lambda$onCreateView$27(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 741
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$28(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 745
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 746
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 747
    return-void
.end method

.method static synthetic lambda$onCreateView$3(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 480
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 481
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 482
    return-void
.end method

.method static synthetic lambda$onCreateView$32(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 794
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$33(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 798
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 799
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 800
    return-void
.end method

.method static synthetic lambda$onCreateView$7(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 529
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$8(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 533
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 534
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 535
    return-void
.end method

.method static synthetic lambda$showMainConfig$39(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "mtuEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "txqEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 1022
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1023
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtu_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1024
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "txq_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1025
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1026
    return-void
.end method

.method private showMainConfig()V
    .locals 9

    .line 1005
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1006
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1008
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0a037e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1009
    .local v3, "mtuEditText":Lcom/google/android/material/textfield/TextInputEditText;
    const v4, 0x7f0a053d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1012
    .local v4, "txqEditText":Lcom/google/android/material/textfield/TextInputEditText;
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "carsenal_prefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1013
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "mtu_value"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    const-string v6, "txq_value"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f14012e

    invoke-direct {v6, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 1018
    const-string v7, "Interface Settings"

    invoke-virtual {v6, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v6

    .line 1019
    invoke-virtual {v6, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v6

    new-instance v7, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda39;

    invoke-direct {v7, v5, v3, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda39;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 1020
    const-string v8, "Apply"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v6

    .line 1027
    const-string v7, "Cancel"

    invoke-virtual {v6, v7, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 1028
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1029
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "ldAttachCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 446
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 448
    .local v0, "ldAttachRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_0
    const-string v1, "Please set your ldattach command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 454
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_ldAttach"    # Landroid/widget/EditText;
    .param p2, "ldAttachCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorLdAttach"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 466
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "newLdAttachCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 470
    const-string v1, "ldAttach_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 473
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "slcanAttachCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 552
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 554
    .local v0, "slcanAttachRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 556
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_0
    const-string v1, "Please set your slcan_attach command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 560
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_slcanAttach"    # Landroid/widget/EditText;
    .param p2, "slcanAttachCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorSlcanAttach"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 572
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "newSlcanAttachCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 576
    const-string v1, "slcanAttach_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 577
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 579
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "slcanAttachCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorSlcanAttach"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 564
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 565
    .local v0, "builder_slcanAttach":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 567
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 568
    .local v1, "input_slcanAttach":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 571
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 585
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda6;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 589
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 590
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "hlcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 605
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 607
    .local v0, "hlcandRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 608
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 609
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_0
    const-string v1, "Please set your hlcand command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_hlcand"    # Landroid/widget/EditText;
    .param p2, "hlcandCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorHlcand"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 625
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "newHlcandCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 629
    const-string v1, "hlcand_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 630
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 632
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method synthetic lambda$onCreateView$19$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "hlcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorHlcand"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 617
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, "builder_hlcand":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 620
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 621
    .local v1, "input_hlcand":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 622
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 624
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 635
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda2;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 637
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 638
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda3;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 642
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 643
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "rfcommBinderCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 658
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 660
    .local v0, "rfcommBinderRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 662
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_0
    const-string v1, "Please set your rfcomm binder command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 666
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_rfcomm_binder"    # Landroid/widget/EditText;
    .param p2, "rfcommBinderCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorRfcommBinder"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 678
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "newRfcommBinderCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 682
    const-string v1, "rfcommBinder_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 683
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 685
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method synthetic lambda$onCreateView$24$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "rfcommBinderCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorRfcommBinder"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 670
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 671
    .local v0, "builder_rfcommBinder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 673
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 674
    .local v1, "input_rfcomm_binder":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 675
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 677
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda11;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 690
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 691
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda22;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda22;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 695
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 696
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$25$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "rfcommConnectCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 711
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 713
    .local v0, "rfcommConnectRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 714
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 715
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 717
    :cond_0
    const-string v1, "Please set your rfcomm connect command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$26$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_rfcomm_connect"    # Landroid/widget/EditText;
    .param p2, "rfcommConnectCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorRfcommConnect"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 731
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "newRfcommConnectCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 735
    const-string v1, "rfcommConnect_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 736
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 738
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method synthetic lambda$onCreateView$29$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "rfcommConnectCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorRfcommConnect"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 723
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 724
    .local v0, "builder_rfcommConnect":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 726
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 727
    .local v1, "input_rfcomm_connect":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 730
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 741
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda12;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 743
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 744
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda13;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda13;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 748
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 749
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$30$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "socketcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 764
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 766
    .local v0, "socketcandRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 768
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_0
    const-string v1, "Please set your rfcomm connect command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 772
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$31$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_socketcand"    # Landroid/widget/EditText;
    .param p2, "socketcandCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorSocketcand"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 784
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, "newsocketcandCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 788
    const-string v1, "socketcand_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 791
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method synthetic lambda$onCreateView$34$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "socketcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorSocketcand"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 776
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 777
    .local v0, "builder_socketcand":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 779
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 780
    .local v1, "input_socketcand":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 781
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 783
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda36;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 794
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda37;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda37;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 796
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 797
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda38;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda38;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 801
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 802
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$35$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .line 830
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->SelectedIface:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "selected_caniface":Ljava/lang/String;
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$400()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "cantype_selected"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 834
    .local v3, "interface_type":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "carsenal_prefs"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 835
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "mtu_value"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 836
    .local v6, "selected_mtu":Ljava/lang/String;
    const-string v0, "txq_value"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 839
    .local v4, "selected_txqueuelen":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    const-string v0, "Please set a CAN interface!"

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 841
    return-void

    .line 843
    :cond_0
    const-string v0, "^(can|vcan|slcan)[0-9]$"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    const-string v0, "CAN Interface should be named \"^(can|vcan|slcan)[0-9]$\""

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 845
    return-void

    .line 847
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    const-string v0, "Please, set interface type!"

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 849
    return-void

    .line 854
    :cond_2
    :try_start_0
    const-string v0, "vcan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, "Interface "

    const-string v8, " txqueuelen "

    const-string v9, " up && echo Success || echo Failed"

    const-string v10, " mtu "

    const-string v11, "Failed"

    const-string v12, "FATAL:"

    const-string v13, " && echo Success || echo Failed"

    const-string v14, "sudo ip link set "

    if-eqz v0, :cond_7

    .line 855
    :try_start_1
    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v5

    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .local v16, "prefs":Landroid/content/SharedPreferences;
    :try_start_2
    const-string v5, "sudo ip link add dev "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " type vcan && echo Success || echo Failed"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "addVcanIface":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_0

    .line 864
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 865
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 866
    .local v5, "mtuValue":I
    iget-object v11, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 870
    .end local v5    # "mtuValue":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 871
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 872
    .local v5, "txqValue":I
    iget-object v10, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 876
    .end local v5    # "txqValue":I
    :cond_5
    iget-object v5, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 878
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (vcan) started!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 879
    return-void

    .line 859
    :cond_6
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to add "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "! Interface may already exist."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 860
    return-void

    .line 883
    .end local v0    # "addVcanIface":Ljava/lang/String;
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    .local v5, "prefs":Landroid/content/SharedPreferences;
    :cond_7
    move-object/from16 v16, v5

    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .restart local v16    # "prefs":Landroid/content/SharedPreferences;
    const-string v0, "can"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "slcan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 884
    :cond_8
    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v5, "ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM|ttyS)[0-9]+$\'"

    invoke-virtual {v0, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "usbDevice":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 886
    const-string v5, "No CAN hardware detected, please connect adapter and try again."

    invoke-virtual {v1, v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 887
    return-void

    .line 891
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 892
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 893
    .local v5, "mtuValue":I
    iget-object v15, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object/from16 v17, v0

    .end local v0    # "usbDevice":Ljava/lang/String;
    .local v17, "usbDevice":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 891
    .end local v5    # "mtuValue":I
    .end local v17    # "usbDevice":Ljava/lang/String;
    .restart local v0    # "usbDevice":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v0

    .line 897
    .end local v0    # "usbDevice":Ljava/lang/String;
    .restart local v17    # "usbDevice":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 898
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 899
    .local v0, "txqValue":I
    iget-object v5, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 903
    .end local v0    # "txqValue":I
    :cond_b
    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, "startCanIface":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    .line 907
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") started!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_5

    .line 905
    :cond_d
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " interface!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 913
    .end local v0    # "startCanIface":Ljava/lang/String;
    .end local v17    # "usbDevice":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 911
    :catch_1
    move-exception v0

    goto :goto_4

    .line 913
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    .local v5, "prefs":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v0

    move-object/from16 v16, v5

    .line 914
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "prefs":Landroid/content/SharedPreferences;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error starting interface: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_6

    .line 911
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    .line 912
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "prefs":Landroid/content/SharedPreferences;
    :goto_4
    const-string v5, "Invalid numeric value for MTU or TX queue length."

    invoke-virtual {v1, v5}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 915
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    :goto_5
    nop

    .line 916
    :goto_6
    return-void
.end method

.method synthetic lambda$onCreateView$36$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 922
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "/opt/car_hacking/can_reset.sh"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 923
    const-string v0, "Interface reset!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method synthetic lambda$onCreateView$37$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7
    .param p1, "selected_vin"    # Landroid/widget/EditText;
    .param p2, "term"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 932
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "vinNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 934
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->context:Landroid/content/Context;

    const-string v2, "VIN must be exactly 17 characters long."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 935
    return-void

    .line 938
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sudo mkdir -p /sdcard/nh_files/carsenal;/opt/car_hacking/car_venv/bin/vininfo show "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | tr -s [:space:] > /sdcard/nh_files/carsenal/output.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, "cmd_show":Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/utils/BootKali;

    invoke-direct {v2, v1}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/offsec/nethunter/utils/BootKali;->run_bg()V

    .line 941
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 942
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/carsenal/output.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 943
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    .end local v2    # "output":Ljava/lang/String;
    goto :goto_0

    .line 944
    :catch_0
    move-exception v2

    .line 945
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "VINShowError"

    const-string v5, "Exception while reading VIN info"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 946
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v5, v6, v3

    const-string v3, "Error: %s - %s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 948
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$38$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7
    .param p1, "selected_vin"    # Landroid/widget/EditText;
    .param p2, "term"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 954
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "vinNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 956
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->context:Landroid/content/Context;

    const-string v2, "VIN must be exactly 17 characters long."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 957
    return-void

    .line 960
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sudo mkdir -p /sdcard/nh_files/carsenal;/opt/car_hacking/car_venv/bin/vininfo check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | tr -s [:space:] > /sdcard/nh_files/carsenal/output.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, "cmd_check":Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/utils/BootKali;

    invoke-direct {v2, v1}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/offsec/nethunter/utils/BootKali;->run_bg()V

    .line 963
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 964
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/carsenal/output.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 965
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    .end local v2    # "output":Ljava/lang/String;
    goto :goto_0

    .line 966
    :catch_0
    move-exception v2

    .line 967
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "VINCheckError"

    const-string v5, "Exception while reading VIN info"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v3

    const/4 v3, 0x1

    aput-object v5, v6, v3

    const-string v3, "Error: %s - %s"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 970
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "ldAttachCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorLdAttach"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 458
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .local v0, "builder_ldAttach":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 461
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 462
    .local v1, "input_ldAttach":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 465
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda33;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 476
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda34;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda34;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 479
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda35;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda35;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 483
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 484
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "slcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 499
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 501
    .local v0, "slcandRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_0
    const-string v1, "Please set your slcand command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_slcand"    # Landroid/widget/EditText;
    .param p2, "slcandCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorSlcand"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 519
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "newSlcandCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 523
    const-string v1, "slcand_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 526
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "slcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorSlcand"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 511
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 512
    .local v0, "builder_slcand":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 514
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 515
    .local v1, "input_slcand":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 518
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 529
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda8;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 532
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda9;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 536
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 537
    const/4 v3, 0x1

    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 414
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 415
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->context:Landroid/content/Context;

    .line 416
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 47
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 420
    move-object/from16 v0, p0

    const v1, 0x7f0d002b

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 423
    .local v1, "rootView":Landroid/view/View;
    const v5, 0x7f0a00fd

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->SelectedIface:Landroid/widget/TextView;

    .line 425
    const v5, 0x7f0a055f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 428
    .local v5, "selected_vin":Landroid/widget/EditText;
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$400()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "carsenal_setup_done"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 429
    .local v6, "setupdone":Z
    if-nez v6, :cond_0

    .line 430
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->SetupDialog()V

    .line 435
    :cond_0
    const v7, 0x7f0a04bc

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 438
    .local v7, "LdAttachButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const-string v9, "ldAttach_prefs"

    invoke-virtual {v8, v9, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 439
    .local v8, "ldAttach_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 442
    .local v9, "editorLdAttach":Landroid/content/SharedPreferences$Editor;
    const-string v10, "ldAttach_cmd"

    const-string v11, "ldattach --debug --speed 38400 --eightbits --noparity --onestopbit --iflag -ICRNL,INLCR,-IXOFF 29 /dev/rfcomm0"

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 443
    .local v10, "savedCmd_ldAttach":Ljava/lang/String;
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v11

    .line 445
    .local v11, "ldAttachCmdHolder":[Ljava/lang/String;
    new-instance v12, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda14;

    invoke-direct {v12, v0, v11}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    new-instance v12, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda24;

    invoke-direct {v12, v0, v11, v9}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 488
    const v12, 0x7f0a04c9

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 491
    .local v12, "SlcandButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    const-string v14, "slcand_prefs"

    invoke-virtual {v13, v14, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 492
    .local v13, "slcand_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 495
    .local v14, "editorSlcand":Landroid/content/SharedPreferences$Editor;
    const-string v15, "slcand_cmd"

    const-string v2, "slcand -s6 -t sw -S 200000 /dev/ttyUSB0"

    invoke-interface {v13, v15, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "savedCmd_slcand":Ljava/lang/String;
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v15

    .line 498
    .local v15, "slcandCmdHolder":[Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "savedCmd_slcand":Ljava/lang/String;
    .local v17, "savedCmd_slcand":Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda25;

    invoke-direct {v2, v0, v15}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda26;

    invoke-direct {v2, v0, v15, v14}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v12, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 541
    const v2, 0x7f0a04c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 544
    .local v2, "SlcanAttachButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "slcanAttach_prefs"

    move/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "setupdone":Z
    .local v18, "setupdone":Z
    invoke-virtual {v3, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 545
    .local v3, "slcanAttach_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 548
    .local v4, "editorSlcanAttach":Landroid/content/SharedPreferences$Editor;
    const-string v6, "slcanAttach_cmd"

    move-object/from16 v19, v7

    .end local v7    # "LdAttachButton":Landroid/widget/Button;
    .local v19, "LdAttachButton":Landroid/widget/Button;
    const-string v7, "slcan_attach -s6 -o /dev/ttyUSB0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 549
    .local v6, "savedCmd_slcanAttach":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 551
    .local v7, "slcanAttachCmdHolder":[Ljava/lang/String;
    move-object/from16 v20, v3

    .end local v3    # "slcanAttach_prefs":Landroid/content/SharedPreferences;
    .local v20, "slcanAttach_prefs":Landroid/content/SharedPreferences;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda27;

    invoke-direct {v3, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda28;

    invoke-direct {v3, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda28;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 594
    const v3, 0x7f0a04ba

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 597
    .local v3, "hlcandButton":Landroid/widget/Button;
    move-object/from16 v21, v2

    .end local v2    # "SlcanAttachButton":Landroid/widget/Button;
    .local v21, "SlcanAttachButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v22, v4

    .end local v4    # "editorSlcanAttach":Landroid/content/SharedPreferences$Editor;
    .local v22, "editorSlcanAttach":Landroid/content/SharedPreferences$Editor;
    const-string v4, "hlcand_prefs"

    move-object/from16 v23, v6

    const/4 v6, 0x0

    .end local v6    # "savedCmd_slcanAttach":Ljava/lang/String;
    .local v23, "savedCmd_slcanAttach":Ljava/lang/String;
    invoke-virtual {v2, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 598
    .local v2, "hlcand_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 601
    .local v4, "editorHlcand":Landroid/content/SharedPreferences$Editor;
    const-string v6, "hlcand_cmd"

    move-object/from16 v24, v7

    .end local v7    # "slcanAttachCmdHolder":[Ljava/lang/String;
    .local v24, "slcanAttachCmdHolder":[Ljava/lang/String;
    const-string v7, "hlcand -F -s 500000 /dev/ttyUSB0"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 602
    .local v6, "savedCmd_hlcand":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, "hlcandCmdHolder":[Ljava/lang/String;
    move-object/from16 v25, v2

    .end local v2    # "hlcand_prefs":Landroid/content/SharedPreferences;
    .local v25, "hlcand_prefs":Landroid/content/SharedPreferences;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda29;

    invoke-direct {v2, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda29;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda30;

    invoke-direct {v2, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda30;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 647
    const v2, 0x7f0a04c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 650
    .local v2, "RfcommBinderButton":Landroid/widget/Button;
    move-object/from16 v26, v3

    .end local v3    # "hlcandButton":Landroid/widget/Button;
    .local v26, "hlcandButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v27, v4

    .end local v4    # "editorHlcand":Landroid/content/SharedPreferences$Editor;
    .local v27, "editorHlcand":Landroid/content/SharedPreferences$Editor;
    const-string v4, "rfcommBinder_prefs"

    move-object/from16 v28, v6

    const/4 v6, 0x0

    .end local v6    # "savedCmd_hlcand":Ljava/lang/String;
    .local v28, "savedCmd_hlcand":Ljava/lang/String;
    invoke-virtual {v3, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 651
    .local v3, "rfcommBinder_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 654
    .local v4, "editorRfcommBinder":Landroid/content/SharedPreferences$Editor;
    const-string v6, "rfcommBinder_cmd"

    move-object/from16 v29, v7

    .end local v7    # "hlcandCmdHolder":[Ljava/lang/String;
    .local v29, "hlcandCmdHolder":[Ljava/lang/String;
    const-string v7, "rfcomm bind vcan0 00:AA:BB:CC:DD:EE:FF"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 655
    .local v6, "savedCmd_rfcomm_binder":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 657
    .local v7, "rfcommBinderCmdHolder":[Ljava/lang/String;
    move-object/from16 v30, v3

    .end local v3    # "rfcommBinder_prefs":Landroid/content/SharedPreferences;
    .local v30, "rfcommBinder_prefs":Landroid/content/SharedPreferences;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;

    invoke-direct {v3, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda32;

    invoke-direct {v3, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 700
    const v3, 0x7f0a04c1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 703
    .local v3, "RfcommConnectButton":Landroid/widget/Button;
    move-object/from16 v31, v2

    .end local v2    # "RfcommBinderButton":Landroid/widget/Button;
    .local v31, "RfcommBinderButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v32, v4

    .end local v4    # "editorRfcommBinder":Landroid/content/SharedPreferences$Editor;
    .local v32, "editorRfcommBinder":Landroid/content/SharedPreferences$Editor;
    const-string v4, "rfcommConnect_prefs"

    move-object/from16 v33, v6

    const/4 v6, 0x0

    .end local v6    # "savedCmd_rfcomm_binder":Ljava/lang/String;
    .local v33, "savedCmd_rfcomm_binder":Ljava/lang/String;
    invoke-virtual {v2, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 704
    .local v2, "rfcommConnect_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 707
    .local v4, "editorRfcommConnect":Landroid/content/SharedPreferences$Editor;
    const-string v6, "rfcommConnect_cmd"

    move-object/from16 v34, v7

    .end local v7    # "rfcommBinderCmdHolder":[Ljava/lang/String;
    .local v34, "rfcommBinderCmdHolder":[Ljava/lang/String;
    const-string v7, "rfcomm connect /dev/ttyS0 00:AA:BB:CC:DD:EE:FF"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 708
    .local v6, "savedCmd_rfcomm_connect":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, "rfcommConnectCmdHolder":[Ljava/lang/String;
    move-object/from16 v35, v2

    .end local v2    # "rfcommConnect_prefs":Landroid/content/SharedPreferences;
    .local v35, "rfcommConnect_prefs":Landroid/content/SharedPreferences;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 753
    const v2, 0x7f0a04ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 756
    .local v2, "SocketcandButton":Landroid/widget/Button;
    move-object/from16 v36, v3

    .end local v3    # "RfcommConnectButton":Landroid/widget/Button;
    .local v36, "RfcommConnectButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v37, v4

    .end local v4    # "editorRfcommConnect":Landroid/content/SharedPreferences$Editor;
    .local v37, "editorRfcommConnect":Landroid/content/SharedPreferences$Editor;
    const-string v4, "socketcand_prefs"

    move-object/from16 v38, v6

    const/4 v6, 0x0

    .end local v6    # "savedCmd_rfcomm_connect":Ljava/lang/String;
    .local v38, "savedCmd_rfcomm_connect":Ljava/lang/String;
    invoke-virtual {v3, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 757
    .local v3, "socketcand_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 760
    .local v4, "editorSocketcand":Landroid/content/SharedPreferences$Editor;
    const-string v6, "socketcand_cmd"

    move-object/from16 v39, v7

    .end local v7    # "rfcommConnectCmdHolder":[Ljava/lang/String;
    .local v39, "rfcommConnectCmdHolder":[Ljava/lang/String;
    const-string v7, "socketcand -v -l wlan0 -i vcan0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 761
    .local v6, "savedCmd_socketcand":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 763
    .local v7, "socketcandCmdHolder":[Ljava/lang/String;
    move-object/from16 v40, v3

    .end local v3    # "socketcand_prefs":Landroid/content/SharedPreferences;
    .local v40, "socketcand_prefs":Landroid/content/SharedPreferences;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 807
    const v3, 0x7f0a0108

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 808
    .local v3, "canTypeList":Landroid/widget/Spinner;
    move-object/from16 v41, v2

    .end local v2    # "SocketcandButton":Landroid/widget/Button;
    .local v41, "SocketcandButton":Landroid/widget/Button;
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->getStringArrayAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 809
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 810
    move-object/from16 v42, v2

    const/4 v2, 0x0

    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v42, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 812
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$1;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 828
    const v2, 0x7f0a04af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 829
    .local v2, "StartCanButton":Landroid/widget/Button;
    move-object/from16 v16, v3

    .end local v3    # "canTypeList":Landroid/widget/Spinner;
    .local v16, "canTypeList":Landroid/widget/Spinner;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    const v3, 0x7f0a0415

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 921
    .local v3, "ResetIfaceButton":Landroid/widget/Button;
    move-object/from16 v43, v2

    .end local v2    # "StartCanButton":Landroid/widget/Button;
    .local v43, "StartCanButton":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 929
    .local v2, "term":Landroid/widget/EditText;
    move-object/from16 v44, v3

    .end local v3    # "ResetIfaceButton":Landroid/widget/Button;
    .local v44, "ResetIfaceButton":Landroid/widget/Button;
    const v3, 0x7f0a0560

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 931
    .local v3, "VINShowButton":Landroid/widget/Button;
    move-object/from16 v45, v4

    .end local v4    # "editorSocketcand":Landroid/content/SharedPreferences$Editor;
    .local v45, "editorSocketcand":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda21;

    invoke-direct {v4, v0, v5, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    const v4, 0x7f0a055e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 953
    .local v4, "VINCheckButton":Landroid/widget/Button;
    move-object/from16 v46, v3

    .end local v3    # "VINShowButton":Landroid/widget/Button;
    .local v46, "VINShowButton":Landroid/widget/Button;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda23;

    invoke-direct {v3, v0, v5, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 972
    return-object v1
.end method
