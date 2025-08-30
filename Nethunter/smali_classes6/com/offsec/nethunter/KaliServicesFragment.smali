.class public Lcom/offsec/nethunter/KaliServicesFragment;
.super Landroidx/fragment/app/Fragment;
.source "KaliServicesFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "KaliServicesFragment"

.field private static targetPositionId:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private addButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/Button;

.field private kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

.field private moveButton:Landroid/widget/Button;

.field private refreshButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/KaliServicesFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/KaliServicesFragment;

    .line 47
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 47
    sput p0, Lcom/offsec/nethunter/KaliServicesFragment;->targetPositionId:I

    return p0
.end method

.method static synthetic lambda$onAddItemSetup$12(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 264
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$14(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 274
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$16(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 284
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$18(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 294
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$20(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 349
    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$1(Landroid/view/Menu;Landroid/view/View;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "v"    # Landroid/view/View;

    .line 126
    const v0, 0x7f0a01f5

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$2(Landroid/view/Menu;)Z
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;

    .line 128
    const v0, 0x7f0a01f5

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$onDeleteItemSetup$24(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 395
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onDeleteItemSetup$25(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 396
    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$29(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 452
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$30(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 453
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 160
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 161
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$7(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 182
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$8(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 183
    return-void
.end method

.method static synthetic lambda$onRefreshItemSetup$11(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 224
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->refreshData()V

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/KaliServicesFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 60
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment;-><init>()V

    .line 61
    .local v0, "fragment":Lcom/offsec/nethunter/KaliServicesFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/KaliServicesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v0
.end method

.method private onAddItemSetup()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->addButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void
.end method

.method private onDeleteItemSetup()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    return-void
.end method

.method private onMoveItemSetup()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->moveButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    return-void
.end method

.method private onRefreshItemSetup()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->refreshButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method


# virtual methods
.method synthetic lambda$onAddItemSetup$13$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 261
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 262
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 263
    const v2, 0x7f130170

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda24;

    invoke-direct {v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda24;-><init>()V

    .line 264
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 265
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 266
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 267
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 268
    return-void
.end method

.method synthetic lambda$onAddItemSetup$15$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 271
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 272
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 273
    const v2, 0x7f130171

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda18;-><init>()V

    .line 274
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 275
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 276
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 277
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 278
    return-void
.end method

.method synthetic lambda$onAddItemSetup$17$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 281
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 282
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 283
    const v2, 0x7f13016e

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda23;-><init>()V

    .line 284
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 285
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 286
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 287
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 288
    return-void
.end method

.method synthetic lambda$onAddItemSetup$19$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 291
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 292
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 293
    const v2, 0x7f13016f

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda16;-><init>()V

    .line 294
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 295
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 296
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 297
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 298
    return-void
.end method

.method synthetic lambda$onAddItemSetup$21$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "titleEditText"    # Landroid/widget/EditText;
    .param p2, "startCmdEditText"    # Landroid/widget/EditText;
    .param p3, "stopCmdEditText"    # Landroid/widget/EditText;
    .param p4, "checkstatusCmdEditText"    # Landroid/widget/EditText;
    .param p5, "runOnChrootStartCheckbox"    # Landroid/widget/CheckBox;
    .param p6, "adAdd"    # Landroidx/appcompat/app/AlertDialog;
    .param p7, "v1"    # Landroid/view/View;

    .line 357
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const v1, 0x7f130130

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/KaliServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 359
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "Start Command cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 361
    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "Stop Command cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_2
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "Check Status Command cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    goto :goto_0

    :cond_4
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    sget v2, Lcom/offsec/nethunter/KaliServicesFragment;->targetPositionId:I

    iget-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 373
    invoke-virtual {p6}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 375
    .end local v0    # "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void
.end method

.method synthetic lambda$onAddItemSetup$22$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 11
    .param p1, "adAdd"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "titleEditText"    # Landroid/widget/EditText;
    .param p3, "startCmdEditText"    # Landroid/widget/EditText;
    .param p4, "stopCmdEditText"    # Landroid/widget/EditText;
    .param p5, "checkstatusCmdEditText"    # Landroid/widget/EditText;
    .param p6, "runOnChrootStartCheckbox"    # Landroid/widget/CheckBox;
    .param p7, "dialog"    # Landroid/content/DialogInterface;

    .line 355
    const/4 v0, -0x1

    move-object v9, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 356
    .local v0, "buttonAdd":Landroid/widget/Button;
    new-instance v10, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda28;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda28;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    return-void
.end method

.method synthetic lambda$onAddItemSetup$23$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 28
    .param p1, "v"    # Landroid/view/View;

    .line 229
    move-object/from16 v8, p0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v9, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 230
    .local v9, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    if-nez v9, :cond_0

    .line 231
    iget-object v0, v8, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "Service list is empty. Please refresh and try again."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v0, v8, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/LayoutInflater;

    .line 235
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d005f

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 236
    .local v11, "promptViewAdd":Landroid/view/View;
    const v0, 0x7f0a01de

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    .line 237
    .local v12, "titleEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01dc

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 238
    .local v13, "startCmdEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01dd

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/EditText;

    .line 239
    .local v14, "stopCmdEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01db

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/EditText;

    .line 240
    .local v15, "checkstatusCmdEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01da

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/CheckBox;

    .line 241
    .local v16, "runOnChrootStartCheckbox":Landroid/widget/CheckBox;
    const v0, 0x7f0a01e1

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 242
    .local v7, "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a01e2

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 243
    .local v6, "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a01e3

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 244
    .local v5, "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a01e4

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 245
    .local v4, "readmeButton4":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a01df

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Spinner;

    .line 246
    .local v3, "insertPositions":Landroid/widget/Spinner;
    const v0, 0x7f0a01e0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    .line 248
    .local v2, "insertTitles":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 249
    .local v1, "serviceNameArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 250
    .local v17, "kaliServicesModel":Lcom/offsec/nethunter/models/KaliServicesModel;
    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v17    # "kaliServicesModel":Lcom/offsec/nethunter/models/KaliServicesModel;
    move-object/from16 v0, v18

    goto :goto_0

    .line 253
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    move-object/from16 v17, v10

    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .local v17, "inflater":Landroid/view/LayoutInflater;
    iget-object v10, v8, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    move-object/from16 v18, v12

    .end local v12    # "titleEditText":Landroid/widget/EditText;
    .local v18, "titleEditText":Landroid/widget/EditText;
    const v12, 0x1090008

    invoke-direct {v0, v10, v12, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v10, v0

    .line 254
    .local v10, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v10, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 256
    const v0, 0x7f130299

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(I)V

    .line 257
    const v0, 0x7f13029a

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(I)V

    .line 258
    const v0, 0x7f130298

    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(I)V

    .line 260
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda30;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda30;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v7, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda31;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda31;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v6, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda32;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v5, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda33;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda33;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v4, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$2;

    invoke-direct {v0, v8, v2, v9, v10}, Lcom/offsec/nethunter/KaliServicesFragment$2;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 348
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v12, v8, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    move-object/from16 v19, v1

    .end local v1    # "serviceNameArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "serviceNameArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v1, 0x7f14012e

    invoke-direct {v0, v12, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v12, v0

    .line 349
    .local v12, "adbAdd":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "OK"

    invoke-virtual {v12, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 350
    invoke-virtual {v12}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 351
    .local v1, "adAdd":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1, v11}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 352
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 354
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda2;

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    .end local v1    # "adAdd":Landroidx/appcompat/app/AlertDialog;
    .local v21, "adAdd":Landroidx/appcompat/app/AlertDialog;
    move-object/from16 v1, p0

    move-object/from16 v22, v2

    .end local v2    # "insertTitles":Landroid/widget/Spinner;
    .local v22, "insertTitles":Landroid/widget/Spinner;
    move-object/from16 v2, v21

    move-object/from16 v23, v3

    .end local v3    # "insertPositions":Landroid/widget/Spinner;
    .local v23, "insertPositions":Landroid/widget/Spinner;
    move-object/from16 v3, v18

    move-object/from16 v24, v4

    .end local v4    # "readmeButton4":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v24, "readmeButton4":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v4, v13

    move-object/from16 v25, v5

    .end local v5    # "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v25, "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v5, v14

    move-object/from16 v26, v6

    .end local v6    # "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v26, "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v6, v15

    move-object/from16 v27, v7

    .end local v7    # "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v27, "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    .end local v21    # "adAdd":Landroidx/appcompat/app/AlertDialog;
    .local v0, "adAdd":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 377
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 378
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$26$com-offsec-nethunter-KaliServicesFragment(Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 6
    .param p1, "recyclerViewDeleteItem"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "adDelete"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "v1"    # Landroid/view/View;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v0, "selectedPosition":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v1, "selectedTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 409
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 410
    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    .line 411
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a01fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 412
    .local v4, "box":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 413
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v4    # "box":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    .end local v2    # "i":I
    .end local v3    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 419
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 420
    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v3, "Nothing to be deleted."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 425
    :goto_1
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$27$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adDelete"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "recyclerViewDeleteItem"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 403
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 404
    .local v0, "buttonDelete":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2, p1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$28$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 383
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 384
    .local v0, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    if-nez v0, :cond_0

    return-void

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 386
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d0061

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 387
    .local v2, "promptViewDelete":Landroid/view/View;
    const v3, 0x7f0a01e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 388
    .local v3, "recyclerViewDeleteItem":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v5, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;

    iget-object v6, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 390
    .local v5, "kaliServicesRecyclerViewAdapterDeleteItems":Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v4, v6

    .line 391
    .local v4, "linearLayoutManagerDelete":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 392
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 394
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v7, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v9, 0x7f14012e

    invoke-direct {v6, v7, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 395
    .local v6, "adbDelete":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v7, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda19;

    invoke-direct {v7}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda19;-><init>()V

    const-string v9, "Cancel"

    invoke-virtual {v6, v9, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 396
    new-instance v7, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda20;

    invoke-direct {v7}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda20;-><init>()V

    const-string v9, "Delete"

    invoke-virtual {v6, v9, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 397
    invoke-virtual {v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v7

    .line 398
    .local v7, "adDelete":Landroidx/appcompat/app/AlertDialog;
    const-string v9, "Select the service you want to remove: "

    invoke-virtual {v7, v9}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {v7, v2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 400
    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 402
    new-instance v8, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda21;

    invoke-direct {v8, p0, v7, v3}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 427
    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 428
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$31$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "titlesBefore"    # Landroid/widget/Spinner;
    .param p2, "titlesAfter"    # Landroid/widget/Spinner;
    .param p3, "actions"    # Landroid/widget/Spinner;
    .param p4, "adMove"    # Landroidx/appcompat/app/AlertDialog;
    .param p5, "v1"    # Landroid/view/View;

    .line 460
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 461
    .local v0, "originalPositionIndex":I
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 462
    .local v1, "targetPositionIndex":I
    if-eq v0, v1, :cond_3

    .line 463
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_3

    .line 464
    :cond_0
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 468
    :cond_2
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->moveData(IILcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 469
    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v3, "Successfully moved item."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 470
    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 465
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v3, "You are moving the item to the same position, nothing to be moved."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 472
    :goto_1
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$32$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "adMove"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "titlesBefore"    # Landroid/widget/Spinner;
    .param p3, "titlesAfter"    # Landroid/widget/Spinner;
    .param p4, "actions"    # Landroid/widget/Spinner;
    .param p5, "dialog"    # Landroid/content/DialogInterface;

    .line 458
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 459
    .local v0, "buttonMove":Landroid/widget/Button;
    new-instance v7, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda12;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$33$com-offsec-nethunter-KaliServicesFragment(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .line 433
    move-object/from16 v6, p0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v7, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 434
    .local v7, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    if-nez v7, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v0, v6, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    .line 436
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d0063

    invoke-virtual {v8, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 437
    .local v9, "promptViewMove":Landroid/view/View;
    const v0, 0x7f0a01fa

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Spinner;

    .line 438
    .local v10, "titlesBefore":Landroid/widget/Spinner;
    const v0, 0x7f0a01f9

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Spinner;

    .line 439
    .local v11, "titlesAfter":Landroid/widget/Spinner;
    const v0, 0x7f0a01f8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 441
    .local v12, "actions":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 442
    .local v13, "serviceNameArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 443
    .local v1, "kaliServicesModel":Lcom/offsec/nethunter/models/KaliServicesModel;
    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    .end local v1    # "kaliServicesModel":Lcom/offsec/nethunter/models/KaliServicesModel;
    goto :goto_0

    .line 446
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, v6, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v14, v0

    .line 447
    .local v14, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v14, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 448
    invoke-virtual {v10, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 449
    invoke-virtual {v11, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 451
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, v6, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v15, v0

    .line 452
    .local v15, "adbMove":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "Cancel"

    invoke-virtual {v15, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 453
    new-instance v0, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "Move"

    invoke-virtual {v15, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 454
    invoke-virtual {v15}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    .line 455
    .local v5, "adMove":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v5, v9}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 456
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 457
    new-instance v4, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v10

    move-object v6, v4

    move-object v4, v11

    move-object/from16 v16, v7

    move-object v7, v5

    .end local v5    # "adMove":Landroidx/appcompat/app/AlertDialog;
    .local v7, "adMove":Landroidx/appcompat/app/AlertDialog;
    .local v16, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v6}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 474
    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 475
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$10$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adRestore"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "storedpathEditText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 186
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 187
    .local v0, "buttonOK":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2, p3}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$5$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 4
    .param p1, "storedpathEditText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "v"    # Landroid/view/View;

    .line 166
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->backupData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 168
    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db is successfully backup to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 171
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Failed to backup the DB."

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 173
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 174
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$6$com-offsec-nethunter-KaliServicesFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adBackup"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "storedpathEditText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 164
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 165
    .local v0, "buttonOK":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p2, p3}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$9$com-offsec-nethunter-KaliServicesFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 4
    .param p1, "storedpathEditText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "v"    # Landroid/view/View;

    .line 188
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->restoreData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 190
    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db is successfully restored to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 193
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Failed to restore the DB."

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 195
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 196
    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-KaliServicesFragment(Ljava/util/List;)V
    .locals 1
    .param p1, "kaliServicesModelList"    # Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/KaliServicesFragment;->setHasOptionsMenu(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 116
    const v0, 0x7f0f0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 117
    const v0, 0x7f0a01d6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 118
    .local v0, "searchItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    .line 120
    .local v1, "searchView":Landroidx/appcompat/widget/SearchView;
    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 121
    .local v2, "iswatch":Z
    if-eqz v2, :cond_0

    .line 122
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 125
    :cond_0
    if-eqz v1, :cond_1

    .line 126
    new-instance v3, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda13;

    invoke-direct {v3, p1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda13;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v3, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, p1}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda14;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 131
    new-instance v3, Lcom/offsec/nethunter/KaliServicesFragment$1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/KaliServicesFragment$1;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 143
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 144
    return-void

    .line 125
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    const v0, 0x7f0d005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 215
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->refreshButton:Landroid/widget/Button;

    .line 217
    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->addButton:Landroid/widget/Button;

    .line 218
    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->deleteButton:Landroid/widget/Button;

    .line 219
    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->moveButton:Landroid/widget/Button;

    .line 220
    iput-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    .line 221
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 148
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 149
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "promptView":Landroid/view/View;
    const v2, 0x7f0a01d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 151
    .local v2, "titleTextView":Landroid/widget/TextView;
    const v3, 0x7f0a01d7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 153
    .local v3, "storedpathEditText":Landroid/widget/EditText;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 154
    .local v4, "id":I
    const v5, 0x7f0a01f4

    const-string v6, "OK"

    const-string v7, "Cancel"

    const v8, 0x7f14012e

    const/4 v9, 0x0

    const-string v10, "{0}/FragmentKaliServices"

    const/4 v11, 0x1

    if-ne v4, v5, :cond_0

    .line 155
    const v5, 0x7f13016d

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 156
    new-array v5, v11, [Ljava/lang/Object;

    sget-object v12, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v12, v5, v9

    invoke-static {v10, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v9, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    invoke-direct {v5, v9, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 158
    .local v5, "adbBackup":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 159
    invoke-virtual {v5, v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 160
    new-instance v8, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 161
    new-instance v7, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 162
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v6

    .line 163
    .local v6, "adBackup":Landroidx/appcompat/app/AlertDialog;
    new-instance v7, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, v6, v3}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 176
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 177
    .end local v5    # "adbBackup":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v6    # "adBackup":Landroidx/appcompat/app/AlertDialog;
    goto :goto_0

    :cond_0
    const v5, 0x7f0a01f6

    if-ne v4, v5, :cond_1

    .line 178
    const v5, 0x7f13016c

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 179
    new-array v5, v11, [Ljava/lang/Object;

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v11, v5, v9

    invoke-static {v10, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v9, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    invoke-direct {v5, v9, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 181
    .local v5, "adbRestore":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 182
    new-instance v8, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 183
    new-instance v7, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v7}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 184
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v6

    .line 185
    .local v6, "adRestore":Landroidx/appcompat/app/AlertDialog;
    new-instance v7, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda8;

    invoke-direct {v7, p0, v6, v3}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 198
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 199
    .end local v5    # "adbRestore":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v6    # "adRestore":Landroidx/appcompat/app/AlertDialog;
    goto :goto_0

    :cond_1
    const v5, 0x7f0a01f3

    if-ne v4, v5, :cond_2

    .line 200
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->resetData(Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 204
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 202
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onStart()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 210
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->refreshData()V

    .line 211
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 83
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;

    .line 84
    .local v0, "kaliServicesViewModel":Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;
    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->init(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v0}, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->getLiveDataKaliServicesModelList()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/KaliServicesFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/KaliServicesFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 87
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/offsec/nethunter/viewmodels/KaliServicesViewModel;->getLiveDataKaliServicesModelList()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    .line 88
    const v1, 0x7f0a01fb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .local v1, "recyclerViewServiceTitle":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->context:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 90
    .local v2, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    iget-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->kaliServicesRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    const v3, 0x7f0a0201

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->refreshButton:Landroid/widget/Button;

    .line 94
    const v3, 0x7f0a01d9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->addButton:Landroid/widget/Button;

    .line 95
    const v3, 0x7f0a01e7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->deleteButton:Landroid/widget/Button;

    .line 96
    const v3, 0x7f0a01f7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/KaliServicesFragment;->moveButton:Landroid/widget/Button;

    .line 97
    const v3, 0x7f0a01e5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 98
    .local v3, "servicesDesc":Landroid/widget/TextView;
    const v4, 0x7f0a01e6

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/HorizontalScrollView;

    .line 100
    .local v4, "servicesButtons":Landroid/widget/HorizontalScrollView;
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->onRefreshItemSetup()V

    .line 101
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->onAddItemSetup()V

    .line 102
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->onDeleteItemSetup()V

    .line 103
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliServicesFragment;->onMoveItemSetup()V

    .line 106
    iget-object v6, p0, Lcom/offsec/nethunter/KaliServicesFragment;->activity:Landroid/app/Activity;

    const-string v7, "com.offsec.nethunter"

    invoke-virtual {v6, v7, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 107
    .local v6, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v7, "running_on_wearos"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 108
    .local v5, "iswatch":Ljava/lang/Boolean;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {v4, v7}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 112
    :cond_0
    return-void
.end method
