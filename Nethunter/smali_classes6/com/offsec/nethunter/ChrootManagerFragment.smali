.class public Lcom/offsec/nethunter/ChrootManagerFragment;
.super Landroidx/fragment/app/Fragment;
.source "ChrootManagerFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final IMAGE_DIRECTORY:Ljava/lang/String; = "/nethunter-images/current/rootfs/"

.field private static final INVALID_PATH_REGEX:Ljava/lang/String; = "^\\.(.*$)|^\\.\\.(.*$)|^/+(.*$)|^.*/+(.*$)|^$"

.field private static final IS_MOUNTED:I = 0x0

.field private static final IS_UNMOUNTED:I = 0x1

.field private static final MINORFULL:Ljava/lang/String; = ""

.field private static final NEED_TO_INSTALL:I = 0x2

.field public static final PRIMARY_IMAGE_SERVER:Ljava/lang/String; = "image-nethunter.kali.org"

.field public static final SECONDARY_IMAGE_SERVER:Ljava/lang/String; = "kali.download"

.field public static final TAG:Ljava/lang/String; = "ChrootManager"

.field public static isExecutorRunning:Z

.field private static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private ChrootDesc:Landroid/widget/LinearLayout;

.field private activity:Landroid/app/Activity;

.field private addMetaPkgButton:Landroid/widget/Button;

.field private final backPressedintent:Landroid/content/Intent;

.field private backupChrootButton:Landroid/widget/Button;

.field private baseChrootPathTextView:Landroid/widget/TextView;

.field private chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

.field private context:Landroid/content/Context;

.field private installChrootButton:Landroid/widget/Button;

.field private kaliFolderEditButton:Landroid/widget/Button;

.field private kaliFolderTextView:Landroid/widget/TextView;

.field private mountChrootButton:Landroid/widget/Button;

.field private mountStatsTextView:Landroid/widget/TextView;

.field private removeChrootButton:Landroid/widget/Button;

.field private resultViewerLoggerTextView:Landroid/widget/TextView;

