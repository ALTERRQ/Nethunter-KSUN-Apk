.class public Lcom/offsec/nethunter/VNCFragment;
.super Landroidx/fragment/app/Fragment;
.source "VNCFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final DEFAULT_RESOLUTION:Ljava/lang/String; = "1080x1920:300ppi"

.field private static final MAX_UID:I = 0x270f

.field private static final MIN_UID:I = 0x2328

.field private static final TAG:Ljava/lang/String; = "VNCFragment"


# instance fields
.field final BUSYBOX_NH:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private delay_cmd:Ljava/lang/String;

.field private iswatch:Ljava/lang/Boolean;

.field private localhostonly:Ljava/lang/String;

.field private posd:Ljava/lang/Integer;

.field private posu:Ljava/lang/Integer;

.field private prevusr:Ljava/lang/String;

.field private selected_disp:Ljava/lang/String;

.field private selected_display:Ljava/lang/String;

.field private selected_ppi:Ljava/lang/String;

.field private selected_res:Ljava/lang/String;

.field private selected_user:Ljava/lang/String;

.field private selected_vncres:Ljava/lang/String;

.field private selected_vncresCMD:Ljava/lang/String;

.field private showingAdvanced:Z

.field private vnc_passwd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    .line 68
    const-string v1, "kali"

    iput-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->delay_cmd:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    .line 74
    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->getBusyboxPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;

    .line 51
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;

    .line 51
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_disp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_ppi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;

    .line 51
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/VNCFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "_button"    # Landroid/widget/Button;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 872
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    return-void
.end method

.method private checkUserPermissions(Ljava/lang/String;)Z
    .locals 7
    .param p1, "user"    # Ljava/lang/String;

    .line 667
    const-string v0, "KeXAudio"

    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->isSuAvailable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 670
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sudo -l -U "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 671
    .local v1, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 673
    .local v3, "reader":Ljava/io/BufferedReader;
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    .local v5, "output":Ljava/lang/String;
    const-string v6, "User "

    if-eqz v4, :cond_2

    .line 674
    :try_start_1
    const-string v4, "NOPASSWD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has NOPASSWD sudo permissions."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x1

    return v0

    .line 679
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " does not have NOPASSWD sudo permissions."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 680
    return v2

    .line 681
    .end local v1    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "output":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 682
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error checking permissions for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    return v2
.end method

