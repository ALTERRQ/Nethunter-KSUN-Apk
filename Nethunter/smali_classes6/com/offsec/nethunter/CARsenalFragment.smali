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
        Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;,
        Lcom/offsec/nethunter/CARsenalFragment$MainFragment;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final RESET_COOLDOWN:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "CANFragment"

.field private static sharedpreferences:Landroid/content/SharedPreferences;


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentToast:Landroid/widget/Toast;

.field private lastResetTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->lastResetTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/CARsenalFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment;

    .line 80
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/SharedPreferences;
    .locals 1

    .line 80
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic lambda$SetupDialog$2(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 261
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 262
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "carsenal_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    return-void
.end method

.method static synthetic lambda$onCreateView$0(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .locals 2
    .param p0, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;
    .param p1, "position"    # I

    .line 118
    packed-switch p1, :pswitch_data_0

    .line 125
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

    .line 124
    :pswitch_0
    const-string v0, "MSF"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 123
    :pswitch_1
    const-string v0, "ICSim"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 122
    :pswitch_2
    const-string v0, "Caribou"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 121
    :pswitch_3
    const-string v0, "CAN-USB"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 120
    :pswitch_4
    const-string v0, "Tools"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    goto :goto_0

    .line 119
    :pswitch_5
    const-string v0, "Main"

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 127
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

    .line 90
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 91
    .local v0, "fragment":Lcom/offsec/nethunter/CARsenalFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CARsenalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 94
    return-object v0
.end method

.method private safeReleaseMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .line 301
    if-eqz p1, :cond_1

    .line 303
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 309
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 311
    :cond_1
    return-void
.end method


# virtual methods
.method public RunAbout()V
    .locals 22

    .line 314
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 315
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d0027

    const/4 v6, 0x0

    invoke-virtual {v11, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 317
    .local v12, "dialogView":Landroid/view/View;
    const v0, 0x7f0a0028

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    .line 318
    .local v13, "aboutText":Landroid/widget/TextView;
    const v0, 0x7f0a012c

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 320
    .local v14, "creditsText":Landroid/widget/TextView;
    nop

    .line 321
    const v0, 0x7f130078

    invoke-virtual {v10, v0}, Lcom/offsec/nethunter/CARsenalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 324
    nop

    .line 325
    const v0, 0x7f130100

    invoke-virtual {v10, v0}, Lcom/offsec/nethunter/CARsenalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0, v7}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 329
    const v0, 0x7f0a0188

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/ImageView;

    .line 332
    .local v15, "easterEggButton":Landroid/widget/ImageView;
    iget-object v0, v10, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120007

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v9

    .line 333
    .local v9, "mediaPlayerVroom":Landroid/media/MediaPlayer;
    iget-object v0, v10, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const v1, 0x7f120006

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v8

    .line 335
    .local v8, "mediaPlayerAngry":Landroid/media/MediaPlayer;
    filled-new-array {v7}, [I

    move-result-object v3

    .line 336
    .local v3, "clickCount":[I
    const/4 v5, 0x1

    new-array v2, v5, [J

    const-wide/16 v0, 0x0

    aput-wide v0, v2, v7

    .line 337
    .local v2, "lastClickTime":[J
    const-wide/16 v16, 0x7d0

    .line 339
    .local v16, "CLICK_TIMEOUT":J
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda0;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v7, v4

    move-object v4, v9

    move-object/from16 v19, v11

    const/4 v11, 0x1

    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .local v19, "inflater":Landroid/view/LayoutInflater;
    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CARsenalFragment;[J[ILandroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v10, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 384
    .local v0, "titleView":Landroid/widget/TextView;
    const-string v1, "About CARsenal"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 386
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 387
    invoke-virtual {v0, v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 388
    iget-object v1, v10, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 389
    .local v1, "padding":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 392
    new-instance v4, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v5, v10, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const v6, 0x7f14012e

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 393
    invoke-virtual {v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCustomTitle(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    .line 394
    invoke-virtual {v4, v12}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, v10, v9, v8}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    .line 395
    const-string v6, "Close"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    .line 399
    invoke-virtual {v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v11

    .line 401
    .local v11, "dialog":Landroidx/appcompat/app/AlertDialog;
    new-instance v7, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda2;

    move-object v4, v7

    move-object/from16 v5, p0

    move-object v6, v3

    move-object/from16 v18, v0

    move-object v0, v7

    .end local v0    # "titleView":Landroid/widget/TextView;
    .local v18, "titleView":Landroid/widget/TextView;
    move-object v7, v2

    move-object/from16 v20, v8

    .end local v8    # "mediaPlayerAngry":Landroid/media/MediaPlayer;
    .local v20, "mediaPlayerAngry":Landroid/media/MediaPlayer;
    move-object v8, v9

    move-object/from16 v21, v9

    .end local v9    # "mediaPlayerVroom":Landroid/media/MediaPlayer;
    .local v21, "mediaPlayerVroom":Landroid/media/MediaPlayer;
    move-object/from16 v9, v20

    invoke-direct/range {v4 .. v9}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment;[I[JLandroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V

    invoke-virtual {v11, v0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 408
    invoke-virtual {v11}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 409
    return-void
.end method

.method public RunDocumentation()V
    .locals 4

    .line 269
    const-string v0, "https://www.kali.org/docs/nethunter/nethunter-canarsenal/"

    .line 270
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 272
    return-void
.end method

.method public RunSetup()V
    .locals 6

    .line 276
    const-string v0, "RunSetup called"

    const-string v1, "CANFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 279
    const-string v0, "Running setup commands"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "echo -ne \"\\033]0;CARsenal Setup\\007\" && clear;which wget > /dev/null 2>&1 && wget -qO - https://raw.githubusercontent.com/V0lk3n/NetHunter-CARsenal/refs/heads/main/carsenal_setup.sh | bash -s setup || curl -s https://raw.githubusercontent.com/V0lk3n/NetHunter-CARsenal/refs/heads/main/carsenal_setup.sh | bash -s setup"

    .line 281
    .local v0, "setupCommand":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "setupResult":Ljava/lang/String;
    const-string v3, "SetupResult"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v3, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "carsenal_setup_done"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 284
    const-string v3, "Setup completed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public RunUpdate()V
    .locals 6

    .line 289
    const-string v0, "RunUpdate called"

    const-string v1, "CANFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 292
    const-string v0, "Running update commands"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v0, "echo -ne \"\\033]0;CARsenal Update\\007\" && clear;which wget > /dev/null 2>&1 && wget -qO - https://raw.githubusercontent.com/V0lk3n/NetHunter-CARsenal/refs/heads/main/carsenal_setup.sh | bash -s update || curl -s https://raw.githubusercontent.com/V0lk3n/NetHunter-CARsenal/refs/heads/main/carsenal_setup.sh | bash -s update"

    .line 294
    .local v0, "updateCommand":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "updateResult":Ljava/lang/String;
    const-string v3, "UpdateResult"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v3, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "carsenal_setup_done"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    const-string v3, "Update completed"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public SetupDialog()V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 253
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 254
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Welcome to CARsenal!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 255
    const-string v1, "This seems to be the first run. Install the CAN tools?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 256
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CARsenalFragment;)V

    const-string v2, "Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 260
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "Disable message"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 264
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 265
    return-void
.end method

.method synthetic lambda$RunAbout$3$com-offsec-nethunter-CARsenalFragment([J[ILandroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/view/View;)V
    .locals 8
    .param p1, "lastClickTime"    # [J
    .param p2, "clickCount"    # [I
    .param p3, "mediaPlayerVroom"    # Landroid/media/MediaPlayer;
    .param p4, "mediaPlayerAngry"    # Landroid/media/MediaPlayer;
    .param p5, "v"    # Landroid/view/View;

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 343
    .local v0, "now":J
    iget-wide v2, p0, Lcom/offsec/nethunter/CARsenalFragment;->lastResetTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 344
    return-void

    .line 348
    :cond_0
    const/4 v2, 0x0

    aget-wide v3, p1, v2

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7d0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 349
    aput v2, p2, v2

    .line 352
    :cond_1
    aput-wide v0, p1, v2

    .line 353
    aget v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v2

    .line 355
    aget v3, p2, v2

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 373
    :sswitch_0
    :try_start_0
    invoke-virtual {p4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p4, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 374
    :cond_2
    invoke-virtual {p4}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v3

    :goto_0
    nop

    .line 376
    aput v2, p2, v2

    .line 377
    iput-wide v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->lastResetTime:J

    goto :goto_1

    .line 369
    :sswitch_1
    const-string v2, "GRMBLBLBL... This is your LAST warning!"

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment;->showToast(Ljava/lang/String;)V

    .line 370
    goto :goto_1

    .line 366
    :sswitch_2
    const-string v2, "Ok. It was funny, but don\'t make me angry..."

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment;->showToast(Ljava/lang/String;)V

    .line 367
    goto :goto_1

    .line 361
    :sswitch_3
    :try_start_1
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p3, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 362
    :cond_3
    invoke-virtual {p3}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    goto :goto_1

    :catch_1
    move-exception v2

    .line 364
    goto :goto_1

    .line 357
    :sswitch_4
    const-string v2, "Hum??? What\'s up?"

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment;->showToast(Ljava/lang/String;)V

    .line 358
    nop

    .line 380
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x6 -> :sswitch_3
        0xf -> :sswitch_2
        0x19 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic lambda$RunAbout$4$com-offsec-nethunter-CARsenalFragment(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "mediaPlayerVroom"    # Landroid/media/MediaPlayer;
    .param p2, "mediaPlayerAngry"    # Landroid/media/MediaPlayer;
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "id"    # I

    .line 396
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->safeReleaseMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 397
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/CARsenalFragment;->safeReleaseMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 398
    return-void
.end method

.method synthetic lambda$RunAbout$5$com-offsec-nethunter-CARsenalFragment([I[JLandroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "clickCount"    # [I
    .param p2, "lastClickTime"    # [J
    .param p3, "mediaPlayerVroom"    # Landroid/media/MediaPlayer;
    .param p4, "mediaPlayerAngry"    # Landroid/media/MediaPlayer;
    .param p5, "d"    # Landroid/content/DialogInterface;

    .line 402
    const/4 v0, 0x0

    aput v0, p1, v0

    .line 403
    const-wide/16 v1, 0x0

    aput-wide v1, p2, v0

    .line 404
    invoke-direct {p0, p3}, Lcom/offsec/nethunter/CARsenalFragment;->safeReleaseMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 405
    invoke-direct {p0, p4}, Lcom/offsec/nethunter/CARsenalFragment;->safeReleaseMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 406
    return-void
.end method

.method synthetic lambda$SetupDialog$1$com-offsec-nethunter-CARsenalFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 257
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->RunSetup()V

    .line 258
    sget-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "carsenal_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 259
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 99
    const-string v0, "CANFragment"

    const-string v1, "onCreate called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 101
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 107
    const v0, 0x7f0d0026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    const-string v3, "com.offsec.nethunter"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/offsec/nethunter/CARsenalFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 109
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$TabsPagerAdapter;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CARsenalFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 111
    .local v1, "tabsPagerAdapter":Lcom/offsec/nethunter/CARsenalFragment$TabsPagerAdapter;
    const v2, 0x7f0a03a7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 112
    .local v2, "mViewPager":Landroidx/viewpager2/widget/ViewPager2;
    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 115
    const v3, 0x7f0a04ab

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    .line 116
    .local v3, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    new-instance v4, Lcom/google/android/material/tabs/TabLayoutMediator;

    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {v4, v3, v2, v5}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    .line 128
    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 130
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/CARsenalFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment;)V

    invoke-virtual {v2, v4}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 138
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$2;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/CARsenalFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment;)V

    .line 245
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v6

    .line 138
    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 247
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2844
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2845
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 3064
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3065
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3066
    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3067
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

    .line 3052
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->currentToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3053
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->currentToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3055
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->currentToast:Landroid/widget/Toast;

    .line 3056
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment;->currentToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3057
    return-void
.end method
