.class public Lcom/offsec/nethunter/AppNavHomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AppNavHomeActivity.java"

# interfaces
.implements Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BOOT_CHANNEL_ID:Ljava/lang/String; = "BOOT_CHANNEL"

.field public static final CHROOT_INSTALLED_TAG:Ljava/lang/String; = "CHROOT_INSTALLED_TAG"

.field public static final GPS_BACKGROUND_FRAGMENT_TAG:Ljava/lang/String; = "BG_FRAGMENT_TAG"

.field private static final SDF:Ljava/text/SimpleDateFormat;

.field public static final TAG:Ljava/lang/String; = "AppNavHomeActivity"

.field public static customCMDitem:Landroid/view/MenuItem;

.field public static isBackPressEnabled:Ljava/lang/Boolean;

.field public static lastSelectedMenuItem:Landroid/view/MenuItem;


# instance fields
.field public copyBootFilesExecutor:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

.field private desiredFragment:I

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

.field private final locationServiceConnection:Landroid/content/ServiceConnection;

.field private locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

.field private locationUpdatesRequested:Z

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

.field private mTitle:Ljava/lang/CharSequence;

.field private navigationView:Lcom/google/android/material/navigation/NavigationView;

.field private navigationViewWear:Lcom/google/android/material/navigation/NavigationView;

.field private nethunterReceiver:Landroid/content/BroadcastReceiver;

.field private nhPaths:Lcom/offsec/nethunter/utils/NhPaths;

.field private permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

.field private prefs:Landroid/content/SharedPreferences;

.field private final titles:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private updateServiceBound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 66
    nop

    .line 68
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd KK:mm:ss a zzz"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->SDF:Ljava/text/SimpleDateFormat;

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->isBackPressEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 79
    const-string v0, "NetHunter"

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    .line 80
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdatesRequested:Z

    .line 89
    const/4 v1, -0x1

    iput v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->desiredFragment:I

    .line 92
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 344
    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->updateServiceBound:Z

    .line 345
    new-instance v0, Lcom/offsec/nethunter/AppNavHomeActivity$3;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$3;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    iput-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/AppNavHomeActivity;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 66
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/AppNavHomeActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 66
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$102(Lcom/offsec/nethunter/AppNavHomeActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 66
    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/google/android/material/navigation/NavigationView;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 66
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/AppNavHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 66
    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->isAllRequiredPermissionsGranted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/AppNavHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 66
    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->setRootView()V

    return-void
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/offsec/nethunter/gps/LocationUpdateService;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 66
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/offsec/nethunter/AppNavHomeActivity;Lcom/offsec/nethunter/gps/LocationUpdateService;)Lcom/offsec/nethunter/gps/LocationUpdateService;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;
    .param p1, "x1"    # Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 66
    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    return-object p1
.end method

