.class public Lcom/offsec/nethunter/NetHunterFragment;
.super Landroidx/fragment/app/Fragment;
.source "NetHunterFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static targetPositionId:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private addButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/Button;

.field private moveButton:Landroid/widget/Button;

.field private nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

.field private refreshButton:Landroid/widget/Button;

.field private sharedpreferences:Landroid/content/SharedPreferences;

.field private snowfallButton:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/NetHunterFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/NetHunterFragment;

    .line 51
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 51
    sput p0, Lcom/offsec/nethunter/NetHunterFragment;->targetPositionId:I

    return p0
.end method

.method static synthetic lambda$onAddItemSetup$12(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 294
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$14(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 304
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$16(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 314
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$18(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 371
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onAddItemSetup$19(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 372
    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$1(Landroid/view/Menu;Landroid/view/View;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "v"    # Landroid/view/View;

    .line 142
    const v0, 0x7f0a0232

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$2(Landroid/view/Menu;)Z
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;

    .line 144
    const v0, 0x7f0a0232

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$onDeleteItemSetup$23(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 414
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onDeleteItemSetup$24(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 415
    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$28(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 466
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$29(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 469
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 180
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 181
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$7(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 202
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$8(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 203
    return-void
.end method

.method static synthetic lambda$onRefreshItemSetup$11(Landroid/view/View;)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 244
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->refreshData()V

    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/NetHunterFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 65
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment;-><init>()V

    .line 66
    .local v0, "fragment":Lcom/offsec/nethunter/NetHunterFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/NetHunterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method

.method private onAddItemSetup()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->addButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    return-void
.end method

.method private onDeleteItemSetup()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    return-void
.end method

.method private onMoveItemSetup()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->moveButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    return-void
.end method

.method private onRefreshItemSetup()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->refreshButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method

.method private trigger_snowfall()V
    .locals 6

    .line 248
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 249
    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 251
    .local v0, "iswatch":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "snowfall_enabled"

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, "snowfall":Ljava/lang/Boolean;
    goto :goto_0

    .line 254
    .end local v1    # "snowfall":Ljava/lang/Boolean;
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 256
    .restart local v1    # "snowfall":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    const v4, 0x7f080130

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 259
    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Snowfall disabled. Restart app to take effect."

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 261
    :cond_1
    iget-object v5, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    const v4, 0x7f08012f

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 263
    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Snowfall enabled. Restart app to take effect."

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 265
    :goto_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onAddItemSetup$13$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 291
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 292
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    .line 293
    const v3, 0x7f130241

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda13;-><init>()V

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

.method synthetic lambda$onAddItemSetup$15$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 301
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 302
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    .line 303
    const v3, 0x7f130242

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda6;-><init>()V

    .line 304
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 305
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 306
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 307
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 308
    return-void
.end method

.method synthetic lambda$onAddItemSetup$17$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 311
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 312
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    .line 313
    const v3, 0x7f130243

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda12;-><init>()V

    .line 314
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 315
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 316
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 317
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 318
    return-void
.end method

.method synthetic lambda$onAddItemSetup$20$com-offsec-nethunter-NetHunterFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "titleEditText"    # Landroid/widget/EditText;
    .param p2, "cmdEditText"    # Landroid/widget/EditText;
    .param p3, "delimiterEditText"    # Landroid/widget/EditText;
    .param p4, "runOnCreateCheckbox"    # Landroid/widget/CheckBox;
    .param p5, "ad"    # Landroidx/appcompat/app/AlertDialog;
    .param p6, "v1"    # Landroid/view/View;

    .line 379
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v1, "Title cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v1, "Command cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 383
    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v1, "Delimiter cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 386
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    goto :goto_0

    :cond_3
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    sget v2, Lcom/offsec/nethunter/NetHunterFragment;->targetPositionId:I

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 392
    invoke-virtual {p5}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 394
    .end local v0    # "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void
.end method

.method synthetic lambda$onAddItemSetup$21$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 9
    .param p1, "ad"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "titleEditText"    # Landroid/widget/EditText;
    .param p3, "cmdEditText"    # Landroid/widget/EditText;
    .param p4, "delimiterEditText"    # Landroid/widget/EditText;
    .param p5, "runOnCreateCheckbox"    # Landroid/widget/CheckBox;
    .param p6, "dialog"    # Landroid/content/DialogInterface;

    .line 377
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 378
    .local v0, "buttonAdd":Landroid/widget/Button;
    new-instance v8, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    return-void
.end method

.method synthetic lambda$onAddItemSetup$22$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 25
    .param p1, "v"    # Landroid/view/View;

    .line 269
    move-object/from16 v7, p0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v8, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    .line 270
    .local v8, "nethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    if-nez v8, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, v7, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/LayoutInflater;

    .line 272
    .local v9, "mInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d00a6

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 273
    .local v10, "promptView":Landroid/view/View;
    const v0, 0x7f0a021a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/EditText;

    .line 274
    .local v11, "titleEditText":Landroid/widget/EditText;
    const v0, 0x7f0a0218

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    .line 275
    .local v12, "cmdEditText":Landroid/widget/EditText;
    const v0, 0x7f0a0219

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 276
    .local v13, "delimiterEditText":Landroid/widget/EditText;
    const v0, 0x7f0a023c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/CheckBox;

    .line 277
    .local v14, "runOnCreateCheckbox":Landroid/widget/CheckBox;
    const v0, 0x7f0a021b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Spinner;

    .line 278
    .local v15, "insertPositions":Landroid/widget/Spinner;
    const v0, 0x7f0a021c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    .line 279
    .local v6, "insertTitles":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 280
    .local v5, "titleArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/NethunterModel;

    .line 281
    .local v1, "nethunterModel":Lcom/offsec/nethunter/models/NethunterModel;
    invoke-virtual {v1}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v1    # "nethunterModel":Lcom/offsec/nethunter/models/NethunterModel;
    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, v7, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v4, v0

    .line 284
    .local v4, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 286
    const v0, 0x7f0a021d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 287
    .local v3, "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a021e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 288
    .local v2, "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a021f

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 290
    .local v1, "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda19;

    invoke-direct {v0, v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda20;

    invoke-direct {v0, v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda21;

    invoke-direct {v0, v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    const-string v0, "\\n"

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 323
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$2;

    invoke-direct {v0, v7, v6, v8, v4}, Lcom/offsec/nethunter/NetHunterFragment$2;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v15, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 370
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object/from16 v17, v1

    .end local v1    # "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v17, "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    iget-object v1, v7, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    move-object/from16 v18, v2

    .end local v2    # "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v18, "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v2, v0

    .line 371
    .local v2, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "Cancel"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 372
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "OK"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 373
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 374
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1, v10}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 375
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 376
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda25;

    move-object/from16 v16, v0

    move-object/from16 v19, v1

    .end local v1    # "ad":Landroidx/appcompat/app/AlertDialog;
    .local v19, "ad":Landroidx/appcompat/app/AlertDialog;
    move-object/from16 v1, p0

    move-object/from16 v20, v2

    .end local v2    # "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .local v20, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    move-object/from16 v2, v19

    move-object/from16 v21, v3

    .end local v3    # "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v21, "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v3, v11

    move-object/from16 v22, v4

    .end local v4    # "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v22, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v4, v12

    move-object/from16 v23, v5

    .end local v5    # "titleArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v23, "titleArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v13

    move-object/from16 v24, v6

    .end local v6    # "insertTitles":Landroid/widget/Spinner;
    .local v24, "insertTitles":Landroid/widget/Spinner;
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    move-object/from16 v1, v16

    move-object/from16 v0, v19

    .end local v19    # "ad":Landroidx/appcompat/app/AlertDialog;
    .local v0, "ad":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 396
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 397
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$25$com-offsec-nethunter-NetHunterFragment(Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 6
    .param p1, "recyclerViewDeleteItem"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "adDelete"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "v1"    # Landroid/view/View;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v0, "selectedPosition":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v1, "selectedTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 426
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 427
    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    .line 428
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a0239

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 429
    .local v4, "box":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 430
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    .end local v4    # "box":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "i":I
    .end local v3    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 436
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 437
    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

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

    .line 438
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 439
    :cond_2
    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v3, "Nothing to be deleted."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    :goto_1
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$26$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adDelete"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "recyclerViewDeleteItem"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 420
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 421
    .local v0, "buttonDelete":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p2, p1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$27$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 402
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    .line 403
    .local v0, "nethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 405
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d00a8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 406
    .local v2, "promptViewDelete":Landroid/view/View;
    const v3, 0x7f0a0224

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 407
    .local v3, "recyclerViewDeleteItem":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v5, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems;

    iget-object v6, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 408
    .local v5, "nethunterRecyclerViewAdapterDeleteItems":Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems;
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v4, v6

    .line 409
    .local v4, "linearLayoutManagerDelete":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 410
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 412
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v7, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v8, 0x7f14012e

    invoke-direct {v6, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 413
    .local v6, "adbDelete":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v6, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 414
    new-instance v7, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda8;

    invoke-direct {v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda8;-><init>()V

    const-string v8, "Cancel"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 415
    new-instance v7, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda9;

    invoke-direct {v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda9;-><init>()V

    const-string v8, "Delete"

    invoke-virtual {v6, v8, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 417
    invoke-virtual {v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v7

    .line 418
    .local v7, "adDelete":Landroidx/appcompat/app/AlertDialog;
    const-string v8, "Select the item you want to remove: "

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 419
    new-instance v8, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, v7, v3}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 442
    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 443
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$30$com-offsec-nethunter-NetHunterFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "titlesBefore"    # Landroid/widget/Spinner;
    .param p2, "titlesAfter"    # Landroid/widget/Spinner;
    .param p3, "actions"    # Landroid/widget/Spinner;
    .param p4, "adMove"    # Landroidx/appcompat/app/AlertDialog;
    .param p5, "v1"    # Landroid/view/View;

    .line 474
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 475
    .local v0, "originalPositionIndex":I
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 476
    .local v1, "targetPositionIndex":I
    if-eq v0, v1, :cond_3

    .line 477
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_3

    .line 478
    :cond_0
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 482
    :cond_2
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->moveData(IILcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 483
    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v3, "Successfully moved item."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 479
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v3, "You are moving the item to the same position, nothing to be moved."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 486
    :goto_1
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$31$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "adMove"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "titlesBefore"    # Landroid/widget/Spinner;
    .param p3, "titlesAfter"    # Landroid/widget/Spinner;
    .param p4, "actions"    # Landroid/widget/Spinner;
    .param p5, "dialog"    # Landroid/content/DialogInterface;

    .line 472
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 473
    .local v0, "buttonMove":Landroid/widget/Button;
    new-instance v7, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda11;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$32$com-offsec-nethunter-NetHunterFragment(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .line 448
    move-object/from16 v6, p0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v7, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    .line 449
    .local v7, "nethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    if-nez v7, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object v0, v6, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    .line 451
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d00aa

    invoke-virtual {v8, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 452
    .local v9, "promptViewMove":Landroid/view/View;
    const v0, 0x7f0a0237

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Spinner;

    .line 453
    .local v10, "titlesBefore":Landroid/widget/Spinner;
    const v0, 0x7f0a0236

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Spinner;

    .line 454
    .local v11, "titlesAfter":Landroid/widget/Spinner;
    const v0, 0x7f0a0235

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 455
    .local v12, "actions":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 456
    .local v13, "titleArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/NethunterModel;

    .line 457
    .local v1, "nethunterModel":Lcom/offsec/nethunter/models/NethunterModel;
    invoke-virtual {v1}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v1    # "nethunterModel":Lcom/offsec/nethunter/models/NethunterModel;
    goto :goto_0

    .line 459
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, v6, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v14, v0

    .line 460
    .local v14, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v14, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 461
    invoke-virtual {v10, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 462
    invoke-virtual {v11, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 464
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, v6, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v15, v0

    .line 465
    .local v15, "adbMove":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v15, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 466
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "Cancel"

    invoke-virtual {v15, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 467
    new-instance v0, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "Move"

    invoke-virtual {v15, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 470
    invoke-virtual {v15}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    .line 471
    .local v5, "adMove":Landroidx/appcompat/app/AlertDialog;
    new-instance v4, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda3;

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
    .local v16, "nethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v6}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 488
    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 489
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$10$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adRestore"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "storedpathEditText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 206
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 207
    .local v0, "buttonOK":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p3}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$5$com-offsec-nethunter-NetHunterFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 4
    .param p1, "storedpathEditText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "v"    # Landroid/view/View;

    .line 186
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->backupData(Lcom/offsec/nethunter/SQL/NethunterSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

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

    .line 190
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 191
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

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

    .line 193
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 194
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$6$com-offsec-nethunter-NetHunterFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adBackup"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "storedpathEditText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 184
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 185
    .local v0, "buttonOK":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p3}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$9$com-offsec-nethunter-NetHunterFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 4
    .param p1, "storedpathEditText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "v"    # Landroid/view/View;

    .line 208
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->restoreData(Lcom/offsec/nethunter/SQL/NethunterSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

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

    .line 212
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 213
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

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

    .line 215
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-NetHunterFragment(Ljava/util/List;)V
    .locals 1
    .param p1, "nethunterModelList"    # Ljava/util/List;

    .line 93
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0}, Lcom/offsec/nethunter/Executor/NethunterExecutor;->checkVulkanSupportOnStart(Lcom/offsec/nethunter/NetHunterFragment;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/NetHunterFragment;->setHasOptionsMenu(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 125
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 126
    const v0, 0x7f0f000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 127
    const v0, 0x7f0a0213

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 129
    .local v0, "searchItem":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 132
    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 134
    .local v1, "iswatch":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "snowfall_enabled"

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 136
    .local v2, "snowfall":Ljava/lang/Boolean;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 138
    .end local v2    # "snowfall":Ljava/lang/Boolean;
    :cond_0
    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x1

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 140
    .restart local v2    # "snowfall":Ljava/lang/Boolean;
    :goto_0
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SearchView;

    .line 141
    .local v3, "searchView":Landroidx/appcompat/widget/SearchView;
    if-eqz v3, :cond_2

    .line 142
    new-instance v4, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda31;

    invoke-direct {v4, p1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda31;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v4, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda32;

    invoke-direct {v4, p1}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda32;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 149
    const v4, 0x7f0a0214

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    .line 150
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    const v5, 0x7f08012f

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/offsec/nethunter/NetHunterFragment;->snowfallButton:Landroid/view/MenuItem;

    const v5, 0x7f080130

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    :goto_1
    new-instance v4, Lcom/offsec/nethunter/NetHunterFragment$1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/NetHunterFragment$1;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 165
    return-void

    .line 141
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    const v0, 0x7f0d00a5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 235
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->refreshButton:Landroid/widget/Button;

    .line 237
    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->addButton:Landroid/widget/Button;

    .line 238
    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->deleteButton:Landroid/widget/Button;

    .line 239
    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->moveButton:Landroid/widget/Button;

    .line 240
    iput-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    .line 241
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 169
    iget-object v0, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 170
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d00a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, "promptView":Landroid/view/View;
    const v2, 0x7f0a0216

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    .local v2, "titleTextView":Landroid/widget/TextView;
    const v3, 0x7f0a0215

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 174
    .local v3, "storedpathEditText":Landroid/widget/EditText;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 175
    .local v4, "id":I
    const v5, 0x7f0a0231

    const-string v6, "OK"

    const-string v7, "Cancel"

    const v8, 0x7f14012e

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "%s/FragmentNethunter"

    if-ne v4, v5, :cond_0

    .line 176
    const v5, 0x7f13023f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 177
    new-array v5, v10, [Ljava/lang/Object;

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v10, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v9, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    invoke-direct {v5, v9, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v5, "adbBackup":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 180
    new-instance v8, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda22;

    invoke-direct {v8}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 181
    new-instance v7, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda26;

    invoke-direct {v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda26;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 182
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v6

    .line 183
    .local v6, "adBackup":Landroidx/appcompat/app/AlertDialog;
    new-instance v7, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda27;

    invoke-direct {v7, p0, v6, v3}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 196
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 197
    .end local v5    # "adbBackup":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v6    # "adBackup":Landroidx/appcompat/app/AlertDialog;
    goto :goto_0

    :cond_0
    const v5, 0x7f0a0233

    if-ne v4, v5, :cond_1

    .line 198
    const v5, 0x7f13023d

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 199
    new-array v5, v10, [Ljava/lang/Object;

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v10, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v9, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    invoke-direct {v5, v9, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 201
    .local v5, "adbRestore":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 202
    new-instance v8, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda28;

    invoke-direct {v8}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 203
    new-instance v7, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;

    invoke-direct {v7}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 204
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v6

    .line 205
    .local v6, "adRestore":Landroidx/appcompat/app/AlertDialog;
    new-instance v7, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda30;

    invoke-direct {v7, p0, v6, v3}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda30;-><init>(Lcom/offsec/nethunter/NetHunterFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 218
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 219
    .end local v5    # "adbRestore":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v6    # "adRestore":Landroidx/appcompat/app/AlertDialog;
    goto :goto_0

    :cond_1
    const v5, 0x7f0a0230

    if-ne v4, v5, :cond_2

    .line 220
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->resetData(Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    goto :goto_0

    .line 221
    :cond_2
    const v5, 0x7f0a0214

    if-ne v4, v5, :cond_3

    .line 222
    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->trigger_snowfall()V

    .line 224
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5
.end method

.method public onStart()V
    .locals 1

    .line 229
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 230
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->refreshData()V

    .line 231
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;

    .line 91
    .local v0, "nethunterViewModel":Lcom/offsec/nethunter/viewmodels/NethunterViewModel;
    iget-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->init(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v0}, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->getLiveDataNethunterModelList()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/NetHunterFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/NetHunterFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 95
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/offsec/nethunter/viewmodels/NethunterViewModel;->getLiveDataNethunterModelList()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    .line 96
    const v1, 0x7f0a0238

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    .local v1, "itemRecyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->context:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 98
    .local v2, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    iget-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->nethunterRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    const v3, 0x7f0a023a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->refreshButton:Landroid/widget/Button;

    .line 102
    const v3, 0x7f0a0217

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->addButton:Landroid/widget/Button;

    .line 103
    const v3, 0x7f0a0223

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->deleteButton:Landroid/widget/Button;

    .line 104
    const v3, 0x7f0a0234

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/NetHunterFragment;->moveButton:Landroid/widget/Button;

    .line 106
    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->onRefreshItemSetup()V

    .line 107
    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->onAddItemSetup()V

    .line 108
    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->onDeleteItemSetup()V

    .line 109
    invoke-direct {p0}, Lcom/offsec/nethunter/NetHunterFragment;->onMoveItemSetup()V

    .line 112
    const v3, 0x7f0a0221

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 113
    .local v3, "NHDesc":Landroid/widget/TextView;
    const v4, 0x7f0a022f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 114
    .local v4, "NHButtons":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/offsec/nethunter/NetHunterFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.type.watch"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 115
    .local v6, "iswatch":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/offsec/nethunter/NetHunterFragment;->activity:Landroid/app/Activity;

    const-string v8, "com.offsec.nethunter"

    invoke-virtual {v7, v8, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 116
    iget-object v5, p0, Lcom/offsec/nethunter/NetHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "running_on_wearos"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    :cond_0
    return-void
.end method
