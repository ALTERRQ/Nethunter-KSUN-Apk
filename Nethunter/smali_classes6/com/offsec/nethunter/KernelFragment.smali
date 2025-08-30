.class public Lcom/offsec/nethunter/KernelFragment;
.super Landroidx/fragment/app/Fragment;
.source "KernelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/KernelFragment$PreferencesData;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final KERNEL_URL:Ljava/lang/String; = "https://gitlab.com/yesimxev/kali-nethunter-kernels/-/raw/main/kernels.txt"

.field public static final TAG:Ljava/lang/String; = "KernelFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->executor:Ljava/util/concurrent/ExecutorService;

    .line 43
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method private checkKernel(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "KernelFragment"    # Landroid/view/View;
    .param p2, "custom"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "version"    # Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v0, "versionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "5"

    const-string v2, "lollipop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "6"

    const-string v2, "marshmallow"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "7"

    const-string v2, "nougat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "8"

    const-string v2, "oreo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "9"

    const-string v2, "pie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "10"

    const-string v2, "ten"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "11"

    const-string v2, "eleven"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "12"

    const-string v2, "twelve"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "13"

    const-string v2, "thirteen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "14"

    const-string v2, "fourteen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "15"

    const-string v2, "fifteen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "16"

    const-string v2, "sixteen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "17"

    const-string v2, "seventeen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "version_text":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 204
    const-string v2, "unknown"

    invoke-static {v0, p0, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 206
    :cond_0
    return-object v1
.end method

.method static synthetic lambda$checkKernel$9(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 175
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/KernelFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 47
    new-instance v0, Lcom/offsec/nethunter/KernelFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/KernelFragment;-><init>()V

    .line 48
    .local v0, "fragment":Lcom/offsec/nethunter/KernelFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/KernelFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method synthetic lambda$checkKernel$10$com-offsec-nethunter-KernelFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "kernel_zip"    # Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 152
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Your device is supported!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 153
    const-string v1, "Do you want to check and flash the available kernel(s)?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 154
    new-instance v1, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;)V

    const-string v2, "Ok"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 175
    new-instance v1, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 177
    return-void
.end method

.method synthetic lambda$checkKernel$11$com-offsec-nethunter-KernelFragment()V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Codename not found for your Android version. Please download kernel manually"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$checkKernel$12$com-offsec-nethunter-KernelFragment(Ljava/lang/String;)V
    .locals 6
    .param p1, "custom"    # Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "[^a-zA-Z0-9_-]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "codename":Ljava/lang/String;
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 142
    .local v1, "version":Ljava/lang/String;
    invoke-static {v1}, Lcom/offsec/nethunter/KernelFragment;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "version_text":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/KernelFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curl -s https://gitlab.com/yesimxev/kali-nethunter-kernels/-/raw/main/kernels.txt | grep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | grep "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " || echo NA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "kernel_zip":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v0, v1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 149
    const-string v4, "NA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v3}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/KernelFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    :goto_1
    return-void
.end method

.method synthetic lambda$checkKernel$4$com-offsec-nethunter-KernelFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "codename"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Searching for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$checkKernel$5$com-offsec-nethunter-KernelFragment()V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Downloading to /sdcard and flashing..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$checkKernel$6$com-offsec-nethunter-KernelFragment([Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "kernelsArray"    # [Ljava/lang/String;
    .param p2, "dialog2"    # Landroid/content/DialogInterface;
    .param p3, "which2"    # I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo -ne \"\\033]0;Flashing Kernel\\007\" && clear;cd /sdcard && curl https://gitlab.com/yesimxev/kali-nethunter-kernels/-/raw/main/kernels.txt/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bin/magic-flash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | awk \'gsub(/ui_print /,\" \") && !/^ $/\'; echo \'Exiting..\';exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/KernelFragment;->run_cmd_android(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method synthetic lambda$checkKernel$7$com-offsec-nethunter-KernelFragment()V
    .locals 3

    .line 171
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Downloading to /sdcard and flashing..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$checkKernel$8$com-offsec-nethunter-KernelFragment(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "kernel_zip"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 155
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "kernelsArray":[Ljava/lang/String;
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 158
    .local v1, "builderInner":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v2, "Multiple kernels available. Please select"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 159
    new-instance v2, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/KernelFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 166
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 167
    .end local v0    # "kernelsArray":[Ljava/lang/String;
    .end local v1    # "builderInner":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo -ne \"\\033]0;Flashing Kernel\\007\" && clear;cd /sdcard && curl https://gitlab.com/yesimxev/kali-nethunter-kernels/-/raw/main/kernels.txt/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bin/magic-flash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | awk \'gsub(/ui_print /,\" \") && !/^ $/\'; echo \'Exiting..\'; exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/KernelFragment;->run_cmd_android(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 174
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$3$com-offsec-nethunter-KernelFragment(Landroidx/activity/result/ActivityResult;)V
    .locals 4
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 126
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a02e1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 128
    .local v0, "kernelPath":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "/document/primary:"

    const-string v3, "/sdcard/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v0    # "kernelPath":Landroid/widget/EditText;
    .end local v1    # "filePath":Ljava/lang/String;
    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "No file selected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-KernelFragment(Landroid/widget/EditText;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "customCodename"    # Landroid/widget/EditText;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 94
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "CustomCodename":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/offsec/nethunter/KernelFragment;->checkKernel(Landroid/view/View;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-KernelFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "application/zip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/offsec/nethunter/KernelFragment;->filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v2, "Select zip file"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-KernelFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3
    .param p1, "kernelPath"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 112
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "kernelfilepath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bin/magic-flash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | awk \'gsub(/ui_print /,\" \") && !/^ $/\'; echo \'Exiting..\';exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/KernelFragment;->run_cmd_android(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 121
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/offsec/nethunter/KernelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->activity:Landroid/app/Activity;

    .line 123
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/KernelFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    move-object/from16 v0, p0

    const v1, 0x7f0d0067

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "rootView":Landroid/view/View;
    iget-object v5, v0, Lcom/offsec/nethunter/KernelFragment;->activity:Landroid/app/Activity;

    const-string v6, "com.offsec.nethunter"

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 60
    .local v2, "sharedpreferences":Landroid/content/SharedPreferences;
    const v5, 0x7f0a0159

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 61
    .local v5, "Device":Landroid/widget/TextView;
    const v6, 0x7f0a0116

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 62
    .local v6, "Codename":Landroid/widget/TextView;
    const v7, 0x7f0a0080

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 63
    .local v7, "Android":Landroid/widget/TextView;
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v8, 0x7f0a03e9

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 69
    .local v8, "repoSpinner":Landroid/widget/Spinner;
    const v9, 0x7f0a0139

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 70
    .local v9, "codenamesearchButton":Landroid/widget/Button;
    const v10, 0x7f0a0135

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 72
    .local v10, "customCodename":Landroid/widget/EditText;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v11, "repoKernels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "None"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v12, v0, Lcom/offsec/nethunter/KernelFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v13, "echo None;curl -s https://nethunter.kali.org/kernels.html | sed -n \'/<tr class/{n;p;n;p;}\' | sed \'s/<[^>]*>//g\' | sed \'n;/,/!s/^/- /\' | paste - - | awk \'!x[$0]++\' | tail -n +2"

    invoke-virtual {v12, v13}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 75
    .local v12, "codenamesList":[Ljava/lang/String;
    new-instance v13, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/KernelFragment;->requireContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x1090003

    invoke-direct {v13, v14, v15, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v8, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 77
    new-instance v13, Lcom/offsec/nethunter/KernelFragment$1;

    invoke-direct {v13, v0, v10}, Lcom/offsec/nethunter/KernelFragment$1;-><init>(Lcom/offsec/nethunter/KernelFragment;Landroid/widget/EditText;)V

    invoke-virtual {v8, v13}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 93
    new-instance v13, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda8;

    invoke-direct {v13, v0, v10, v1}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/KernelFragment;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v9, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v13, 0x7f0a02e0

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 100
    .local v13, "kernelbrowseButton":Landroid/widget/Button;
    new-instance v14, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda9;

    invoke-direct {v14, v0}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/KernelFragment;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v14, 0x7f0a0279

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 110
    .local v14, "flashButton":Landroid/widget/Button;
    const v15, 0x7f0a02e1

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 111
    .local v15, "kernelPath":Landroid/widget/EditText;
    move-object/from16 v16, v2

    .end local v2    # "sharedpreferences":Landroid/content/SharedPreferences;
    .local v16, "sharedpreferences":Landroid/content/SharedPreferences;
    new-instance v2, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0, v15}, Lcom/offsec/nethunter/KernelFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/KernelFragment;Landroid/widget/EditText;)V

    invoke-virtual {v14, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 211
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/offsec/nethunter/KernelFragment;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 213
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 220
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/KernelFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public run_cmd_android(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 224
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/KernelFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 226
    return-void
.end method
