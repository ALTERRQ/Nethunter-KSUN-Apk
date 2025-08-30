.class public Lcom/offsec/nethunter/SettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SettingsFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final PREF_FILE:Ljava/lang/String; = "com.offsec.nethunter"

.field private static final TAG:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private final filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private selected_animation:Ljava/lang/String;

.field private selected_prompt:Ljava/lang/String;

.field private sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 624
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/SettingsFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/SettingsFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/SettingsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/SettingsFragment;

    .line 53
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->selected_animation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/offsec/nethunter/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment;->selected_animation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/SettingsFragment;

    .line 53
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SettingsFragment;

    .line 53
    invoke-direct {p0}, Lcom/offsec/nethunter/SettingsFragment;->bootanimation_start()V

    return-void
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment;->selected_prompt:Ljava/lang/String;

    return-object p1
.end method

.method private addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "_button"    # Landroid/widget/Button;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 662
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    return-void
.end method

.method private bootanimation_start()V
    .locals 2

    .line 616
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0517

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 617
    .local v0, "videoview":Landroid/widget/VideoView;
    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 618
    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/VideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 622
    return-void
.end method

.method private hasStoragePermission()Z
    .locals 9

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "GRANTED"

    const-string v3, "DENIED"

    const-string v4, "SettingsFragment"

    if-lt v0, v1, :cond_1

    .line 69
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    .line 70
    .local v0, "granted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MANAGE_EXTERNAL_STORAGE permission check: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0

    .line 73
    .end local v0    # "granted":Z
    :cond_1
    const/4 v0, 0x0

    .line 74
    .local v0, "readGranted":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v1, v5, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    .line 77
    :cond_3
    const/4 v1, 0x0

    .line 78
    .local v1, "writeGranted":Z
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v5, :cond_5

    .line 79
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v5, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    move v1, v5

    .line 81
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "READ/WRITE_EXTERNAL_STORAGE permission check: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    return v6
.end method