.field private unmountChrootButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    nop

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backPressedintent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/ChrootManagerFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/ChrootManagerFragment;
    .param p1, "x1"    # Z

    .line 53
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setAllButtonEnable(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/ChrootManagerFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->restoreChrootImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/ChrootManagerFragment;

    .line 53
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/ChrootManagerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/ChrootManagerFragment;

    .line 53
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->compatCheck()V

    return-void
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/ChrootManagerFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/ChrootManagerFragment;

    .line 53
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/ChrootManagerFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 53
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->broadcastBackPressedIntent(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$600(Lcom/offsec/nethunter/ChrootManagerFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/ChrootManagerFragment;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setButtonVisibility(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/offsec/nethunter/ChrootManagerFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/ChrootManagerFragment;
    .param p1, "x1"    # I

    .line 53
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setMountStatsTextView(I)V

    return-void
.end method

.method private broadcastBackPressedIntent(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isEnabled"    # Ljava/lang/Boolean;

    .line 900
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backPressedintent:Landroid/content/Intent;

    const-string v1, "com.offsec.nethunter.BACKPRESSED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backPressedintent:Landroid/content/Intent;

    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 902
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backPressedintent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 903
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setHasOptionsMenu(Z)V

    .line 904
    return-void
.end method

.method private compatCheck()V
    .locals 6

    .line 799
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 800
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$10;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$10;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 818
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    sget-object v4, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "chroot_path"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 820
    return-void
.end method

.method private createProgressBar()Landroid/widget/ProgressBar;
    .locals 4

    .line 649
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0

    .line 650
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity is null. Cannot create ProgressBar."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createProgressDialog(Ljava/lang/String;Landroid/widget/ProgressBar;)Landroidx/appcompat/app/AlertDialog;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progressBar"    # Landroid/widget/ProgressBar;

    .line 656
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 661
    const-string v1, "Please do NOT kill the app or clear recent apps.."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 662
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 663
    invoke-virtual {v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 659
    return-object v0

    .line 657
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity is null. Cannot create ProgressDialog."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDeviceArch()Ljava/lang/String;
    .locals 3

    .line 639
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v1, "arm64"

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 640
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_0

    .line 641
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 642
    .local v0, "abi":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 643
    :cond_1
    const-string v2, "armeabi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "armhf"

    return-object v1

    .line 645
    :cond_2
    return-object v1
.end method

.method static synthetic lambda$getMaterialAlertDialogBuilder$11(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface12"    # Landroid/content/DialogInterface;
    .param p1, "i12"    # I

    .line 497
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$setInstallChrootButton$7(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "startProcess"    # Ljava/lang/Runnable;
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 441
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$setRemoveChrootButton$13(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface12"    # Landroid/content/DialogInterface;
    .param p1, "i12"    # I

    .line 566
    return-void
.end method

.method static synthetic lambda$setRemoveChrootButton$15(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 569
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/ChrootManagerFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 84
    new-instance v0, Lcom/offsec/nethunter/ChrootManagerFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/ChrootManagerFragment;-><init>()V

    .line 85
    .local v0, "fragment":Lcom/offsec/nethunter/ChrootManagerFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method

.method private restoreChrootImage(Ljava/lang/String;)V
    .locals 5
    .param p1, "imagePath"    # Ljava/lang/String;

    .line 502
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 503
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$5;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$5;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 522
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    .line 527
    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    .line 524
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 668
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 673
    return-void

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity is null. Cannot run on UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setAddMetaPkgButton()V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    return-void
.end method

.method private setAllButtonEnable(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .line 876
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 883
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 886
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 888
    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 889
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 891
    :cond_4
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 892
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 894
    :cond_5
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 895
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 897
    :cond_6
    return-void
.end method

.method private setBackupChrootButton()V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    return-void
.end method

.method private setButtonVisibility(I)V
    .locals 5
    .param p1, "MODE"    # I

    .line 840
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 841
    .local v0, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v1, "running_on_wearos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 843
    .local v1, "iswatch":Ljava/lang/Boolean;
    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 865
    :pswitch_0
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 866
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 867
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 868
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 869
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 870
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 857
    :pswitch_1
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 858
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 859
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 860
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 861
    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 862
    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 863
    goto :goto_1

    .line 845
    :pswitch_2
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 846
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 847
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 848
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 849
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 851
    :cond_0
    iget-object v4, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 853
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 854
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 855
    nop

    .line 873
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEditButton()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    return-void

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity or SharedPreferences is null. Cannot proceed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setInstallChrootButton()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    return-void
.end method

.method private setMountStatsTextView(I)V
    .locals 3
    .param p1, "MODE"    # I

    .line 823
    if-nez p1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 825
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    const v1, 0x7f13028d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 826
    :cond_0
    const/4 v0, 0x1

    const/high16 v1, -0x10000

    if-ne p1, v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 828
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    const v1, 0x7f1302bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 829
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->showBanner()V

    .line 834
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 835
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    const v1, 0x7f13025a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 837
    :cond_2
    :goto_0
    return-void
.end method

.method private setRemoveChrootButton()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    return-void
.end method

.method private setStartKaliButton()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    return-void
.end method

.method private setStopKaliButton()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    return-void
.end method

.method private showBanner()V
    .locals 5

    .line 793
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 795
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 796
    return-void
.end method

.method private startDownloadAndRestoreChroot(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "downloadDir"    # Ljava/io/File;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "arch"    # Ljava/lang/String;

    .line 454
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 455
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/offsec/nethunter/ChrootManagerFragment$4;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 475
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/nethunter-images/current/rootfs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "imagePath":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "image-nethunter.kali.org"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v0, v4, v2

    const/4 v2, 0x3

    aput-object v3, v4, v2

    .line 478
    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during execution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private startDownloadChroot(Ljava/lang/String;Ljava/io/File;)V
    .locals 12
    .param p1, "targetDownloadFileName"    # Ljava/lang/String;
    .param p2, "downloadDir"    # Ljava/io/File;

    .line 575
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 577
    :cond_0
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 578
    .local v0, "progressBar":Landroid/widget/ProgressBar;
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 580
    const-string v2, "Please do NOT kill the app or clear recent apps.."

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 581
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 582
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 583
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 585
    .local v1, "progressDialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v3, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 586
    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v4, Lcom/offsec/nethunter/ChrootManagerFragment$7;

    invoke-direct {v4, p0, v1, v0}, Lcom/offsec/nethunter/ChrootManagerFragment$7;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/ProgressBar;)V

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 626
    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    const-string v3, "image-nethunter.kali.org"

    const-string v4, "kali.download"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, "servers":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 629
    .local v6, "server":Ljava/lang/String;
    iget-object v7, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v8, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/nethunter-images/current/rootfs/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 633
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v2

    const/4 v8, 0x1

    aput-object v6, v11, v8

    const/4 v8, 0x2

    aput-object v9, v11, v8

    const/4 v8, 0x3

    aput-object v10, v11, v8

    .line 629
    invoke-virtual {v7, v11}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 628
    .end local v6    # "server":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 636
    :cond_1
    return-void

    .line 575
    .end local v0    # "progressBar":Landroid/widget/ProgressBar;
    .end local v1    # "progressDialog":Landroidx/appcompat/app/AlertDialog;
    .end local v3    # "servers":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getMaterialAlertDialogBuilder(Ljava/io/File;Ljava/lang/String;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 3
    .param p1, "downloadDir"    # Ljava/io/File;
    .param p2, "targetDownloadFileName"    # Ljava/lang/String;

    .line 491
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 492
    .local v0, "adb3":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists. Do you want to overwrite it?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 493
    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;Ljava/io/File;)V

    const-string v2, "YES"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 497
    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "NO"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 498
    return-object v0
.end method

.method synthetic lambda$getMaterialAlertDialogBuilder$10$com-offsec-nethunter-ChrootManagerFragment(Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "targetDownloadFileName"    # Ljava/lang/String;
    .param p2, "downloadDir"    # Ljava/io/File;
    .param p3, "dialogInterface1"    # Landroid/content/DialogInterface;
    .param p4, "i1"    # I

    .line 494
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const-class v3, Lcom/offsec/nethunter/service/NotificationChannelService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.offsec.nethunter.DOWNLOADING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 495
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/ChrootManagerFragment;->startDownloadChroot(Ljava/lang/String;Ljava/io/File;)V

    .line 496
    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "view1"    # Landroid/view/View;

    .line 175
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->baseChrootPathTextView:Landroid/widget/TextView;

    .line 176
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    .line 177
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 175
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-offsec-nethunter-ChrootManagerFragment(Landroidx/activity/result/ActivityResult;)V
    .locals 16
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 200
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 202
    .local v3, "fileUri":Landroid/net/Uri;
    iget-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    if-eqz v0, :cond_13

    if-eqz v3, :cond_13

    .line 203
    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "restore.tar.xz"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 204
    .local v4, "outFile":Ljava/io/File;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v0, v5, :cond_12

    .line 205
    :try_start_0
    iget-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 206
    .local v5, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v7}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v7, v0

    .line 207
    .local v7, "out":Ljava/io/OutputStream;
    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    move-object v8, v0

    .line 209
    .local v8, "buffer":[B
    const-wide/16 v9, 0x0

    .line 211
    .local v9, "totalBytes":J
    :goto_0
    if-eqz v5, :cond_f

    .line 212
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v11, v0

    .local v11, "bytesRead":I
    if-ne v0, v2, :cond_e

    .line 216
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 217
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-eqz v0, :cond_b

    cmp-long v0, v9, v14

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 221
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v6, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v0

    .line 222
    .local v2, "checkIn":Ljava/io/InputStream;
    const/4 v0, 0x6

    :try_start_3
    new-array v12, v0, [B

    .line 223
    .local v12, "magic":[B
    invoke-virtual {v2, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v15, 0x1

    const/4 v14, 0x3

    if-ne v13, v0, :cond_5

    .line 224
    aget-byte v0, v12, v6

    const/4 v13, -0x3

    if-ne v0, v13, :cond_1

    aget-byte v0, v12, v15

    const/16 v13, 0x37

    if-ne v0, v13, :cond_1

    const/4 v0, 0x2

    aget-byte v13, v12, v0

    const/16 v0, 0x7a

    if-ne v13, v0, :cond_1

    aget-byte v0, v12, v14

    const/16 v13, 0x58

    if-ne v0, v13, :cond_1

    const/4 v0, 0x4

    aget-byte v0, v12, v0

    const/16 v13, 0x5a

    if-ne v0, v13, :cond_1

    const/4 v0, 0x5

    aget-byte v0, v12, v0

    if-eqz v0, :cond_5

    .line 225
    :cond_1
    iget-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const-string v6, "File does not appear to be a valid .xz archive."

    invoke-static {v0, v6}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 257
    :cond_2
    if-eqz v7, :cond_3

    :try_start_5
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_3
    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 226
    :cond_4
    return-void

    .line 229
    .end local v12    # "magic":[B
    :cond_5
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 230
    .end local v2    # "checkIn":Ljava/io/InputStream;
    :cond_6
    sget-object v0, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_7

    .line 231
    sget-object v0, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "chroot_default_tarball_path"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v2, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    :cond_7
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 234
    iget-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$1;

    invoke-direct {v2, v1}, Lcom/offsec/nethunter/ChrootManagerFragment$1;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 255
    iget-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v2, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v13

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v2, v14, v6

    aput-object v12, v14, v15

    const/4 v2, 0x2

    aput-object v13, v14, v2

    invoke-virtual {v0, v14}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 257
    .end local v8    # "buffer":[B
    .end local v9    # "totalBytes":J
    .end local v11    # "bytesRead":I
    if-eqz v7, :cond_8

    :try_start_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v7    # "out":Ljava/io/OutputStream;
    :cond_8
    if-eqz v5, :cond_9

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 259
    .end local v5    # "in":Ljava/io/InputStream;
    :cond_9
    goto/16 :goto_5

    .line 221
    .restart local v2    # "checkIn":Ljava/io/InputStream;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "buffer":[B
    .restart local v9    # "totalBytes":J
    .restart local v11    # "bytesRead":I
    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v2, :cond_a

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v12, v0

    :try_start_b
    invoke-virtual {v6, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "fileUri":Landroid/net/Uri;
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local p1    # "result":Landroidx/activity/result/ActivityResult;
    :cond_a
    :goto_1
    throw v6

    .line 218
    .end local v2    # "checkIn":Ljava/io/InputStream;
    .restart local v3    # "fileUri":Landroid/net/Uri;
    .restart local v4    # "outFile":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local p1    # "result":Landroidx/activity/result/ActivityResult;
    :cond_b
    :goto_2
    iget-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const-string v2, "Copied file is empty. Please select a valid backup."

    invoke-static {v0, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 257
    if-eqz v7, :cond_c

    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_c
    if-eqz v5, :cond_d

    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 219
    :cond_d
    return-void

    .line 213
    :cond_e
    :try_start_e
    invoke-virtual {v7, v8, v6, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 214
    int-to-long v12, v11

    add-long/2addr v9, v12

    goto/16 :goto_0

    .line 211
    .end local v11    # "bytesRead":I
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "fileUri":Landroid/net/Uri;
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local p1    # "result":Landroidx/activity/result/ActivityResult;
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 205
    .end local v8    # "buffer":[B
    .end local v9    # "totalBytes":J
    .restart local v3    # "fileUri":Landroid/net/Uri;
    .restart local v4    # "outFile":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local p1    # "result":Landroidx/activity/result/ActivityResult;
    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v7, :cond_10

    :try_start_f
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_10
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "fileUri":Landroid/net/Uri;
    .end local v4    # "outFile":Ljava/io/File;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local p1    # "result":Landroidx/activity/result/ActivityResult;
    :cond_10
    :goto_3
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v3    # "fileUri":Landroid/net/Uri;
    .restart local v4    # "outFile":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local p1    # "result":Landroidx/activity/result/ActivityResult;
    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_11

    :try_start_11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v6, v0

    :try_start_12
    invoke-virtual {v2, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "fileUri":Landroid/net/Uri;
    .end local v4    # "outFile":Ljava/io/File;
    .end local p1    # "result":Landroidx/activity/result/ActivityResult;
    :cond_11
    :goto_4
    throw v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0

    .line 257
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v3    # "fileUri":Landroid/net/Uri;
    .restart local v4    # "outFile":Ljava/io/File;
    .restart local p1    # "result":Landroidx/activity/result/ActivityResult;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to copy file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "outFile":Ljava/io/File;
    :cond_12
    :goto_5
    goto :goto_6

    .line 262
    :cond_13
    iget-object v0, v1, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const-string v2, "No file selected."

    invoke-static {v0, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    .end local v3    # "fileUri":Landroid/net/Uri;
    :cond_14
    :goto_6
    return-void
.end method

.method synthetic lambda$setAddMetaPkgButton$17$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 685
    const-string v0, "https://tools.kali.org/kali-metapackages"

    .line 686
    .local v0, "metapackagesURL":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 687
    .local v1, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/ChrootManagerFragment;->startActivity(Landroid/content/Intent;)V

    .line 688
    return-void
.end method

.method synthetic lambda$setAddMetaPkgButton$18$com-offsec-nethunter-ChrootManagerFragment(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .local v0, "sb":Ljava/lang/StringBuilder;
    move-object v1, p1

    check-cast v1, Landroidx/appcompat/app/AlertDialog;

    .line 695
    .local v1, "d":Landroidx/appcompat/app/AlertDialog;
    const v2, 0x7f0a031c

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 696
    .local v2, "ll":Landroid/widget/LinearLayout;
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 697
    .local v3, "children":I
    const/4 v4, 0x0

    .local v4, "cnt":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 698
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 699
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 700
    .local v5, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 701
    invoke-virtual {v5}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .end local v5    # "cb":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 706
    .end local v4    # "cnt":I
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apt update && apt install "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -y && echo \"(You can close the terminal now)\n\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/ChrootManagerFragment;->run_cmd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    goto :goto_1

    .line 707
    :catch_0
    move-exception v4

    .line 708
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    const v6, 0x7f1302c4

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/ChrootManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 710
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method synthetic lambda$setAddMetaPkgButton$19$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 678
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 679
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Metapackage Install & Upgrade"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 680
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 681
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d0082

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 682
    .local v2, "sv":Landroid/widget/ScrollView;
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 683
    const v3, 0x7f0a031d

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 684
    .local v3, "metapackageButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    new-instance v4, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda14;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    const v5, 0x7f130025

    invoke-virtual {v0, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 711
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    .line 712
    .local v4, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 713
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 714
    return-void
.end method

.method synthetic lambda$setBackupChrootButton$20$com-offsec-nethunter-ChrootManagerFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "backupFullPathEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface1"    # Landroid/content/DialogInterface;
    .param p3, "i1"    # I

    .line 740
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 741
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$8;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$8;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 760
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 762
    return-void
.end method

.method synthetic lambda$setBackupChrootButton$21$com-offsec-nethunter-ChrootManagerFragment(Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "backupFullPathEditText"    # Landroid/widget/EditText;
    .param p2, "ad"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 734
    sget-object v0, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chroot_default_tarball_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 735
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 737
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 738
    .local v0, "ad2":Landroidx/appcompat/app/AlertDialog;
    const-string v1, "File exists already, do you want to overwrite it anyway?"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 739
    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroid/widget/EditText;)V

    const/4 v2, -0x1

    const-string v3, "YES"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 763
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 764
    .end local v0    # "ad2":Landroidx/appcompat/app/AlertDialog;
    goto :goto_0

    .line 765
    :cond_0
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 766
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$9;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$9;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 785
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 787
    :goto_0
    return-void
.end method

.method synthetic lambda$setBackupChrootButton$22$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 719
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 720
    .local v0, "ad":Landroidx/appcompat/app/AlertDialog;
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 721
    .local v1, "backupFullPathEditText":Landroid/widget/EditText;
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 722
    .local v2, "ll":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 723
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 724
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v6

    .line 726
    .local v5, "editTextParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x28

    const/4 v7, 0x0

    const/16 v8, 0x3a

    invoke-virtual {v5, v8, v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 727
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 729
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 730
    const-string v6, "Backup Chroot"

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 731
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "* It is strongly suggested to create your backup chroot as tar.gz format just for faster process but bigger file size.\n\nbackup \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 732
    sget-object v6, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "chroot_default_tarball_path"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 733
    new-instance v6, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda9;

    invoke-direct {v6, p0, v1, v0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroid/widget/EditText;Landroidx/appcompat/app/AlertDialog;)V

    const-string v7, "OK"

    invoke-virtual {v0, v4, v7, v6}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 788
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 789
    return-void
.end method

.method synthetic lambda$setEditButton$2$com-offsec-nethunter-ChrootManagerFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "chrootPathEditText"    # Landroid/widget/EditText;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 345
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^\\.(.*$)|^\\.\\.(.*$)|^/+(.*$)|^.*/+(.*$)|^$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const-string v1, "Invalid Name, please try again."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    sget-object v0, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chroot_arch"

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    sget-object v0, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chroot_path"

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ln -sfn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_SYMLINK_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->compatCheck()V

    .line 355
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    return-void
.end method

.method synthetic lambda$setEditButton$3$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .line 300
    move-object/from16 v0, p0

    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, v0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 301
    .local v1, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 302
    .local v2, "ad":Landroidx/appcompat/app/AlertDialog;
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 303
    .local v3, "ll":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    .local v4, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 305
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    new-instance v8, Landroid/widget/EditText;

    iget-object v9, v0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 308
    .local v8, "chrootPathEditText":Landroid/widget/EditText;
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, v0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 309
    .local v9, "availableChrootPathextview":Landroid/widget/TextView;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v6, v10

    .line 310
    .local v6, "editTextParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x3a

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 312
    sget-object v10, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v12, "chroot_arch"

    const-string v13, ""

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-virtual {v8}, Landroid/widget/EditText;->setSingleLine()V

    .line 314
    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v10, v0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v12, 0x7f060038

    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    const v10, 0x7f13018d

    invoke-virtual {v0, v10}, Lcom/offsec/nethunter/ChrootManagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v12, v7, [Ljava/lang/Object;

    sget-object v13, Lcom/offsec/nethunter/utils/NhPaths;->NH_SYSTEM_PATH:Ljava/lang/String;

    aput-object v13, v12, v11

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    new-instance v10, Ljava/io/File;

    sget-object v12, Lcom/offsec/nethunter/utils/NhPaths;->NH_SYSTEM_PATH:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v10, "chrootDir":Ljava/io/File;
    const/4 v12, 0x0

    .line 322
    .local v12, "count":I
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 323
    .local v13, "files":[Ljava/io/File;
    if-eqz v13, :cond_2

    .line 324
    array-length v14, v13

    :goto_0
    if-ge v11, v14, :cond_3

    aget-object v15, v13, v11

    .line 325
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 326
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "kalifs"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 327
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 324
    .end local v15    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 332
    :cond_2
    const-string v5, "No directories found."

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 335
    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 339
    const-string v5, "Setup Chroot Path"

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    const-string v5, "The Chroot Path is prefixed to \n\"/data/local/nhsystem/\"\n\nJust put the basename of your Kali Chroot Folder:"

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 344
    new-instance v5, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0, v8}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Landroid/widget/EditText;)V

    const-string v7, "Apply"

    const/4 v11, -0x1

    invoke-virtual {v2, v11, v7, v5}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 358
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 359
    return-void
.end method

.method synthetic lambda$setInstallChrootButton$6$com-offsec-nethunter-ChrootManagerFragment(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "downloadDir"    # Ljava/io/File;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "arch"    # Ljava/lang/String;

    .line 435
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/offsec/nethunter/ChrootManagerFragment;->startDownloadAndRestoreChroot(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setInstallChrootButton$8$com-offsec-nethunter-ChrootManagerFragment(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 423
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->getDeviceArch()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, "arch":Ljava/lang/String;
    if-nez p2, :cond_0

    const-string v0, "minimal"

    goto :goto_0

    :cond_0
    const-string v0, "full"

    :goto_0
    move-object v7, v0

    .line 425
    .local v7, "type":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kali-nethunter-rootfs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tar.xz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 426
    .local v8, "fileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    .line 429
    .local v9, "downloadDir":Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    .line 433
    .local v10, "targetFile":Ljava/io/File;
    nop

    .line 435
    new-instance v11, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v8

    move-object v3, v9

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .local v0, "startProcess":Ljava/lang/Runnable;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 439
    const-string v2, "Overwrite File?"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 440
    const-string v2, "The image file already exists. Do you want to overwrite it?"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Runnable;)V

    .line 441
    const-string v3, "Overwrite"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 442
    const-string v2, "Cancel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 445
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 447
    :goto_1
    return-void

    .line 430
    .end local v0    # "startProcess":Ljava/lang/Runnable;
    .end local v10    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error accessing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method synthetic lambda$setInstallChrootButton$9$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 419
    const-string v0, "Minimal"

    const-string v1, "Full"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "options":[Ljava/lang/String;
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 421
    const-string v2, "Select Kali Image"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    .line 422
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 448
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 449
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 450
    return-void
.end method

.method synthetic lambda$setRemoveChrootButton$12$com-offsec-nethunter-ChrootManagerFragment(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface1"    # Landroid/content/DialogInterface;
    .param p2, "i1"    # I

    .line 541
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 542
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$6;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 561
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 563
    return-void
.end method

.method synthetic lambda$setRemoveChrootButton$14$com-offsec-nethunter-ChrootManagerFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 537
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 538
    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 539
    const-string v1, "This is your last chance!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    .line 540
    const-string v2, "Just do it."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda18;-><init>()V

    .line 564
    const-string v2, "Okay, I\'m sorry."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 567
    .local v0, "adb1":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 568
    return-void
.end method

.method synthetic lambda$setRemoveChrootButton$16$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 533
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 534
    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Are you sure to remove the below Kali Chroot folder?\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 535
    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    .line 536
    const-string v2, "I\'m sure."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda16;-><init>()V

    .line 569
    const-string v2, "Forget it."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 570
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 571
    return-void
.end method

.method synthetic lambda$setStartKaliButton$4$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 364
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 365
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$2;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$2;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 385
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 387
    return-void
.end method

.method synthetic lambda$setStopKaliButton$5$com-offsec-nethunter-ChrootManagerFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 392
    new-instance v0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;-><init>(Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 393
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$3;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V

    .line 412
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->execute([Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->context:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 100
    const v0, 0x7f0d0030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v2, :cond_b

    .line 103
    iget-object v2, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const-string v3, "com.offsec.nethunter"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 108
    const v1, 0x7f0a01a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->baseChrootPathTextView:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->baseChrootPathTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    .line 113
    const v1, 0x7f0a01ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    .line 118
    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    .line 123
    const v1, 0x7f0a01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 128
    const v1, 0x7f0a01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    .line 129
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    if-eqz v1, :cond_6

    .line 133
    const v1, 0x7f0a01ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    .line 134
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    .line 138
    const v1, 0x7f0a01af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    .line 139
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    .line 143
    const v1, 0x7f0a01a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    .line 144
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 148
    const v1, 0x7f0a01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    .line 149
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 153
    const v1, 0x7f0a01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    .line 154
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 158
    const v1, 0x7f0a01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    .line 159
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 163
    return-object v0

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_backupchroot_btn not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_removechroot_btn not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_addmetapkg_btn not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_install_btn not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_unmount_btn not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_mount_btn not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_edit_btn not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_kalifolder_tv not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_viewlogger not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_mountresult_tv not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "View with ID f_chrootmanager_base_path_tv not found in layout."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Activity is null. Cannot initialize sharedPreferences."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroyView()V
    .locals 1

    .line 279
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountStatsTextView:Landroid/widget/TextView;

    .line 281
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->baseChrootPathTextView:Landroid/widget/TextView;

    .line 282
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    .line 283
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    .line 284
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderEditButton:Landroid/widget/Button;

    .line 285
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->mountChrootButton:Landroid/widget/Button;

    .line 286
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->unmountChrootButton:Landroid/widget/Button;

    .line 287
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->installChrootButton:Landroid/widget/Button;

    .line 288
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->addMetaPkgButton:Landroid/widget/Button;

    .line 289
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->removeChrootButton:Landroid/widget/Button;

    .line 290
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->backupChrootButton:Landroid/widget/Button;

    .line 291
    iput-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->chrootManagerExecutor:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;

    .line 292
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 271
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 272
    sget-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    if-nez v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->compatCheck()V

    .line 275
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 168
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 169
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->resultViewerLoggerTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 170
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 171
    sget-object v0, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->kaliFolderTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/offsec/nethunter/ChrootManagerFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "chroot_arch"

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->ARCH_FOLDER:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_0
    const v0, 0x7f0a01b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 175
    .local v0, "kaliViewFolderlinearLayout":Landroidx/appcompat/widget/LinearLayoutCompat;
    new-instance v1, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setEditButton()V

    .line 180
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setStopKaliButton()V

    .line 181
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setStartKaliButton()V

    .line 182
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setInstallChrootButton()V

    .line 183
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setRemoveChrootButton()V

    .line 184
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setAddMetaPkgButton()V

    .line 185
    invoke-direct {p0}, Lcom/offsec/nethunter/ChrootManagerFragment;->setBackupChrootButton()V

    .line 188
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 190
    .local v1, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v2, "running_on_wearos"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 191
    .local v2, "iswatch":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    .line 197
    .end local v1    # "sharedpreferences":Landroid/content/SharedPreferences;
    .end local v2    # "iswatch":Ljava/lang/Boolean;
    :cond_1
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v2, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/ChrootManagerFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/ChrootManagerFragment;)V

    invoke-virtual {p0, v1, v2}, Lcom/offsec/nethunter/ChrootManagerFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v1

    .line 267
    .local v1, "filePickerLauncher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<Landroid/content/Intent;>;"
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 911
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 912
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/ChrootManagerFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 913
    return-void
.end method
