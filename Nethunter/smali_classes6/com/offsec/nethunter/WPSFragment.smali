.class public Lcom/offsec/nethunter/WPSFragment;
.super Landroidx/fragment/app/Fragment;
.source "WPSFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "WPSFragment"


# instance fields
.field private BruteCheckbox:Landroid/widget/CheckBox;

.field private CustomPIN:Landroid/widget/TextView;

.field private CustomPINCheckbox:Landroid/widget/CheckBox;

.field private DelayCMD:Landroid/widget/CheckBox;

.field private DelayLayout:Landroid/widget/LinearLayout;

.field private DelayTime:Landroid/widget/TextView;

.field private PbcCMD:Landroid/widget/CheckBox;

.field private PixieCheckbox:Landroid/widget/CheckBox;

.field private PixieForceCheckbox:Landroid/widget/CheckBox;

.field private WPSList:Landroid/widget/Spinner;

.field private WPSPinLayout:Landroid/widget/LinearLayout;

.field private activity:Landroid/app/Activity;

.field private final arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bruteCMD:Ljava/lang/String;

.field private customPIN:Ljava/lang/String;

.field private customPINCMD:Ljava/lang/String;

.field private delayCMD:Ljava/lang/String;

.field private delayTIME:Ljava/lang/String;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private ifaceSpinner:Landroid/widget/Spinner;

.field private iswatch:Ljava/lang/Boolean;

.field private pbcCMD:Ljava/lang/String;

.field private pixieCMD:Ljava/lang/String;

.field private pixieforceCMD:Ljava/lang/String;

.field private selectedInterface:Ljava/lang/String;

