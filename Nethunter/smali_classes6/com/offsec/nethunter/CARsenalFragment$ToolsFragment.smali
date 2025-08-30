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

    .line 1098
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 1099
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1100
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    .line 1103
    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    .line 1104
    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    .line 1106
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    .line 1107
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    .line 1108
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    .line 1109
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    .line 1110
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    .line 1111
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    .line 1112
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    .line 1113
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    .line 1114
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    .line 1115
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    .line 1116
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .locals 2
    .param p0, "configurationLayout"    # Landroid/widget/LinearLayout;
    .param p1, "btnConfigurationToggle"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1156
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1158
    const v0, 0x7f1300d1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1160
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1161
    const v0, 0x7f1300cd

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 1163
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$2(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .locals 2
    .param p0, "advancedOptionsLayout"    # Landroid/widget/LinearLayout;
    .param p1, "btnToggle"    # Landroid/widget/Button;
    .param p2, "v"    # Landroid/view/View;

    .line 1186
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1187
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1188
    const v0, 0x7f1300d0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1190
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1191
    const v0, 0x7f1300c9

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 1193
    :goto_0
    return-void
.end method

.method static synthetic lambda$showEditCommandDialog$32(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 1534
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$showEditCommandDialog$33(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 1538
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1539
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 1540
    return-void
.end method

.method private showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "cmdHolder"    # [Ljava/lang/String;
    .param p3, "prefKey"    # Ljava/lang/String;
    .param p4, "defaultCmd"    # Ljava/lang/String;

    .line 1514
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1515
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1517
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1518
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

    .line 1519
    .local v2, "textToShow":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1520
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1522
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, v1, p2, p3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Save"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1534
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda25;

    invoke-direct {v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda25;-><init>()V

    const-string v4, "Cancel"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1536
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1537
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda26;

    invoke-direct {v4, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda26;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1541
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1542
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 1178
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1274
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1276
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

    .line 1277
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

    .line 1279
    :cond_1
    const-string v0, "Please ensure your CAN Interface field is set!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1281
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1282
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1284
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

    .line 1285
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    const-string v2, "canSniffer_cmd"

    const-string v3, "Edit CanSniffer Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1292
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "outputfile":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1296
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "Interface (None)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1297
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

    goto :goto_0

    .line 1299
    :cond_1
    const-string v1, "Please ensure your CAN Interface and Output File fields is set!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1302
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1303
    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 4
    .param p1, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "candump "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    const-string v2, "canDump_cmd"

    const-string v3, "Edit CanDump Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3
    .param p1, "cansend_sequence"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1313
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "sequence":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1316
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1317
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v2, "Interfaces"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1318
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

    .line 1320
    :cond_1
    const-string v1, "Please ensure your CAN Interface and Sequence fields is set!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1323
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1324
    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)Z
    .locals 4
    .param p1, "cansend_sequence"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cansend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    const-string v2, "canSend_cmd"

    const-string v3, "Edit CanSend Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 6
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1334
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, " -i"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1335
    .local v0, "interactiveEnabled":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    if-eqz v2, :cond_1

    const-string v2, " -v"

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1336
    .local v2, "verboseEnabled":Ljava/lang/String;
    :goto_1
    iget-boolean v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz v3, :cond_2

    const-string v1, " -x"

    .line 1337
    .local v1, "disableLoopbackEnabled":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1339
    .local v3, "inputfile":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1340
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1341
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canplayer -I "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 1344
    :cond_4
    const-string v4, "Please ensure your Input File field is set!"

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1347
    :goto_2
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1348
    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 4
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canplayer -I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, " -i"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    if-eqz v1, :cond_1

    const-string v1, " -v"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz v1, :cond_2

    const-string v2, " -x"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    const-string v2, "canPlayer_cmd"

    const-string v3, "Edit CanPlayer Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$18$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1358
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1360
    .local v0, "inputfile":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1362
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1363
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

    goto :goto_0

    .line 1365
    :cond_1
    const-string v1, "Please ensure your Input File field is set!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1368
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1369
    return-void
.end method

.method synthetic lambda$onCreateView$19$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 4
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/opt/car_hacking/sequence_finder.sh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    const-string v2, "sequenceFinder_cmd"

    const-string v3, "Edit SequenceFinder Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1379
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1382
    :cond_0
    const-string v0, "sudo -u kali freediag"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1385
    return-void
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1387
    const-string v0, "sudo -u kali freediag"

    .line 1388
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    const-string v2, "freediag_cmd"

    const-string v3, "Edit Freediag Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$22$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1395
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1398
    :cond_0
    const-string v0, "sudo -u kali diag_test"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 1400
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1401
    return-void
.end method

.method synthetic lambda$onCreateView$23$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1403
    const-string v0, "sudo -u kali diag_test"

    .line 1404
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    const-string v2, "diagTest_cmd"

    const-string v3, "Edit diag_test Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$24$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 6
    .param p1, "SelectedRHost"    # Landroid/widget/EditText;
    .param p2, "SelectedRPort"    # Landroid/widget/EditText;
    .param p3, "SelectedLPort"    # Landroid/widget/EditText;
    .param p4, "v"    # Landroid/view/View;

    .line 1411
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1414
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1415
    .local v0, "rhost":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1416
    .local v1, "rport":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1418
    .local v2, "lport":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v4, "Interface (None)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 1423
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_2

    .line 1424
    const-string v3, "RHOST must be exactly 15 characters (e.g., 192.168.111.111)"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1425
    return-void

    .line 1428
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    const-string v3, "\\d+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 1433
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 1438
    :cond_4
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

    .line 1440
    .end local v0    # "rhost":Ljava/lang/String;
    .end local v1    # "rport":Ljava/lang/String;
    .end local v2    # "lport":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1441
    return-void

    .line 1434
    .restart local v0    # "rhost":Ljava/lang/String;
    .restart local v1    # "rport":Ljava/lang/String;
    .restart local v2    # "lport":Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v3, "LPORT must be exactly 6 digits"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1435
    return-void

    .line 1429
    :cond_6
    :goto_2
    const-string v3, "RPORT must be exactly 6 digits"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1430
    return-void

    .line 1419
    :cond_7
    :goto_3
    const-string v3, "Please select a CAN Interface!"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1420
    return-void
.end method

.method synthetic lambda$onCreateView$25$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)Z
    .locals 7
    .param p1, "SelectedRHost"    # Landroid/widget/EditText;
    .param p2, "SelectedRPort"    # Landroid/widget/EditText;
    .param p3, "SelectedLPort"    # Landroid/widget/EditText;
    .param p4, "v"    # Landroid/view/View;

    .line 1443
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "rhost":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1445
    .local v1, "rport":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1446
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

    .line 1447
    .local v3, "defaultCmd":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    const-string v5, "cannelloni_cmd"

    const-string v6, "Edit Cannelloni Command"

    invoke-direct {p0, v6, v4, v5, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const/4 v4, 0x1

    return v4
.end method

.method synthetic lambda$onCreateView$26$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 4
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1454
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, "inputfile":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1457
    .local v1, "outputfile":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1458
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1459
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asc2log -I "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -O "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1462
    :cond_1
    const-string v2, "Please ensure your Input and Output File fields is set!"

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1465
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1466
    return-void
.end method

.method synthetic lambda$onCreateView$27$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 4
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asc2log -I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -O "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    const-string v2, "asc2log_cmd"

    const-string v3, "Edit Asc2Log Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$28$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "inputfile"    # Ljava/lang/String;
    .param p2, "outputfile"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/view/View;

    .line 1479
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interface (None)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log2asc -I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -O "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1484
    :cond_1
    const-string v0, "Please ensure your CAN Interface, Input and Output File fields is set!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1487
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1488
    return-void
.end method

.method synthetic lambda$onCreateView$29$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z
    .locals 4
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p3, "v"    # Landroid/view/View;

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "log2asc -I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -O "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1491
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    const-string v2, "log2asc_cmd"

    const-string v3, "Edit Log2asc Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "switchInteractive"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1200
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    .line 1202
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1203
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1204
    return-void
.end method

.method synthetic lambda$onCreateView$30$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 2
    .param p1, "CustomCmd"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1500
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1502
    .local v0, "command":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1503
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1505
    :cond_0
    const-string v1, "Please ensure your Custom Command field is set!"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1508
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1509
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "switchVerbose"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1211
    iput-boolean p3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    .line 1213
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060014

    goto :goto_0

    :cond_0
    const v0, 0x1060016

    .line 1214
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1215
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "switchLoopback"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 1222
    xor-int/lit8 v0, p3, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    .line 1224
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x1060016

    goto :goto_0

    :cond_0
    const v0, 0x1060014

    .line 1225
    .local v0, "color":I
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1226
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "inputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1234
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 1235
    .local v0, "dialog":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 1236
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 3
    .param p1, "outputfilepath"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1243
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 1244
    .local v0, "dialog":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 1245
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1252
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, " -v"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1253
    .local v0, "verboseEnabled":Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz v2, :cond_1

    const-string v1, " -x"

    .line 1255
    .local v1, "disableLoopbackEnabled":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1256
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 1257
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

    .line 1258
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

    .line 1260
    :cond_3
    const-string v2, "Please ensure your CAN Interface field is set!"

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1263
    :goto_1
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1264
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cangen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, " -v"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    if-eqz v1, :cond_1

    const-string v2, " -x"

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, "defaultCmd":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    const-string v2, "canGen_cmd"

    const-string v3, "Edit CanGen Command"

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showEditCommandDialog(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$showEditCommandDialog$31$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;[Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "cmdHolder"    # [Ljava/lang/String;
    .param p3, "prefKey"    # Ljava/lang/String;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 1523
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1524
    .local v0, "newCmd":Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 1526
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1527
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1528
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1529
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1531
    const-string v3, "Command updated!"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->showToast(Ljava/lang/String;)V

    .line 1532
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1121
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1122
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    .line 1123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 36
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1127
    move-object/from16 v0, p0

    const v1, 0x7f0d002f

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1129
    .local v1, "rootView":Landroid/view/View;
    const v5, 0x7f0a00f8

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1130
    .local v5, "cansend_sequence":Landroid/widget/EditText;
    const v6, 0x7f0a00f6

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 1131
    .local v6, "SelectedRHost":Landroid/widget/EditText;
    const v7, 0x7f0a00f7

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 1132
    .local v7, "SelectedRPort":Landroid/widget/EditText;
    const v8, 0x7f0a00f5

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1133
    .local v8, "SelectedLPort":Landroid/widget/EditText;
    const v9, 0x7f0a013a

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 1135
    .local v9, "CustomCmd":Landroid/widget/EditText;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1136
    .local v10, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    iput-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->activity:Landroid/app/Activity;

    .line 1139
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canGenCmd:[Ljava/lang/String;

    const-string v12, "canGen_cmd"

    const-string v13, ""

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1140
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSnifferCmd:[Ljava/lang/String;

    const-string v12, "canSniffer_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1141
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canDumpCmd:[Ljava/lang/String;

    const-string v12, "canDump_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1142
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canSendCmd:[Ljava/lang/String;

    const-string v12, "canSend_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1143
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->canPlayerCmd:[Ljava/lang/String;

    const-string v12, "canPlayer_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1144
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->sequenceFinderCmd:[Ljava/lang/String;

    const-string v12, "sequenceFinder_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1145
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->freediagCmd:[Ljava/lang/String;

    const-string v12, "freediag_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1146
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->diagTestCmd:[Ljava/lang/String;

    const-string v12, "diagTest_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1147
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->cannelloniCmd:[Ljava/lang/String;

    const-string v12, "cannelloni_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1148
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->asc2logCmd:[Ljava/lang/String;

    const-string v12, "asc2log_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1149
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->log2ascCmd:[Ljava/lang/String;

    const-string v12, "log2asc_cmd"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1152
    const v2, 0x7f0a00ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1153
    .local v2, "btnConfigurationToggle":Landroid/widget/Button;
    const v11, 0x7f0a04eb

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1155
    .local v11, "configurationLayout":Landroid/widget/LinearLayout;
    new-instance v12, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v12, v11, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v2, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1166
    const v12, 0x7f0a015a

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 1167
    .local v12, "spinner":Landroid/widget/Spinner;
    const v13, 0x7f0a03e8

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v22, v13

    check-cast v22, Landroid/widget/ImageButton;

    .line 1169
    .local v22, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 1170
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1175
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$300()Landroid/content/SharedPreferences;

    move-result-object v18

    move-object/from16 v23, v2

    .end local v2    # "btnConfigurationToggle":Landroid/widget/Button;
    .local v23, "btnConfigurationToggle":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    .line 1169
    const-string v19, "selected_usb"

    const/16 v20, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v22

    move-object/from16 v21, v2

    invoke-static/range {v13 .. v21}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 1182
    const v2, 0x7f0a00c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1183
    .local v2, "btnToggle":Landroid/widget/Button;
    const v13, 0x7f0a04ea

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1185
    .local v13, "advancedOptionsLayout":Landroid/widget/LinearLayout;
    new-instance v14, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v14, v13, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda14;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    invoke-virtual {v2, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    const v14, 0x7f0a00ce

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/SwitchCompat;

    .line 1197
    .local v14, "switchInteractive":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v15, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isInteractiveEnabled:Z

    invoke-virtual {v14, v15}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1199
    new-instance v15, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v15, v0, v14}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v14, v15}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1207
    const v15, 0x7f0a00de

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/SwitchCompat;

    .line 1208
    .local v15, "switchVerbose":Landroidx/appcompat/widget/SwitchCompat;
    move-object/from16 v16, v2

    .end local v2    # "btnToggle":Landroid/widget/Button;
    .local v16, "btnToggle":Landroid/widget/Button;
    iget-boolean v2, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isVerboseEnabled:Z

    invoke-virtual {v15, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1210
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0, v15}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v15, v2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1218
    const v2, 0x7f0a00d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    .line 1219
    .local v2, "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    iget-boolean v3, v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->isDisableLoopbackEnabled:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1221
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v3, v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1230
    const v3, 0x7f0a02d0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 1231
    .local v3, "inputfilebrowse":Lcom/google/android/material/button/MaterialButton;
    move-object/from16 v17, v2

    .end local v2    # "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    .local v17, "switchLoopback":Landroidx/appcompat/widget/SwitchCompat;
    const v2, 0x7f0a02d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1233
    .local v2, "inputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v4, v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1239
    const v4, 0x7f0a03a1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 1240
    .local v4, "outputfilebrowse":Lcom/google/android/material/button/MaterialButton;
    move-object/from16 v18, v3

    .end local v3    # "inputfilebrowse":Lcom/google/android/material/button/MaterialButton;
    .local v18, "inputfilebrowse":Lcom/google/android/material/button/MaterialButton;
    const v3, 0x7f0a03a2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 1242
    .local v3, "outputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    move-object/from16 v19, v10

    .end local v10    # "prefs":Landroid/content/SharedPreferences;
    .local v19, "prefs":Landroid/content/SharedPreferences;
    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v10, v0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v4, v10}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    const v10, 0x7f0a0477

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1251
    .local v10, "CanGenButton":Landroid/widget/Button;
    move-object/from16 v20, v4

    .end local v4    # "outputfilebrowse":Lcom/google/android/material/button/MaterialButton;
    .local v20, "outputfilebrowse":Lcom/google/android/material/button/MaterialButton;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda21;

    invoke-direct {v4, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda23;

    invoke-direct {v4, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1272
    const v4, 0x7f0a047c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1273
    .local v4, "CanSnifferButton":Landroid/widget/Button;
    move-object/from16 v21, v10

    .end local v10    # "CanGenButton":Landroid/widget/Button;
    .local v21, "CanGenButton":Landroid/widget/Button;
    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v10, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v10, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1290
    const v10, 0x7f0a0476

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1291
    .local v10, "CanDumpButton":Landroid/widget/Button;
    move-object/from16 v24, v4

    .end local v4    # "CanSnifferButton":Landroid/widget/Button;
    .local v24, "CanSnifferButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda27;

    invoke-direct {v4, v0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1304
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda28;

    invoke-direct {v4, v0, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda28;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1311
    const v4, 0x7f0a047b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1312
    .local v4, "CanSendButton":Landroid/widget/Button;
    move-object/from16 v25, v10

    .end local v10    # "CanDumpButton":Landroid/widget/Button;
    .local v25, "CanDumpButton":Landroid/widget/Button;
    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda29;

    invoke-direct {v10, v0, v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda29;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda30;

    invoke-direct {v10, v0, v5}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda30;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1332
    const v10, 0x7f0a047a

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 1333
    .local v10, "CanPlayerButton":Landroid/widget/Button;
    move-object/from16 v26, v4

    .end local v4    # "CanSendButton":Landroid/widget/Button;
    .local v26, "CanSendButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda31;

    invoke-direct {v4, v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda31;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1349
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda32;

    invoke-direct {v4, v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1356
    const v4, 0x7f0a0490

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1357
    .local v4, "SequenceFinderButton":Landroid/widget/Button;
    move-object/from16 v27, v5

    .end local v5    # "cansend_sequence":Landroid/widget/EditText;
    .local v27, "cansend_sequence":Landroid/widget/EditText;
    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda33;

    invoke-direct {v5, v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda33;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1370
    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1377
    const v5, 0x7f0a0483

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1378
    .local v5, "FreediagButton":Landroid/widget/Button;
    move-object/from16 v28, v4

    .end local v4    # "SequenceFinderButton":Landroid/widget/Button;
    .local v28, "SequenceFinderButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1386
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1393
    const v4, 0x7f0a0481

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1394
    .local v4, "diagTestButton":Landroid/widget/Button;
    move-object/from16 v29, v5

    .end local v5    # "FreediagButton":Landroid/widget/Button;
    .local v29, "FreediagButton":Landroid/widget/Button;
    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1402
    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v5, v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1409
    const v5, 0x7f0a0479

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1410
    .local v5, "CannelloniButton":Landroid/widget/Button;
    move-object/from16 v30, v4

    .end local v4    # "diagTestButton":Landroid/widget/Button;
    .local v30, "diagTestButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v6, v7, v8}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0, v6, v7, v8}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1452
    const v4, 0x7f0a0472

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 1453
    .local v4, "Asc2LogButton":Landroid/widget/Button;
    move-object/from16 v31, v5

    .end local v5    # "CannelloniButton":Landroid/widget/Button;
    .local v31, "CannelloniButton":Landroid/widget/Button;
    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v5, v0, v2, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1467
    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v5, v0, v2, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1474
    const v5, 0x7f0a0488

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 1475
    .local v5, "Log2AscButton":Landroid/widget/Button;
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/text/Editable;

    move-object/from16 v33, v4

    .end local v4    # "Asc2LogButton":Landroid/widget/Button;
    .local v33, "Asc2LogButton":Landroid/widget/Button;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1476
    .local v4, "inputfile":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/text/Editable;

    move-object/from16 v34, v6

    .end local v6    # "SelectedRHost":Landroid/widget/EditText;
    .local v34, "SelectedRHost":Landroid/widget/EditText;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1478
    .local v6, "outputfile":Ljava/lang/String;
    move-object/from16 v32, v7

    .end local v7    # "SelectedRPort":Landroid/widget/EditText;
    .local v32, "SelectedRPort":Landroid/widget/EditText;
    new-instance v7, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v7, v0, v4, v6}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1489
    new-instance v7, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v7, v0, v2, v3}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1497
    const v7, 0x7f0a047f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 1499
    .local v7, "CustomCmdButton":Landroid/widget/Button;
    move-object/from16 v35, v2

    .end local v2    # "inputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    .local v35, "inputfilepath":Lcom/google/android/material/textfield/TextInputEditText;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v0, v9}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1511
    return-object v1
.end method
