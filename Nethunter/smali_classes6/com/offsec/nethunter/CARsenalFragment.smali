.class public Lcom/offsec/nethunter/CARsenalFragment;
.super Landroidx/fragment/app/Fragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/CARsenalFragment$TabsPagerAdapter;,
        Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;,
        Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;,
        Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$MainFragment;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "CANFragment"

.field private static sharedpreferences:Landroid/content/SharedPreferences;


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/CARsenalFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment;

    .line 77
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/SharedPreferences;
    .locals 1

    .line 77
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic lambda$RunAbout$4(Landroid/media/MediaPlayer;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 369
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 370
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    .line 371
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 372
    return-void
.end method

.method static synthetic lambda$SetupDialog$2(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 286
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 287
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "carsenal_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    return-void
.end method

.method static synthetic lambda$onCreateView$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 2
    .param p0, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p1, "position"    # I

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 119
    :pswitch_0
    const-string v0, "MSF"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 118
    :pswitch_1
    const-string v0, "Simulator"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 117
    :pswitch_2
    const-string v0, "Caribou"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 116
    :pswitch_3
    const-string v0, "CAN-USB"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 115
    :pswitch_4
    const-string v0, "Tools"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 114
    :pswitch_5
    const-string v0, "Main"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 122
    :goto_0
    return-void

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

.method public static newInstance(I)Lcom/offsec/nethunter/CARsenalFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 85
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 86
    .local v0, "fragment":Lcom/offsec/nethunter/CARsenalFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CARsenalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v0
.end method


# virtual methods
.method public RunAbout()V
    .locals 12

    .line 326
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 327
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d0027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 329
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0a0028

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 330
    .local v3, "aboutText":Landroid/widget/TextView;
    const v4, 0x7f0a0139

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 332
    .local v4, "creditsText":Landroid/widget/TextView;
    nop

    .line 333
    const v5, 0x7f13007b

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 332
    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 336
    nop

    .line 337
    const v5, 0x7f130103

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-static {v5, v6}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 341
    const v5, 0x7f0a0199

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 342
    .local v5, "easterEggButton":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const v8, 0x7f120006

    invoke-static {v7, v8}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v7

    .line 343
    .local v7, "mediaPlayer":Landroid/media/MediaPlayer;
    filled-new-array {v6}, [I

    move-result-object v8

    .line 345
    .local v8, "clickCount":[I
    new-instance v9, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v8, v7}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CARsenalFragment;[ILandroid/media/MediaPlayer;)V

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 358
    .local v9, "titleView":Landroid/widget/TextView;
    const v10, 0x7f13007a

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 359
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 360
    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 361
    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 362
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41800000    # 16.0f

    mul-float v2, v2, v10

    float-to-int v2, v2

    .line 363
    .local v2, "padding":I
    invoke-virtual {v9, v6, v2, v6, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 365
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v10, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const v11, 0x7f14012e

    invoke-direct {v6, v10, v11}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 366
    invoke-virtual {v6, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCustomTitle(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v6

    .line 367
    invoke-virtual {v6, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v6

    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, v7}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;-><init>(Landroid/media/MediaPlayer;)V

    .line 368
    const-string v11, "Close"

    invoke-virtual {v6, v11, v10}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v6

    .line 373
    invoke-virtual {v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 374
    return-void
.end method

.method public RunDocumentation()V
    .locals 4

    .line 294
    const-string v0, "https://www.kali.org/docs/nethunter/nethunter-carsenal/"

    .line 295
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 296
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 297
    return-void
.end method

.method public RunSetup()V
    .locals 6

    .line 301
    const-string v0, "RunSetup called"

    const-string v1, "CANFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 304
    const-string v0, "Running setup commands"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const-string v0, "echo -ne \"\\033]0;CARsenal Setup\\007\" && clear;which wget > /dev/null 2>&1 && wget -qO - https://raw.githubusercontent.com/V0lk3n/NetHunter-CARsenal/refs/heads/main/carsenal_setup.sh | bash -s setup || curl -s https://raw.githubusercontent.com/V0lk3n/NetHunter-CARsenal/refs/heads/main/carsenal_setup.sh | bash -s setup"

    .line 306
    .local v0, "setupCommand":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "setupResult":Ljava/lang/String;
    const-string v3, "SetupResult"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v3, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "carsenal_setup_done"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    const-string v3, "Setup completed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public RunUpdate()V
    .locals 6

    .line 314
    const-string v0, "RunUpdate called"

    const-string v1, "CANFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 317
    const-string v0, "Running update commands"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v0, "echo -ne \"\\033]0;CARsenal Update\\007\" && clear;which wget > /dev/null 2>&1 && wget -qO - https://raw.githubusercontent.com/V0lk3n/NetHunter-CARsenal/refs/heads/main/carsenal_setup.sh | bash -s update || curl -s https://raw.githubusercontent.com/V0lk3n/NetHunter-CARsenal/refs/heads/main/carsenal_setup.sh | bash -s update"

    .line 319
    .local v0, "updateCommand":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "updateResult":Ljava/lang/String;
    const-string v3, "UpdateResult"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object v3, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "carsenal_setup_done"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    const-string v3, "Update completed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public SetupDialog()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 278
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 279
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Welcome to CARsenal!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 280
    const-string v1, "This seems to be the first run. Install the CAN tools?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 281
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CARsenalFragment;)V

    const-string v2, "Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 285
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "Disable message"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 289
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 290
    return-void
.end method

.method synthetic lambda$RunAbout$3$com-offsec-nethunter-CARsenalFragment([ILandroid/media/MediaPlayer;Landroid/view/View;)V
    .locals 3
    .param p1, "clickCount"    # [I
    .param p2, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p3, "v"    # Landroid/view/View;

    .line 346
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 347
    aget v1, p1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 348
    const-string v1, "Hum??? What\'s up?"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment;->showToast(Ljava/lang/String;)V

    .line 350
    :cond_0
    aget v1, p1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 351
    invoke-virtual {p2}, Landroid/media/MediaPlayer;->start()V

    .line 352
    aput v0, p1, v0

    .line 354
    :cond_1
    return-void
.end method

.method synthetic lambda$SetupDialog$1$com-offsec-nethunter-CARsenalFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 282
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->RunSetup()V

    .line 283
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "carsenal_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 94
    const-string v0, "CANFragment"

    const-string v1, "onCreate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 96
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 102
    const v0, 0x7f0d0026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const-string v3, "com.offsec.nethunter"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 104
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$TabsPagerAdapter;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CARsenalFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 106
    .local v1, "tabsPagerAdapter":Lcom/offsec/nethunter/CARsenalFragment$TabsPagerAdapter;
    const v2, 0x7f0a03cf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 107
    .local v2, "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 110
    const v3, 0x7f0a04e5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    .line 111
    .local v3, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    new-instance v4, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v4, v3, v2, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 123
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 125
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/CARsenalFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment;)V

    invoke-virtual {v2, v4}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 133
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$2;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/CARsenalFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment;)V

    .line 270
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    .line 133
    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 272
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 3472
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3473
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 3725
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3726
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3727
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command executed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 3713
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->currentToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3714
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->currentToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3716
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->currentToast:Landroid/widget/Toast;

    .line 3717
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->currentToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3718
    return-void
.end method
