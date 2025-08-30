.class public Lcom/offsec/nethunter/WifipumpkinFragment;
.super Landroidx/fragment/app/Fragment;
.source "WifipumpkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/WifipumpkinFragment$ManaStartNatSimpleBdfFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$BdfProxyConfigFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$ManaNatBettercapFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$ManaNatSimpleFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$ManaNatFullFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$DnsspoofFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$DhcpdFragment;,
        Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "WifipumpkinFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private final pickFileLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final pickZipLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final scripts:[Ljava/lang/CharSequence;

.field private selectedScriptIndex:Ljava/lang/Integer;

.field private selected_template:Ljava/lang/String;

.field private sharedpreferences:Landroid/content/SharedPreferences;

.field private template_src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selectedScriptIndex:Ljava/lang/Integer;

    .line 59
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "mana-nat-full"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "mana-nat-simple"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "mana-nat-bettercap"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "mana-nat-simple-bdf"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "hostapd-wpe"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "hostapd-wpe-karma"

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->scripts:[Ljava/lang/CharSequence;

    .line 65
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 68
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->pickZipLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 266
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->pickFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/WifipumpkinFragment;

    .line 55
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selected_template:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/WifipumpkinFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selected_template:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/WifipumpkinFragment;

    .line 55
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->template_src:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/WifipumpkinFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->template_src:Ljava/lang/String;

    return-object p1
.end method

.method private checkiptables()V
    .locals 6

    .line 313
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 314
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v1, "iptables -V | grep iptables"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "iptables_ver":Ljava/lang/String;
    const-string v2, "https://old.kali.org/kali/pool/main/i/iptables/"

    .line 316
    .local v2, "old_kali":Ljava/lang/String;
    const-string v3, "iptables v1.6.2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v4, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const v5, 0x7f14012e

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 318
    .local v3, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v4, "You need to upgrade iptables!"

    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 319
    const-string v4, "We appreciate your patience for using Mana with old iptables. It can be finally upgraded."

    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 320
    new-instance v4, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    const-string v5, "Upgrade"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 325
    new-instance v4, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda9;-><init>()V

    const-string v5, "Close"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 327
    invoke-virtual {v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 329
    .end local v3    # "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    :cond_0
    return-void
.end method

.method static synthetic lambda$checkiptables$8(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 326
    return-void
.end method

.method static synthetic lambda$onCreateView$2(Landroid/view/View;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "PreView"    # Landroid/view/View;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 199
    if-eqz p2, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 204
    :goto_0
    return-void
.end method

.method static synthetic lambda$startWP3$11(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 374
    return-void
.end method

.method private launchFilePicker()V
    .locals 3

    .line 278
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->pickFileLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v2, "Select zip file"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/WifipumpkinFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 80
    new-instance v0, Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/WifipumpkinFragment;-><init>()V

    .line 81
    .local v0, "fragment":Lcom/offsec/nethunter/WifipumpkinFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 82
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v0
.end method

.method private refresh_wp3_templates(Landroid/view/View;)V
    .locals 6
    .param p1, "WifipumpkinFragment"    # Landroid/view/View;

    .line 306
    const v0, 0x7f0a04c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 307
    .local v0, "TemplatesSpinner":Landroid/widget/Spinner;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "ls -1 /usr/share/wifipumpkin3/config/templates | sort"

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "outputTemplates":Ljava/lang/String;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "TemplatesArray":[Ljava/lang/String;
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 310
    return-void
.end method

.method private startWP3()V
    .locals 4

    .line 332
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 333
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Script to execute:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 334
    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    const-string v2, "Start"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 373
    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "Quit"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 375
    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->scripts:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selectedScriptIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 376
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 377
    return-void
.end method


# virtual methods
.method public Firstrun()V
    .locals 3

    .line 380
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 381
    const-string v0, "echo -ne \"\\033]0;Mana first setup\\007\"apt update && apt install mana-toolkit hostapd hostapd-wpe"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wp3_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 384
    return-void
.end method

.method public RunSetup()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 299
    const-string v0, "echo -ne \"\\033]0;Wifipumpkin3 Setup\\007\" && clear;apt update && apt install wifipumpkin3 dnschef -y;echo \'Done!\'; echo \'Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wp3_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    return-void
.end method

.method public SetupDialog()V
    .locals 4

    .line 286
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 287
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 288
    const-string v1, "Welcome to Wifipumpkin3!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 289
    const-string v1, "You have missing packages. Install them now?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 290
    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    const-string v2, "Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 294
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 295
    return-void
.end method

.method synthetic lambda$SetupDialog$6$com-offsec-nethunter-WifipumpkinFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 291
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->RunSetup()V

    .line 292
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wp3_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    return-void
.end method

.method synthetic lambda$checkiptables$7$com-offsec-nethunter-WifipumpkinFragment(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 320
    const-string v0, "echo -ne \"\\033]0;Upgrading iptables\\007\" && clear;apt-mark unhold libip* > /dev/null 2>&1 ; apt-mark unhold libxtables* > /dev/null 2>&1 ; apt-mark unhold iptables* > /dev/null 2>&1 ; apt install iptables -y && sleep 2 && echo \'Done! Closing window..\' && exit"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$0$com-offsec-nethunter-WifipumpkinFragment(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 70
    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "FilePath":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | sed -e \'s/\\/document\\/primary:/\\/sdcard\\//g\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bootkali custom_cmd unzip -Z1 \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' | grep .py | awk -F\'.\' \'{print $1}\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "FilePy":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifipumpkin3 -x \"use misc.custom_captiveflask; install "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \\\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\\"; back; exit\";exit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method synthetic lambda$new$5$com-offsec-nethunter-WifipumpkinFragment(Landroidx/activity/result/ActivityResult;)V
    .locals 5
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 268
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 270
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "FilePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | sed -e \'s/\\/document\\/primary:/\\/sdcard\\//g\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bootkali custom_cmd unzip -Z1 \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' | grep .py | awk -F\'.\' \'{print $1}\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "FilePy":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifipumpkin3 -x \"use misc.custom_captiveflask; install "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \\\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\"; back; exit\";exit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 275
    .end local v0    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .end local v1    # "FilePath":Ljava/lang/String;
    .end local v2    # "FilePy":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-WifipumpkinFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 177
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->refresh_wp3_templates(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-WifipumpkinFragment(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;[Ljava/lang/String;[Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .locals 12
    .param p1, "StartButton"    # Landroid/widget/Button;
    .param p2, "APinterface"    # Landroid/widget/EditText;
    .param p3, "NETinterface"    # Landroid/widget/EditText;
    .param p4, "SSID"    # Landroid/widget/EditText;
    .param p5, "BSSID"    # Landroid/widget/EditText;
    .param p6, "Channel"    # Landroid/widget/EditText;
    .param p7, "Wlan0to1Checkbox"    # Landroid/widget/CheckBox;
    .param p8, "Wlan0to1_string"    # [Ljava/lang/String;
    .param p9, "TemplateString"    # [Ljava/lang/String;
    .param p10, "rootView"    # Landroid/view/View;
    .param p11, "v"    # Landroid/view/View;

    .line 208
    move-object v0, p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "Start"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "APiface_string":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "NETiface_string":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "SSID_string":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "BSSID_string":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "Channel_string":Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 215
    const-string v6, "1"

    aput-object v6, p8, v7

    goto :goto_0

    .line 217
    :cond_0
    const-string v6, "0"

    aput-object v6, p8, v7

    .line 219
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v8, "Starting.. type \'exit\' into the terminal to stop Wifipumpkin3"

    const/4 v9, 0x1

    invoke-static {v6, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 221
    iget-object v6, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sed -i \'/^APIFACE=/c\\APIFACE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/modules/start-wp3.sh"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 222
    iget-object v6, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \'/^NETIFACE=/c\\NETIFACE="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 223
    iget-object v6, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \'/^SSID=/c\\SSID=\""

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "\"\' "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 224
    iget-object v6, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \'/^BSSID=/c\\BSSID="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 225
    iget-object v6, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \'/^CHANNEL=/c\\CHANNEL="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 226
    iget-object v6, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \'/^WLAN0TO1=/c\\WLAN0TO1="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v11, p8, v7

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 227
    iget-object v6, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \'/^TEMPLATE=/c\\TEMPLATE="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v7, p9, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 228
    const-string v6, "echo -ne \"\\033]0;Wifipumpkin3\\007\" && clear;bash /sdcard/nh_files/modules/start-wp3.sh"

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 230
    .end local v1    # "APiface_string":Ljava/lang/String;
    .end local v2    # "NETiface_string":Ljava/lang/String;
    .end local v3    # "SSID_string":Ljava/lang/String;
    .end local v4    # "BSSID_string":Ljava/lang/String;
    .end local v5    # "Channel_string":Ljava/lang/String;
    move-object/from16 v1, p10

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "Stop"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v2, "kill `ps -ef | grep \'[btk]_server\' | awk {\'print $2\'}`"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 232
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v2, "pkill python3"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 233
    move-object/from16 v1, p10

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->refresh_wp3_templates(Landroid/view/View;)V

    goto :goto_1

    .line 230
    :cond_2
    move-object/from16 v1, p10

    .line 235
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-WifipumpkinFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->pickZipLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$startWP3$10$com-offsec-nethunter-WifipumpkinFragment(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 335
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selectedScriptIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 368
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Invalid script!"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    return-void

    .line 364
    :pswitch_0
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Starting HOSTAPD-WPE with Karma"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOSTAPD-WPE-KARMA"

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ip link set wlan1 up && /usr/sbin/hostapd-wpe -k /sdcard/nh_files/configs/hostapd-wpe.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 366
    goto/16 :goto_0

    .line 360
    :pswitch_1
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Starting HOSTAPD-WPE"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOSTAPD-WPE"

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ip link set wlan1 up && /usr/sbin/hostapd-wpe /sdcard/nh_files/configs/hostapd-wpe.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 362
    goto/16 :goto_0

    .line 349
    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Starting MANA NAT SIMPLE && BDF"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MANA-BDF"

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr/share/mana-toolkit/run-mana/start-nat-simple-bdf-lollipop.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    goto :goto_0

    .line 345
    :pswitch_3
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Starting MANA Bettercap"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MANA-BETTERCAP"

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr/bin/start-nat-transproxy-lollipop.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 347
    goto :goto_0

    .line 341
    :pswitch_4
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Starting MANA NAT SIMPLE"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MANA-SIMPLE"

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr/share/mana-toolkit/run-mana/start-nat-simple-lollipop.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 343
    goto :goto_0

    .line 337
    :pswitch_5
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Starting MANA NAT FULL"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MANA-FULL"

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr/share/mana-toolkit/run-mana/start-nat-full-lollipop.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 339
    nop

    .line 371
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const v1, 0x7f130085

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$startWP3$12$com-offsec-nethunter-WifipumpkinFragment(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->selectedScriptIndex:Ljava/lang/Integer;

    return-void
.end method

.method synthetic lambda$startWP3$9$com-offsec-nethunter-WifipumpkinFragment()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v1, "Starting MSF with BDF resource.rc"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSF"

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->makeTermTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "msfconsole -q -r /usr/share/bdfproxy/bdfproxy_msf_resource.rc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 89
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/modules/start-wp3.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "configFilePath":Ljava/lang/String;
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 41
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    move-object/from16 v12, p0

    const v0, 0x7f0d00e5

    const/4 v1, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v13, v0, v14, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 98
    .local v15, "rootView":Landroid/view/View;
    const v0, 0x7f0a053a

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    .line 99
    .local v11, "StartButton":Landroid/widget/Button;
    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 100
    .local v10, "sharedpreferences":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v16

    .line 101
    .local v16, "iswatch":Z
    const v0, 0x7f0a03d1

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/CheckBox;

    .line 104
    .local v8, "PreviewCheckbox":Landroid/widget/CheckBox;
    const-string v0, "wp3_setup_done"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 105
    .local v17, "setupwp3done":Ljava/lang/Boolean;
    iget-object v0, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "if [[ -f /usr/bin/wifipumpkin3 || -f /usr/bin/dnschef ]];then echo Good;else echo Nope;fi"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 108
    .local v7, "packages":Ljava/lang/String;
    const-string v0, "Nope"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->SetupDialog()V

    .line 111
    :cond_0
    const v0, 0x7f0a0539

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 112
    .local v6, "Wp3desc":Landroid/widget/TextView;
    if-eqz v16, :cond_1

    .line 113
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_1
    const v0, 0x7f0a0087

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 118
    .local v5, "APinterface":Landroid/widget/EditText;
    const v0, 0x7f0a036a

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 119
    .local v4, "NETinterface":Landroid/widget/EditText;
    const v0, 0x7f0a046a

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 120
    .local v3, "SSID":Landroid/widget/EditText;
    const v0, 0x7f0a00c0

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 121
    .local v2, "BSSID":Landroid/widget/EditText;
    const v0, 0x7f0a0109

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    .line 122
    .local v1, "Channel":Landroid/widget/EditText;
    const v0, 0x7f0a0537

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 125
    .local v0, "Wlan0to1Checkbox":Landroid/widget/CheckBox;
    invoke-direct {v12, v15}, Lcom/offsec/nethunter/WifipumpkinFragment;->refresh_wp3_templates(Landroid/view/View;)V

    .line 126
    const v9, 0x7f0a04c0

    invoke-virtual {v15, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 129
    .local v9, "TemplatesSpinner":Landroid/widget/Spinner;
    move-object/from16 v18, v6

    .end local v6    # "Wp3desc":Landroid/widget/TextView;
    .local v18, "Wp3desc":Landroid/widget/TextView;
    const v6, 0x7f0a035c

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    .line 130
    .local v6, "myBrowser":Landroid/webkit/WebView;
    const-string v19, ""

    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v20

    .line 131
    .local v21, "TemplateString":[Ljava/lang/String;
    move-object/from16 v20, v7

    .end local v7    # "packages":Ljava/lang/String;
    .local v20, "packages":Ljava/lang/String;
    new-instance v7, Lcom/offsec/nethunter/WifipumpkinFragment$1;

    move-object/from16 v13, v21

    .end local v21    # "TemplateString":[Ljava/lang/String;
    .local v13, "TemplateString":[Ljava/lang/String;
    invoke-direct {v7, v12, v8, v13, v6}, Lcom/offsec/nethunter/WifipumpkinFragment$1;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;Landroid/widget/CheckBox;[Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->checkiptables()V

    .line 169
    const v7, 0x7f0a0536

    invoke-virtual {v15, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 170
    .local v7, "APmode":Landroid/widget/TextView;
    move-object/from16 v21, v6

    .end local v6    # "myBrowser":Landroid/webkit/WebView;
    .local v21, "myBrowser":Landroid/webkit/WebView;
    iget-object v6, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object/from16 v22, v9

    .end local v9    # "TemplatesSpinner":Landroid/widget/Spinner;
    .local v22, "TemplatesSpinner":Landroid/widget/Spinner;
    const-string v9, "iw list | grep \'* AP\'"

    invoke-virtual {v6, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "Wlan0AP":Ljava/lang/String;
    const-string v9, "* AP"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const v9, 0x7f13031a

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 172
    :cond_2
    const v9, 0x7f130319

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :goto_0
    invoke-direct {v12, v15}, Lcom/offsec/nethunter/WifipumpkinFragment;->refresh_wp3_templates(Landroid/view/View;)V

    .line 176
    const v9, 0x7f0a03e7

    invoke-virtual {v15, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 177
    .local v9, "RefreshTemplates":Landroid/widget/ImageButton;
    move-object/from16 v23, v6

    .end local v6    # "Wlan0AP":Ljava/lang/String;
    .local v23, "Wlan0AP":Ljava/lang/String;
    new-instance v6, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda10;

    invoke-direct {v6, v12, v15}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;Landroid/view/View;)V

    invoke-virtual {v9, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v6, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object/from16 v24, v7

    .end local v7    # "APmode":Landroid/widget/TextView;
    .local v24, "APmode":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v9

    .end local v9    # "RefreshTemplates":Landroid/widget/ImageButton;
    .local v25, "RefreshTemplates":Landroid/widget/ImageButton;
    const-string v9, "grep ^APIFACE= "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/modules/start-wp3.sh | awk -F\'=\' \'{print $2}\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "PrevAPiface":Ljava/lang/String;
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v6, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object/from16 v26, v7

    .end local v7    # "PrevAPiface":Ljava/lang/String;
    .local v26, "PrevAPiface":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v10

    .end local v10    # "sharedpreferences":Landroid/content/SharedPreferences;
    .local v27, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v10, "grep ^NETIFACE= "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "PrevNETiface":Ljava/lang/String;
    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v6, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v4

    .end local v4    # "NETinterface":Landroid/widget/EditText;
    .local v28, "NETinterface":Landroid/widget/EditText;
    const-string v4, "grep ^SSID= "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/modules/start-wp3.sh | awk -F\'=\' \'{print $2}\' | tr -d \'\"\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "PrevSSID":Ljava/lang/String;
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v4, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v3

    .end local v3    # "SSID":Landroid/widget/EditText;
    .local v29, "SSID":Landroid/widget/EditText;
    const-string v3, "grep ^BSSID= "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "PrevBSSID":Ljava/lang/String;
    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v2

    .end local v2    # "BSSID":Landroid/widget/EditText;
    .local v30, "BSSID":Landroid/widget/EditText;
    const-string v2, "grep ^CHANNEL= "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "PrevChannel":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v2, v12, Lcom/offsec/nethunter/WifipumpkinFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v1

    .end local v1    # "Channel":Landroid/widget/EditText;
    .local v31, "Channel":Landroid/widget/EditText;
    const-string v1, "grep ^WLAN0TO1= "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "PrevWlan0to1":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    filled-new-array/range {v19 .. v19}, [Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v22

    move-object/from16 v22, v25

    .line 197
    .end local v25    # "RefreshTemplates":Landroid/widget/ImageButton;
    .local v9, "Wlan0to1_string":[Ljava/lang/String;
    .local v19, "TemplatesSpinner":Landroid/widget/Spinner;
    .local v22, "RefreshTemplates":Landroid/widget/ImageButton;
    const v1, 0x7f0a03cc

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 198
    .local v2, "PreView":Landroid/view/View;
    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, v2}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda11;-><init>(Landroid/view/View;)V

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda12;

    move-object/from16 v25, v0

    .end local v0    # "Wlan0to1Checkbox":Landroid/widget/CheckBox;
    .local v25, "Wlan0to1Checkbox":Landroid/widget/CheckBox;
    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object/from16 v32, v2

    .end local v2    # "PreView":Landroid/view/View;
    .local v32, "PreView":Landroid/view/View;
    move-object v2, v11

    move-object/from16 v33, v3

    .end local v3    # "PrevWlan0to1":Ljava/lang/String;
    .local v33, "PrevWlan0to1":Ljava/lang/String;
    move-object v3, v5

    move-object/from16 v34, v4

    .end local v4    # "PrevChannel":Ljava/lang/String;
    .local v34, "PrevChannel":Ljava/lang/String;
    move-object/from16 v4, v28

    move-object/from16 v35, v5

    .end local v5    # "APinterface":Landroid/widget/EditText;
    .local v35, "APinterface":Landroid/widget/EditText;
    move-object/from16 v5, v29

    move-object/from16 v36, v6

    .end local v6    # "PrevBSSID":Ljava/lang/String;
    .local v36, "PrevBSSID":Ljava/lang/String;
    move-object/from16 v6, v30

    move-object/from16 v37, v7

    .end local v7    # "PrevSSID":Ljava/lang/String;
    .local v37, "PrevSSID":Ljava/lang/String;
    move-object/from16 v7, v31

    move-object/from16 v38, v8

    .end local v8    # "PreviewCheckbox":Landroid/widget/CheckBox;
    .local v38, "PreviewCheckbox":Landroid/widget/CheckBox;
    move-object/from16 v8, v25

    move-object/from16 v39, v10

    .end local v10    # "PrevNETiface":Ljava/lang/String;
    .local v39, "PrevNETiface":Ljava/lang/String;
    move-object v10, v13

    move-object/from16 v40, v13

    move-object v13, v11

    .end local v11    # "StartButton":Landroid/widget/Button;
    .local v13, "StartButton":Landroid/widget/Button;
    .local v40, "TemplateString":[Ljava/lang/String;
    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;[Ljava/lang/String;[Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    const v0, 0x7f0a04bf

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 239
    .local v0, "injectStringButton":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v12}, Lcom/offsec/nethunter/WifipumpkinFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    return-object v15
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 245
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 247
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 248
    .local v0, "menuHost":Landroidx/core/view/MenuHost;
    new-instance v1, Lcom/offsec/nethunter/WifipumpkinFragment$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$2;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V

    .line 263
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 248
    invoke-interface {v0, v1, v2, v3}, Landroidx/core/view/MenuHost;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 264
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 805
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 806
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 807
    return-void
.end method
