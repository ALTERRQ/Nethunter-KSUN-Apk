.class public Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;
.super Lcom/offsec/nethunter/CARsenalFragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolsFragment"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final asc2logCmd:[Ljava/lang/String;

.field private final canDumpCmd:[Ljava/lang/String;

.field private final canGenCmd:[Ljava/lang/String;

.field private final canPlayerCmd:[Ljava/lang/String;

.field private final canSendCmd:[Ljava/lang/String;

.field private final canSnifferCmd:[Ljava/lang/String;

.field private final cannelloniCmd:[Ljava/lang/String;

.field private final diagTestCmd:[Ljava/lang/String;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final freediagCmd:[Ljava/lang/String;

.field private isDisableLoopbackEnabled:Z

.field private isInteractiveEnabled:Z

.field private isVerboseEnabled:Z

.field private final log2ascCmd:[Ljava/lang/String;

.field private selected_caniface:Ljava/lang/String;

.field private final sequenceFinderCmd:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1032
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 1033
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1034
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    .line 1037
    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    .line 1038
    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    .line 1040
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    .line 1041
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    .line 1042
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    .line 1043
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    .line 1044
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    .line 1045
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    .line 1046
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    .line 1047
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    .line 1048
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    .line 1049
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    .line 1050
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    .line 1032
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToolsConfig()V

    return-void
.end method

.method static synthetic lambda$showEditCommandDialog$33(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 1592
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$showEditCommandDialog$34(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 1596
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1597
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1598
    return-void
.end method

.method static synthetic lambda$showToolsConfig$29(Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p0, "dialogView"    # Landroid/view/View;
    .param p1, "inputFile"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1527
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 1528
    .local v0, "browserDialog":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 1529
    return-void
.end method

.method static synthetic lambda$showToolsConfig$30(Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p0, "dialogView"    # Landroid/view/View;
    .param p1, "outputFile"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1533
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 1534
    .local v0, "browserDialog":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 1535
    return-void
.end method

.method private showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "cmdHolder"    # [Ljava/lang/String;
    .param p3, "prefKey"    # Ljava/lang/String;
    .param p4, "defaultCmd"    # Ljava/lang/String;

    .line 1572
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1573
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1575
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1576
    .local v1, "input":Landroid/widget/EditText;
    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, p4

    goto :goto_0

    :cond_0
    aget-object v2, p2, v2

    .line 1577
    .local v2, "textToShow":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1578
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1580
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, v1, p2, p3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Save"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1592
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda23;-><init>()V

    const-string v4, "Cancel"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1594
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1595
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v4, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda24;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1599
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1600
    return-void
.end method

.method private showToolsConfig()V
    .locals 28

    .line 1496
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 1497
    .local v13, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d0030

    const/4 v14, 0x0

    invoke-virtual {v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 1500
    .local v15, "dialogView":Landroid/view/View;
    const v0, 0x7f0a0106

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1501
    .local v11, "cansendSequence":Lcom/google/android/material/textfield/TextInputEditText;
    const v0, 0x7f0a0104

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1502
    .local v10, "rhost":Lcom/google/android/material/textfield/TextInputEditText;
    const v0, 0x7f0a0105

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1503
    .local v9, "rport":Lcom/google/android/material/textfield/TextInputEditText;
    const v0, 0x7f0a0103

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1504
    .local v8, "lport":Lcom/google/android/material/textfield/TextInputEditText;
    const v0, 0x7f0a02e5

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1505
    .local v7, "inputFile":Lcom/google/android/material/textfield/TextInputEditText;
    const v0, 0x7f0a03c9

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1508
    .local v6, "outputFile":Lcom/google/android/material/textfield/TextInputEditText;
    const v0, 0x7f0a00db

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    .line 1509
    .local v5, "switchInteractive":Landroidx/appcompat/widget/SwitchCompat;
    const v0, 0x7f0a00e6

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    .line 1510
    .local v4, "switchVerbose":Landroidx/appcompat/widget/SwitchCompat;
    const v0, 0x7f0a00dd

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 1513
    .local v3, "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1514
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "cansend_sequence"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1515
    const-string v0, "cannelloni_rhost"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1516
    const-string v0, "cannelloni_rport"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    const-string v0, "cannelloni_lport"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1518
    const-string v0, "input_file"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    const-string v0, "output_file"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    iget-boolean v0, v12, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1521
    iget-boolean v0, v12, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1522
    iget-boolean v0, v12, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1525
    const v0, 0x7f0a02e4

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    .line 1526
    .local v1, "inputfilebrowse":Landroid/widget/ImageButton;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v0, v15, v7}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda25;-><init>(Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1531
    const v0, 0x7f0a03c8

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1532
    .local v0, "outputfilebrowse":Landroid/widget/ImageButton;
    new-instance v14, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v14, v15, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda26;-><init>(Landroid/view/View;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1538
    new-instance v14, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object/from16 v16, v0

    .end local v0    # "outputfilebrowse":Landroid/widget/ImageButton;
    .local v16, "outputfilebrowse":Landroid/widget/ImageButton;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v17, v1

    .end local v1    # "inputfilebrowse":Landroid/widget/ImageButton;
    .local v17, "inputfilebrowse":Landroid/widget/ImageButton;
    const v1, 0x7f14012e

    invoke-direct {v14, v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 1539
    const-string v0, "Tools Settings"

    invoke-virtual {v14, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1540
    invoke-virtual {v0, v15}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v14

    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda27;

    move-object v0, v1

    move-object v12, v1

    move-object/from16 v1, p0

    move-object/from16 v18, v2

    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .local v18, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v19, v3

    .end local v3    # "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    .local v19, "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    move-object v3, v11

    move-object/from16 v20, v4

    .end local v4    # "switchVerbose":Landroidx/appcompat/widget/SwitchCompat;
    .local v20, "switchVerbose":Landroidx/appcompat/widget/SwitchCompat;
    move-object v4, v10

    move-object/from16 v21, v5

    .end local v5    # "switchInteractive":Landroidx/appcompat/widget/SwitchCompat;
    .local v21, "switchInteractive":Landroidx/appcompat/widget/SwitchCompat;
    move-object v5, v9

    move-object/from16 v22, v6

    .end local v6    # "outputFile":Lcom/google/android/material/textfield/TextInputEditText;
    .local v22, "outputFile":Lcom/google/android/material/textfield/TextInputEditText;
    move-object v6, v8

    move-object/from16 v23, v7

    .end local v7    # "inputFile":Lcom/google/android/material/textfield/TextInputEditText;
    .local v23, "inputFile":Lcom/google/android/material/textfield/TextInputEditText;
    move-object/from16 v24, v8

    .end local v8    # "lport":Lcom/google/android/material/textfield/TextInputEditText;
    .local v24, "lport":Lcom/google/android/material/textfield/TextInputEditText;
    move-object/from16 v8, v22

    move-object/from16 v25, v9

    .end local v9    # "rport":Lcom/google/android/material/textfield/TextInputEditText;
    .local v25, "rport":Lcom/google/android/material/textfield/TextInputEditText;
    move-object/from16 v9, v21

    move-object/from16 v26, v10

    .end local v10    # "rhost":Lcom/google/android/material/textfield/TextInputEditText;
    .local v26, "rhost":Lcom/google/android/material/textfield/TextInputEditText;
    move-object/from16 v10, v20

    move-object/from16 v27, v11

    .end local v11    # "cansendSequence":Lcom/google/android/material/textfield/TextInputEditText;
    .local v27, "cansendSequence":Lcom/google/android/material/textfield/TextInputEditText;
    move-object/from16 v11, v19

    invoke-direct/range {v0 .. v11}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;)V

    .line 1541
    const-string v0, "Save"

    invoke-virtual {v14, v0, v12}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1567
    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1568
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1569
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 1100
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "switchInteractive"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1108
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    .line 1110
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1111
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1112
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1202
    nop

    .line 1204
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1202
    :goto_0
    const-string v1, "output_file"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "outputfile":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1208
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1209
    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "Interfaces"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "candump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1212
    :cond_2
    const-string v1, "Please ensure your CAN Interface and Output File fields are set!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1215
    :goto_1
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1216
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1218
    nop

    .line 1220
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1218
    :goto_0
    const-string v1, "output_file"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "outputfile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "candump "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, "defaultCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    const-string v3, "canDump_cmd"

    const-string v4, "Edit CanDump Command"

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const/4 v2, 0x1

    return v2
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "cansend_sequence"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1231
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cansend_sequence"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "sequence":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "Interfaces"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cansend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1238
    :cond_1
    const-string v1, "Please ensure your CAN Interface and Sequence fields are set!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1241
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1242
    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Landroid/view/View;)Z
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "v"    # Landroid/view/View;

    .line 1244
    const-string v0, "cansend_sequence"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "savedSequence":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cansend "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, "defaultCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    const-string v3, "canSend_cmd"

    const-string v4, "Edit CanSend Command"

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const/4 v2, 0x1

    return v2
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1254
    nop

    .line 1256
    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1254
    :goto_0
    const-string v2, "input_file"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1258
    .local v1, "inputfile":Ljava/lang/String;
    const-string v2, "interactive_enabled"

    iget-boolean v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " -i"

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 1259
    .local v2, "interactiveEnabled":Ljava/lang/String;
    :goto_1
    const-string v3, "verbose_enabled"

    iget-boolean v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, " -v"

    goto :goto_2

    :cond_2
    move-object v3, v0

    .line 1260
    .local v3, "verboseEnabled":Ljava/lang/String;
    :goto_2
    iget-boolean v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    xor-int/lit8 v4, v4, 0x1

    const-string v5, "disable_loopback"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, " -x"

    .line 1262
    .local v0, "disableLoopbackEnabled":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1263
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 1264
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canplayer -I "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3

    .line 1267
    :cond_5
    const-string v4, "Please ensure your Input File field is set!"

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1270
    :goto_3
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1271
    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 9
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1273
    nop

    .line 1275
    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1273
    :goto_0
    const-string v2, "input_file"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1277
    .local v1, "inputfile":Ljava/lang/String;
    const-string v2, "interactive_enabled"

    iget-boolean v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " -i"

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 1278
    .local v2, "interactiveEnabled":Ljava/lang/String;
    :goto_1
    const-string v3, "verbose_enabled"

    iget-boolean v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, " -v"

    goto :goto_2

    :cond_2
    move-object v3, v0

    .line 1279
    .local v3, "verboseEnabled":Ljava/lang/String;
    :goto_2
    iget-boolean v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const-string v6, "disable_loopback"

    invoke-interface {p1, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, " -x"

    .line 1281
    .local v0, "disableLoopbackEnabled":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canplayer -I "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1283
    .local v4, "defaultCmd":Ljava/lang/String;
    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    const-string v7, "canPlayer_cmd"

    const-string v8, "Edit CanPlayer Command"

    invoke-direct {p0, v8, v6, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    return v5
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1290
    nop

    .line 1292
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1290
    :goto_0
    const-string v1, "input_file"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "inputfile":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1297
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/opt/car_hacking/sequence_finder.sh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1300
    :cond_2
    const-string v1, "Please ensure your Input File field is set!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1303
    :goto_1
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1304
    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1306
    nop

    .line 1308
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1306
    :goto_0
    const-string v1, "input_file"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1310
    .local v0, "inputfile":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/opt/car_hacking/sequence_finder.sh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, "defaultCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    const-string v3, "sequenceFinder_cmd"

    const-string v4, "Edit SequenceFinder Command"

    invoke-direct {p0, v4, v2, v3, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    const/4 v2, 0x1

    return v2
.end method

.method synthetic lambda$onCreateView$18$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1319
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1322
    :cond_0
    const-string v0, "sudo -u kali freediag"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 1324
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1325
    return-void
.end method

.method synthetic lambda$onCreateView$19$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1327
    const-string v0, "sudo -u kali freediag"

    .line 1328
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    const-string v2, "freediag_cmd"

    const-string v3, "Edit Freediag Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "switchVerbose"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1119
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    .line 1121
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1122
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1123
    return-void
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1335
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1338
    :cond_0
    const-string v0, "sudo -u kali diag_test"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 1340
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1341
    return-void
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1343
    const-string v0, "sudo -u kali diag_test"

    .line 1344
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    const-string v2, "diagTest_cmd"

    const-string v3, "Edit diag_test Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$22$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "SelectedRHost"    # Landroid/widget/EditText;
    .param p3, "SelectedRPort"    # Landroid/widget/EditText;
    .param p4, "SelectedLPort"    # Landroid/widget/EditText;
    .param p5, "v"    # Landroid/view/View;

    .line 1351
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cannelloni_rhost"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1352
    .local v0, "rhost":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannelloni_rport"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1353
    .local v1, "rport":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannelloni_lport"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1355
    .local v2, "lport":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1356
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1358
    :cond_0
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v4, "Interfaces"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 1364
    :cond_1
    const-string v3, "^((25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1\\d{2}|[1-9]?\\d)$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1367
    const-string v3, "RHOST must be a valid IP address (e.g., 192.168.1.100)"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1368
    return-void

    .line 1373
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1374
    .local v3, "rPortInt":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    .local v4, "lPortInt":I
    const/4 v5, 0x1

    if-lt v3, v5, :cond_6

    const v6, 0xffff

    if-le v3, v6, :cond_3

    goto :goto_2

    .line 1379
    :cond_3
    if-lt v4, v5, :cond_5

    if-le v4, v6, :cond_4

    goto :goto_1

    .line 1386
    .end local v3    # "rPortInt":I
    .end local v4    # "lPortInt":I
    :cond_4
    nop

    .line 1388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sudo cannelloni -I "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -R "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -l "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 1390
    :goto_0
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1391
    return-void

    .line 1380
    .restart local v3    # "rPortInt":I
    .restart local v4    # "lPortInt":I
    :cond_5
    :goto_1
    :try_start_1
    const-string v5, "LPORT must be between 1 and 65535"

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1381
    return-void

    .line 1376
    :cond_6
    :goto_2
    const-string v5, "RPORT must be between 1 and 65535"

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1377
    return-void

    .line 1383
    .end local v3    # "rPortInt":I
    .end local v4    # "lPortInt":I
    :catch_0
    move-exception v3

    .line 1384
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Ports must be numeric"

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1385
    return-void

    .line 1359
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_3
    const-string v3, "Please select a CAN Interface!"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method synthetic lambda$onCreateView$23$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)Z
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "SelectedRHost"    # Landroid/widget/EditText;
    .param p3, "SelectedRPort"    # Landroid/widget/EditText;
    .param p4, "SelectedLPort"    # Landroid/widget/EditText;
    .param p5, "v"    # Landroid/view/View;

    .line 1393
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cannelloni_rhost"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, "rhost":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannelloni_rport"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, "rport":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cannelloni_lport"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1397
    .local v2, "lport":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sudo cannelloni -I "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -R "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -l "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1398
    .local v3, "defaultCmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    const-string v5, "cannelloni_cmd"

    const-string v6, "Edit Cannelloni Command"

    invoke-direct {p0, v6, v4, v5, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v4, 0x1

    return v4
.end method

.method synthetic lambda$onCreateView$24$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "v"    # Landroid/view/View;

    .line 1405
    nop

    .line 1407
    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1405
    :goto_0
    const-string v2, "input_file"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, "inputfile":Ljava/lang/String;
    nop

    .line 1412
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1410
    :cond_1
    const-string v2, "output_file"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    .local v0, "outputfile":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1416
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1417
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asc2log -I "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -O "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1420
    :cond_3
    const-string v2, "Please ensure your Input and Output File fields are set!"

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1422
    :goto_1
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1423
    return-void
.end method

.method synthetic lambda$onCreateView$25$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "v"    # Landroid/view/View;

    .line 1425
    nop

    .line 1427
    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1425
    :goto_0
    const-string v2, "input_file"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    .local v1, "inputfile":Ljava/lang/String;
    nop

    .line 1432
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    :cond_1
    const-string v2, "output_file"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, "outputfile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asc2log -I "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -O "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1436
    .local v2, "defaultCmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    const-string v4, "asc2log_cmd"

    const-string v5, "Edit Asc2Log Command"

    invoke-direct {p0, v5, v3, v4, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$26$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "v"    # Landroid/view/View;

    .line 1443
    nop

    .line 1445
    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1443
    :goto_0
    const-string v2, "input_file"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1448
    .local v1, "inputfile":Ljava/lang/String;
    nop

    .line 1450
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    :cond_1
    const-string v2, "output_file"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "outputfile":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1454
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1455
    :cond_2
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v3, "Interfaces"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log2asc -I "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -O "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1458
    :cond_3
    const-string v2, "Please ensure your CAN Interface, Input and Output File fields are set!"

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1460
    :goto_1
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1461
    return-void
.end method

.method synthetic lambda$onCreateView$27$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "v"    # Landroid/view/View;

    .line 1463
    nop

    .line 1465
    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1463
    :goto_0
    const-string v2, "input_file"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1468
    .local v1, "inputfile":Ljava/lang/String;
    nop

    .line 1470
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1468
    :cond_1
    const-string v2, "output_file"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "outputfile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log2asc -I "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -O "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1474
    .local v2, "defaultCmd":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    const-string v4, "log2asc_cmd"

    const-string v5, "Edit Log2asc Command"

    invoke-direct {p0, v5, v3, v4, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const/4 v3, 0x1

    return v3
.end method

.method synthetic lambda$onCreateView$28$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2
    .param p1, "CustomCmd"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1482
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1484
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1485
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1487
    :cond_0
    const-string v1, "Please ensure your Custom Command field is set!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1490
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1491
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "switchLoopback"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1130
    xor-int/lit8 v0, p3, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    .line 1132
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060016

    goto :goto_0

    :cond_0
    const v0, 0x1060014

    .line 1133
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1134
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1141
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 1142
    .local v0, "dialog":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 1143
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1150
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 1151
    .local v0, "dialog":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 1152
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "v"    # Landroid/view/View;

    .line 1159
    const-string v0, "verbose_enabled"

    iget-boolean v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, " -v"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1160
    .local v0, "verboseEnabled":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "disable_loopback"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, " -x"

    .line 1162
    .local v1, "disableLoopbackEnabled":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1163
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1164
    :cond_2
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v3, "None"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cangen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1167
    :cond_3
    const-string v2, "Please ensure your CAN Interface field is set!"

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1170
    :goto_1
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1171
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Landroid/view/View;)Z
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "v"    # Landroid/view/View;

    .line 1173
    const-string v0, "verbose_enabled"

    iget-boolean v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, " -v"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1174
    .local v0, "verboseEnabled":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "disable_loopback"

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, " -x"

    .line 1175
    .local v1, "disableLoopbackEnabled":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cangen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1177
    .local v2, "defaultCmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    const-string v5, "canGen_cmd"

    const-string v6, "Edit CanGen Command"

    invoke-direct {p0, v6, v4, v5, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    return v3
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1184
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cansniffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1189
    :cond_1
    const-string v0, "Please ensure your CAN Interface field is set!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1191
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1192
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cansniffer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1195
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    const-string v2, "canSniffer_cmd"

    const-string v3, "Edit CanSniffer Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$showEditCommandDialog$32$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;[Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "cmdHolder"    # [Ljava/lang/String;
    .param p3, "prefKey"    # Ljava/lang/String;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 1581
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1582
    .local v0, "newCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 1584
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1585
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1586
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1587
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1589
    const-string v3, "Command updated!"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1590
    return-void
.end method

.method synthetic lambda$showToolsConfig$31$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroidx/appcompat/widget/SwitchCompat;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "cansendSequence"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "rhost"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p4, "rport"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "lport"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "inputFile"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p7, "outputFile"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p8, "switchInteractive"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p9, "switchVerbose"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p10, "switchLoopback"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p11, "dialog"    # Landroid/content/DialogInterface;
    .param p12, "which"    # I

    .line 1542
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1543
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 1544
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1545
    :cond_0
    move-object v1, v2

    .line 1543
    :goto_0
    const-string v3, "cansend_sequence"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1546
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1547
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1548
    :cond_1
    move-object v1, v2

    .line 1546
    :goto_1
    const-string v3, "cannelloni_rhost"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1549
    invoke-virtual {p4}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1550
    invoke-virtual {p4}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1551
    :cond_2
    move-object v1, v2

    .line 1549
    :goto_2
    const-string v3, "cannelloni_rport"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1552
    invoke-virtual {p5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1553
    invoke-virtual {p5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1554
    :cond_3
    move-object v1, v2

    .line 1552
    :goto_3
    const-string v3, "cannelloni_lport"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1555
    invoke-virtual {p6}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1556
    invoke-virtual {p6}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1557
    :cond_4
    move-object v1, v2

    .line 1555
    :goto_4
    const-string v3, "input_file"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1558
    invoke-virtual {p7}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1559
    invoke-virtual {p7}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 1560
    :cond_5
    nop

    .line 1558
    :goto_5
    const-string v1, "output_file"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1561
    invoke-virtual {p8}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    const-string v2, "interactive_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1562
    invoke-virtual {p9}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    const-string v2, "verbose_enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1563
    invoke-virtual {p10}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "disable_loopback"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1565
    const-string v0, "Settings saved!"

    move-object v1, p0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1566
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1055
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1056
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    .line 1057
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 35
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1061
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const v0, 0x7f0d002f

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1062
    .local v9, "rootView":Landroid/view/View;
    const v0, 0x7f0d0030

    invoke-virtual {v7, v0, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 1064
    .local v10, "dialogView":Landroid/view/View;
    const v0, 0x7f0a0106

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    .line 1065
    .local v11, "cansend_sequence":Landroid/widget/EditText;
    const v0, 0x7f0a0104

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    .line 1066
    .local v12, "SelectedRHost":Landroid/widget/EditText;
    const v0, 0x7f0a0105

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 1067
    .local v13, "SelectedRPort":Landroid/widget/EditText;
    const v0, 0x7f0a0103

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/EditText;

    .line 1068
    .local v14, "SelectedLPort":Landroid/widget/EditText;
    const v0, 0x7f0a0147

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/EditText;

    .line 1070
    .local v15, "CustomCmd":Landroid/widget/EditText;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1071
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    .line 1074
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    const-string v2, "canGen_cmd"

    const-string v3, ""

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1075
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    const-string v2, "canSniffer_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1076
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    const-string v2, "canDump_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1077
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    const-string v2, "canSend_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1078
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    const-string v2, "canPlayer_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1079
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    const-string v2, "sequenceFinder_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1080
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    const-string v2, "freediag_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1081
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    const-string v2, "diagTest_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1082
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    const-string v2, "cannelloni_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1083
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    const-string v2, "asc2log_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1084
    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    const-string v2, "log2asc_cmd"

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1088
    const v0, 0x7f0a0167

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/widget/Spinner;

    .line 1089
    .local v25, "spinner":Landroid/widget/Spinner;
    const v0, 0x7f0a0410

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/widget/ImageButton;

    .line 1091
    .local v26, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 1092
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v16

    iget-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1097
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$400()Landroid/content/SharedPreferences;

    move-result-object v21

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    .line 1091
    const-string v22, "selected_usb"

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v24, v2

    invoke-static/range {v16 .. v24}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 1104
    const v0, 0x7f0a00db

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    .line 1105
    .local v4, "switchInteractive":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1107
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1115
    const v0, 0x7f0a00e6

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 1116
    .local v3, "switchVerbose":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1118
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v0, v6, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1126
    const v0, 0x7f0a00dd

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    .line 1127
    .local v2, "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v0, v6, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1129
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, v6, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1137
    const v0, 0x7f0a02e4

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    .line 1138
    .local v1, "inputfilebrowse":Landroid/widget/ImageButton;
    const v0, 0x7f0a02e5

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1140
    .local v0, "inputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    move-object/from16 v16, v2

    .end local v2    # "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    .local v16, "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v6, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    const v2, 0x7f0a03c8

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1147
    .local v2, "outputfilebrowse":Landroid/widget/ImageButton;
    move-object/from16 v17, v1

    .end local v1    # "inputfilebrowse":Landroid/widget/ImageButton;
    .local v17, "inputfilebrowse":Landroid/widget/ImageButton;
    const v1, 0x7f0a03c9

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1149
    .local v1, "outputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    move-object/from16 v18, v3

    .end local v3    # "switchVerbose":Landroidx/appcompat/widget/SwitchCompat;
    .local v18, "switchVerbose":Landroidx/appcompat/widget/SwitchCompat;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v3, v6, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1157
    const v3, 0x7f0a04ae

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1158
    .local v3, "CanGenButton":Landroid/widget/Button;
    move-object/from16 v19, v2

    .end local v2    # "outputfilebrowse":Landroid/widget/ImageButton;
    .local v19, "outputfilebrowse":Landroid/widget/ImageButton;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v2, v6, v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, v6, v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1182
    const v2, 0x7f0a04b3

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1183
    .local v2, "CanSnifferButton":Landroid/widget/Button;
    move-object/from16 v20, v3

    .end local v3    # "CanGenButton":Landroid/widget/Button;
    .local v20, "CanGenButton":Landroid/widget/Button;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v3, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v3, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1200
    const v3, 0x7f0a04ad

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1201
    .local v3, "CanDumpButton":Landroid/widget/Button;
    move-object/from16 v21, v2

    .end local v2    # "CanSnifferButton":Landroid/widget/Button;
    .local v21, "CanSnifferButton":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2, v6, v5, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda28;

    invoke-direct {v2, v6, v5, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda28;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1229
    const v2, 0x7f0a04b2

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1230
    .local v2, "CanSendButton":Landroid/widget/Button;
    move-object/from16 v22, v1

    .end local v1    # "outputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    .local v22, "outputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda29;

    invoke-direct {v1, v6, v5, v11}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda29;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1243
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda30;

    invoke-direct {v1, v6, v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda30;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1252
    const v1, 0x7f0a04b1

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1253
    .local v1, "CanPlayerButton":Landroid/widget/Button;
    move-object/from16 v23, v2

    .end local v2    # "CanSendButton":Landroid/widget/Button;
    .local v23, "CanSendButton":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda31;

    invoke-direct {v2, v6, v5, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda31;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda32;

    invoke-direct {v2, v6, v5, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1288
    const v2, 0x7f0a04c5

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1289
    .local v2, "SequenceFinderButton":Landroid/widget/Button;
    move-object/from16 v24, v1

    .end local v1    # "CanPlayerButton":Landroid/widget/Button;
    .local v24, "CanPlayerButton":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda33;

    invoke-direct {v1, v6, v5, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda33;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda34;

    invoke-direct {v1, v6, v5, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda34;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1317
    const v1, 0x7f0a04b9

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1318
    .local v1, "FreediagButton":Landroid/widget/Button;
    move-object/from16 v27, v0

    .end local v0    # "inputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    .local v27, "inputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1326
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1333
    const v0, 0x7f0a04b8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1334
    .local v0, "diagTestButton":Landroid/widget/Button;
    move-object/from16 v28, v1

    .end local v1    # "FreediagButton":Landroid/widget/Button;
    .local v28, "FreediagButton":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1342
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1349
    const v1, 0x7f0a04b0

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1350
    .local v1, "CannelloniButton":Landroid/widget/Button;
    new-instance v7, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda5;

    move-object/from16 v8, v27

    move-object/from16 v27, v0

    .end local v0    # "diagTestButton":Landroid/widget/Button;
    .local v8, "inputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    .local v27, "diagTestButton":Landroid/widget/Button;
    move-object v0, v7

    move-object/from16 v29, v11

    move-object v11, v1

    move-object/from16 v34, v22

    move-object/from16 v22, v10

    move-object/from16 v10, v34

    .end local v1    # "CannelloniButton":Landroid/widget/Button;
    .local v10, "outputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    .local v11, "CannelloniButton":Landroid/widget/Button;
    .local v22, "dialogView":Landroid/view/View;
    .local v29, "cansend_sequence":Landroid/widget/EditText;
    move-object/from16 v1, p0

    move-object/from16 v30, v2

    .end local v2    # "SequenceFinderButton":Landroid/widget/Button;
    .local v30, "SequenceFinderButton":Landroid/widget/Button;
    move-object v2, v5

    move-object/from16 v31, v3

    .end local v3    # "CanDumpButton":Landroid/widget/Button;
    .local v31, "CanDumpButton":Landroid/widget/Button;
    move-object v3, v12

    move-object/from16 v32, v4

    .end local v4    # "switchInteractive":Landroidx/appcompat/widget/SwitchCompat;
    .local v32, "switchInteractive":Landroidx/appcompat/widget/SwitchCompat;
    move-object v4, v13

    move-object/from16 v33, v5

    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .local v33, "prefs":Landroid/content/SharedPreferences;
    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1392
    new-instance v7, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object/from16 v2, v33

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v11, v7}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1403
    const v0, 0x7f0a04a9

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1404
    .local v0, "Asc2LogButton":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda7;

    .end local v33    # "prefs":Landroid/content/SharedPreferences;
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {v1, v6, v2, v8, v10}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, v6, v2, v8, v10}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1441
    const v1, 0x7f0a04bd

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1442
    .local v1, "Log2AscButton":Landroid/widget/Button;
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, v6, v2, v8, v10}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1462
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, v6, v2, v8, v10}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1479
    const v3, 0x7f0a04b6

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1481
    .local v3, "CustomCmdButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v4, v6, v15}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1493
    return-object v9
.end method