.field private selected_network:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 38
    const-string v0, "wlan0"

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieCMD:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieforceCMD:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->bruteCMD:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPINCMD:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPIN:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayCMD:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayTIME:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pbcCMD:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/WPSFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/WPSFragment;

    .line 34
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$102(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/WPSFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->selected_network:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/WPSFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/WPSFragment;

    .line 34
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/WPSFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    return-object p1
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/WPSFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 65
    new-instance v0, Lcom/offsec/nethunter/WPSFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/WPSFragment;-><init>()V

    .line 66
    .local v0, "fragment":Lcom/offsec/nethunter/WPSFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/WPSFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method

.method private scanWifi()V
    .locals 5

    .line 264
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    const-string v1, "Scanning.."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    iget-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 267
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 268
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 269
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 276
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-WPSFragment([Ljava/lang/String;)V
    .locals 3
    .param p1, "finalInterfaces"    # [Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 117
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 118
    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->ifaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 119
    const/4 v1, 0x0

    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lcom/offsec/nethunter/WPSFragment;->ifaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 121
    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->ifaceSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/offsec/nethunter/WPSFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/offsec/nethunter/WPSFragment$1;-><init>(Lcom/offsec/nethunter/WPSFragment;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 129
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-WPSFragment()V
    .locals 8

    .line 98
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 99
    .local v0, "abi":Ljava/lang/String;
    const-string v2, "arm64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/iw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "iwPath":Ljava/lang/String;
    goto :goto_0

    .line 102
    .end local v2    # "iwPath":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/iw-armeabi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2    # "iwPath":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using iw binary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WPSFragment"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " --version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "iwVersion":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iw version output: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dev | awk \'/Interface/ {print $2}\' | grep \'^wlan\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "output":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v6, "wlan0"

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v6, v5, v1

    goto :goto_1

    :cond_1
    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v1, v5

    .line 112
    .local v1, "interfaces":[Ljava/lang/String;
    array-length v5, v1

    if-nez v5, :cond_2

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 114
    move-object v5, v1

    .line 115
    .local v5, "finalInterfaces":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0, v5}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/WPSFragment;[Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    .end local v5    # "finalInterfaces":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 210
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->DelayCMD:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, " -d "

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayCMD:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->DelayLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayCMD:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayTIME:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->DelayLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->PbcCMD:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, " --pbc"

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pbcCMD:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pbcCMD:Ljava/lang/String;

    .line 227
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-WPSFragment()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "settings put system clockwork_wifi_setting off"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-WPSFragment()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "ip link set wlan0 up"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 234
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPIN:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPIN:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->DelayTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->delayTIME:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->selected_network:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 240
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    new-instance v1, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    const-wide/16 v2, 0x2af8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "python3 /sdcard/nh_files/modules/oneshot.py -b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->selected_network:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->pixieCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->pixieforceCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->bruteCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->customPINCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->customPIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->delayCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->delayTIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->pbcCMD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/WPSFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No target selected!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 135
    invoke-direct {p0}, Lcom/offsec/nethunter/WPSFragment;->scanWifi()V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-WPSFragment()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "ip link set wlan0 down; sleep 1 && ip link set wlan0 up"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "svc wifi disable; sleep 1 && svc wifi enable"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Done"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-WPSFragment()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 146
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 147
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->PixieCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, " -K"

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieCMD:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieCMD:Ljava/lang/String;

    .line 185
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->PixieForceCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, " -F"

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieforceCMD:Ljava/lang/String;

    goto :goto_0

    .line 190
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->pixieforceCMD:Ljava/lang/String;

    .line 191
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 193
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->BruteCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, " -B"

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->bruteCMD:Ljava/lang/String;

    goto :goto_0

    .line 196
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->bruteCMD:Ljava/lang/String;

    .line 197
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-WPSFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPINCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, " -p "

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPINCMD:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSPinLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPINCMD:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->customPIN:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSPinLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    :goto_0
    return-void
.end method

.method synthetic lambda$scanWifi$15$com-offsec-nethunter-WPSFragment()V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    const-string v1, "Scanning..."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    iget-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 273
    return-void
.end method

.method synthetic lambda$scanWifi$16$com-offsec-nethunter-WPSFragment(Ljava/lang/String;)V
    .locals 7
    .param p1, "outputScanLog"    # Ljava/lang/String;

    .line 279
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "arrayList":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 281
    .local v1, "targetsadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v2, "notargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "No nearby WPS networks"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    .end local v2    # "notargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    :cond_0
    const-string v2, "Error:;command"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .restart local v2    # "notargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "Please reset the interface!"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 289
    .end local v2    # "notargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 292
    :goto_0
    return-void
.end method

.method synthetic lambda$scanWifi$17$com-offsec-nethunter-WPSFragment()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bootkali custom_cmd python3 /sdcard/nh_files/modules/oneshot.py -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/WPSFragment;->selectedInterface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -s | grep -E \'[0-9])\' | tr -s \' \' | cut -d \' \' -f 2-3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "outputScanLog":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 293
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->activity:Landroid/app/Activity;

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 81
    const v0, 0x7f0d00e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/offsec/nethunter/WPSFragment;->activity:Landroid/app/Activity;

    const-string v3, "com.offsec.nethunter"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 85
    .local v2, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v3, "running_on_wearos"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->iswatch:Ljava/lang/Boolean;

    .line 88
    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "settings put system clockwork_wifi_setting on; ifconfig wlan0 up"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "svc wifi enable"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 94
    :goto_0
    const v1, 0x7f0a0543

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->ifaceSpinner:Landroid/widget/Spinner;

    .line 95
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 96
    .local v1, "ifaceExecutor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    const v3, 0x7f0a040b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 135
    .local v3, "scanButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v4, 0x7f0a0545

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    .line 138
    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 139
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/WPSFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1090003

    iget-object v7, p0, Lcom/offsec/nethunter/WPSFragment;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 140
    .local v4, "WPSadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 144
    .end local v4    # "WPSadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    const v4, 0x7f0a03ef

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 145
    .local v4, "resetifaceButton":Landroid/widget/Button;
    new-instance v5, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda16;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->WPSList:Landroid/widget/Spinner;

    new-instance v6, Lcom/offsec/nethunter/WPSFragment$2;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WPSFragment$2;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 170
    const v5, 0x7f0a03c3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->PixieCheckbox:Landroid/widget/CheckBox;

    .line 171
    const v5, 0x7f0a03c4

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->PixieForceCheckbox:Landroid/widget/CheckBox;

    .line 172
    const v5, 0x7f0a00bf

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->BruteCheckbox:Landroid/widget/CheckBox;

    .line 173
    const v5, 0x7f0a013b

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPINCheckbox:Landroid/widget/CheckBox;

    .line 174
    const v5, 0x7f0a0546

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPIN:Landroid/widget/TextView;

    .line 175
    const v5, 0x7f0a0149

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->DelayCMD:Landroid/widget/CheckBox;

    .line 176
    const v5, 0x7f0a03b5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->PbcCMD:Landroid/widget/CheckBox;

    .line 177
    const v5, 0x7f0a03c2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->WPSPinLayout:Landroid/widget/LinearLayout;

    .line 178
    const v5, 0x7f0a014e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->DelayLayout:Landroid/widget/LinearLayout;

    .line 180
    iget-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->PixieCheckbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda17;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->PixieForceCheckbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->BruteCheckbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->CustomPINCheckbox:Landroid/widget/CheckBox;

    new-instance v6, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->DelayCMD:Landroid/widget/CheckBox;

    new-instance v6, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v5, p0, Lcom/offsec/nethunter/WPSFragment;->PbcCMD:Landroid/widget/CheckBox;

    new-instance v6, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v5, 0x7f0a0489

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 231
    .local v5, "startButton":Landroid/widget/Button;
    const v6, 0x7f0a014f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/offsec/nethunter/WPSFragment;->DelayTime:Landroid/widget/TextView;

    .line 233
    new-instance v6, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/WPSFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/WPSFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 258
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 259
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->iswatch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "settings put system clockwork_wifi_setting on"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 254
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 301
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 302
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 303
    return-void
.end method