.method static synthetic lambda$bootanimation_start$18(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V
    .locals 1
    .param p0, "videoview"    # Landroid/widget/VideoView;
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 619
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 620
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 621
    return-void
.end method

.method static synthetic lambda$onCreateView$2(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5
    .param p0, "ImageWidth"    # Landroid/widget/EditText;
    .param p1, "ImageHeight"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 311
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "imagewidth":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x6c

    .line 313
    .local v1, "finalValueIW":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "imageheight":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit16 v3, v3, -0xc0

    .line 316
    .local v3, "finalValueIH":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method

.method static synthetic lambda$onCreateView$3(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5
    .param p0, "ImageWidth"    # Landroid/widget/EditText;
    .param p1, "ImageHeight"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 319
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "imagewidth":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x6c

    .line 321
    .local v1, "finalValueIW":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "imageheight":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit16 v3, v3, 0xc0

    .line 324
    .local v3, "finalValueIH":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method static synthetic lambda$onCreateView$4(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5
    .param p0, "FinalWidth"    # Landroid/widget/EditText;
    .param p1, "FinalHeight"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 327
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "finalwidth":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x6c

    .line 329
    .local v1, "finalValueFW":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "finalheight":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit16 v3, v3, -0xc0

    .line 332
    .local v3, "finalValueFH":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    return-void
.end method

.method static synthetic lambda$onCreateView$5(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 5
    .param p0, "FinalWidth"    # Landroid/widget/EditText;
    .param p1, "FinalHeight"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 335
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "finalwidth":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x6c

    .line 337
    .local v1, "finalValueFW":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "finalheight":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit16 v3, v3, 0xc0

    .line 340
    .local v3, "finalValueFH":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method

.method static synthetic lambda$onCreateView$6(Landroid/view/View;Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p0, "PreView"    # Landroid/view/View;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 347
    if-eqz p2, :cond_0

    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 350
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :goto_0
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/SettingsFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 114
    new-instance v0, Lcom/offsec/nethunter/SettingsFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/SettingsFragment;-><init>()V

    .line 115
    .local v0, "fragment":Lcom/offsec/nethunter/SettingsFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 118
    return-object v0
.end method

.method private requestStoragePermission()V
    .locals 3

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "SettingsFragment"

    if-lt v0, v1, :cond_0

    .line 88
    const-string v0, "Requesting MANAGE_EXTERNAL_STORAGE permission"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 93
    :cond_0
    const-string v0, "Requesting READ/WRITE_EXTERNAL_STORAGE permissions"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/SettingsFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/SettingsFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    .line 106
    .local v0, "storagePermissionLauncher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<[Ljava/lang/String;>;"
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 111
    .end local v0    # "storagePermissionLauncher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<[Ljava/lang/String;>;"
    :goto_0
    return-void
.end method


# virtual methods
.method public RunSetup()V
    .locals 3

    .line 649
    const-string v0, "echo -ne \"\\033]0;Bootanimation Setup\\007\" && clear;if [[ -f /usr/bin/convert ]];then echo \'Imagemagick is installed!\'; else apt update && apt install imagemagick -y;fi; if [[ -f /root/nethunter-bootanimation ]];then echo \'nethunter-bootanimation is installed!\'; else git clone https://gitlab.com/kalilinux/nethunter/build-scripts/kali-nethunter-bootanimation /root/nethunter-bootanimation;fi; echo \'Everything is ready! Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SettingsFragment;->run_cmd(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "animation_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 653
    return-void
.end method

.method public RunUpdate()V
    .locals 3

    .line 656
    const-string v0, "echo -ne \"\\033]0;Bootanimation Update\\007\" && clear;apt update && apt install imagemagick -y;if [[ -d /root/nethunter-bootanimation ]];then cd /root/nethunter-bootanimation;git pull;fi; echo \'Done! Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SettingsFragment;->run_cmd(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "animation_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 659
    return-void
.end method

.method public SetupDialog()V
    .locals 3

    .line 638
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 639
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Welcome to Settings!"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 640
    const-string v1, "In order to make sure everything is working, an initial setup needs to be done."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 641
    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/SettingsFragment;)V

    const-string v2, "Check & Install"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 645
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 646
    return-void
.end method

.method synthetic lambda$SetupDialog$20$com-offsec-nethunter-SettingsFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 642
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->RunSetup()V

    .line 643
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "animation_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 644
    return-void
.end method

.method synthetic lambda$new$19$com-offsec-nethunter-SettingsFragment(Landroidx/activity/result/ActivityResult;)V
    .locals 5
    .param p1, "result"    # Landroidx/activity/result/ActivityResult;

    .line 627
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 628
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 629
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a03f3

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 630
    .local v1, "RestoreFileName":Landroid/widget/EditText;
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, "FilePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | sed -e \'s/\\/document\\/primary:/\\/sdcard\\//g\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 634
    .end local v0    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .end local v1    # "RestoreFileName":Landroid/widget/EditText;
    .end local v2    # "FilePath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-SettingsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "ImageWidth"    # Landroid/widget/EditText;
    .param p2, "ImageHeight"    # Landroid/widget/EditText;
    .param p3, "ImageResMinus"    # Landroid/widget/Button;
    .param p4, "ImageResPlus"    # Landroid/widget/Button;
    .param p5, "buttonView"    # Landroid/widget/CompoundButton;
    .param p6, "isChecked"    # Z

    .line 266
    const/4 v0, 0x0

    const/16 v1, 0x17

    if-eqz p6, :cond_3

    .line 267
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 268
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0x7f060411

    if-lt v3, v1, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 271
    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 272
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 275
    :cond_1
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 279
    :cond_2
    invoke-virtual {p4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 280
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_8

    .line 281
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    .line 284
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 285
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0x7f06040f

    const-string v5, "#40FFFFFF"

    if-lt v3, v1, :cond_4

    .line 286
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 288
    :cond_4
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 290
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 291
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_5

    .line 292
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 294
    :cond_5
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 296
    :goto_1
    invoke-virtual {p3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_6

    .line 298
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 300
    :cond_6
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 302
    :goto_2
    invoke-virtual {p4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_7

    .line 304
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    .line 306
    :cond_7
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 309
    :cond_8
    :goto_3
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-SettingsFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v1, "application/x-tar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment;->filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v2, "Select archive file"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-SettingsFragment(Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 8
    .param p1, "RestoreFileName"    # Landroid/widget/EditText;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "v"    # Landroid/view/View;

    .line 454
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "RestoreFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v1, "RestoreFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Select a backup file to restore!"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 459
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rm -r "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/nh_files/* && tar -xvf "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -C "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/nh_files/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "nh_files has been successfully restored"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 462
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-SettingsFragment(Ljava/io/File;Landroid/view/View;)V
    .locals 5
    .param p1, "NhSystemApp"    # Ljava/io/File;
    .param p2, "v"    # Landroid/view/View;

    .line 468
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NetHunter was not flashed as system app! Please remove it from Android settings."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 471
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo -ne \"\\033]0;Uninstalling NetHunter\\007\" && clear;grep \' / \' /proc/mounts | grep -qv \'rootfs\' || grep -q \' /system_root \' /proc/mounts && SYSTEM=/ || SYSTEM=/system && mount -o rw,remount $SYSTEM && rm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " && pm clear com.offsec.nethunter && echo \'Done! Reboot your device to complete the process. Exiting in 3secs..\' && sleep 3 && exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SettingsFragment;->run_cmd_android(Ljava/lang/String;)V

    .line 474
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-SettingsFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "btn"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .line 480
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SELinuxOnBoot"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-SettingsFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 5
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "SELinuxButton"    # Landroid/widget/Button;
    .param p3, "SELinux"    # Landroid/widget/TextView;
    .param p4, "v"    # Landroid/view/View;

    .line 495
    const-string v0, "getenforce"

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "selinux_status_now":Ljava/lang/String;
    const-string v1, "Permissive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SElinux"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 497
    const-string v1, "setenforce 1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 498
    const-string v1, "Set to Permissive"

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const-string v1, "Enforcing"

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SElinux set to Enforcing done"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 501
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 503
    :cond_0
    const-string v2, "setenforce 0"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 504
    const-string v2, "Set to Enforcing"

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SElinux set to Permissive done"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 507
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-SettingsFragment([Ljava/lang/String;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 4
    .param p1, "busybox_file"    # [Ljava/lang/String;
    .param p2, "finalBusyboxPath"    # Ljava/lang/String;
    .param p3, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p4, "v"    # Landroid/view/View;

    .line 557
    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 558
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, "busybox":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "if [ \"$(getprop ro.build.system_root_image)\" == \"true\" ]; then export SYSTEM=/; else export SYSTEM=/system;fi;mount -o rw,remount $SYSTEM && rm /system/bin/busybox_nh;ln -s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /system/bin/busybox_nh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "NetHunter BusyBox version has been successfully modified"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 561
    .end local v1    # "busybox":Ljava/io/File;
    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Please select a BusyBox version first!"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 564
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-SettingsFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 3
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "v"    # Landroid/view/View;

    .line 577
    const-string v0, "if [ \"$(getprop ro.build.system_root_image)\" == \"true\" ]; then export SYSTEM=/; else export SYSTEM=/system;fi;mount -o rw,remount $SYSTEM && rm /system/bin/busybox;ln -s /system/bin/busybox_nh /system/bin/busybox"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Default system BusyBox has been changed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 579
    return-void
.end method

.method synthetic lambda$onCreateView$17$com-offsec-nethunter-SettingsFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "TerminalStyle"    # Landroid/widget/TextView;
    .param p3, "v"    # Landroid/view/View;

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd sed -i \'0,/.*PROMPT_ALTERNATIVE=.*/s//PROMPT_ALTERNATIVE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment;->selected_prompt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\' /root/.zshrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 608
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Zsh terminal prompt style has been successfully changed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 609
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->selected_prompt:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-SettingsFragment(Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;[Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 7
    .param p1, "ConvertCheckbox"    # Landroid/widget/CheckBox;
    .param p2, "ImageWidth"    # Landroid/widget/EditText;
    .param p3, "ImageHeight"    # Landroid/widget/EditText;
    .param p4, "animation_dir"    # [Ljava/lang/String;
    .param p5, "FinalWidth"    # Landroid/widget/EditText;
    .param p6, "FinalHeight"    # Landroid/widget/EditText;
    .param p7, "FPS"    # Landroid/widget/EditText;
    .param p8, "v"    # Landroid/view/View;

    .line 392
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, " "

    const-string v2, "x"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->selected_animation:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->selected_animation:Ljava/lang/String;

    const-string v4, "Burning"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string v0, ""

    .local v0, "foldersCMD":Ljava/lang/String;
    goto :goto_0

    .line 396
    .end local v0    # "foldersCMD":Ljava/lang/String;
    :cond_0
    const-string v0, " new/part1 new/part2"

    .line 398
    .restart local v0    # "foldersCMD":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " -resize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 399
    .local v4, "resizeCMD":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mkdir -p new/part0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " && echo \'Converting images...\'&& for i in {0000..0100}; do convert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/part0/$i.jpg new/part0/$i.jpg >/dev/null 2>&1; done; echo \"[+] part0 done\" && if [ -d new/part1 ]; then for i in {0000..0200}; do convert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/part1/$i.jpg new/part1/$i.jpg >/dev/null 2>&1; done; fi; echo \'[+] part1 done\' && if [ -d new/part2 ]; then for i in {0000..0200}; do convert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/part2/$i.jpg new/part2/$i.jpg >/dev/null 2>&1; done; fi; echo \'[+] part2 done\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "imagesCMD":Ljava/lang/String;
    goto :goto_1

    .line 404
    .end local v0    # "foldersCMD":Ljava/lang/String;
    .end local v4    # "resizeCMD":Ljava/lang/String;
    .end local v5    # "imagesCMD":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mkdir new && cp -r "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v4, p4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/part* new/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 406
    .restart local v5    # "imagesCMD":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "finalRES":Ljava/lang/String;
    invoke-virtual {p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "finalFPS":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo -ne \"\\033]0;Building animation\\007\" && clear;cd /root/nethunter-bootanimation &&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " && cp "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, p4, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/desc.txt new/ && sed -i \'1s/.*/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/\' new/desc.txt && sed -i \'s/x/ /g\' new/desc.txt && cd new && zip -0 -FSr -q /sdcard/bootanimation.zip * && cd .. && rm -r new && echo \"Done. Head back to NetHunter to install the bootanimation! Exiting in 3secs..\" && sleep 3 && exit"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/SettingsFragment;->run_cmd(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-SettingsFragment(Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 6
    .param p1, "bootanimation_mount"    # Ljava/lang/String;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "BootanimationPath"    # Landroid/widget/EditText;
    .param p4, "v"    # Landroid/view/View;

    .line 415
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bootanimation.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "AnimationZip":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Bootanimation zip is not created!!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, " && echo \"Done. Please reboot to check the result! Exiting in 3secs..\" && sleep 3 && exit"

    const-string v3, "/bootanimation.zip "

    if-eqz v1, :cond_1

    .line 420
    const-string v1, "mount | grep \"media/bootanimation\" | awk {\'print $3\'}"

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "mount_path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo -ne \"\\033]0;Installing animation\\007\" && clear;grep \' / \' /proc/mounts | grep -qv \'rootfs\' || grep -q \' /system_root \' /proc/mounts && SYSTEM=/ || SYSTEM=/system && mount -o rw,remount "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " && cp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 422
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/SettingsFragment;->run_cmd_android(Ljava/lang/String;)V

    .line 424
    .end local v1    # "mount_path":Ljava/lang/String;
    goto :goto_0

    .line 425
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo -ne \"\\033]0;Installing animation\\007\" && clear;grep \' / \' /proc/mounts | grep -qv \'rootfs\' || grep -q \' /system_root \' /proc/mounts && SYSTEM=/ || SYSTEM=/system && mount -o rw,remount $SYSTEM && cp "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/SettingsFragment;->run_cmd_android(Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-SettingsFragment(Ljava/text/SimpleDateFormat;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 4
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "v"    # Landroid/view/View;

    .line 436
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "currentDateandTime":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/nh_files && tar -czvf /sdcard/nh_files_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tar *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Backup has been saved to /sdcard/nh_files_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 439
    return-void
.end method

.method synthetic lambda$requestStoragePermission$0$com-offsec-nethunter-SettingsFragment(Ljava/util/Map;)V
    .locals 5
    .param p1, "result"    # Ljava/util/Map;

    .line 97
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v3, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    .local v0, "readGranted":Z
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v4, v2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 99
    .local v2, "writeGranted":Z
    const-string v3, "SettingsFragment"

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 100
    const-string v1, "READ/WRITE_EXTERNAL_STORAGE permissions granted"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_0
    const-string v4, "READ/WRITE_EXTERNAL_STORAGE permissions denied"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Storage permissions are required for this feature."

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 105
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 123
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->context:Landroid/content/Context;

    .line 125
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->activity:Landroid/app/Activity;

    .line 126
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 129
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 64
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 158
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    const/4 v11, 0x0

    if-nez v10, :cond_0

    .line 159
    const-string v0, "SettingsFragment"

    const-string v1, "Container is null. Cannot inflate layout."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-object v11

    .line 163
    :cond_0
    const v0, 0x7f0d00db

    const/4 v12, 0x0

    move-object/from16 v13, p1

    invoke-virtual {v13, v0, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 166
    .local v14, "rootView":Landroid/view/View;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/SettingsFragment;->hasStoragePermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/SettingsFragment;->requestStoragePermission()V

    .line 173
    :cond_1
    iget-object v0, v9, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "animation_setup_done"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/SettingsFragment;->SetupDialog()V

    .line 178
    :cond_2
    const-string v0, "ctOS"

    const-string v1, "Glitch"

    const-string v2, "Classic"

    const-string v3, "Burning"

    const-string v4, "New Kali"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 179
    .local v15, "animations":[Ljava/lang/String;
    const v0, 0x7f0a0084

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Spinner;

    .line 180
    .local v8, "animation_spinner":Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v7, 0x1090003

    invoke-direct {v0, v1, v7, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 185
    .local v6, "animation_dir":[Ljava/lang/String;
    new-instance v0, Lcom/offsec/nethunter/SettingsFragment$2;

    invoke-direct {v0, v9, v14, v6}, Lcom/offsec/nethunter/SettingsFragment$2;-><init>(Lcom/offsec/nethunter/SettingsFragment;Landroid/view/View;[Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 250
    const v0, 0x7f0a0124

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/CheckBox;

    .line 253
    .local v5, "ConvertCheckbox":Landroid/widget/CheckBox;
    const v0, 0x7f0a02c3

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 254
    .local v4, "ImageWidth":Landroid/widget/EditText;
    const v0, 0x7f0a02c2

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    .line 255
    .local v3, "ImageHeight":Landroid/widget/EditText;
    const v0, 0x7f0a026f

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 256
    .local v2, "FinalWidth":Landroid/widget/EditText;
    const v0, 0x7f0a026e

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/EditText;

    .line 257
    .local v1, "FinalHeight":Landroid/widget/EditText;
    const v0, 0x7f0a02c4

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 258
    .local v0, "ImageResMinus":Landroid/widget/Button;
    const v7, 0x7f0a02c5

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 259
    .local v7, "ImageResPlus":Landroid/widget/Button;
    const v11, 0x7f0a0270

    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 260
    .local v11, "FinalResMinus":Landroid/widget/Button;
    const v12, 0x7f0a0271

    invoke-virtual {v14, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 261
    .local v12, "FinalResPlus":Landroid/widget/Button;
    move-object/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "FinalHeight":Landroid/widget/EditText;
    .local v19, "FinalHeight":Landroid/widget/EditText;
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 262
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;

    move-object/from16 v20, v0

    .end local v0    # "ImageResMinus":Landroid/widget/Button;
    .local v20, "ImageResMinus":Landroid/widget/Button;
    move-object v0, v1

    move-object/from16 v10, v19

    move-object/from16 v19, v8

    move-object v8, v1

    .end local v8    # "animation_spinner":Landroid/widget/Spinner;
    .local v10, "FinalHeight":Landroid/widget/EditText;
    .local v19, "animation_spinner":Landroid/widget/Spinner;
    move-object/from16 v1, p0

    move-object/from16 v21, v11

    move-object v11, v2

    .end local v2    # "FinalWidth":Landroid/widget/EditText;
    .local v11, "FinalWidth":Landroid/widget/EditText;
    .local v21, "FinalResMinus":Landroid/widget/Button;
    move-object v2, v4

    move-object/from16 v22, v3

    .end local v3    # "ImageHeight":Landroid/widget/EditText;
    .local v22, "ImageHeight":Landroid/widget/EditText;
    move-object/from16 v23, v12

    move-object v12, v4

    .end local v4    # "ImageWidth":Landroid/widget/EditText;
    .local v12, "ImageWidth":Landroid/widget/EditText;
    .local v23, "FinalResPlus":Landroid/widget/Button;
    move-object/from16 v4, v20

    move-object v13, v5

    .end local v5    # "ConvertCheckbox":Landroid/widget/CheckBox;
    .local v13, "ConvertCheckbox":Landroid/widget/CheckBox;
    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/SettingsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v13, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 310
    new-instance v0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda20;

    move-object/from16 v8, v22

    .end local v22    # "ImageHeight":Landroid/widget/EditText;
    .local v8, "ImageHeight":Landroid/widget/EditText;
    invoke-direct {v0, v12, v8}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda20;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    move-object/from16 v5, v20

    .end local v20    # "ImageResMinus":Landroid/widget/Button;
    .local v5, "ImageResMinus":Landroid/widget/Button;
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    new-instance v0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, v12, v8}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    new-instance v0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v11, v10}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    new-instance v0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, v11, v10}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    const v0, 0x7f0a03cc

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 345
    .local v4, "PreView":Landroid/view/View;
    const v0, 0x7f0a03d1

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/CheckBox;

    .line 346
    .local v3, "PreviewCheckbox":Landroid/widget/CheckBox;
    new-instance v0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, v4}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda4;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 356
    iget-object v0, v9, Lcom/offsec/nethunter/SettingsFragment;->activity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/view/WindowManager;

    .line 357
    .local v20, "wm":Landroid/view/WindowManager;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 358
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 359
    .local v0, "windowMetrics":Landroid/view/WindowMetrics;
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 360
    .local v1, "screen_height":I
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 361
    .local v0, "screen_width":I
    move v2, v0

    goto :goto_0

    .line 362
    .end local v0    # "screen_width":I
    .end local v1    # "screen_height":I
    :cond_3
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 363
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 364
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 365
    .restart local v1    # "screen_height":I
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 367
    .end local v0    # "displaymetrics":Landroid/util/DisplayMetrics;
    .local v2, "screen_width":I
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v22, v2

    .end local v2    # "screen_width":I
    .local v22, "screen_width":I
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "size":Ljava/lang/String;
    const v0, 0x7f0a040d

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 369
    .local v0, "ScreenSize":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    move-object/from16 v24, v0

    .end local v0    # "ScreenSize":Landroid/widget/TextView;
    .local v24, "ScreenSize":Landroid/widget/TextView;
    const v0, 0x7f0a00b9

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 373
    .local v0, "BootanimationPath":Landroid/widget/EditText;
    new-instance v25, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct/range {v25 .. v25}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    move-object/from16 v26, v25

    .line 374
    .local v26, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v25, "find /product /vendor /system -name \"*ootanimation.zip\""

    .line 375
    .local v25, "FIND_BOOTANIMATION_CMD":Ljava/lang/String;
    const-string v27, "mount | grep ootanimation"

    .line 376
    .local v27, "FIND_BOOTANIMATION_MOUNT_CMD":Ljava/lang/String;
    move/from16 v28, v1

    .end local v1    # "screen_height":I
    .local v28, "screen_height":I
    const-string v1, "find /product /vendor /system -name \"*ootanimation.zip\""

    move-object/from16 v29, v15

    move-object/from16 v15, v26

    .end local v26    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .local v15, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .local v29, "animations":[Ljava/lang/String;
    invoke-virtual {v15, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "bootanimation_path":Ljava/lang/String;
    move-object/from16 v26, v2

    .end local v2    # "size":Ljava/lang/String;
    .local v26, "size":Ljava/lang/String;
    const-string v2, "mount | grep ootanimation"

    invoke-virtual {v15, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "bootanimation_mount":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_4

    .line 380
    move-object/from16 v30, v2

    .end local v2    # "bootanimation_mount":Ljava/lang/String;
    .local v30, "bootanimation_mount":Ljava/lang/String;
    const v2, 0x7f13029c

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(I)V

    goto :goto_1

    .line 382
    .end local v30    # "bootanimation_mount":Ljava/lang/String;
    .restart local v2    # "bootanimation_mount":Ljava/lang/String;
    :cond_4
    move-object/from16 v30, v2

    .end local v2    # "bootanimation_mount":Ljava/lang/String;
    .restart local v30    # "bootanimation_mount":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_1
    const v2, 0x7f0a02fe

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 387
    .local v2, "MakeBootAnimationButton":Landroid/widget/Button;
    move-object/from16 v31, v0

    .end local v0    # "BootanimationPath":Landroid/widget/EditText;
    .local v31, "BootanimationPath":Landroid/widget/EditText;
    const v0, 0x7f0a027e

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Landroid/widget/EditText;

    .line 388
    .local v32, "FPS":Landroid/widget/EditText;
    new-instance v0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda5;

    move-object/from16 v33, v31

    move-object/from16 v31, v0

    .end local v31    # "BootanimationPath":Landroid/widget/EditText;
    .local v33, "BootanimationPath":Landroid/widget/EditText;
    move-object/from16 v34, v1

    .end local v1    # "bootanimation_path":Ljava/lang/String;
    .local v34, "bootanimation_path":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v35, v30

    move-object/from16 v30, v15

    move-object v15, v2

    .end local v2    # "MakeBootAnimationButton":Landroid/widget/Button;
    .local v15, "MakeBootAnimationButton":Landroid/widget/Button;
    .local v30, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .local v35, "bootanimation_mount":Ljava/lang/String;
    move-object v2, v13

    move-object/from16 v36, v3

    .end local v3    # "PreviewCheckbox":Landroid/widget/CheckBox;
    .local v36, "PreviewCheckbox":Landroid/widget/CheckBox;
    move-object v3, v12

    move-object/from16 v37, v4

    .end local v4    # "PreView":Landroid/view/View;
    .local v37, "PreView":Landroid/view/View;
    move-object v4, v8

    move-object/from16 v38, v5

    .end local v5    # "ImageResMinus":Landroid/widget/Button;
    .local v38, "ImageResMinus":Landroid/widget/Button;
    move-object v5, v6

    move-object/from16 v39, v6

    .end local v6    # "animation_dir":[Ljava/lang/String;
    .local v39, "animation_dir":[Ljava/lang/String;
    move-object v6, v11

    move-object/from16 v16, v7

    move-object/from16 v40, v11

    const v11, 0x1090003

    .end local v7    # "ImageResPlus":Landroid/widget/Button;
    .end local v11    # "FinalWidth":Landroid/widget/EditText;
    .local v16, "ImageResPlus":Landroid/widget/Button;
    .local v40, "FinalWidth":Landroid/widget/EditText;
    move-object v7, v10

    move-object/from16 v41, v8

    .end local v8    # "ImageHeight":Landroid/widget/EditText;
    .local v41, "ImageHeight":Landroid/widget/EditText;
    move-object/from16 v8, v32

    invoke-direct/range {v0 .. v8}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/SettingsFragment;Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;[Ljava/lang/String;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-direct {v9, v15, v0}, Lcom/offsec/nethunter/SettingsFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 413
    const v0, 0x7f0a0434

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 414
    .local v0, "InstallBootAnimationButton":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda6;

    move-object/from16 v3, v30

    move-object/from16 v2, v33

    move-object/from16 v4, v35

    .end local v30    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .end local v33    # "BootanimationPath":Landroid/widget/EditText;
    .end local v35    # "bootanimation_mount":Ljava/lang/String;
    .local v2, "BootanimationPath":Landroid/widget/EditText;
    .local v3, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .local v4, "bootanimation_mount":Ljava/lang/String;
    invoke-direct {v1, v9, v4, v3, v2}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/SettingsFragment;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;)V

    invoke-direct {v9, v0, v1}, Lcom/offsec/nethunter/SettingsFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 433
    const v1, 0x7f0a009b

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 434
    .local v1, "BackupButton":Landroid/widget/Button;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 435
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v6, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v6, v9, v5, v3}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/SettingsFragment;Ljava/text/SimpleDateFormat;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-direct {v9, v1, v6}, Lcom/offsec/nethunter/SettingsFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 442
    const v6, 0x7f0a03f3

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 443
    .local v6, "RestoreFileName":Landroid/widget/EditText;
    const v7, 0x7f0a03f2

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 444
    .local v7, "RestoreFileBrowse":Landroid/widget/Button;
    new-instance v8, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v8, v9}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/SettingsFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    const v8, 0x7f0a03f1

    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 453
    .local v8, "RestoreButton":Landroid/widget/Button;
    new-instance v11, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v11, v9, v6, v3}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/SettingsFragment;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const v11, 0x7f0a0507

    invoke-virtual {v14, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 466
    .local v11, "UninstallButton":Landroid/widget/Button;
    move-object/from16 v31, v0

    .end local v0    # "InstallBootAnimationButton":Landroid/widget/Button;
    .local v31, "InstallBootAnimationButton":Landroid/widget/Button;
    new-instance v0, Ljava/io/File;

    move-object/from16 v33, v1

    .end local v1    # "BackupButton":Landroid/widget/Button;
    .local v33, "BackupButton":Landroid/widget/Button;
    const-string v1, "/system/app/NetHunter/NetHunter.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "NhSystemApp":Ljava/io/File;
    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, v9, v0}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/SettingsFragment;Ljava/io/File;)V

    invoke-direct {v9, v11, v1}, Lcom/offsec/nethunter/SettingsFragment;->addClickListener(Landroid/widget/Button;Landroid/view/View$OnClickListener;)V

    .line 477
    const v1, 0x7f0a042e

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 478
    .local v1, "SELinuxOnBoot":Landroid/widget/CheckBox;
    move-object/from16 v35, v0

    .end local v0    # "NhSystemApp":Ljava/io/File;
    .local v35, "NhSystemApp":Ljava/io/File;
    iget-object v0, v9, Lcom/offsec/nethunter/SettingsFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    move-object/from16 v42, v2

    .end local v2    # "BootanimationPath":Landroid/widget/EditText;
    .local v42, "BootanimationPath":Landroid/widget/EditText;
    const-string v2, "SELinuxOnBoot"

    move-object/from16 v43, v4

    .end local v4    # "bootanimation_mount":Ljava/lang/String;
    .local v43, "bootanimation_mount":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 479
    .local v0, "set_selinux_permissive_on_boot":Z
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 480
    new-instance v2, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v2, v9}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 482
    const v2, 0x7f0a042c

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 483
    .local v2, "SELinux":Landroid/widget/TextView;
    const-string v4, "getenforce"

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "selinux_status":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    move/from16 v45, v0

    .end local v0    # "set_selinux_permissive_on_boot":Z
    .local v45, "set_selinux_permissive_on_boot":Z
    const v0, 0x7f0a042d

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 486
    .local v0, "SELinuxButton":Landroid/widget/Button;
    move-object/from16 v46, v1

    .end local v1    # "SELinuxOnBoot":Landroid/widget/CheckBox;
    .local v46, "SELinuxOnBoot":Landroid/widget/CheckBox;
    const-string v1, "Permissive"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v47, "#40FFFFFF"

    if-eqz v1, :cond_5

    const-string v1, "Set to Enforcing"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 487
    :cond_5
    const-string v1, "Disabled"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 488
    const-string v1, "SELinux is Disabled"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 489
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 490
    invoke-static/range {v47 .. v47}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 492
    :cond_6
    const-string v1, "Set to Permissive"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_2
    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v1, v9, v3, v0, v2}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/SettingsFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Button;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    new-instance v1, Ljava/io/File;

    move-object/from16 v48, v0

    .end local v0    # "SELinuxButton":Landroid/widget/Button;
    .local v48, "SELinuxButton":Landroid/widget/Button;
    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string v0, "/system/bin/busybox"

    .line 513
    .local v0, "busyboxPath":Ljava/lang/String;
    :goto_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    .local v1, "busyboxFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v49

    if-nez v49, :cond_8

    .line 515
    const-string v0, "/system/bin/busybox"

    .line 516
    move-object/from16 v49, v1

    .end local v1    # "busyboxFile":Ljava/io/File;
    .local v49, "busyboxFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 518
    .end local v49    # "busyboxFile":Ljava/io/File;
    .restart local v1    # "busyboxFile":Ljava/io/File;
    :cond_8
    move-object/from16 v49, v1

    .end local v1    # "busyboxFile":Ljava/io/File;
    .restart local v49    # "busyboxFile":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v50, v0

    .end local v0    # "busyboxPath":Ljava/lang/String;
    .local v50, "busyboxPath":Ljava/lang/String;
    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/busybox_nh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .end local v50    # "busyboxPath":Ljava/lang/String;
    .restart local v0    # "busyboxPath":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v50, v2

    .end local v2    # "SELinux":Landroid/widget/TextView;
    .local v50, "SELinux":Landroid/widget/TextView;
    const-string v2, " | head -n1 | cut -c 10-13"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 523
    .end local v50    # "SELinux":Landroid/widget/TextView;
    .restart local v2    # "SELinux":Landroid/widget/TextView;
    :cond_9
    move-object/from16 v50, v2

    .end local v2    # "SELinux":Landroid/widget/TextView;
    .restart local v50    # "SELinux":Landroid/widget/TextView;
    const-string v1, "N/A"

    :goto_5
    nop

    .line 524
    .local v1, "busybox_ver":Ljava/lang/String;
    const v2, 0x7f0a00e4

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 525
    .local v2, "BusyboxVersion":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    const/16 v17, 0x0

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v17

    move-object/from16 v51, v17

    .line 530
    .local v51, "busybox_file":[Ljava/lang/String;
    move-object/from16 v17, v1

    .end local v1    # "busybox_ver":Ljava/lang/String;
    .local v17, "busybox_ver":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v52, v2

    .end local v2    # "BusyboxVersion":Landroid/widget/TextView;
    .local v52, "BusyboxVersion":Landroid/widget/TextView;
    const-string v2, "ls "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | grep busybox_nh- | cut -f 2 -d \'-\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .end local v52    # "BusyboxVersion":Landroid/widget/TextView;
    .restart local v2    # "BusyboxVersion":Landroid/widget/TextView;
    :cond_a
    move-object/from16 v52, v2

    .end local v2    # "BusyboxVersion":Landroid/widget/TextView;
    .restart local v52    # "BusyboxVersion":Landroid/widget/TextView;
    const-string v1, "echo \'\'"

    .line 531
    .local v1, "commandBB":Ljava/lang/String;
    :goto_6
    invoke-virtual {v3, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "outputBB":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v53

    if-eqz v53, :cond_b

    move-object/from16 v53, v1

    move-object/from16 v54, v4

    const/4 v1, 0x0

    .end local v1    # "commandBB":Ljava/lang/String;
    .end local v4    # "selinux_status":Ljava/lang/String;
    .local v53, "commandBB":Ljava/lang/String;
    .local v54, "selinux_status":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    goto :goto_7

    .end local v53    # "commandBB":Ljava/lang/String;
    .end local v54    # "selinux_status":Ljava/lang/String;
    .restart local v1    # "commandBB":Ljava/lang/String;
    .restart local v4    # "selinux_status":Ljava/lang/String;
    :cond_b
    move-object/from16 v53, v1

    move-object/from16 v54, v4

    .end local v1    # "commandBB":Ljava/lang/String;
    .end local v4    # "selinux_status":Ljava/lang/String;
    .restart local v53    # "commandBB":Ljava/lang/String;
    .restart local v54    # "selinux_status":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_7
    move-object v1, v4

    .line 533
    .local v1, "bbArray":[Ljava/lang/String;
    const v4, 0x7f0a00b1

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 534
    .local v4, "busybox_spinner":Landroid/widget/Spinner;
    move-object/from16 v55, v2

    .end local v2    # "outputBB":Ljava/lang/String;
    .local v55, "outputBB":Ljava/lang/String;
    new-instance v2, Landroid/widget/ArrayAdapter;

    move-object/from16 v56, v5

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    .local v56, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v57, v6

    const v6, 0x1090003

    .end local v6    # "RestoreFileName":Landroid/widget/EditText;
    .local v57, "RestoreFileName":Landroid/widget/EditText;
    invoke-direct {v2, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 535
    .local v2, "usersadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 538
    new-instance v5, Lcom/offsec/nethunter/SettingsFragment$3;

    move-object/from16 v6, v51

    .end local v51    # "busybox_file":[Ljava/lang/String;
    .local v6, "busybox_file":[Ljava/lang/String;
    invoke-direct {v5, v9, v6}, Lcom/offsec/nethunter/SettingsFragment$3;-><init>(Lcom/offsec/nethunter/SettingsFragment;[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 554
    const v5, 0x7f0a0428

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 555
    .local v5, "BusyboxButton":Landroid/widget/Button;
    move-object/from16 v51, v0

    .line 556
    .local v51, "finalBusyboxPath":Ljava/lang/String;
    move-object/from16 v58, v1

    .end local v1    # "bbArray":[Ljava/lang/String;
    .local v58, "bbArray":[Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;

    move-object/from16 v59, v2

    move-object/from16 v2, v51

    .end local v51    # "finalBusyboxPath":Ljava/lang/String;
    .local v2, "finalBusyboxPath":Ljava/lang/String;
    .local v59, "usersadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-direct {v1, v9, v6, v2, v3}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/SettingsFragment;[Ljava/lang/String;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    const v1, 0x7f0a04aa

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 568
    .local v1, "BusyboxSystemButton":Landroid/widget/Button;
    nop

    .end local v2    # "finalBusyboxPath":Ljava/lang/String;
    .restart local v51    # "finalBusyboxPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v60, v0

    .end local v0    # "busyboxPath":Ljava/lang/String;
    .local v60, "busyboxPath":Ljava/lang/String;
    const-string v0, " | head -n1 | grep -iF nethunter"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    .local v0, "busybox_system":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 570
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 571
    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_8

    .line 573
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 574
    invoke-static/range {v47 .. v47}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 576
    :goto_8
    new-instance v2, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda18;

    invoke-direct {v2, v9, v3}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/SettingsFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    const v2, 0x7f0a03d8

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 583
    .local v2, "TerminalStyle":Landroid/widget/TextView;
    move-object/from16 v18, v0

    .end local v0    # "busybox_system":Ljava/lang/String;
    .local v18, "busybox_system":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v44, v1

    .end local v1    # "BusyboxSystemButton":Landroid/widget/Button;
    .local v44, "BusyboxSystemButton":Landroid/widget/Button;
    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd grep -m1 \'PROMPT_ALTERNATIVE=\' /root/.zshrc | cut -d = -f 2 | tail -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "current_prompt":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    const v1, 0x7f0a03d7

    invoke-virtual {v14, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 588
    .local v1, "PromptSpinner":Landroid/widget/Spinner;
    move-object/from16 v47, v0

    .end local v0    # "current_prompt":Ljava/lang/String;
    .local v47, "current_prompt":Ljava/lang/String;
    const-string v0, "twoline"

    move-object/from16 v61, v4

    .end local v4    # "busybox_spinner":Landroid/widget/Spinner;
    .local v61, "busybox_spinner":Landroid/widget/Spinner;
    const-string v4, "backtrack"

    move-object/from16 v62, v5

    .end local v5    # "BusyboxButton":Landroid/widget/Button;
    .local v62, "BusyboxButton":Landroid/widget/Button;
    const-string v5, "oneline"

    filled-new-array {v5, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "Prompts":[Ljava/lang/String;
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/SettingsFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v63, v6

    const v6, 0x1090003

    .end local v6    # "busybox_file":[Ljava/lang/String;
    .local v63, "busybox_file":[Ljava/lang/String;
    invoke-direct {v4, v5, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 593
    new-instance v4, Lcom/offsec/nethunter/SettingsFragment$4;

    invoke-direct {v4, v9}, Lcom/offsec/nethunter/SettingsFragment$4;-><init>(Lcom/offsec/nethunter/SettingsFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 605
    const v4, 0x7f0a0088

    invoke-virtual {v14, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 606
    .local v4, "ApplyPromptButton":Landroid/widget/Button;
    new-instance v5, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v5, v9, v3, v2}, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/SettingsFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    return-object v14
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/SettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SettingsFragment$1;-><init>(Lcom/offsec/nethunter/SettingsFragment;)V

    .line 153
    invoke-virtual {p0}, Lcom/offsec/nethunter/SettingsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 154
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 670
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 671
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 672
    return-void
.end method

.method public run_cmd_android(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 675
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 676
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 677
    return-void
.end method
