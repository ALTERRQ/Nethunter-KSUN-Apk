.class public Lcom/offsec/nethunter/SETFragment;
.super Landroidx/fragment/app/Fragment;
.source "SETFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/SETFragment$TabsPagerAdapter;,
        Lcom/offsec/nethunter/SETFragment$MainFragment;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private nh:Lcom/offsec/nethunter/utils/NhPaths;

.field private sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/SETFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/SETFragment;

    .line 37
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/SETFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 44
    new-instance v0, Lcom/offsec/nethunter/SETFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/SETFragment;-><init>()V

    .line 45
    .local v0, "fragment":Lcom/offsec/nethunter/SETFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SETFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public RunSetup()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 111
    const-string v0, "echo -ne \"\\033]0;SET Setup\\007\" && clear;if [[ -d /root/setoolkit ]]; then echo \'SET is already installed\';else git clone https://github.com/yesimxev/social-engineer-toolkit /root/setoolkit && echo \'Successfully installed SET!\';fi; echo \'Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SETFragment;->run_cmd(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    return-void
.end method

.method public RunUpdate()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 118
    const-string v0, "echo -ne \"\\033]0;SET Update\\007\" && clear;if [[ -d /root/setoolkit ]]; then cd /root/setoolkit && git pull && echo \'Successfully updated SET! Closing in 3secs..\';else echo \'Please run SETUP first!\';fi; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SETFragment;->run_cmd(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    return-void
.end method

.method public SetupDialog()V
    .locals 4

    .line 98
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 99
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 100
    const-string v1, "Welcome to SET!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 101
    const-string v1, "In order to make sure everything is working, an initial setup needs to be done."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 102
    new-instance v1, Lcom/offsec/nethunter/SETFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SETFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/SETFragment;)V

    const-string v2, "Check & Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 107
    return-void
.end method

.method synthetic lambda$SetupDialog$0$com-offsec-nethunter-SETFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 103
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->RunSetup()V

    .line 104
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "set_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuinflater"    # Landroid/view/MenuInflater;

    .line 80
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 61
    const v0, 0x7f0d00d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "rootView":Landroid/view/View;
    new-instance v2, Lcom/offsec/nethunter/SETFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/offsec/nethunter/SETFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 64
    .local v2, "tabsPagerAdapter":Lcom/offsec/nethunter/SETFragment$TabsPagerAdapter;
    const v3, 0x7f0a03a6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    .line 65
    .local v3, "mViewPager":Landroidx/viewpager/widget/ViewPager;
    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 66
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 67
    new-instance v4, Lcom/offsec/nethunter/SETFragment$1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/SETFragment$1;-><init>(Lcom/offsec/nethunter/SETFragment;)V

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 73
    iget-object v4, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    const-string v5, "com.offsec.nethunter"

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/SETFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/SETFragment;->setHasOptionsMenu(Z)V

    .line 75
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 86
    .local v0, "id":I
    const v1, 0x7f0a043f

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->RunSetup()V

    .line 88
    return v2

    .line 89
    :cond_0
    const v1, 0x7f0a050a

    if-ne v0, v1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment;->RunUpdate()V

    .line 91
    return v2

    .line 93
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 292
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method
