.class public Lcom/offsec/nethunter/HidFragment;
.super Landroidx/fragment/app/Fragment;
.source "HidFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;,
        Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;,
        Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;,
        Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field protected final filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private isHIDenable:Z

.field private final languages:[Ljava/lang/CharSequence;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private final platforms:[Ljava/lang/CharSequence;

.field private sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 47
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "No UAC Bypass"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Windows 7"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Windows 8"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Windows 10"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/offsec/nethunter/HidFragment;->platforms:[Ljava/lang/CharSequence;

    .line 48
    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "American English"

    aput-object v2, v1, v3

    const-string v2, "Belgian"

    aput-object v2, v1, v4

    const-string v2, "British English"

    aput-object v2, v1, v5

    const-string v2, "Danish"

    aput-object v2, v1, v6

    const-string v2, "French"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "German"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "Italian"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "Norwegian"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "Portuguese"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "Russian"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "Spanish"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "Swedish"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "Canadian Multilingual"

    aput-object v2, v1, v0

    const/16 v0, 0xd

    const-string v2, "Canadian"

    aput-object v2, v1, v0

    const/16 v0, 0xe

    const-string v2, "Hungarian"

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/offsec/nethunter/HidFragment;->languages:[Ljava/lang/CharSequence;

    .line 53
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 62
    iput-boolean v3, p0, Lcom/offsec/nethunter/HidFragment;->isHIDenable:Z

    .line 63
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    .line 64
    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/HidFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment;->filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/HidFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/HidFragment;

    .line 44
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private check_HID_enable()V
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 648
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 649
    return-void
.end method

.method static synthetic lambda$openDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 268
    return-void
.end method

.method static synthetic lambda$openLanguageDialog$5(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 285
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/HidFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 56
    new-instance v0, Lcom/offsec/nethunter/HidFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/HidFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lcom/offsec/nethunter/HidFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/HidFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v0
.end method

.method private openDialog()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "UACBypassIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, "UACBypassIndex":I
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 266
    .local v1, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v2, "UAC Bypass:"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 267
    new-instance v2, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda6;-><init>()V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 270
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->platforms:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 275
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 276
    return-void
.end method

.method private openLanguageDialog()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "HIDKeyboardLayoutIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "keyboardLayoutIndex":I
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 282
    .local v1, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v2, "Keyboard Layout:"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 283
    new-instance v2, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda4;-><init>()V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 287
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->languages:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 292
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 293
    return-void
.end method

.method private reset()V
    .locals 4

    .line 257
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 258
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v1, "stop-badusb"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "command":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v3, "Reseting USB"

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private start()V
    .locals 9

    .line 157
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "HIDKeyboardLayoutIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 159
    .local v0, "keyboardLayoutIndex":I
    packed-switch v0, :pswitch_data_0

    .line 203
    const-string v1, "us"

    .local v1, "lang":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_0
    const-string v1, "hu"

    .line 201
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_1
    const-string v1, "ca"

    .line 198
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 194
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_2
    const-string v1, "cm"

    .line 195
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_3
    const-string v1, "sv"

    .line 192
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 188
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_4
    const-string v1, "es"

    .line 189
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 185
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_5
    const-string v1, "ru"

    .line 186
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_6
    const-string v1, "pt"

    .line 183
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_7
    const-string v1, "no"

    .line 180
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_8
    const-string v1, "it"

    .line 177
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_9
    const-string v1, "de"

    .line 174
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_a
    const-string v1, "fr"

    .line 171
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_b
    const-string v1, "dk"

    .line 168
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_c
    const-string v1, "uk"

    .line 165
    .restart local v1    # "lang":Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v1    # "lang":Ljava/lang/String;
    :pswitch_d
    const-string v1, "be"

    .line 162
    .restart local v1    # "lang":Ljava/lang/String;
    nop

    .line 207
    :goto_0
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v4, "UACBypassIndex"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 208
    .local v3, "UACBypassIndex":I
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 209
    .local v5, "command":[Ljava/lang/String;
    iget-object v6, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    .line 210
    .local v6, "pageNum":I
    const-string v7, "\'"

    const-string v8, "su -c \'"

    if-nez v6, :cond_0

    .line 211
    packed-switch v3, :pswitch_data_1

    .line 225
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v4, "No option selected 1"

    invoke-static {v2, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    goto/16 :goto_1

    .line 222
    :pswitch_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bootkali start-rev-met-elevated-win10 --"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 223
    goto/16 :goto_1

    .line 219
    :pswitch_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bootkali start-rev-met-elevated-win8 --"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 220
    goto/16 :goto_1

    .line 216
    :pswitch_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bootkali start-rev-met-elevated-win7 --"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 217
    goto/16 :goto_1

    .line 213
    :pswitch_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bootkali start-rev-met --"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 214
    goto/16 :goto_1

    .line 228
    :cond_0
    if-ne v6, v4, :cond_1

    .line 229
    packed-switch v3, :pswitch_data_2

    .line 243
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v4, "No option selected 2"

    invoke-static {v2, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    :pswitch_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bootkali hid-cmd-elevated-win10 --"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 241
    goto :goto_1

    .line 237
    :pswitch_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bootkali hid-cmd-elevated-win8 --"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 238
    goto :goto_1

    .line 234
    :pswitch_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bootkali hid-cmd-elevated-win7 --"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 235
    goto :goto_1

    .line 231
    :pswitch_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/bootkali hid-cmd --"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    .line 232
    nop

    .line 247
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const v4, 0x7f130085

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/HidFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v5}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/HidFragment;[Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 253
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 254
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$check_HID_enable$7$com-offsec-nethunter-HidFragment()V
    .locals 8

    .line 639
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 640
    .local v0, "exe_check":Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v1, "/dev/hidg0"

    const-string v2, "/dev/hidg1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "hidgs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 642
    .local v5, "hidg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "su -c \"stat -c \'%a\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "666"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 643
    iput-boolean v3, p0, Lcom/offsec/nethunter/HidFragment;->isHIDenable:Z

    .line 644
    goto :goto_1

    .line 646
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/offsec/nethunter/HidFragment;->isHIDenable:Z

    .line 641
    .end local v5    # "hidg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 648
    :cond_1
    :goto_1
    return-void
.end method

.method synthetic lambda$new$0$com-offsec-nethunter-HidFragment(Landroidx/activity/result/ActivityResult;)V
    .locals 4
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 65
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0531

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 68
    .local v1, "source":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v2, v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 69
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v3, "Script loaded"

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "source":Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method synthetic lambda$openDialog$4$com-offsec-nethunter-HidFragment(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 271
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 272
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "UACBypassIndex"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    return-void
.end method

.method synthetic lambda$openLanguageDialog$6$com-offsec-nethunter-HidFragment(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 288
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "HIDKeyboardLayoutIndex"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 291
    return-void
.end method

.method synthetic lambda$start$1$com-offsec-nethunter-HidFragment()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v1, "Attack execution ended."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$start$2$com-offsec-nethunter-HidFragment([Ljava/lang/String;)V
    .locals 3
    .param p1, "command"    # [Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 250
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/HidFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 104
    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    const v0, 0x7f0d0056

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "rootView":Landroid/view/View;
    new-instance v2, Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 85
    .local v2, "tabsPagerAdapter":Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;
    const v3, 0x7f0a03a9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    iput-object v3, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 86
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/var/www/html/powersploit-payload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/offsec/nethunter/HidFragment;->configFilePath:Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lcom/offsec/nethunter/HidFragment$1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/HidFragment$1;-><init>(Lcom/offsec/nethunter/HidFragment;)V

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 96
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/HidFragment;->setHasOptionsMenu(Z)V

    .line 97
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    const-string v4, "com.offsec.nethunter"

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/HidFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 98
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->check_HID_enable()V

    .line 99
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 124
    .local v0, "id":I
    const v1, 0x7f0a0491

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 125
    iget-boolean v1, p0, Lcom/offsec/nethunter/HidFragment;->isHIDenable:Z

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->start()V

    goto :goto_0

    .line 128
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/config/usb_gadget/g1"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v3, "HID interfaces are not enabled! Please enable in USB Arsenal."

    invoke-static {v1, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/dev/hidg0"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v3, "Fixing HID interface permissions.."

    invoke-static {v1, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "chmod 666 /dev/hidg*"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment;->context:Landroid/content/Context;

    const-string v3, "HID interfaces are not patched or enabled, please check your kernel configuration."

    invoke-static {v1, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :goto_0
    return v2

    .line 137
    :cond_3
    const v1, 0x7f0a04a0

    if-ne v0, v1, :cond_4

    .line 138
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->reset()V

    .line 139
    return v2

    .line 140
    :cond_4
    const v1, 0x7f0a0076

    if-ne v0, v1, :cond_5

    .line 141
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->openDialog()V

    .line 142
    return v2

    .line 143
    :cond_5
    const v1, 0x7f0a010c

    if-ne v0, v1, :cond_6

    .line 144
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;->openLanguageDialog()V

    .line 145
    return v2

    .line 146
    :cond_6
    const v1, 0x7f0a0452

    if-ne v0, v1, :cond_7

    .line 147
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    const-class v4, Lcom/offsec/nethunter/EditSourceActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "path"

    iget-object v4, p0, Lcom/offsec/nethunter/HidFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/HidFragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    return v2

    .line 152
    .end local v1    # "i":Landroid/content/Intent;
    :cond_7
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 109
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 110
    .local v0, "pageNum":I
    const v1, 0x7f0a0452

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 112
    .local v1, "sourceButton":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 113
    .local v2, "iswatch":Z
    if-nez v0, :cond_0

    .line 114
    xor-int/lit8 v3, v2, 0x1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 116
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 118
    :goto_0
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 119
    return-void
.end method