.method static synthetic access$602(Lcom/offsec/nethunter/AppNavHomeActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;
    .param p1, "x1"    # Z

    .line 66
    iput-boolean p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->updateServiceBound:Z

    return p1
.end method

.method static synthetic access$700(Lcom/offsec/nethunter/AppNavHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 66
    iget-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdatesRequested:Z

    return v0
.end method

.method static synthetic access$800(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 66
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/offsec/nethunter/AppNavHomeActivity;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AppNavHomeActivity;
    .param p1, "x1"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "x2"    # Landroidx/fragment/app/Fragment;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private changeDrawer(I)V
    .locals 5
    .param p1, "itemId"    # I

    .line 570
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 571
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    const v1, 0x7f0a036b

    if-ne p1, v1, :cond_0

    .line 572
    invoke-static {p1}, Lcom/offsec/nethunter/NetHunterFragment;->newInstance(I)Lcom/offsec/nethunter/NetHunterFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 573
    :cond_0
    const v1, 0x7f0a00f2

    if-ne p1, v1, :cond_1

    .line 574
    invoke-static {p1}, Lcom/offsec/nethunter/CARsenalFragment;->newInstance(I)Lcom/offsec/nethunter/CARsenalFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 575
    :cond_1
    const v1, 0x7f0a02dc

    if-ne p1, v1, :cond_2

    .line 576
    invoke-static {p1}, Lcom/offsec/nethunter/KaliServicesFragment;->newInstance(I)Lcom/offsec/nethunter/KaliServicesFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 577
    :cond_2
    const v1, 0x7f0a0138

    if-ne p1, v1, :cond_3

    .line 578
    invoke-static {p1}, Lcom/offsec/nethunter/CustomCommandsFragment;->newInstance(I)Lcom/offsec/nethunter/CustomCommandsFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 579
    :cond_3
    const v1, 0x7f0a02a8

    if-ne p1, v1, :cond_4

    .line 580
    invoke-static {p1}, Lcom/offsec/nethunter/HidFragment;->newInstance(I)Lcom/offsec/nethunter/HidFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 581
    :cond_4
    const v1, 0x7f0a017f

    if-ne p1, v1, :cond_5

    .line 582
    invoke-static {p1}, Lcom/offsec/nethunter/DuckHunterFragment;->newInstance(I)Lcom/offsec/nethunter/DuckHunterFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 583
    :cond_5
    const v1, 0x7f0a0512

    const/4 v2, 0x0

    const-string v3, ""

    if-ne p1, v1, :cond_7

    .line 584
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v4, "ls /config/usb_gadget/g1"

    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 585
    invoke-static {p1}, Lcom/offsec/nethunter/USBArsenalFragment;->newInstance(I)Lcom/offsec/nethunter/USBArsenalFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 587
    :cond_6
    const-string v1, "USB Arsenal (ConfigFS) is only supported by kernels above 4.x. Please note that HID, RNDIS, and Mass Storage should be automatically enabled on older devices with NetHunter patches."

    invoke-virtual {p0, v3, v1, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 589
    :cond_7
    const v1, 0x7f0a00ac

    if-ne p1, v1, :cond_8

    .line 590
    invoke-static {p1}, Lcom/offsec/nethunter/BadusbFragment;->newInstance(I)Lcom/offsec/nethunter/BadusbFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 591
    :cond_8
    const v1, 0x7f0a052e

    if-ne p1, v1, :cond_9

    .line 592
    invoke-static {p1}, Lcom/offsec/nethunter/WifipumpkinFragment;->newInstance(I)Lcom/offsec/nethunter/WifipumpkinFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 593
    :cond_9
    const v1, 0x7f0a0544

    if-ne p1, v1, :cond_a

    .line 594
    invoke-static {p1}, Lcom/offsec/nethunter/WPSFragment;->newInstance(I)Lcom/offsec/nethunter/WPSFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 595
    :cond_a
    const v1, 0x7f0a00c4

    if-ne p1, v1, :cond_b

    .line 596
    invoke-static {p1}, Lcom/offsec/nethunter/BTFragment;->newInstance(I)Lcom/offsec/nethunter/BTFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 597
    :cond_b
    const v1, 0x7f0a0090

    if-ne p1, v1, :cond_c

    .line 598
    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->newInstance(I)Lcom/offsec/nethunter/AudioFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 599
    :cond_c
    const v1, 0x7f0a02fc

    if-ne p1, v1, :cond_d

    .line 600
    invoke-static {p1}, Lcom/offsec/nethunter/MacchangerFragment;->newInstance(I)Lcom/offsec/nethunter/MacchangerFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 601
    :cond_d
    const v1, 0x7f0a012b

    if-ne p1, v1, :cond_e

    .line 602
    invoke-static {p1}, Lcom/offsec/nethunter/ChrootManagerFragment;->newInstance(I)Lcom/offsec/nethunter/ChrootManagerFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 603
    :cond_e
    const v1, 0x7f0a033a

    if-ne p1, v1, :cond_f

    .line 604
    invoke-static {p1}, Lcom/offsec/nethunter/MPCFragment;->newInstance(I)Lcom/offsec/nethunter/MPCFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 605
    :cond_f
    const v1, 0x7f0a0528

    if-ne p1, v1, :cond_11

    .line 606
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "com.offsec.nethunter.kex"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_10

    .line 607
    const-string v1, "NetHunter KeX is not installed yet, please install from the store!"

    invoke-virtual {p0, v3, v1, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 609
    :cond_10
    invoke-static {p1}, Lcom/offsec/nethunter/VNCFragment;->newInstance(I)Lcom/offsec/nethunter/VNCFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 611
    :cond_11
    const v1, 0x7f0a0422

    if-ne p1, v1, :cond_12

    .line 612
    invoke-static {p1}, Lcom/offsec/nethunter/SearchSploitFragment;->newInstance(I)Lcom/offsec/nethunter/SearchSploitFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 613
    :cond_12
    const v1, 0x7f0a0376

    if-ne p1, v1, :cond_13

    .line 614
    invoke-static {p1}, Lcom/offsec/nethunter/NmapFragment;->newInstance(I)Lcom/offsec/nethunter/NmapFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 615
    :cond_13
    const v1, 0x7f0a03bd

    if-ne p1, v1, :cond_14

    .line 616
    invoke-static {p1}, Lcom/offsec/nethunter/PineappleFragment;->newInstance(I)Lcom/offsec/nethunter/PineappleFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 617
    :cond_14
    const v1, 0x7f0a0291

    if-ne p1, v1, :cond_15

    .line 618
    invoke-static {p1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->newInstance(I)Lcom/offsec/nethunter/KaliGpsServiceFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 619
    :cond_15
    const v1, 0x7f0a043e

    if-ne p1, v1, :cond_16

    .line 620
    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->newInstance(I)Lcom/offsec/nethunter/SettingsFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 621
    :cond_16
    const v1, 0x7f0a02df

    if-ne p1, v1, :cond_17

    .line 622
    invoke-static {p1}, Lcom/offsec/nethunter/KernelFragment;->newInstance(I)Lcom/offsec/nethunter/KernelFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 623
    :cond_17
    const v1, 0x7f0a032c

    if-ne p1, v1, :cond_18

    .line 624
    invoke-static {p1}, Lcom/offsec/nethunter/ModulesFragment;->newInstance(I)Lcom/offsec/nethunter/ModulesFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 625
    :cond_18
    const v1, 0x7f0a0435

    if-ne p1, v1, :cond_19

    .line 626
    invoke-static {p1}, Lcom/offsec/nethunter/SETFragment;->newInstance(I)Lcom/offsec/nethunter/SETFragment;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    .line 628
    :cond_19
    :goto_0
    return-void
.end method

.method private changeFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 657
    nop

    .line 658
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 659
    const v1, 0x7f0a011d

    invoke-virtual {v0, v1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 660
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 661
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 662
    return-void
.end method

.method private isAllRequiredPermissionsGranted()Z
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    sget-object v1, Lcom/offsec/nethunter/utils/PermissionCheck;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/PermissionCheck;->isAllPermitted([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    sget-object v2, Lcom/offsec/nethunter/utils/PermissionCheck;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/offsec/nethunter/utils/PermissionCheck;->checkPermissions([Ljava/lang/String;I)V

    .line 667
    const/4 v0, 0x0

    return v0

    .line 669
    :cond_0
    return v1
.end method

.method static synthetic lambda$showLicense$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "id"    # I

    .line 507
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private setRootView()V
    .locals 18

    .line 392
    move-object/from16 v0, p0

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->setContentView(I)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 396
    .local v1, "ab":Landroidx/appcompat/app/ActionBar;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 398
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 401
    :cond_0
    const v3, 0x7f0a017a

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/AppNavHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v3, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 402
    const v3, 0x7f0a0369

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/AppNavHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/navigation/NavigationView;

    iput-object v3, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.watch"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 409
    .local v3, "iswatch":Ljava/lang/Boolean;
    iget-object v4, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "snowfall_enabled"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 411
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 412
    .local v4, "model":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/16 v8, 0x8

    const/4 v9, 0x2

    if-eqz v7, :cond_3

    .line 413
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 414
    .local v5, "snowfall":Ljava/lang/Boolean;
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/4 v10, 0x3

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 416
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/4 v10, 0x4

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 417
    const-string v7, "catfish"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "catshark"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "catshark-4g"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    :cond_2
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x9

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0xe

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 420
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x10

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 421
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x11

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 422
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x13

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 423
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x14

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 424
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x15

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 425
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x16

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x17

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 427
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v7}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const/16 v10, 0x18

    invoke-interface {v7, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 429
    .end local v5    # "snowfall":Ljava/lang/Boolean;
    :cond_3
    iget-object v7, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 433
    .restart local v5    # "snowfall":Ljava/lang/Boolean;
    :goto_0
    const v7, 0x7f0a0450

    invoke-virtual {v0, v7}, Lcom/offsec/nethunter/AppNavHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 434
    .local v7, "SnowfallView":Landroid/view/View;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 435
    :cond_4
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :goto_1
    new-instance v8, Ljava/io/File;

    const-string v10, "/config/usb_gadget/g1"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 439
    iget-object v8, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v8}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v8

    const/4 v10, 0x7

    invoke-interface {v8, v10}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 440
    :cond_5
    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 441
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0d00dc

    iget-object v11, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v8, v10, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 442
    .local v10, "navigationHeadView":Landroid/widget/LinearLayout;
    iget-object v11, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v11, v10}, Lcom/google/android/material/navigation/NavigationView;->addHeaderView(Landroid/view/View;)V

    .line 444
    const v11, 0x7f0a02cb

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 445
    .local v11, "readmeButton":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v12, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda6;

    invoke-direct {v12, v0}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-virtual {v11, v12}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    sget-object v12, Lcom/offsec/nethunter/AppNavHomeActivity;->SDF:Ljava/text/SimpleDateFormat;

    sget-object v13, Lcom/offsec/nethunter/BuildConfig;->BUILD_TIME:Ljava/util/Date;

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 449
    .local v12, "buildTime":Ljava/lang/String;
    const v13, 0x7f0a00e2

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 450
    .local v13, "buildInfo1":Landroid/widget/TextView;
    const v14, 0x7f0a00e3

    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 451
    .local v14, "buildInfo2":Landroid/widget/TextView;
    const v15, 0x78b35b28

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v9, v9, [Ljava/lang/Object;

    const-string v16, "2025.3-rc1-dev"

    aput-object v16, v9, v6

    aput-object v15, v9, v2

    const-string v15, "Version: %s (%s)"

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    new-array v9, v2, [Ljava/lang/Object;

    aput-object v12, v9, v6

    const-string v15, "Date: %s"

    invoke-static {v15, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v9, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {v0, v9}, Lcom/offsec/nethunter/AppNavHomeActivity;->setupDrawerContent(Lcom/google/android/material/navigation/NavigationView;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const v15, 0x7f060049

    invoke-static {v0, v15}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v9

    .line 459
    const v15, 0x7f0a036b

    invoke-static {v15}, Lcom/offsec/nethunter/NetHunterFragment;->newInstance(I)Lcom/offsec/nethunter/NetHunterFragment;

    move-result-object v15

    const v2, 0x7f0a011d

    invoke-virtual {v9, v2, v15}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 463
    iget-object v2, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 464
    .local v2, "firstMenuItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_6

    .line 465
    iget-object v9, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    :cond_6
    iget-object v9, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v9}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const v15, 0x7f0a010e

    const/4 v6, 0x1

    invoke-interface {v9, v15, v6}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 472
    iget-object v6, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "seenNav"

    const/4 v15, 0x0

    invoke-interface {v6, v9, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 473
    .local v6, "seenNav":Z
    if-nez v6, :cond_7

    .line 475
    iget-object v15, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    move-object/from16 v17, v1

    .end local v1    # "ab":Landroidx/appcompat/app/ActionBar;
    .local v17, "ab":Landroidx/appcompat/app/ActionBar;
    const v1, 0x800003

    invoke-virtual {v15, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 476
    iget-object v1, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v15, 0x1

    invoke-interface {v1, v9, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 473
    .end local v17    # "ab":Landroidx/appcompat/app/ActionBar;
    .restart local v1    # "ab":Landroidx/appcompat/app/ActionBar;
    :cond_7
    move-object/from16 v17, v1

    .line 479
    .end local v1    # "ab":Landroidx/appcompat/app/ActionBar;
    .restart local v17    # "ab":Landroidx/appcompat/app/ActionBar;
    :goto_2
    sget-object v1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-nez v1, :cond_8

    .line 480
    iget-object v1, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    .line 481
    sget-object v1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 484
    :cond_8
    new-instance v1, Landroidx/appcompat/app/ActionBarDrawerToggle;

    iget-object v9, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v15, 0x7f13010e

    move-object/from16 v16, v2

    .end local v2    # "firstMenuItem":Landroid/view/MenuItem;
    .local v16, "firstMenuItem":Landroid/view/MenuItem;
    const v2, 0x7f13010d

    invoke-direct {v1, v0, v9, v15, v2}, Landroidx/appcompat/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;II)V

    iput-object v1, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    .line 485
    iget-object v1, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 486
    iget-object v1, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->syncState()V

    .line 487
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v9, Lcom/offsec/nethunter/service/CompatCheckService;

    invoke-direct {v1, v2, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 489
    iget v1, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->desiredFragment:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 490
    iget v1, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->desiredFragment:I

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeDrawer(I)V

    .line 491
    iput v2, v0, Lcom/offsec/nethunter/AppNavHomeActivity;->desiredFragment:I

    .line 493
    :cond_9
    return-void
.end method

.method private setupDrawerContent(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 1
    .param p1, "navigationView"    # Lcom/google/android/material/navigation/NavigationView;

    .line 520
    new-instance v0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 542
    return-void
.end method

.method private setupDrawerContentWear(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 1
    .param p1, "navigationViewWear"    # Lcom/google/android/material/navigation/NavigationView;

    .line 545
    new-instance v0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 567
    return-void
.end method

.method private showLicense()V
    .locals 8

    .line 497
    nop

    .line 498
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130246

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object v2, v3, v1

    .line 497
    const-string v1, "%s\n\n%s\n\n%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "readmeData":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 502
    .local v2, "readmeText":Landroid/text/SpannableString;
    invoke-static {v2, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 504
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v5, 0x7f14012d

    invoke-direct {v3, p0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 505
    .local v3, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v6, "README INFO"

    invoke-virtual {v3, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v6

    .line 506
    invoke-virtual {v6, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 507
    new-instance v6, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda4;-><init>()V

    const-string v7, "Cancel"

    invoke-virtual {v3, v7, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 508
    invoke-virtual {v3, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 510
    invoke-virtual {v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 511
    .local v0, "ad":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 512
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 513
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 515
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 516
    const v4, 0x102000b

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 517
    return-void
.end method


# virtual methods
.method public blockActionBar()V
    .locals 3

    .line 642
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 643
    .local v0, "ab":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 644
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 645
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 646
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 648
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreate$0$com-offsec-nethunter-AppNavHomeActivity()V
    .locals 3

    .line 149
    const-string v0, "Root permission is required!!"

    const/4 v1, 0x1

    const-string v2, "NetHunter app cannot be run properly"

    invoke-virtual {p0, v2, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-offsec-nethunter-AppNavHomeActivity()V
    .locals 2

    .line 145
    nop

    :goto_0
    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_1
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 152
    :cond_0
    return-void
.end method

.method synthetic lambda$setRootView$2$com-offsec-nethunter-AppNavHomeActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 445
    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->showLicense()V

    return-void
.end method

.method synthetic lambda$setupDrawerContent$4$com-offsec-nethunter-AppNavHomeActivity(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 523
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eq v0, p1, :cond_1

    .line 525
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 526
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 528
    :cond_0
    sput-object p1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    .line 531
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 532
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 533
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    .line 534
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 538
    .local v1, "itemId":I
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeDrawer(I)V

    .line 539
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->restoreActionBar()V

    .line 540
    return v0

    .line 534
    .end local v1    # "itemId":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic lambda$setupDrawerContentWear$5$com-offsec-nethunter-AppNavHomeActivity(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 548
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eq v0, p1, :cond_1

    .line 550
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 551
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 553
    :cond_0
    sput-object p1, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    .line 556
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 557
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 558
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    .line 559
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 560
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->titles:Ljava/util/Stack;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 563
    .local v1, "itemId":I
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->changeDrawer(I)V

    .line 564
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->restoreActionBar()V

    .line 565
    return v0

    .line 559
    .end local v1    # "itemId":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic lambda$showWarningDialog$6$com-offsec-nethunter-AppNavHomeActivity(ZLandroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "NeedToExit"    # Z
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 679
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 680
    if-eqz p1, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->finish()V

    .line 682
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 96
    const-string v0, "Permissions missing. Waiting ..."

    const-string v1, "onCreate"

    const-string v2, "AppNavHomeActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/utils/NhPaths;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/utils/NhPaths;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nhPaths:Lcom/offsec/nethunter/utils/NhPaths;

    .line 104
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    new-instance v3, Lcom/offsec/nethunter/AppNavHomeActivity$1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/offsec/nethunter/AppNavHomeActivity$1;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;Z)V

    invoke-virtual {v1, p0, v3}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 138
    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "NetHunter app cannot be run properly"

    const-string v3, "Root permission is required!!"

    invoke-virtual {p0, v1, v3, v4}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 155
    new-instance v1, Lcom/offsec/nethunter/utils/PermissionCheck;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/offsec/nethunter/utils/PermissionCheck;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    .line 157
    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nethunterReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "com.offsec.nethunter.CHECKCOMPAT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v3, "com.offsec.nethunter.BACKPRESSED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v3, "com.offsec.nethunter.CHECKCHROOT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v3, "ChrootManager"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x4

    const/16 v6, 0x21

    if-lt v3, v6, :cond_1

    .line 164
    iget-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nethunterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1, v5}, Lcom/offsec/nethunter/AppNavHomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nethunterReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v3, v1, v5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 169
    :goto_0
    const-string v3, "com.offsec.nethunter"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    .line 172
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 173
    .local v3, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v7, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v3}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/ProgressDialog;)V

    iput-object v7, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->copyBootFilesExecutor:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

    .line 177
    iget-object v7, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->copyBootFilesExecutor:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

    new-instance v8, Lcom/offsec/nethunter/AppNavHomeActivity$2;

    invoke-direct {v8, p0}, Lcom/offsec/nethunter/AppNavHomeActivity$2;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V

    invoke-virtual {v7, v8}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->setListener(Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;)V

    .line 234
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v7, "permissionsToRequest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v6, :cond_2

    .line 236
    const-string v6, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 237
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_2
    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 241
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4

    .line 244
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v6, v8, :cond_5

    .line 247
    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v7, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/16 v6, 0x7d1

    invoke-virtual {p0, v5, v6}, Lcom/offsec/nethunter/AppNavHomeActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 251
    :cond_5
    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->isAllRequiredPermissionsGranted()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 252
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->copyBootFilesExecutor:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

    invoke-virtual {v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->execute()V

    goto :goto_2

    .line 255
    :cond_6
    const/4 v5, 0x0

    .line 256
    .local v5, "t":I
    :cond_7
    iget-object v6, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    sget-object v8, Lcom/offsec/nethunter/utils/PermissionCheck;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/offsec/nethunter/utils/PermissionCheck;->isAllPermitted([Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 258
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 259
    add-int/lit8 v5, v5, 0x1

    .line 260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_1

    .line 261
    :catch_0
    move-exception v6

    .line 262
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :goto_1
    const/16 v6, 0xa

    if-lt v5, v6, :cond_7

    .line 265
    nop

    .line 268
    :cond_8
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->permissionCheck:Lcom/offsec/nethunter/utils/PermissionCheck;

    sget-object v6, Lcom/offsec/nethunter/utils/PermissionCheck;->DEFAULT_PERMISSIONS:[Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/offsec/nethunter/utils/PermissionCheck;->isAllPermitted([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 269
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->copyBootFilesExecutor:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;

    invoke-virtual {v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->execute()V

    goto :goto_2

    .line 271
    :cond_9
    const-string v0, "Permissions required"

    const-string v6, "Please restart application to finalize setup"

    invoke-virtual {p0, v0, v6, v4}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    .end local v5    # "t":I
    :goto_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "menuFragment"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 276
    .local v0, "menuFragment":I
    if-eq v0, v5, :cond_a

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "menuFragment = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iput v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->desiredFragment:I

    .line 280
    :cond_a
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 386
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 387
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nethunterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->nhPaths:Lcom/offsec/nethunter/utils/NhPaths;

    invoke-virtual {v0}, Lcom/offsec/nethunter/utils/NhPaths;->onDestroy()V

    .line 389
    return-void
.end method

.method public onLocationUpdatesRequested(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V
    .locals 4
    .param p1, "receiver"    # Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdatesRequested:Z

    .line 338
    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    .line 339
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v2, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 341
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 284
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerToggle:Landroidx/appcompat/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 285
    return v1

    .line 287
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_2

    .line 288
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 293
    :goto_0
    return v1

    .line 295
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onReceiverReattach(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)Z
    .locals 5
    .param p1, "receiver"    # Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    .line 320
    const-string v0, "onReceiverReattach"

    const-string v1, "AppNavHomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Lcom/offsec/nethunter/gps/LocationUpdateService;->isInstanceCreated()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 323
    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locationService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->onLocationUpdatesRequested(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    .line 330
    :goto_0
    return v4

    .line 332
    :cond_2
    return v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 300
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 302
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 303
    const/4 v1, 0x1

    .line 304
    .local v1, "allGranted":Z
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p3, v3

    .line 305
    .local v4, "grantResult":I
    if-eqz v4, :cond_0

    .line 306
    const/4 v1, 0x0

    .line 307
    goto :goto_1

    .line 304
    .end local v4    # "grantResult":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 311
    invoke-direct {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->setRootView()V

    goto :goto_2

    .line 313
    :cond_2
    const-string v2, "NetHunter app cannot be run properly"

    const-string v3, "Please grant all the permission requests from outside the app or restart the app to grant the rest of permissions again."

    invoke-virtual {p0, v2, v3, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 316
    .end local v1    # "allGranted":Z
    :cond_3
    :goto_2
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 378
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 381
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/offsec/nethunter/service/CompatCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 382
    :cond_0
    return-void
.end method

.method public onStopRequested()V
    .locals 2

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationUpdatesRequested:Z

    .line 366
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-virtual {v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopUpdates()V

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationService:Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 370
    :cond_0
    iget-boolean v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->updateServiceBound:Z

    if-eqz v1, :cond_1

    .line 371
    iput-boolean v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->updateServiceBound:Z

    .line 372
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->locationServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 374
    :cond_1
    return-void
.end method

.method public restoreActionBar()V
    .locals 3

    .line 631
    invoke-virtual {p0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 632
    .local v0, "ab":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 633
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 634
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 635
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 636
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    .line 637
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 639
    :cond_0
    return-void
.end method

.method public setDefaultSharePreference()V
    .locals 3

    .line 651
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DuckHunterLanguage"

    const-string v2, "us"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 652
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/kalifs-backup.tar.gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chroot_default_tarball_path"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 653
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chroot_download_chroot_dir"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 654
    return-void
.end method

.method public showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "NeedToExit"    # Z

    .line 674
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v1, 0x7f14012e

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 675
    .local v0, "warningAD":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 676
    invoke-virtual {v0, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 677
    invoke-virtual {v0, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 678
    new-instance v1, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3}, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/AppNavHomeActivity;Z)V

    const-string v2, "CLOSE"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 683
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 684
    return-void
.end method