.method private confirmDialog()V
    .locals 11

    .line 817
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 818
    .local v0, "sharedpreferences":Landroid/content/SharedPreferences;
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->getAlertDialog(Landroid/content/SharedPreferences;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 819
    .local v1, "alert":Landroidx/appcompat/app/AlertDialog;
    new-instance v2, Lcom/offsec/nethunter/VNCFragment$7;

    const-wide/16 v5, 0x3a98

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/offsec/nethunter/VNCFragment$7;-><init>(Lcom/offsec/nethunter/VNCFragment;JJLandroidx/appcompat/app/AlertDialog;Landroid/content/SharedPreferences;)V

    .line 830
    invoke-virtual {v2}, Lcom/offsec/nethunter/VNCFragment$7;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    .line 831
    .local v2, "resetResolution":Landroid/os/CountDownTimer;
    new-instance v3, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda31;

    invoke-direct {v3, v0, v1, v2}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda31;-><init>(Landroid/content/SharedPreferences;Landroidx/appcompat/app/AlertDialog;Landroid/os/CountDownTimer;)V

    const/4 v4, -0x1

    const-string v5, "Keep resolution"

    invoke-virtual {v1, v4, v5, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 836
    return-void
.end method

.method private dbusDialog()V
    .locals 4

    .line 853
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 854
    .local v0, "dbusbuilder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 855
    .local v1, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v2, "Do you want to stop dbus service? If you have no more sessions opened, press Yes."

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 856
    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/utils/ShellExecuter;)V

    const-string v3, "Yes"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 857
    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda11;-><init>()V

    const-string v3, "No"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 859
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 860
    return-void
.end method

.method private desktopDialog()V
    .locals 3

    .line 863
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 864
    .local v0, "dbusbuilder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "There\'s no desktop environment installed. Would you like to install kali-desktop-xfce?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 865
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda27;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 866
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda28;-><init>()V

    const-string v2, "No"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 868
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 869
    return-void
.end method

.method private getAlertDialog(Landroid/content/SharedPreferences;)Landroidx/appcompat/app/AlertDialog;
    .locals 3
    .param p1, "sharedpreferences"    # Landroid/content/SharedPreferences;

    .line 840
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 841
    .local v0, "confirmbuilder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Do you want to keep the resolution?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 842
    const-string v1, "Loading.."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 843
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda29;-><init>(Landroid/content/SharedPreferences;)V

    const-string v2, "Keep resolution"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 847
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 848
    .local v1, "alert":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 849
    return-object v1
.end method

.method private intentClickListener_VNC()V
    .locals 3

    .line 877
    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 878
    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.offsec.nethunter.kex"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 880
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "errorLaunching"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v2, "NetHunter KeX not found!"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 885
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private isSuAvailable()Z
    .locals 6

    .line 649
    const-string v0, "KeXAudio"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "which su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 650
    .local v2, "process":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 651
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 652
    .local v4, "output":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 653
    const-string v5, "su is available."

    invoke-direct {p0, v0, v5}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x1

    return v0

    .line 656
    :cond_0
    const-string v5, "su is not available in the environment."

    invoke-direct {p0, v0, v5}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    return v1

    .line 659
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "output":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 660
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error checking for su availability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return v1
.end method

.method static synthetic lambda$confirmDialog$31(Landroid/content/SharedPreferences;Landroidx/appcompat/app/AlertDialog;Landroid/os/CountDownTimer;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p1, "alert"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "resetResolution"    # Landroid/os/CountDownTimer;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 832
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_res"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 833
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 834
    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 835
    return-void
.end method

.method static synthetic lambda$dbusDialog$33(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p0, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd service dbus stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dbusDialog$34(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 858
    return-void
.end method

.method static synthetic lambda$desktopDialog$36(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 867
    return-void
.end method

.method static synthetic lambda$getAlertDialog$32(Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 844
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_res"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 845
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 846
    return-void
.end method

.method static synthetic lambda$onCreateView$1(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 362
    if-eqz p2, :cond_0

    .line 363
    const-string v0, "settings put global policy_control immersive.full=*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_0
    const-string v0, "settings put global policy_control null"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p0, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p1, "delayText"    # Landroid/widget/EditText;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 428
    const-string v0, "delay"

    if-eqz p3, :cond_0

    .line 429
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 430
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 431
    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 433
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 435
    const-string v0, "#40FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 437
    :goto_0
    return-void
.end method

.method static synthetic lambda$openResolutionDialog$28(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 786
    return-void
.end method

.method static synthetic lambda$openVNCResolutionDialog$30(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 812
    return-void
.end method

.method private logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "NH_SYSTEM_LOGGING":I
    if-lez v0, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method

.method private logToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/VNCFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 97
    new-instance v0, Lcom/offsec/nethunter/VNCFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/VNCFragment;-><init>()V

    .line 98
    .local v0, "fragment":Lcom/offsec/nethunter/VNCFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/VNCFragment;->setArguments(Landroid/os/Bundle;)V

    .line 101
    return-object v0
.end method

.method private openResolutionDialog()V
    .locals 14

    .line 753
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 754
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 755
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d00d3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 756
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 757
    const-string v3, "Add a new device resolution (vertical)"

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 758
    const v3, 0x7f0a052d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 759
    .local v3, "width":Landroid/widget/EditText;
    const v4, 0x7f0a02a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/EditText;

    .line 760
    .local v11, "height":Landroid/widget/EditText;
    const v4, 0x7f0a0151

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/EditText;

    .line 761
    .local v12, "density":Landroid/widget/EditText;
    new-instance v10, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/configs/hdmi-resolutions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 762
    .local v10, "hdmiResFile":Ljava/io/File;
    new-instance v9, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v9}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 763
    .local v9, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v13, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda22;

    move-object v4, v13

    move-object v5, p0

    move-object v6, v3

    move-object v7, v11

    move-object v8, v12

    invoke-direct/range {v4 .. v10}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    const-string v4, "Add"

    invoke-virtual {v0, v4, v13}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 785
    new-instance v4, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda30;

    invoke-direct {v4}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda30;-><init>()V

    const-string v5, "Cancel"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 787
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 788
    return-void
.end method

.method private openVNCResolutionDialog()V
    .locals 12

    .line 791
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 792
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 793
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d00e3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 794
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 795
    const-string v3, "Add a new VNC server resolution (horizontal)"

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 796
    const v3, 0x7f0a052d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 797
    .local v3, "width":Landroid/widget/EditText;
    const v4, 0x7f0a02a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/EditText;

    .line 798
    .local v10, "height":Landroid/widget/EditText;
    new-instance v9, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/configs/vnc-resolutions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 799
    .local v9, "vncResFile":Ljava/io/File;
    new-instance v8, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v8}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 800
    .local v8, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v11, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda25;

    move-object v4, v11

    move-object v5, p0

    move-object v6, v3

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    const-string v4, "Add"

    invoke-virtual {v0, v4, v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 811
    new-instance v4, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;

    invoke-direct {v4}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda26;-><init>()V

    const-string v5, "Cancel"

    invoke-virtual {v0, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 813
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 814
    return-void
.end method

.method private refreshVNC(Landroid/view/View;)V
    .locals 17
    .param p1, "VNCFragment"    # Landroid/view/View;

    .line 698
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "refreshVNC: refreshing VNC server status"

    const-string v3, "VNCFragment"

    invoke-direct {v0, v3, v2}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 700
    .local v2, "KeXstatus":Landroid/widget/TextView;
    const v4, 0x7f0a0019

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 701
    .local v4, "KeXuser":Landroid/widget/TextView;
    const v5, 0x7f0a0526

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 704
    .local v5, "StartAudioButton":Landroid/widget/Button;
    new-instance v6, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v6}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 706
    .local v6, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v7, "pidof Xtigervnc"

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 707
    .local v7, "kex_statusCmd":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 708
    const v8, 0x7f130312

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 709
    const v8, 0x7f1302ff

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 712
    :cond_0
    const v8, 0x7f13030b

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 713
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/bootkali custom_cmd ps -ef | grep vnc | grep Xauthority | awk \'{gsub(/home/,\"\")} {gsub(/\\//,\"\")} {gsub(/.Xauthority/,\"\")} {print $1 $9}\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, "kex_userCmd":Ljava/lang/String;
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    .end local v8    # "kex_userCmd":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/etc/passwd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 719
    .local v8, "passwd":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "echo root && "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " awk -F\':\' -v \"min="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2328

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" -v \"max="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x270f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" \'{ if ( ( $3 >= min && $3 <= max ) || ( $3 >= 100000 && $3 <= 101000 ) ) print $0}\' "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cut -d: -f1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 720
    .local v9, "commandUSR":Ljava/lang/String;
    invoke-virtual {v6, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 721
    .local v10, "outputUSR":Ljava/lang/String;
    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 722
    .local v11, "userArray":[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 723
    const v12, 0x7f0a0514

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 724
    .local v12, "users":Landroid/widget/Spinner;
    new-instance v13, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1090003

    invoke-direct {v13, v14, v15, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 725
    .local v13, "usersadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 726
    iget-object v14, v0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v15, "com.offsec.nethunter"

    move-object/from16 v16, v2

    .end local v2    # "KeXstatus":Landroid/widget/TextView;
    .local v16, "KeXstatus":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v14, v15, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 727
    .local v14, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v15, "display"

    invoke-interface {v14, v15, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    .line 728
    const v2, 0x7f0a0166

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 729
    .local v2, "displays":Landroid/widget/Spinner;
    iget-object v15, v0, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/widget/Spinner;->setSelection(I)V

    .line 730
    const-string v15, "user"

    const-string v1, ""

    invoke-interface {v14, v15, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    .line 731
    iget-object v1, v0, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/VNCFragment;->posu:Ljava/lang/Integer;

    .line 732
    iget-object v1, v0, Lcom/offsec/nethunter/VNCFragment;->posu:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 733
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$6;

    invoke-direct {v1, v0, v14}, Lcom/offsec/nethunter/VNCFragment$6;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v12, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "refreshVNC: userArray="

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "pidof pulseaudio"

    invoke-virtual {v6, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "audio":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f1302f7

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 749
    :cond_1
    const v3, 0x7f1302f3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(I)V

    .line 750
    :goto_1
    return-void
.end method

.method private reload()V
    .locals 4

    .line 688
    const-string v0, "reload: Reloading the fragment"

    const-string v1, "VNCFragment"

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 691
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/offsec/nethunter/VNCFragment;->newInstance(I)Lcom/offsec/nethunter/VNCFragment;

    move-result-object v2

    const v3, 0x7f0a011d

    invoke-virtual {v0, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 692
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 694
    const-string v0, "reload: Fragment reloaded"

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method private vncLocalClick()V
    .locals 2

    .line 888
    const-string v0, "VNCFragment"

    const-string v1, "vncLocalClick: Localhost checkbox clicked"

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const-string v0, "vncLocalClick triggered"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 890
    return-void
.end method


# virtual methods
.method synthetic lambda$desktopDialog$35$com-offsec-nethunter-VNCFragment(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 865
    const-string v0, "echo -ne \"\\033]0;Installing XFCE\\007\" && clear;apt update && apt install -y kali-desktop-xfce tigervnc-standalone-server dbus-x11;apt clean; echo \'Done! Exiting..\' && sleep 2 && exit"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 152
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->vncLocalClick()V

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-VNCFragment(Landroid/widget/TextView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "KeXstatus"    # Landroid/widget/TextView;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 551
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "There\'s no active session!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd sudo -u "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " vncserver -kill :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->dbusDialog()V

    .line 555
    invoke-direct {p0, p3}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping display :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 558
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 560
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->intentClickListener_VNC()V

    .line 561
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-VNCFragment(Landroid/view/View;Landroid/widget/Button;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 3
    .param p1, "AdvancedView"    # Landroid/view/View;
    .param p2, "Advanced"    # Landroid/widget/Button;
    .param p3, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p4, "v"    # Landroid/view/View;

    .line 563
    iget-boolean v0, p0, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    const-string v1, "advanced_visible"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 565
    const v0, 0x7f1302fa

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    .line 567
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 569
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 570
    const v0, 0x7f13030d

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 571
    iput-boolean v2, p0, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    .line 572
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 574
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 575
    const-string v0, "echo -ne \"\\033]0;New User\\007\" && clear;if [[ $SHELL == *zsh ]];then read \"?Please enter your new username\"$\'\n\' USER;elif [[ $SHELL == *bash ]];then read -p \"Please enter your new username\"$\'\n\' USER;fi && adduser --firstuid 9000 --lastuid 9999 $USER; groupmod -g $(id -u $USER) $USER; usermod -aG sudo $USER; usermod -aG inet $USER; usermod -aG sockets $USER; echo \"Please refresh your KeX manager, closing in 2 secs\" && sleep 2 && exit"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 577
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const-string v0, "Can\'t remove root!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo -ne \"\\033]0;Removing User\\007\" && clear;deluser -remove-home "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " && sleep 2 && exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-VNCFragment(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 3
    .param p1, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p2, "v"    # Landroid/view/View;

    .line 584
    const-string v0, "wm size reset;wm density reset;am start com.offsec.nethunter/.AppNavHomeActivity -e \":android:show_fragment\" com.offsec.nethunter.VNCFragment;sleep 2 && exit"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->run_cmd_android(Ljava/lang/String;)V

    .line 585
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_res"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 586
    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 2
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "hdmiResFile"    # Ljava/io/File;
    .param p3, "v"    # Landroid/view/View;

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 589
    const-string v0, "Backup successful!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 3
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "hdmiResFile"    # Ljava/io/File;
    .param p3, "v"    # Landroid/view/View;

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hdmi-resolutions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "hdmibackup":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const-string v1, "Backup file not found!"

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/hdmi-resolutions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    .line 598
    const-string v1, "Restore successful!"

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 600
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$18$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 601
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openResolutionDialog()V

    return-void
.end method

.method synthetic lambda$onCreateView$19$com-offsec-nethunter-VNCFragment(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 3
    .param p1, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p2, "v"    # Landroid/view/View;

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wm size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_disp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; wm density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_ppi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";am start com.offsec.nethunter/.AppNavHomeActivity -e \":android:show_fragment\" com.offsec.nethunter.VNCFragment;sleep 2 && exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->run_cmd_android(Ljava/lang/String;)V

    .line 604
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_res"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 605
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-VNCFragment(Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 3
    .param p1, "localhostCheckBox"    # Landroid/widget/CheckBox;
    .param p2, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p3, "v"    # Landroid/view/View;

    .line 375
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "localhost"

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "-localhost yes "

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    .line 377
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 380
    :cond_0
    const-string v0, "-localhost no "

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    .line 381
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 383
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$20$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 2
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "hdmiResFile"    # Ljava/io/File;
    .param p3, "v"    # Landroid/view/View;

    .line 607
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    const-string v1, "1080x1920:300ppi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sed -i \'/^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$/d\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 609
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    goto :goto_0

    .line 611
    :cond_0
    const-string v0, "Can\'t remove default resolution!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$21$com-offsec-nethunter-VNCFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 613
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openVNCResolutionDialog()V

    return-void
.end method

.method synthetic lambda$onCreateView$22$com-offsec-nethunter-VNCFragment(Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 2
    .param p1, "device_res"    # Ljava/lang/String;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "finalVncResFile"    # Ljava/io/File;
    .param p4, "v"    # Landroid/view/View;

    .line 616
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    const-string v1, "Auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string v0, "Can\'t remove default resolution!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "Can\'t remove device resolution!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sed -i \'/^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncres:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$/d\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 622
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    .line 624
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$23$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 2
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "finalVncResFile1"    # Ljava/io/File;
    .param p3, "v"    # Landroid/view/View;

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 628
    const-string v0, "Backup successful!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method synthetic lambda$onCreateView$24$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 3
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "finalVncResFile2"    # Ljava/io/File;
    .param p3, "v"    # Landroid/view/View;

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vnc-resolutions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, "vncbackup":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    const-string v1, "Backup file not found!"

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/vnc-resolutions "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    .line 638
    const-string v1, "Restore successful!"

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 640
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "kex_init"    # Ljava/io/File;
    .param p3, "vnc_serviceCheckBox"    # Landroid/widget/CheckBox;
    .param p4, "buttonView"    # Landroid/widget/CompoundButton;
    .param p5, "isChecked"    # Z

    .line 394
    if-eqz p5, :cond_1

    .line 395
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/root/.vnc/passwd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v0, "rootvncpasswd":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "vnc_passwd":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/usr/lib/ | grep linux-gnu | head -n1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "arch_path":Ljava/lang/String;
    const-string v3, "#!/system/bin/sh\n"

    .line 400
    .local v3, "shebang":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n# KeX architecture path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n# Commands to run at boot:\nHOME=/root\nUSER=root"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "kex_prep":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "su -c \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/bootkali custom_cmd LD_PRELOAD=/usr/lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/libgcc_s.so.1 vncserver :1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, "kex_cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 403
    .local v6, "fileContents":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cat > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " <<s0133717hur75\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ns0133717hur75\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chmod 700 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 407
    .end local v2    # "arch_path":Ljava/lang/String;
    .end local v3    # "shebang":Ljava/lang/String;
    .end local v4    # "kex_prep":Ljava/lang/String;
    .end local v5    # "kex_cmd":Ljava/lang/String;
    .end local v6    # "fileContents":Ljava/lang/String;
    goto :goto_0

    .line 408
    :cond_0
    const-string v2, "Please setup local server first!"

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 409
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 411
    .end local v0    # "rootvncpasswd":Ljava/io/File;
    .end local v1    # "vnc_passwd":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 412
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rm -rf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 414
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-VNCFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 440
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-VNCFragment(Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "StartAudioButton"    # Landroid/widget/Button;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 445
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/usr/bin/audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "audio":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "KeXAudio"

    if-eqz v1, :cond_5

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio script exists at: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v3, "Enable audio"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "User lacks necessary permissions."

    const-string v4, "User lacks necessary permissions. Permission denied."

    const-string v5, "root"

    if-eqz v1, :cond_2

    .line 451
    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string v1, "Running audio enable command as root"

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v1, "echo -ne \"\\033]0;Audio Enable\\007\" && clear && audio start;sleep 2 && exit"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking permissions for non-root user: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->checkUserPermissions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    const-string v1, "Using su to start audio for non-root user"

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "su -c \'echo -ne \"\\033]0;Audio Enable\\007\" && clear && sudo -u "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " audio start;sleep 2 && exit\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    .line 465
    :goto_0
    const v1, 0x7f1302f2

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 466
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio enabled for user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio enabled for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 460
    :cond_1
    invoke-direct {p0, v2, v4}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, v3}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 462
    return-void

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 472
    const-string v1, "Running audio disable command as root"

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "echo -ne \"\\033]0;Audio Disable\\007\" && clear && audio stop;sleep 2 && exit"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_1

    .line 475
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disabling audio for non-root user: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->checkUserPermissions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    const-string v1, "Using su to stop audio for non-root user"

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "su -c \'echo -ne \"\\033]0;Audio Disable\\007\" && clear && sudo -u "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " audio stop;sleep 2 && exit\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    .line 485
    :goto_1
    const v1, 0x7f1302f6

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 486
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio disabled for user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio disabled for user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto :goto_2

    .line 480
    :cond_4
    invoke-direct {p0, v2, v4}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-direct {p0, v3}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 482
    return-void

    .line 491
    :cond_5
    const-string v1, "Audio script not found, attempting installation"

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v1, "Installing missing audio script in chroot.."

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 493
    const-string v1, "echo -ne \"\\033]0;Kali NetHunter Utils\\007\" && clear;apt update && apt install nethunter-utils;sleep 2 && exit"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    .line 495
    :goto_2
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/view/View;)V
    .locals 2
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "hdmiResFile"    # Ljava/io/File;
    .param p3, "v"    # Landroid/view/View;

    .line 497
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    const-string v1, "1080x1920:300ppi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sed -i \'/^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->selected_res:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$/d\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    goto :goto_0

    .line 501
    :cond_0
    const-string v0, "Can\'t remove default resolution!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 502
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 3
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "v"    # Landroid/view/View;

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd dpkg -l | grep kali-desktop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "desktop":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->desktopDialog()V

    goto/16 :goto_0

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    const-string v1, "Use password 123456 with root user for KeX on Smartwatch."

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 510
    const-string v1, "echo -ne \"\\033]0;KeX Setup\\007\" && clear;echo \'Setting root:123456 KeX credentials..\' && sleep 2 && echo 123456\\\\n123456\\\\nn\\\\n | vncpasswd;echo \'Done! Exiting..\' && sleep 2 && exit"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    .line 511
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo -ne \"\\033]0;Setting up Server\\007\" && clear;chmod +x ~/.vnc/xstartup && clear;echo $\'\n\'\"Please enter your new VNC server password\"$\'\n\' && if [ \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" == \"root\" ]; then   if [ ! -d /root/.config/tigervnc ]; then mkdir -p -m 0777 /root/.config/tigervnc; fi;   sudo -u root vncpasswd;   if [ ! -f ~/.vnc/passwd ]; then cp -rf ~/.config/tigervnc/passwd ~/.vnc/; fi; else  user_uid=$(id -u "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");  if [ \"$user_uid\" -eq 100000 ] || [ \"$user_uid\" -eq 9000 ]; then  if [ ! -d /home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.config/tigervnc ]; then mkdir -p -m 0777 /home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.config/tigervnc; fi;   sudo -u "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vncpasswd;   if [ ! -f /home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.vnc/passwd ]; then cp -rf /home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.config/tigervnc/passwd /home/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.vnc/; fi;  fi; fi && sleep 2 && exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    .line 513
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-VNCFragment(Landroid/widget/TextView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 9
    .param p1, "VNCstatus"    # Landroid/widget/TextView;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "delayCheckBox"    # Landroid/widget/CheckBox;
    .param p4, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p5, "delayText"    # Landroid/widget/EditText;
    .param p6, "v"    # Landroid/view/View;

    .line 517
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VNC server is already running"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 519
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    const-string v1, "root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "cat "

    if-eqz v0, :cond_1

    .line 522
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/root/.vnc/passwd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "rootvncpasswd":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->vnc_passwd:Ljava/lang/String;

    .line 524
    .end local v0    # "rootvncpasswd":Ljava/io/File;
    goto :goto_0

    .line 525
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/home/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.vnc/passwd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, "uservncpasswd":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->vnc_passwd:Ljava/lang/String;

    .line 528
    .end local v0    # "uservncpasswd":Ljava/io/File;
    :goto_0
    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    invoke-interface {p4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "delaysec"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo \"Sleeping for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " seconds to avoid soft reboot\" && sleep "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->delay_cmd:Ljava/lang/String;

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->vnc_passwd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    const-string v0, "Please setup local server first!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 535
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ls "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/usr/lib/ | grep linux-gnu | head -n1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "arch_path":Ljava/lang/String;
    const-string v2, "Starting server.. Please refresh the status in NetHunter app."

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 537
    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " >/dev/null 2>&1 </dev/null;echo \"Server started! Closing terminal..\" && sleep 2 && exit"

    const-string v3, "-name \"NetHunter KeX\" "

    const-string v4, " "

    const-string v5, "/libgcc_s.so.1 nohup vncserver :"

    const-string v6, "echo -ne \"\\033]0;Starting Server\\007\" && clear;"

    const-string v7, "/bootkali custom_cmd service dbus start"

    if-eqz v1, :cond_4

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/offsec/nethunter/VNCFragment;->delay_cmd:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "HOME=/root;USER=root;sudo -u root LD_PRELOAD=/usr/lib/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 542
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/offsec/nethunter/VNCFragment;->delay_cmd:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "HOME=/home/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";USER="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ";sudo -u "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/offsec/nethunter/VNCFragment;->selected_user:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " LD_PRELOAD=/usr/lib/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/offsec/nethunter/VNCFragment;->selected_display:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment;->selected_vncresCMD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/VNCFragment;->run_cmd(Ljava/lang/String;)V

    .line 546
    :goto_1
    const-string v1, "VNCFragment"

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v0    # "arch_path":Ljava/lang/String;
    :goto_2
    return-void
.end method

.method synthetic lambda$openResolutionDialog$25$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "add_width"    # Ljava/lang/String;
    .param p3, "add_height"    # Ljava/lang/String;
    .param p4, "add_density"    # Ljava/lang/String;
    .param p5, "hdmiResFile"    # Ljava/io/File;
    .param p6, "dialog2"    # Landroid/content/DialogInterface;
    .param p7, "which1"    # I

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ppi >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 776
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    .line 777
    return-void
.end method

.method synthetic lambda$openResolutionDialog$26$com-offsec-nethunter-VNCFragment(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog2"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 778
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openResolutionDialog()V

    return-void
.end method

.method synthetic lambda$openResolutionDialog$27$com-offsec-nethunter-VNCFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "width"    # Landroid/widget/EditText;
    .param p2, "height"    # Landroid/widget/EditText;
    .param p3, "density"    # Landroid/widget/EditText;
    .param p4, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p5, "hdmiResFile"    # Ljava/io/File;
    .param p6, "dialog"    # Landroid/content/DialogInterface;
    .param p7, "which"    # I

    .line 764
    move-object v7, p0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 765
    .local v8, "add_width":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 766
    .local v9, "add_height":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 767
    .local v10, "add_density":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p4

    move-object/from16 v1, p5

    goto/16 :goto_0

    .line 770
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 771
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v11, v0

    .line 772
    .local v11, "builder2":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v0, "Width is bigger than height!"

    invoke-virtual {v11, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 773
    const-string v0, "Bigger width is usually only for tablets. Misconfiguration can render the device unresponsive"

    invoke-virtual {v11, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 774
    new-instance v12, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda32;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p4

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda32;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    const-string v0, "Keep"

    invoke-virtual {v11, v0, v12}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 778
    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda33;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    const-string v1, "Back"

    invoke-virtual {v11, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 779
    invoke-virtual {v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 780
    .end local v11    # "builder2":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    move-object/from16 v1, p5

    goto :goto_1

    .line 781
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ppi >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p4

    invoke-virtual {v2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 782
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    goto :goto_1

    .line 767
    :cond_2
    move-object/from16 v2, p4

    move-object/from16 v1, p5

    .line 768
    :goto_0
    const-string v0, "Please enter the values!"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openResolutionDialog()V

    .line 784
    :goto_1
    return-void
.end method

.method synthetic lambda$openVNCResolutionDialog$29$com-offsec-nethunter-VNCFragment(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "width"    # Landroid/widget/EditText;
    .param p2, "height"    # Landroid/widget/EditText;
    .param p3, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p4, "vncResFile"    # Ljava/io/File;
    .param p5, "dialog"    # Landroid/content/DialogInterface;
    .param p6, "which"    # I

    .line 801
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "add_width":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "add_height":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 808
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->reload()V

    goto :goto_1

    .line 804
    :cond_1
    :goto_0
    const-string v2, "Please enter the values!"

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/VNCFragment;->logToast(Ljava/lang/String;)V

    .line 805
    invoke-direct {p0}, Lcom/offsec/nethunter/VNCFragment;->openResolutionDialog()V

    .line 810
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: Fragment created with savedInstanceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VNCFragment"

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/VNCFragment;->activity:Landroid/app/Activity;

    .line 111
    invoke-virtual {p0}, Lcom/offsec/nethunter/VNCFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/VNCFragment$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/VNCFragment$1;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1, p0, v2}, Landroidx/fragment/app/FragmentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 143
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 88
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 147
    move-object/from16 v7, p0

    const-string v0, "onCreateView: Starting to inflate layout and initialize components"

    const-string v8, "VNCFragment"

    invoke-direct {v7, v8, v0}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const v0, 0x7f0d00e2

    const/4 v1, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual {v9, v0, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 149
    .local v11, "rootView":Landroid/view/View;
    const v0, 0x7f0a0005

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 150
    .local v12, "AdvancedView":Landroid/view/View;
    const v0, 0x7f0a0004

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    .line 151
    .local v13, "Advanced":Landroid/widget/Button;
    const v0, 0x7f0a0527

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/CheckBox;

    .line 152
    .local v14, "localhostCheckBox":Landroid/widget/CheckBox;
    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda34;

    invoke-direct {v0, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda34;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    invoke-virtual {v14, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, v7, Lcom/offsec/nethunter/VNCFragment;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 156
    .local v15, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v0, "confirm_res"

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 157
    .local v16, "confirm_res":Z
    if-eqz v16, :cond_0

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->confirmDialog()V

    .line 160
    :cond_0
    const-string v0, "advanced_visible"

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    .line 162
    const-string v0, "localhost"

    const/4 v2, 0x1

    invoke-interface {v15, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 163
    .local v6, "localhost":Z
    invoke-virtual {v14, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-boolean v0, v7, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-boolean v0, v7, Lcom/offsec/nethunter/VNCFragment;->showingAdvanced:Z

    if-eqz v0, :cond_2

    .line 166
    const v0, 0x7f1302f9

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 168
    :cond_2
    const v0, 0x7f13030d

    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(I)V

    .line 171
    :goto_1
    const-string v0, "running_on_wearos"

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateView: detected device type - iswatch="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Lcom/offsec/nethunter/VNCFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v8, v4}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    invoke-virtual {v13, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 177
    :cond_3
    const-string v3, "running_on_phone"

    invoke-interface {v15, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "running_on_tablet"

    invoke-interface {v15, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    :cond_4
    const-string v3, "onCreateView: detected device type - phone or tablet"

    invoke-direct {v7, v8, v3}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {v13, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    :cond_5
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v5, v3

    .line 185
    .local v5, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v3, v7, Lcom/offsec/nethunter/VNCFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/view/WindowManager;

    .line 186
    .local v17, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 187
    .local v4, "disp":Landroid/view/Display;
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 188
    .local v18, "API_LEVEL":I
    nop

    .line 189
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 194
    .local v3, "screen_height":I
    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 199
    .local v2, "screen_width":I
    if-le v3, v2, :cond_6

    .line 200
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 201
    .local v20, "xwidth":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v20

    move-object/from16 v23, v21

    .local v21, "xheight":Ljava/lang/String;
    goto :goto_2

    .line 203
    .end local v20    # "xwidth":Ljava/lang/String;
    .end local v21    # "xheight":Ljava/lang/String;
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 204
    .restart local v20    # "xwidth":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v20

    move-object/from16 v23, v21

    .line 208
    .end local v20    # "xwidth":Ljava/lang/String;
    .local v22, "xwidth":Ljava/lang/String;
    .local v23, "xheight":Ljava/lang/String;
    :goto_2
    const v1, 0x7f0a0499

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 209
    .local v1, "KexStatus":Landroid/widget/TextView;
    move/from16 v21, v2

    .end local v2    # "screen_width":I
    .local v21, "screen_width":I
    const v2, 0x7f0a0433

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    .local v2, "KexSessions":Landroid/widget/TextView;
    move/from16 v24, v3

    const/4 v3, 0x0

    .end local v3    # "screen_height":I
    .local v24, "screen_height":I
    invoke-interface {v15, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/offsec/nethunter/VNCFragment;->iswatch:Ljava/lang/Boolean;

    .line 211
    iget-object v0, v7, Lcom/offsec/nethunter/VNCFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 212
    const v0, 0x7f130316

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 213
    const v0, 0x7f130315

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 216
    :cond_7
    const v0, 0x7f0a0526

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    .line 217
    .local v3, "StartAudioButton":Landroid/widget/Button;
    const v0, 0x7f0a043d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 218
    .local v0, "SetupVNCButton":Landroid/widget/Button;
    move-object/from16 v25, v1

    .end local v1    # "KexStatus":Landroid/widget/TextView;
    .local v25, "KexStatus":Landroid/widget/TextView;
    const v1, 0x7f0a0496

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 219
    .local v1, "StartVNCButton":Landroid/widget/Button;
    move-object/from16 v26, v1

    .end local v1    # "StartVNCButton":Landroid/widget/Button;
    .local v26, "StartVNCButton":Landroid/widget/Button;
    const v1, 0x7f0a04a1

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 220
    .local v1, "StopVNCButton":Landroid/widget/Button;
    move-object/from16 v27, v1

    .end local v1    # "StopVNCButton":Landroid/widget/Button;
    .local v27, "StopVNCButton":Landroid/widget/Button;
    const v1, 0x7f0a0525

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 221
    .local v1, "OpenVNCButton":Landroid/widget/Button;
    move-object/from16 v28, v1

    .end local v1    # "OpenVNCButton":Landroid/widget/Button;
    .local v28, "OpenVNCButton":Landroid/widget/Button;
    const v1, 0x7f0a03e3

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 222
    .local v1, "RefreshKeX":Landroid/widget/ImageButton;
    move-object/from16 v29, v2

    .end local v2    # "KexSessions":Landroid/widget/TextView;
    .local v29, "KexSessions":Landroid/widget/TextView;
    const v2, 0x7f0a0002

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 223
    .local v2, "AddUserButton":Landroid/widget/Button;
    move-object/from16 v30, v2

    .end local v2    # "AddUserButton":Landroid/widget/Button;
    .local v30, "AddUserButton":Landroid/widget/Button;
    const v2, 0x7f0a0012

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 224
    .local v2, "DelUserButton":Landroid/widget/Button;
    move-object/from16 v31, v2

    .end local v2    # "DelUserButton":Landroid/widget/Button;
    .local v31, "DelUserButton":Landroid/widget/Button;
    const v2, 0x7f0a03eb

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 225
    .local v2, "ResetHDMIButton":Landroid/widget/Button;
    move-object/from16 v32, v2

    .end local v2    # "ResetHDMIButton":Landroid/widget/Button;
    .local v32, "ResetHDMIButton":Landroid/widget/Button;
    const v2, 0x7f0a0001

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 226
    .local v2, "AddResolutionButton":Landroid/widget/Button;
    move-object/from16 v33, v2

    .end local v2    # "AddResolutionButton":Landroid/widget/Button;
    .local v33, "AddResolutionButton":Landroid/widget/Button;
    const v2, 0x7f0a0011

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 227
    .local v2, "DelResolutionButton":Landroid/widget/Button;
    move-object/from16 v34, v4

    .end local v4    # "disp":Landroid/view/Display;
    .local v34, "disp":Landroid/view/Display;
    const v4, 0x7f0a0006

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 228
    .local v4, "ApplyResolutionButton":Landroid/widget/Button;
    move-object/from16 v35, v4

    .end local v4    # "ApplyResolutionButton":Landroid/widget/Button;
    .local v35, "ApplyResolutionButton":Landroid/widget/Button;
    const v4, 0x7f0a000a

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 229
    .local v4, "BackupHDMI":Landroid/widget/Button;
    move-object/from16 v36, v4

    .end local v4    # "BackupHDMI":Landroid/widget/Button;
    .local v36, "BackupHDMI":Landroid/widget/Button;
    const v4, 0x7f0a001c

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 230
    .local v4, "RestoreHDMI":Landroid/widget/Button;
    move-object/from16 v37, v4

    .end local v4    # "RestoreHDMI":Landroid/widget/Button;
    .local v37, "RestoreHDMI":Landroid/widget/Button;
    const v4, 0x7f0a0003

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 231
    .local v4, "AddVNCResolutionButton":Landroid/widget/Button;
    move-object/from16 v38, v4

    .end local v4    # "AddVNCResolutionButton":Landroid/widget/Button;
    .local v38, "AddVNCResolutionButton":Landroid/widget/Button;
    const v4, 0x7f0a0013

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 232
    .local v4, "DelVNCResolutionButton":Landroid/widget/Button;
    move-object/from16 v39, v4

    .end local v4    # "DelVNCResolutionButton":Landroid/widget/Button;
    .local v39, "DelVNCResolutionButton":Landroid/widget/Button;
    const v4, 0x7f0a000b

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 233
    .local v4, "BackupVNC":Landroid/widget/Button;
    move-object/from16 v40, v4

    .end local v4    # "BackupVNC":Landroid/widget/Button;
    .local v40, "BackupVNC":Landroid/widget/Button;
    const v4, 0x7f0a001d

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 236
    .local v4, "RestoreVNC":Landroid/widget/Button;
    new-instance v41, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct/range {v41 .. v41}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    move-object/from16 v42, v41

    .line 237
    .local v42, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    move-object/from16 v41, v4

    .end local v4    # "RestoreVNC":Landroid/widget/Button;
    .local v41, "RestoreVNC":Landroid/widget/Button;
    new-instance v4, Ljava/io/File;

    move-object/from16 v43, v5

    .end local v5    # "displaymetrics":Landroid/util/DisplayMetrics;
    .local v43, "displaymetrics":Landroid/util/DisplayMetrics;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v44, v6

    .end local v6    # "localhost":Z
    .local v44, "localhost":Z
    sget-object v6, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/configs/vnc-resolutions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v4, "vncResFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v22

    .end local v22    # "xwidth":Ljava/lang/String;
    .local v9, "xwidth":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v9    # "xwidth":Ljava/lang/String;
    .restart local v22    # "xwidth":Ljava/lang/String;
    const-string v9, "x"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v9, v23

    .end local v23    # "xheight":Ljava/lang/String;
    .local v9, "xheight":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "device_res":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v45

    const-wide/16 v47, 0x0

    cmp-long v23, v45, v47

    if-nez v23, :cond_8

    .line 240
    move-object/from16 v23, v9

    .end local v9    # "xheight":Ljava/lang/String;
    .restart local v23    # "xheight":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "echo \"Auto\"$\"\n\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " > "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v42

    .end local v42    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .local v10, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-virtual {v10, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_3

    .line 239
    .end local v10    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .end local v23    # "xheight":Ljava/lang/String;
    .restart local v9    # "xheight":Ljava/lang/String;
    .restart local v42    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    :cond_8
    move-object/from16 v23, v9

    move-object/from16 v10, v42

    .line 244
    .end local v9    # "xheight":Ljava/lang/String;
    .end local v42    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .restart local v10    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .restart local v23    # "xheight":Ljava/lang/String;
    :goto_3
    new-instance v9, Ljava/io/File;

    move-object/from16 v42, v4

    .end local v4    # "vncResFile":Ljava/io/File;
    .local v42, "vncResFile":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v5

    .end local v5    # "device_res":Ljava/lang/String;
    .local v45, "device_res":Ljava/lang/String;
    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/configs/hdmi-resolutions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v9, "hdmiResFile":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "commandRES":Ljava/lang/String;
    move-object/from16 v46, v8

    invoke-virtual {v10, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "outputRES":Ljava/lang/String;
    move-object/from16 v47, v4

    .end local v4    # "commandRES":Ljava/lang/String;
    .local v47, "commandRES":Ljava/lang/String;
    const-string v4, "\n"

    move-object/from16 v48, v12

    .end local v12    # "AdvancedView":Landroid/view/View;
    .local v48, "AdvancedView":Landroid/view/View;
    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, "resArray":[Ljava/lang/String;
    move-object/from16 v49, v8

    .end local v8    # "outputRES":Ljava/lang/String;
    .local v49, "outputRES":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    move-object/from16 v50, v13

    .end local v13    # "Advanced":Landroid/widget/Button;
    .local v50, "Advanced":Landroid/widget/Button;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v51, v0

    .end local v0    # "SetupVNCButton":Landroid/widget/Button;
    .local v51, "SetupVNCButton":Landroid/widget/Button;
    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .end local v42    # "vncResFile":Ljava/io/File;
    .local v8, "vncResFile":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 252
    .local v13, "commandVNCRES":Ljava/lang/String;
    invoke-virtual {v10, v13}, Lcom/offsec/nethunter/utils/ShellExecuter;->executeCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "outputVNCRES":Ljava/lang/String;
    move-object/from16 v42, v13

    .end local v13    # "commandVNCRES":Ljava/lang/String;
    .local v42, "commandVNCRES":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 256
    .local v13, "vncresArray":[Ljava/lang/String;
    move-object/from16 v52, v0

    .end local v0    # "outputVNCRES":Ljava/lang/String;
    .local v52, "outputVNCRES":Ljava/lang/String;
    const v0, 0x7f0a03f0

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 257
    .local v0, "resolution":Landroid/widget/Spinner;
    move-object/from16 v53, v8

    .end local v8    # "vncResFile":Ljava/io/File;
    .local v53, "vncResFile":Ljava/io/File;
    new-instance v8, Landroid/widget/ArrayAdapter;

    move-object/from16 v54, v2

    .end local v2    # "DelResolutionButton":Landroid/widget/Button;
    .local v54, "DelResolutionButton":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v55, v9

    .end local v9    # "hdmiResFile":Ljava/io/File;
    .local v55, "hdmiResFile":Ljava/io/File;
    const v9, 0x1090003

    invoke-direct {v8, v2, v9, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 258
    .local v8, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 261
    const v2, 0x7f0a052a

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 262
    .local v2, "vncresolution":Landroid/widget/Spinner;
    move-object/from16 v56, v8

    .end local v8    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v56, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v8, Landroid/widget/ArrayAdapter;

    move-object/from16 v57, v12

    .end local v12    # "resArray":[Ljava/lang/String;
    .local v57, "resArray":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v8, v12, v9, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 263
    .local v8, "vncadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 266
    new-instance v12, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v59, v8

    .end local v8    # "vncadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v59, "vncadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/etc/passwd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v12

    .line 267
    .local v8, "passwd":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "echo root && "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v7, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " awk -F\':\' -v \"min="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v12, 0x2328

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "\" -v \"max="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v12, 0x270f

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "\" \'{ if ( ( $3 >= min && $3 <= max ) || ( $3 >= 100000 && $3 <= 101000 ) ) print $0}\' "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " | "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v7, Lcom/offsec/nethunter/VNCFragment;->BUSYBOX_NH:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " cut -d: -f1"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "commandUSR":Ljava/lang/String;
    invoke-virtual {v10, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "outputUSR":Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, "userArray":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 273
    move-object/from16 v60, v8

    .end local v8    # "passwd":Ljava/io/File;
    .local v60, "passwd":Ljava/io/File;
    const-string v8, "user"

    move-object/from16 v61, v9

    .end local v9    # "commandUSR":Ljava/lang/String;
    .local v61, "commandUSR":Ljava/lang/String;
    const-string v9, ""

    invoke-interface {v15, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    .line 276
    const v8, 0x7f0a0514

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 277
    .local v8, "users":Landroid/widget/Spinner;
    move-object/from16 v62, v12

    .end local v12    # "outputUSR":Ljava/lang/String;
    .local v62, "outputUSR":Ljava/lang/String;
    new-instance v12, Landroid/widget/ArrayAdapter;

    move-object/from16 v63, v13

    .end local v13    # "vncresArray":[Ljava/lang/String;
    .local v63, "vncresArray":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v64, v3

    const v3, 0x1090003

    .end local v3    # "StartAudioButton":Landroid/widget/Button;
    .local v64, "StartAudioButton":Landroid/widget/Button;
    invoke-direct {v12, v13, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 278
    .local v12, "usersadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v8, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 279
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 280
    iget-object v3, v7, Lcom/offsec/nethunter/VNCFragment;->prevusr:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v7, Lcom/offsec/nethunter/VNCFragment;->posu:Ljava/lang/Integer;

    .line 281
    iget-object v3, v7, Lcom/offsec/nethunter/VNCFragment;->posu:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 284
    const-string v3, "display"

    const/4 v13, 0x0

    invoke-interface {v15, v3, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v7, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    .line 287
    const-string v73, "9"

    const-string v74, "10"

    const-string v65, "1"

    const-string v66, "2"

    const-string v67, "3"

    const-string v68, "4"

    const-string v69, "5"

    const-string v70, "6"

    const-string v71, "7"

    const-string v72, "8"

    filled-new-array/range {v65 .. v74}, [Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    .line 288
    .local v13, "displaylist":[Ljava/lang/String;
    const v3, 0x7f0a0166

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 289
    .local v3, "displays":Landroid/widget/Spinner;
    move-object/from16 v65, v4

    .end local v4    # "userArray":[Ljava/lang/String;
    .local v65, "userArray":[Ljava/lang/String;
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v66, v12

    .end local v12    # "usersadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v66, "usersadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/VNCFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v67, v1

    const v1, 0x1090003

    .end local v1    # "RefreshKeX":Landroid/widget/ImageButton;
    .local v67, "RefreshKeX":Landroid/widget/ImageButton;
    invoke-direct {v4, v12, v1, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v12, v4

    .line 290
    .local v12, "displayadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v3, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 291
    iget-object v1, v7, Lcom/offsec/nethunter/VNCFragment;->posd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 294
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$2;

    invoke-direct {v1, v7, v15}, Lcom/offsec/nethunter/VNCFragment$2;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 306
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$3;

    invoke-direct {v1, v7, v15}, Lcom/offsec/nethunter/VNCFragment$3;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 318
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$4;

    invoke-direct {v1, v7, v10}, Lcom/offsec/nethunter/VNCFragment$4;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 331
    const-string v1, "last_kex_res"

    const/4 v4, 0x0

    invoke-interface {v15, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v58

    .line 332
    .local v58, "prevres":Ljava/lang/Integer;
    const-string v1, "last_kex_res_string"

    invoke-interface {v15, v1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, "prevres_string":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "grep "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 334
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 338
    :cond_9
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$5;

    invoke-direct {v1, v7, v15}, Lcom/offsec/nethunter/VNCFragment$5;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 357
    const v1, 0x7f0a02c7

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/SwitchCompat;

    .line 358
    .local v6, "immersionSwitch":Landroidx/appcompat/widget/SwitchCompat;
    const-string v1, "settings get global policy_control"

    invoke-virtual {v10, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "immersion":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v19, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 361
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, v10}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 371
    const-string v1, "-localhost yes "

    iput-object v1, v7, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    goto :goto_4

    .line 373
    :cond_a
    const-string v1, "-localhost no "

    iput-object v1, v7, Lcom/offsec/nethunter/VNCFragment;->localhostonly:Ljava/lang/String;

    .line 374
    :goto_4
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, v7, v14, v15}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    .line 384
    .local v1, "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v14, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    move-object/from16 v68, v0

    .end local v0    # "resolution":Landroid/widget/Spinner;
    .local v68, "resolution":Landroid/widget/Spinner;
    new-instance v0, Ljava/io/File;

    move-object/from16 v69, v1

    .end local v1    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v69, "checkBoxListener":Landroid/view/View$OnClickListener;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v70, v2

    .end local v2    # "vncresolution":Landroid/widget/Spinner;
    .local v70, "vncresolution":Landroid/widget/Spinner;
    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/etc/init.d/99kex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 388
    .local v2, "kex_init":Ljava/io/File;
    const v0, 0x7f0a0529

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/CheckBox;

    .line 389
    .local v1, "vnc_serviceCheckBox":Landroid/widget/CheckBox;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "initfile":Ljava/lang/String;
    const-string v0, "vncserver"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 393
    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda17;

    invoke-direct {v0, v7, v10, v2, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 417
    const v0, 0x7f0a014a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 418
    .local v0, "delayCheckBox":Landroid/widget/CheckBox;
    move-object/from16 v71, v1

    .end local v1    # "vnc_serviceCheckBox":Landroid/widget/CheckBox;
    .local v71, "vnc_serviceCheckBox":Landroid/widget/CheckBox;
    const v1, 0x7f0a014c

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 419
    .local v1, "delayText":Landroid/widget/EditText;
    move-object/from16 v72, v2

    .end local v2    # "kex_init":Ljava/io/File;
    .local v72, "kex_init":Ljava/io/File;
    const-string v2, "delay"

    move-object/from16 v73, v3

    const/4 v3, 0x0

    .end local v3    # "displays":Landroid/widget/Spinner;
    .local v73, "displays":Landroid/widget/Spinner;
    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 420
    .local v3, "delay":Ljava/lang/Boolean;
    move-object/from16 v19, v4

    const/4 v2, 0x1

    .end local v4    # "immersion":Ljava/lang/String;
    .local v19, "immersion":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 421
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    const-string v4, "delaysec"

    const/16 v2, 0x14

    invoke-interface {v15, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 424
    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 427
    :cond_b
    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, v15, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda18;-><init>(Landroid/content/SharedPreferences;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 440
    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;

    invoke-direct {v2, v7, v11}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/view/View;)V

    move-object/from16 v4, v67

    .end local v67    # "RefreshKeX":Landroid/widget/ImageButton;
    .local v4, "RefreshKeX":Landroid/widget/ImageButton;
    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    invoke-direct {v7, v11}, Lcom/offsec/nethunter/VNCFragment;->refreshVNC(Landroid/view/View;)V

    .line 444
    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda20;

    move-object/from16 v20, v3

    move-object/from16 v3, v64

    .end local v64    # "StartAudioButton":Landroid/widget/Button;
    .local v3, "StartAudioButton":Landroid/widget/Button;
    .local v20, "delay":Ljava/lang/Boolean;
    invoke-direct {v2, v7, v3, v11}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/Button;Landroid/view/View;)V

    invoke-direct {v7, v3, v2}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 496
    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda21;

    move-object/from16 v64, v8

    move-object/from16 v8, v55

    .end local v55    # "hdmiResFile":Ljava/io/File;
    .local v8, "hdmiResFile":Ljava/io/File;
    .local v64, "users":Landroid/widget/Spinner;
    invoke-direct {v2, v7, v10, v8}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v55, v3

    move-object/from16 v3, v54

    .end local v54    # "DelResolutionButton":Landroid/widget/Button;
    .local v3, "DelResolutionButton":Landroid/widget/Button;
    .local v55, "StartAudioButton":Landroid/widget/Button;
    invoke-direct {v7, v3, v2}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 503
    new-instance v2, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda23;

    invoke-direct {v2, v7, v10}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    move-object/from16 v54, v0

    move-object/from16 v0, v51

    .end local v51    # "SetupVNCButton":Landroid/widget/Button;
    .local v0, "SetupVNCButton":Landroid/widget/Button;
    .local v54, "delayCheckBox":Landroid/widget/CheckBox;
    invoke-direct {v7, v0, v2}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 514
    const v2, 0x7f0a0018

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    check-cast v51, Landroid/widget/TextView;

    .line 515
    .local v51, "VNCstatus":Landroid/widget/TextView;
    move-object/from16 v67, v9

    .end local v9    # "prevres_string":Ljava/lang/String;
    .local v67, "prevres_string":Ljava/lang/String;
    new-instance v9, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;

    move-object/from16 v74, v54

    move-object/from16 v54, v52

    move-object/from16 v52, v0

    .end local v0    # "SetupVNCButton":Landroid/widget/Button;
    .local v52, "SetupVNCButton":Landroid/widget/Button;
    .local v54, "outputVNCRES":Ljava/lang/String;
    .local v74, "delayCheckBox":Landroid/widget/CheckBox;
    move-object v0, v9

    move-object/from16 v75, v1

    move-object/from16 v87, v28

    move-object/from16 v28, v4

    move-object/from16 v4, v26

    move-object/from16 v26, v12

    move-object/from16 v12, v27

    move-object/from16 v27, v13

    move-object/from16 v13, v87

    .end local v1    # "delayText":Landroid/widget/EditText;
    .local v4, "StartVNCButton":Landroid/widget/Button;
    .local v12, "StopVNCButton":Landroid/widget/Button;
    .local v13, "OpenVNCButton":Landroid/widget/Button;
    .local v26, "displayadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v27, "displaylist":[Ljava/lang/String;
    .local v28, "RefreshKeX":Landroid/widget/ImageButton;
    .local v75, "delayText":Landroid/widget/EditText;
    move-object/from16 v1, p0

    move-object/from16 v77, v3

    move-object/from16 v3, v30

    move-object/from16 v76, v33

    move-object/from16 v33, v72

    move-object/from16 v30, v14

    move-object/from16 v14, v31

    move-object/from16 v31, v8

    const v8, 0x7f0a0018

    move-object/from16 v87, v70

    move-object/from16 v70, v32

    move-object/from16 v32, v87

    .end local v8    # "hdmiResFile":Ljava/io/File;
    .end local v72    # "kex_init":Ljava/io/File;
    .local v3, "AddUserButton":Landroid/widget/Button;
    .local v14, "DelUserButton":Landroid/widget/Button;
    .local v30, "localhostCheckBox":Landroid/widget/CheckBox;
    .local v31, "hdmiResFile":Ljava/io/File;
    .local v32, "vncresolution":Landroid/widget/Spinner;
    .local v33, "kex_init":Ljava/io/File;
    .local v70, "ResetHDMIButton":Landroid/widget/Button;
    .local v76, "AddResolutionButton":Landroid/widget/Button;
    .local v77, "DelResolutionButton":Landroid/widget/Button;
    move-object/from16 v2, v51

    move-object/from16 v78, v3

    move-object/from16 v72, v20

    move/from16 v20, v24

    move-object/from16 v24, v55

    move-object/from16 v55, v73

    .end local v3    # "AddUserButton":Landroid/widget/Button;
    .end local v73    # "displays":Landroid/widget/Spinner;
    .local v20, "screen_height":I
    .local v24, "StartAudioButton":Landroid/widget/Button;
    .local v55, "displays":Landroid/widget/Spinner;
    .local v72, "delay":Ljava/lang/Boolean;
    .local v78, "AddUserButton":Landroid/widget/Button;
    move-object v3, v10

    move-object v8, v4

    move-object/from16 v79, v35

    move-object/from16 v80, v36

    move-object/from16 v81, v37

    move-object/from16 v82, v38

    move-object/from16 v83, v39

    move-object/from16 v84, v40

    move-object/from16 v85, v41

    move-object/from16 v35, v47

    move-object/from16 v36, v65

    move-object/from16 v37, v19

    move-object/from16 v19, v34

    .end local v4    # "StartVNCButton":Landroid/widget/Button;
    .end local v34    # "disp":Landroid/view/Display;
    .end local v38    # "AddVNCResolutionButton":Landroid/widget/Button;
    .end local v39    # "DelVNCResolutionButton":Landroid/widget/Button;
    .end local v40    # "BackupVNC":Landroid/widget/Button;
    .end local v41    # "RestoreVNC":Landroid/widget/Button;
    .end local v47    # "commandRES":Ljava/lang/String;
    .end local v65    # "userArray":[Ljava/lang/String;
    .local v8, "StartVNCButton":Landroid/widget/Button;
    .local v19, "disp":Landroid/view/Display;
    .local v35, "commandRES":Ljava/lang/String;
    .local v36, "userArray":[Ljava/lang/String;
    .local v37, "immersion":Ljava/lang/String;
    .local v79, "ApplyResolutionButton":Landroid/widget/Button;
    .local v80, "BackupHDMI":Landroid/widget/Button;
    .local v81, "RestoreHDMI":Landroid/widget/Button;
    .local v82, "AddVNCResolutionButton":Landroid/widget/Button;
    .local v83, "DelVNCResolutionButton":Landroid/widget/Button;
    .local v84, "BackupVNC":Landroid/widget/Button;
    .local v85, "RestoreVNC":Landroid/widget/Button;
    move-object/from16 v4, v74

    move-object/from16 v39, v5

    move-object/from16 v38, v43

    move-object/from16 v86, v45

    .end local v5    # "initfile":Ljava/lang/String;
    .end local v43    # "displaymetrics":Landroid/util/DisplayMetrics;
    .end local v45    # "device_res":Ljava/lang/String;
    .local v38, "displaymetrics":Landroid/util/DisplayMetrics;
    .local v39, "initfile":Ljava/lang/String;
    .local v86, "device_res":Ljava/lang/String;
    move-object v5, v15

    move-object/from16 v41, v6

    move/from16 v40, v44

    .end local v6    # "immersionSwitch":Landroidx/appcompat/widget/SwitchCompat;
    .end local v44    # "localhost":Z
    .local v40, "localhost":Z
    .local v41, "immersionSwitch":Landroidx/appcompat/widget/SwitchCompat;
    move-object/from16 v6, v75

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/TextView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V

    invoke-direct {v7, v8, v9}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 549
    const v0, 0x7f0a0018

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 550
    .local v0, "KeXstatus":Landroid/widget/TextView;
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda35;

    invoke-direct {v1, v7, v0, v10, v11}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda35;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/TextView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V

    invoke-direct {v7, v12, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 559
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda36;

    invoke-direct {v1, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda36;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    invoke-direct {v7, v13, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 562
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda1;

    move-object/from16 v2, v48

    move-object/from16 v3, v50

    .end local v48    # "AdvancedView":Landroid/view/View;
    .end local v50    # "Advanced":Landroid/widget/Button;
    .local v2, "AdvancedView":Landroid/view/View;
    .local v3, "Advanced":Landroid/widget/Button;
    invoke-direct {v1, v7, v2, v3, v15}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/view/View;Landroid/widget/Button;Landroid/content/SharedPreferences;)V

    invoke-direct {v7, v3, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 575
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    move-object/from16 v4, v78

    .end local v78    # "AddUserButton":Landroid/widget/Button;
    .local v4, "AddUserButton":Landroid/widget/Button;
    invoke-direct {v7, v4, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 576
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    invoke-direct {v7, v14, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 583
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v7, v15}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    move-object/from16 v5, v70

    .end local v70    # "ResetHDMIButton":Landroid/widget/Button;
    .local v5, "ResetHDMIButton":Landroid/widget/Button;
    invoke-direct {v7, v5, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 587
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda5;

    move-object/from16 v6, v31

    .end local v31    # "hdmiResFile":Ljava/io/File;
    .local v6, "hdmiResFile":Ljava/io/File;
    invoke-direct {v1, v7, v10, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v9, v80

    .end local v80    # "BackupHDMI":Landroid/widget/Button;
    .local v9, "BackupHDMI":Landroid/widget/Button;
    invoke-direct {v7, v9, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 591
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, v7, v10, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v31, v0

    move-object/from16 v0, v81

    .end local v81    # "RestoreHDMI":Landroid/widget/Button;
    .local v0, "RestoreHDMI":Landroid/widget/Button;
    .local v31, "KeXstatus":Landroid/widget/TextView;
    invoke-direct {v7, v0, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 601
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    move-object/from16 v0, v76

    .end local v76    # "AddResolutionButton":Landroid/widget/Button;
    .local v0, "AddResolutionButton":Landroid/widget/Button;
    .restart local v81    # "RestoreHDMI":Landroid/widget/Button;
    invoke-direct {v7, v0, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 602
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, v7, v15}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V

    move-object/from16 v0, v79

    .end local v79    # "ApplyResolutionButton":Landroid/widget/Button;
    .local v0, "ApplyResolutionButton":Landroid/widget/Button;
    .restart local v76    # "AddResolutionButton":Landroid/widget/Button;
    invoke-direct {v7, v0, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 606
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, v7, v10, v6}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v0, v77

    .end local v77    # "DelResolutionButton":Landroid/widget/Button;
    .local v0, "DelResolutionButton":Landroid/widget/Button;
    .restart local v79    # "ApplyResolutionButton":Landroid/widget/Button;
    invoke-direct {v7, v0, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 613
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, v7}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/VNCFragment;)V

    move-object/from16 v0, v82

    .end local v82    # "AddVNCResolutionButton":Landroid/widget/Button;
    .local v0, "AddVNCResolutionButton":Landroid/widget/Button;
    .restart local v77    # "DelResolutionButton":Landroid/widget/Button;
    invoke-direct {v7, v0, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 614
    move-object/from16 v1, v53

    .line 615
    .local v1, "finalVncResFile":Ljava/io/File;
    nop

    .end local v0    # "AddVNCResolutionButton":Landroid/widget/Button;
    .restart local v82    # "AddVNCResolutionButton":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda13;

    move-object/from16 v2, v86

    .end local v86    # "device_res":Ljava/lang/String;
    .local v2, "device_res":Ljava/lang/String;
    .restart local v48    # "AdvancedView":Landroid/view/View;
    invoke-direct {v0, v7, v2, v10, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v34, v1

    move-object/from16 v1, v83

    .end local v83    # "DelVNCResolutionButton":Landroid/widget/Button;
    .local v1, "DelVNCResolutionButton":Landroid/widget/Button;
    .local v34, "finalVncResFile":Ljava/io/File;
    invoke-direct {v7, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 625
    move-object/from16 v0, v53

    .line 626
    .local v0, "finalVncResFile1":Ljava/io/File;
    nop

    .end local v1    # "DelVNCResolutionButton":Landroid/widget/Button;
    .restart local v83    # "DelVNCResolutionButton":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, v7, v10, v0}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v43, v0

    move-object/from16 v0, v84

    .end local v84    # "BackupVNC":Landroid/widget/Button;
    .local v0, "BackupVNC":Landroid/widget/Button;
    .local v43, "finalVncResFile1":Ljava/io/File;
    invoke-direct {v7, v0, v1}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 630
    move-object/from16 v1, v53

    .line 631
    .local v1, "finalVncResFile2":Ljava/io/File;
    nop

    .end local v0    # "BackupVNC":Landroid/widget/Button;
    .restart local v84    # "BackupVNC":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, v7, v10, v1}, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;)V

    move-object/from16 v44, v1

    move-object/from16 v1, v85

    .end local v85    # "RestoreVNC":Landroid/widget/Button;
    .local v1, "RestoreVNC":Landroid/widget/Button;
    .local v44, "finalVncResFile2":Ljava/io/File;
    invoke-direct {v7, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 642
    const-string v0, "onCreateView: Finished initializing components"

    move-object/from16 v1, v46

    .end local v1    # "RestoreVNC":Landroid/widget/Button;
    .restart local v85    # "RestoreVNC":Landroid/widget/Button;
    invoke-direct {v7, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-object v11
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run_cmd: Executing command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VNCFragment"

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 899
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 900
    const-string v2, "run_cmd: Command execution started"

    invoke-direct {p0, v1, v2}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method public run_cmd_android(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run_cmd_android: Executing Android command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VNCFragment"

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 906
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 907
    const-string v2, "run_cmd_android: Android command execution started"

    invoke-direct {p0, v1, v2}, Lcom/offsec/nethunter/VNCFragment;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    return-void
.end method
