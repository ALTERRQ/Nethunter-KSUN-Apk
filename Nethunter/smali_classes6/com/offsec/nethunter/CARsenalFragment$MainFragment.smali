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

    .line 441
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 442
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    .line 441
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

    .line 1029
    const-string v0, "vcan"

    const-string v1, "slcan"

    const-string v2, "Type"

    const-string v3, "can"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, "interfaceTypeOptions":[Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$2;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 1051
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1052
    return-object v1
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .locals 2
    .param p0, "servicesLayout"    # Landroid/widget/LinearLayout;
    .param p1, "btnServicesToggle"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 473
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    const v0, 0x7f1300d2

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    const v0, 0x7f1300d7

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 480
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$13(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 631
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$14(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 635
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 636
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 637
    return-void
.end method

.method static synthetic lambda$onCreateView$18(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 684
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$19(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 688
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 689
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 690
    return-void
.end method

.method static synthetic lambda$onCreateView$23(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 737
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$24(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 741
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 742
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 743
    return-void
.end method

.method static synthetic lambda$onCreateView$28(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 790
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$29(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 794
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 795
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 796
    return-void
.end method

.method static synthetic lambda$onCreateView$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 525
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$33(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 843
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$34(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 847
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 848
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 849
    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 529
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 530
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 531
    return-void
.end method

.method static synthetic lambda$onCreateView$8(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 578
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onCreateView$9(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 582
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 583
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 584
    return-void
.end method

.method static synthetic lambda$showMainConfig$40(Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "mtuEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1077
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showMainConfig$41(Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "txqEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1078
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showMainConfig$42(Landroid/content/SharedPreferences;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "mtuCheckBox"    # Lcom/google/android/material/checkbox/MaterialCheckBox;
    .param p2, "txqCheckBox"    # Lcom/google/android/material/checkbox/MaterialCheckBox;
    .param p3, "mtuEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "txqEditText"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "dialog"    # Landroid/content/DialogInterface;
    .param p6, "which"    # I

    .line 1086
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1087
    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    const-string v2, "mtu_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1088
    invoke-virtual {p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    const-string v2, "txq_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1089
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtu_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1090
    invoke-virtual {p4}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "txq_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1091
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1092
    return-void
.end method

.method private showMainConfig()V
    .locals 16

    .line 1057
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1058
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1061
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0a0358

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1062
    .local v3, "mtuCheckBox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const v4, 0x7f0a0500

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1063
    .local v10, "txqCheckBox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const v4, 0x7f0a035a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1064
    .local v11, "mtuEditText":Lcom/google/android/material/textfield/TextInputEditText;
    const v4, 0x7f0a0502

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1067
    .local v12, "txqEditText":Lcom/google/android/material/textfield/TextInputEditText;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "carsenal_prefs"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1068
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "mtu_enabled"

    invoke-interface {v13, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 1069
    const-string v4, "txq_enabled"

    invoke-interface {v13, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v10, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 1070
    const-string v4, "mtu_value"

    const-string v5, ""

    invoke-interface {v13, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    const-string v4, "txq_value"

    invoke-interface {v13, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    invoke-virtual {v3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1075
    invoke-virtual {v10}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 1077
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, v11}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1078
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, v12}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v10, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1081
    new-instance v4, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f14012e

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 1082
    const-string v5, "Interface Settings"

    invoke-virtual {v4, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    .line 1083
    invoke-virtual {v4, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v14

    new-instance v15, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;

    move-object v4, v15

    move-object v5, v13

    move-object v6, v3

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 1084
    const-string v4, "Apply"

    invoke-virtual {v14, v4, v15}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    .line 1093
    const-string v5, "Cancel"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 1094
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1095
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "ldAttachCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 495
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 497
    .local v0, "ldAttachRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 501
    :cond_0
    const-string v1, "Please set your ldattach command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 503
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "slcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorSlcand"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 560
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 561
    .local v0, "builder_slcand":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 563
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 564
    .local v1, "input_slcand":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 565
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 567
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda39;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda40;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda40;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 580
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 581
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda41;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda41;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 585
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 586
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "slcanAttachCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 601
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 603
    .local v0, "slcanAttachRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 605
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_0
    const-string v1, "Please set your slcan_attach command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 609
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_slcanAttach"    # Landroid/widget/EditText;
    .param p2, "slcanAttachCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorSlcanAttach"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 621
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, "newSlcanAttachCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 625
    const-string v1, "slcanAttach_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 626
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 628
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "slcanAttachCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorSlcanAttach"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 613
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 614
    .local v0, "builder_slcanAttach":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 616
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 617
    .local v1, "input_slcanAttach":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 618
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 620
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda34;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda35;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda35;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 633
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 634
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda36;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda36;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 638
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 639
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "hlcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 654
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 656
    .local v0, "hlcandRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 658
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 660
    :cond_0
    const-string v1, "Please set your hlcand command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 662
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_hlcand"    # Landroid/widget/EditText;
    .param p2, "hlcandCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorHlcand"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 674
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "newHlcandCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 678
    const-string v1, "hlcand_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 679
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 681
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_ldAttach"    # Landroid/widget/EditText;
    .param p2, "ldAttachCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorLdAttach"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 515
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "newLdAttachCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 519
    const-string v1, "ldAttach_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 520
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 522
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "hlcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorHlcand"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 666
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 667
    .local v0, "builder_hlcand":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 669
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 670
    .local v1, "input_hlcand":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 671
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 673
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 684
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda10;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 686
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 687
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda12;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda12;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 691
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 692
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "rfcommBinderCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 707
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 709
    .local v0, "rfcommBinderRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 711
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_0
    const-string v1, "Please set your rfcomm binder command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$22$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_rfcomm_binder"    # Landroid/widget/EditText;
    .param p2, "rfcommBinderCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorRfcommBinder"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 727
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "newRfcommBinderCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 731
    const-string v1, "rfcommBinder_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 732
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 734
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method synthetic lambda$onCreateView$25$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "rfcommBinderCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorRfcommBinder"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 719
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 720
    .local v0, "builder_rfcommBinder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 722
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 723
    .local v1, "input_rfcomm_binder":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 724
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 726
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda11;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 740
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda22;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda22;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 744
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 745
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$26$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "rfcommConnectCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 760
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 762
    .local v0, "rfcommConnectRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 764
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 766
    :cond_0
    const-string v1, "Please set your rfcomm connect command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 768
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$27$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_rfcomm_connect"    # Landroid/widget/EditText;
    .param p2, "rfcommConnectCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorRfcommConnect"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 780
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "newRfcommConnectCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 784
    const-string v1, "rfcommConnect_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 785
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 787
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method synthetic lambda$onCreateView$30$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "rfcommConnectCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorRfcommConnect"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 772
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    .local v0, "builder_rfcommConnect":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 775
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 776
    .local v1, "input_rfcomm_connect":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 777
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 779
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda33;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 790
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda37;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda37;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 792
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 793
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda38;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda38;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 797
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 798
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$31$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "socketcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 813
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 815
    .local v0, "socketcandRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 817
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_0
    const-string v1, "Please set your rfcomm connect command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 821
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$32$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_socketcand"    # Landroid/widget/EditText;
    .param p2, "socketcandCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorSocketcand"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 833
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, "newsocketcandCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 837
    const-string v1, "socketcand_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 838
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 840
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method synthetic lambda$onCreateView$35$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "socketcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorSocketcand"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 825
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 826
    .local v0, "builder_socketcand":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 828
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 829
    .local v1, "input_socketcand":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 830
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 832
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda42;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 843
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 845
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 846
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 850
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 851
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$36$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .line 879
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->SelectedIface:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "selected_caniface":Ljava/lang/String;
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$300()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "cantype_selected"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 883
    .local v3, "interface_type":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "carsenal_prefs"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 884
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "mtu_enabled"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 885
    .local v7, "mtuEnabled":Z
    const-string v0, "txq_enabled"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 886
    .local v6, "txqEnabled":Z
    if-eqz v7, :cond_0

    const-string v0, "mtu_value"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    move-object v8, v0

    .line 887
    .local v8, "selected_mtu":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v0, "txq_value"

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 890
    .local v4, "selected_txqueuelen":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    const-string v0, "Please set a CAN interface!"

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 892
    return-void

    .line 894
    :cond_2
    const-string v0, "^(can|vcan|slcan)[0-9]$"

    invoke-virtual {v2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 895
    const-string v0, "CAN Interface should be named \"^(can|vcan|slcan)[0-9]$\""

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 896
    return-void

    .line 898
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 899
    const-string v0, "Please, set interface type!"

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 900
    return-void

    .line 905
    :cond_4
    :try_start_0
    const-string v0, "vcan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_12

    const-string v9, "Interface "

    const-string v10, " txqueuelen "

    const-string v11, " mtu "

    const-string v12, " up && echo Success || echo Failed"

    const-string v13, "Failed"

    const-string v14, "FATAL:"

    const-string v15, " && echo Success || echo Failed"

    move-object/from16 v16, v5

    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .local v16, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "sudo ip link set "

    if-eqz v0, :cond_9

    .line 906
    :try_start_1
    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v3

    .end local v3    # "interface_type":Ljava/lang/String;
    .local v17, "interface_type":Ljava/lang/String;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v9

    const-string v9, "sudo ip link add dev "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " type vcan && echo Success || echo Failed"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "addVcanIface":Ljava/lang/String;
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_1

    .line 915
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 916
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 917
    .local v3, "mtuValue":I
    iget-object v9, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 921
    .end local v3    # "mtuValue":I
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 922
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 923
    .local v3, "txqValue":I
    iget-object v9, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 927
    .end local v3    # "txqValue":I
    :cond_7
    iget-object v3, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v18

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (vcan) started!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 930
    return-void

    .line 910
    :cond_8
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "! Interface may already exist."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 911
    return-void

    .line 964
    .end local v0    # "addVcanIface":Ljava/lang/String;
    :catch_0
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v5, v17

    goto/16 :goto_6

    .line 962
    :catch_1
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v5, v17

    goto/16 :goto_7

    .line 964
    .end local v17    # "interface_type":Ljava/lang/String;
    .local v3, "interface_type":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v19, v7

    move-object/from16 v5, v17

    .end local v3    # "interface_type":Ljava/lang/String;
    .restart local v17    # "interface_type":Ljava/lang/String;
    goto/16 :goto_6

    .line 962
    .end local v17    # "interface_type":Ljava/lang/String;
    .restart local v3    # "interface_type":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v19, v7

    move-object/from16 v5, v17

    .end local v3    # "interface_type":Ljava/lang/String;
    .restart local v17    # "interface_type":Ljava/lang/String;
    goto/16 :goto_7

    .line 934
    .end local v17    # "interface_type":Ljava/lang/String;
    .restart local v3    # "interface_type":Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v3

    .end local v3    # "interface_type":Ljava/lang/String;
    .restart local v17    # "interface_type":Ljava/lang/String;
    :try_start_3
    const-string v0, "can"
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10

    move-object/from16 v3, v17

    .end local v17    # "interface_type":Ljava/lang/String;
    .restart local v3    # "interface_type":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    if-nez v0, :cond_b

    :try_start_5
    const-string v0, "slcan"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    move-object v5, v3

    move/from16 v19, v7

    goto/16 :goto_8

    .line 964
    :catch_4
    move-exception v0

    move-object v5, v3

    move/from16 v19, v7

    goto/16 :goto_6

    .line 962
    :catch_5
    move-exception v0

    move-object v5, v3

    move/from16 v19, v7

    goto/16 :goto_7

    .line 935
    :cond_b
    :goto_2
    :try_start_6
    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    move-object/from16 v17, v3

    .end local v3    # "interface_type":Ljava/lang/String;
    .restart local v17    # "interface_type":Ljava/lang/String;
    :try_start_7
    const-string v3, "ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM|ttyS)[0-9]+$\'"

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, "usbDevice":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    if-eqz v3, :cond_c

    .line 937
    :try_start_8
    const-string v3, "No CAN hardware detected, please connect adapter and try again."

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 938
    return-void

    .line 942
    :cond_c
    if-eqz v7, :cond_d

    :try_start_9
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 943
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 944
    .local v3, "mtuValue":I
    move-object/from16 v18, v0

    .end local v0    # "usbDevice":Ljava/lang/String;
    .local v18, "usbDevice":Ljava/lang/String;
    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move/from16 v19, v7

    .end local v7    # "mtuEnabled":Z
    .local v19, "mtuEnabled":Z
    :try_start_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 964
    .end local v3    # "mtuValue":I
    .end local v18    # "usbDevice":Ljava/lang/String;
    .end local v19    # "mtuEnabled":Z
    .restart local v7    # "mtuEnabled":Z
    :catch_6
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v5, v17

    .end local v7    # "mtuEnabled":Z
    .restart local v19    # "mtuEnabled":Z
    goto/16 :goto_6

    .line 962
    .end local v19    # "mtuEnabled":Z
    .restart local v7    # "mtuEnabled":Z
    :catch_7
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v5, v17

    .end local v7    # "mtuEnabled":Z
    .restart local v19    # "mtuEnabled":Z
    goto/16 :goto_7

    .line 942
    .end local v19    # "mtuEnabled":Z
    .restart local v0    # "usbDevice":Ljava/lang/String;
    .restart local v7    # "mtuEnabled":Z
    :cond_d
    move-object/from16 v18, v0

    move/from16 v19, v7

    .line 948
    .end local v0    # "usbDevice":Ljava/lang/String;
    .end local v7    # "mtuEnabled":Z
    .restart local v18    # "usbDevice":Ljava/lang/String;
    .restart local v19    # "mtuEnabled":Z
    :goto_3
    if-eqz v6, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 949
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 950
    .local v0, "txqValue":I
    iget-object v3, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_4

    .line 964
    .end local v0    # "txqValue":I
    .end local v18    # "usbDevice":Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_6

    .line 962
    :catch_9
    move-exception v0

    move-object/from16 v5, v17

    goto/16 :goto_7

    .line 954
    .restart local v18    # "usbDevice":Ljava/lang/String;
    :cond_e
    :goto_4
    :try_start_b
    iget-object v0, v1, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "startCanIface":Ljava/lang/String;
    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v5, v17

    goto :goto_5

    .line 958
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    move-object/from16 v5, v17

    .end local v17    # "interface_type":Ljava/lang/String;
    .local v5, "interface_type":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ") started!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 955
    .end local v5    # "interface_type":Ljava/lang/String;
    .restart local v17    # "interface_type":Ljava/lang/String;
    :cond_10
    move-object/from16 v5, v17

    .line 956
    .end local v17    # "interface_type":Ljava/lang/String;
    .restart local v5    # "interface_type":Ljava/lang/String;
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " interface!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_8

    .line 964
    .end local v0    # "startCanIface":Ljava/lang/String;
    .end local v18    # "usbDevice":Ljava/lang/String;
    :catch_a
    move-exception v0

    goto :goto_6

    .line 962
    :catch_b
    move-exception v0

    goto :goto_7

    .line 964
    .end local v5    # "interface_type":Ljava/lang/String;
    .restart local v17    # "interface_type":Ljava/lang/String;
    :catch_c
    move-exception v0

    move-object/from16 v5, v17

    .end local v17    # "interface_type":Ljava/lang/String;
    .restart local v5    # "interface_type":Ljava/lang/String;
    goto :goto_6

    .line 962
    .end local v5    # "interface_type":Ljava/lang/String;
    .restart local v17    # "interface_type":Ljava/lang/String;
    :catch_d
    move-exception v0

    move-object/from16 v5, v17

    .end local v17    # "interface_type":Ljava/lang/String;
    .restart local v5    # "interface_type":Ljava/lang/String;
    goto :goto_7

    .line 964
    .end local v5    # "interface_type":Ljava/lang/String;
    .end local v19    # "mtuEnabled":Z
    .local v3, "interface_type":Ljava/lang/String;
    .restart local v7    # "mtuEnabled":Z
    :catch_e
    move-exception v0

    move-object v5, v3

    move/from16 v19, v7

    .end local v3    # "interface_type":Ljava/lang/String;
    .end local v7    # "mtuEnabled":Z
    .restart local v5    # "interface_type":Ljava/lang/String;
    .restart local v19    # "mtuEnabled":Z
    goto :goto_6

    .line 962
    .end local v5    # "interface_type":Ljava/lang/String;
    .end local v19    # "mtuEnabled":Z
    .restart local v3    # "interface_type":Ljava/lang/String;
    .restart local v7    # "mtuEnabled":Z
    :catch_f
    move-exception v0

    move-object v5, v3

    move/from16 v19, v7

    .end local v3    # "interface_type":Ljava/lang/String;
    .end local v7    # "mtuEnabled":Z
    .restart local v5    # "interface_type":Ljava/lang/String;
    .restart local v19    # "mtuEnabled":Z
    goto :goto_7

    .line 964
    .end local v5    # "interface_type":Ljava/lang/String;
    .end local v19    # "mtuEnabled":Z
    .restart local v7    # "mtuEnabled":Z
    .restart local v17    # "interface_type":Ljava/lang/String;
    :catch_10
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v5, v17

    .end local v7    # "mtuEnabled":Z
    .end local v17    # "interface_type":Ljava/lang/String;
    .restart local v5    # "interface_type":Ljava/lang/String;
    .restart local v19    # "mtuEnabled":Z
    goto :goto_6

    .line 962
    .end local v5    # "interface_type":Ljava/lang/String;
    .end local v19    # "mtuEnabled":Z
    .restart local v7    # "mtuEnabled":Z
    .restart local v17    # "interface_type":Ljava/lang/String;
    :catch_11
    move-exception v0

    move/from16 v19, v7

    move-object/from16 v5, v17

    .end local v7    # "mtuEnabled":Z
    .end local v17    # "interface_type":Ljava/lang/String;
    .restart local v5    # "interface_type":Ljava/lang/String;
    .restart local v19    # "mtuEnabled":Z
    goto :goto_7

    .line 964
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    .end local v19    # "mtuEnabled":Z
    .restart local v3    # "interface_type":Ljava/lang/String;
    .local v5, "prefs":Landroid/content/SharedPreferences;
    .restart local v7    # "mtuEnabled":Z
    :catch_12
    move-exception v0

    move-object/from16 v16, v5

    move/from16 v19, v7

    move-object v5, v3

    .line 965
    .end local v3    # "interface_type":Ljava/lang/String;
    .end local v7    # "mtuEnabled":Z
    .local v0, "e":Ljava/lang/Exception;
    .local v5, "interface_type":Ljava/lang/String;
    .restart local v16    # "prefs":Landroid/content/SharedPreferences;
    .restart local v19    # "mtuEnabled":Z
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error starting interface: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_9

    .line 962
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    .end local v19    # "mtuEnabled":Z
    .restart local v3    # "interface_type":Ljava/lang/String;
    .local v5, "prefs":Landroid/content/SharedPreferences;
    .restart local v7    # "mtuEnabled":Z
    :catch_13
    move-exception v0

    move-object/from16 v16, v5

    move/from16 v19, v7

    move-object v5, v3

    .line 963
    .end local v3    # "interface_type":Ljava/lang/String;
    .end local v7    # "mtuEnabled":Z
    .local v0, "e":Ljava/lang/NumberFormatException;
    .local v5, "interface_type":Ljava/lang/String;
    .restart local v16    # "prefs":Landroid/content/SharedPreferences;
    .restart local v19    # "mtuEnabled":Z
    :goto_7
    const-string v3, "Invalid numeric value for MTU or TX queue length."

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 966
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_8
    nop

    .line 967
    :goto_9
    return-void
.end method

.method synthetic lambda$onCreateView$37$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 973
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "/opt/car_hacking/can_reset.sh"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 974
    const-string v0, "Interface reset!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 975
    return-void
.end method

.method synthetic lambda$onCreateView$38$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7
    .param p1, "selected_vin"    # Landroid/widget/EditText;
    .param p2, "term"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 983
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "vinNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 985
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->context:Landroid/content/Context;

    const-string v2, "VIN must be exactly 17 characters long."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 986
    return-void

    .line 989
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

    .line 990
    .local v1, "cmd_show":Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/utils/BootKali;

    invoke-direct {v2, v1}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/offsec/nethunter/utils/BootKali;->run_bg()V

    .line 992
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 993
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

    .line 994
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    .end local v2    # "output":Ljava/lang/String;
    goto :goto_0

    .line 995
    :catch_0
    move-exception v2

    .line 996
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "VINShowError"

    const-string v5, "Exception while reading VIN info"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 997
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

    .line 999
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$39$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7
    .param p1, "selected_vin"    # Landroid/widget/EditText;
    .param p2, "term"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1005
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "vinNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1007
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->context:Landroid/content/Context;

    const-string v2, "VIN must be exactly 17 characters long."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1008
    return-void

    .line 1011
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

    .line 1012
    .local v1, "cmd_check":Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/utils/BootKali;

    invoke-direct {v2, v1}, Lcom/offsec/nethunter/utils/BootKali;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/offsec/nethunter/utils/BootKali;->run_bg()V

    .line 1014
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1015
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

    .line 1016
    .local v2, "output":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    .end local v2    # "output":Ljava/lang/String;
    goto :goto_0

    .line 1017
    :catch_0
    move-exception v2

    .line 1018
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "VINCheckError"

    const-string v5, "Exception while reading VIN info"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
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

    .line 1021
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z
    .locals 4
    .param p1, "ldAttachCmdHolder"    # [Ljava/lang/String;
    .param p2, "editorLdAttach"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "v"    # Landroid/view/View;

    .line 507
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    .local v0, "builder_ldAttach":Landroid/app/AlertDialog$Builder;
    const-string v1, "Edit Command"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 510
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 511
    .local v1, "input_ldAttach":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 514
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    const-string v3, "Save"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 525
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda7;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 527
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 528
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 532
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 533
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "slcandCmdHolder"    # [Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 548
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 550
    .local v0, "slcandRun":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 552
    const-string v1, "Press CTRL+C to stop."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_0
    const-string v1, "Please set your slcand command!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 556
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CARsenalFragment$MainFragment(Landroid/widget/EditText;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "input_slcand"    # Landroid/widget/EditText;
    .param p2, "slcandCmdHolder"    # [Ljava/lang/String;
    .param p3, "editorSlcand"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 568
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "newSlcandCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 572
    const-string v1, "slcand_cmd"

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 575
    const-string v1, "Command updated!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->showToast(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 449
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 450
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->context:Landroid/content/Context;

    .line 451
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 49
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 455
    move-object/from16 v0, p0

    const v1, 0x7f0d002c

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 458
    .local v1, "rootView":Landroid/view/View;
    const v5, 0x7f0a00f1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->SelectedIface:Landroid/widget/TextView;

    .line 460
    const v5, 0x7f0a0521

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 463
    .local v5, "selected_vin":Landroid/widget/EditText;
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$300()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "carsenal_setup_done"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 464
    .local v6, "setupdone":Z
    if-nez v6, :cond_0

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->SetupDialog()V

    .line 469
    :cond_0
    const v7, 0x7f0a00da

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 470
    .local v7, "btnServicesToggle":Landroid/widget/Button;
    const v8, 0x7f0a02fd

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 472
    .local v8, "servicesLayout":Landroid/widget/LinearLayout;
    new-instance v9, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda13;

    invoke-direct {v9, v8, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda13;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v9, 0x7f0a0486

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 487
    .local v9, "LdAttachButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    const-string v11, "ldAttach_prefs"

    invoke-virtual {v10, v11, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 488
    .local v10, "ldAttach_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 491
    .local v11, "editorLdAttach":Landroid/content/SharedPreferences$Editor;
    const-string v12, "ldAttach_cmd"

    const-string v13, "ldattach --debug --speed 38400 --eightbits --noparity --onestopbit --iflag -ICRNL,INLCR,-IXOFF 29 /dev/rfcomm0"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 492
    .local v12, "savedCmd_ldAttach":Ljava/lang/String;
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v13

    .line 494
    .local v13, "ldAttachCmdHolder":[Ljava/lang/String;
    new-instance v14, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda24;

    invoke-direct {v14, v0, v13}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    new-instance v14, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda25;

    invoke-direct {v14, v0, v13, v11}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v9, v14}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 537
    const v14, 0x7f0a0494

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 540
    .local v14, "SlcandButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    const-string v3, "slcand_prefs"

    invoke-virtual {v15, v3, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 541
    .local v3, "slcand_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 544
    .local v15, "editorSlcand":Landroid/content/SharedPreferences$Editor;
    const-string v2, "slcand_cmd"

    const-string v4, "slcand -s6 -t sw -S 200000 /dev/ttyUSB0"

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, "savedCmd_slcand":Ljava/lang/String;
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "slcandCmdHolder":[Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "savedCmd_slcand":Ljava/lang/String;
    .local v17, "savedCmd_slcand":Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda26;

    invoke-direct {v2, v0, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda27;

    invoke-direct {v2, v0, v4, v15}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 590
    const v2, 0x7f0a0493

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 593
    .local v2, "SlcanAttachButton":Landroid/widget/Button;
    move-object/from16 v18, v3

    .end local v3    # "slcand_prefs":Landroid/content/SharedPreferences;
    .local v18, "slcand_prefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v19, v4

    .end local v4    # "slcandCmdHolder":[Ljava/lang/String;
    .local v19, "slcandCmdHolder":[Ljava/lang/String;
    const-string v4, "slcanAttach_prefs"

    move/from16 v20, v6

    const/4 v6, 0x0

    .end local v6    # "setupdone":Z
    .local v20, "setupdone":Z
    invoke-virtual {v3, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 594
    .local v3, "slcanAttach_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 597
    .local v4, "editorSlcanAttach":Landroid/content/SharedPreferences$Editor;
    const-string v6, "slcanAttach_cmd"

    move-object/from16 v21, v7

    .end local v7    # "btnServicesToggle":Landroid/widget/Button;
    .local v21, "btnServicesToggle":Landroid/widget/Button;
    const-string v7, "slcan_attach -s6 -o /dev/ttyUSB0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 598
    .local v6, "savedCmd_slcanAttach":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 600
    .local v7, "slcanAttachCmdHolder":[Ljava/lang/String;
    move-object/from16 v22, v3

    .end local v3    # "slcanAttach_prefs":Landroid/content/SharedPreferences;
    .local v22, "slcanAttach_prefs":Landroid/content/SharedPreferences;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda28;

    invoke-direct {v3, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda28;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda29;

    invoke-direct {v3, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda29;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 643
    const v3, 0x7f0a0484

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 646
    .local v3, "hlcandButton":Landroid/widget/Button;
    move-object/from16 v23, v2

    .end local v2    # "SlcanAttachButton":Landroid/widget/Button;
    .local v23, "SlcanAttachButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v24, v4

    .end local v4    # "editorSlcanAttach":Landroid/content/SharedPreferences$Editor;
    .local v24, "editorSlcanAttach":Landroid/content/SharedPreferences$Editor;
    const-string v4, "hlcand_prefs"

    move-object/from16 v25, v6

    const/4 v6, 0x0

    .end local v6    # "savedCmd_slcanAttach":Ljava/lang/String;
    .local v25, "savedCmd_slcanAttach":Ljava/lang/String;
    invoke-virtual {v2, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 647
    .local v2, "hlcand_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 650
    .local v4, "editorHlcand":Landroid/content/SharedPreferences$Editor;
    const-string v6, "hlcand_cmd"

    move-object/from16 v26, v7

    .end local v7    # "slcanAttachCmdHolder":[Ljava/lang/String;
    .local v26, "slcanAttachCmdHolder":[Ljava/lang/String;
    const-string v7, "hlcand -F -s 500000 /dev/ttyUSB0"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 651
    .local v6, "savedCmd_hlcand":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 653
    .local v7, "hlcandCmdHolder":[Ljava/lang/String;
    move-object/from16 v27, v2

    .end local v2    # "hlcand_prefs":Landroid/content/SharedPreferences;
    .local v27, "hlcand_prefs":Landroid/content/SharedPreferences;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda30;

    invoke-direct {v2, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda30;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;

    invoke-direct {v2, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 696
    const v2, 0x7f0a048b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 699
    .local v2, "RfcommBinderButton":Landroid/widget/Button;
    move-object/from16 v28, v3

    .end local v3    # "hlcandButton":Landroid/widget/Button;
    .local v28, "hlcandButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v29, v4

    .end local v4    # "editorHlcand":Landroid/content/SharedPreferences$Editor;
    .local v29, "editorHlcand":Landroid/content/SharedPreferences$Editor;
    const-string v4, "rfcommBinder_prefs"

    move-object/from16 v30, v6

    const/4 v6, 0x0

    .end local v6    # "savedCmd_hlcand":Ljava/lang/String;
    .local v30, "savedCmd_hlcand":Ljava/lang/String;
    invoke-virtual {v3, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 700
    .local v3, "rfcommBinder_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 703
    .local v4, "editorRfcommBinder":Landroid/content/SharedPreferences$Editor;
    const-string v6, "rfcommBinder_cmd"

    move-object/from16 v31, v7

    .end local v7    # "hlcandCmdHolder":[Ljava/lang/String;
    .local v31, "hlcandCmdHolder":[Ljava/lang/String;
    const-string v7, "rfcomm bind vcan0 00:AA:BB:CC:DD:EE:FF"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 704
    .local v6, "savedCmd_rfcomm_binder":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, "rfcommBinderCmdHolder":[Ljava/lang/String;
    move-object/from16 v32, v3

    .end local v3    # "rfcommBinder_prefs":Landroid/content/SharedPreferences;
    .local v32, "rfcommBinder_prefs":Landroid/content/SharedPreferences;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda32;

    invoke-direct {v3, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 718
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 749
    const v3, 0x7f0a048c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 752
    .local v3, "RfcommConnectButton":Landroid/widget/Button;
    move-object/from16 v33, v2

    .end local v2    # "RfcommBinderButton":Landroid/widget/Button;
    .local v33, "RfcommBinderButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v34, v4

    .end local v4    # "editorRfcommBinder":Landroid/content/SharedPreferences$Editor;
    .local v34, "editorRfcommBinder":Landroid/content/SharedPreferences$Editor;
    const-string v4, "rfcommConnect_prefs"

    move-object/from16 v35, v6

    const/4 v6, 0x0

    .end local v6    # "savedCmd_rfcomm_binder":Ljava/lang/String;
    .local v35, "savedCmd_rfcomm_binder":Ljava/lang/String;
    invoke-virtual {v2, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 753
    .local v2, "rfcommConnect_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 756
    .local v4, "editorRfcommConnect":Landroid/content/SharedPreferences$Editor;
    const-string v6, "rfcommConnect_cmd"

    move-object/from16 v36, v7

    .end local v7    # "rfcommBinderCmdHolder":[Ljava/lang/String;
    .local v36, "rfcommBinderCmdHolder":[Ljava/lang/String;
    const-string v7, "rfcomm connect /dev/ttyS0 00:AA:BB:CC:DD:EE:FF"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 757
    .local v6, "savedCmd_rfcomm_connect":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, "rfcommConnectCmdHolder":[Ljava/lang/String;
    move-object/from16 v37, v2

    .end local v2    # "rfcommConnect_prefs":Landroid/content/SharedPreferences;
    .local v37, "rfcommConnect_prefs":Landroid/content/SharedPreferences;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 802
    const v2, 0x7f0a0495

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 805
    .local v2, "SocketcandButton":Landroid/widget/Button;
    move-object/from16 v38, v3

    .end local v3    # "RfcommConnectButton":Landroid/widget/Button;
    .local v38, "RfcommConnectButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v39, v4

    .end local v4    # "editorRfcommConnect":Landroid/content/SharedPreferences$Editor;
    .local v39, "editorRfcommConnect":Landroid/content/SharedPreferences$Editor;
    const-string v4, "socketcand_prefs"

    move-object/from16 v40, v6

    const/4 v6, 0x0

    .end local v6    # "savedCmd_rfcomm_connect":Ljava/lang/String;
    .local v40, "savedCmd_rfcomm_connect":Ljava/lang/String;
    invoke-virtual {v3, v4, v6}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 806
    .local v3, "socketcand_prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 809
    .local v4, "editorSocketcand":Landroid/content/SharedPreferences$Editor;
    const-string v6, "socketcand_cmd"

    move-object/from16 v41, v7

    .end local v7    # "rfcommConnectCmdHolder":[Ljava/lang/String;
    .local v41, "rfcommConnectCmdHolder":[Ljava/lang/String;
    const-string v7, "socketcand -v -l wlan0 -i vcan0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 810
    .local v6, "savedCmd_socketcand":Ljava/lang/String;
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v7

    .line 812
    .local v7, "socketcandCmdHolder":[Ljava/lang/String;
    move-object/from16 v42, v3

    .end local v3    # "socketcand_prefs":Landroid/content/SharedPreferences;
    .local v42, "socketcand_prefs":Landroid/content/SharedPreferences;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 856
    const v3, 0x7f0a00fa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 857
    .local v3, "canTypeList":Landroid/widget/Spinner;
    move-object/from16 v43, v2

    .end local v2    # "SocketcandButton":Landroid/widget/Button;
    .local v43, "SocketcandButton":Landroid/widget/Button;
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->getStringArrayAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 858
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 859
    move-object/from16 v44, v2

    const/4 v2, 0x0

    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v44, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 861
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$1;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 877
    const v2, 0x7f0a0478

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 878
    .local v2, "StartCanButton":Landroid/widget/Button;
    move-object/from16 v16, v3

    .end local v3    # "canTypeList":Landroid/widget/Spinner;
    .local v16, "canTypeList":Landroid/widget/Spinner;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda19;

    invoke-direct {v3, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    const v3, 0x7f0a03ec

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 972
    .local v3, "ResetIfaceButton":Landroid/widget/Button;
    move-object/from16 v45, v2

    .end local v2    # "StartCanButton":Landroid/widget/Button;
    .local v45, "StartCanButton":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 978
    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 980
    .local v2, "term":Landroid/widget/EditText;
    move-object/from16 v46, v3

    .end local v3    # "ResetIfaceButton":Landroid/widget/Button;
    .local v46, "ResetIfaceButton":Landroid/widget/Button;
    const v3, 0x7f0a0522

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 982
    .local v3, "VINShowButton":Landroid/widget/Button;
    move-object/from16 v47, v4

    .end local v4    # "editorSocketcand":Landroid/content/SharedPreferences$Editor;
    .local v47, "editorSocketcand":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda21;

    invoke-direct {v4, v0, v5, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    const v4, 0x7f0a0520

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1004
    .local v4, "VINCheckButton":Landroid/widget/Button;
    move-object/from16 v48, v3

    .end local v3    # "VINShowButton":Landroid/widget/Button;
    .local v48, "VINShowButton":Landroid/widget/Button;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda23;

    invoke-direct {v3, v0, v5, v2}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    return-object v1
.end method
