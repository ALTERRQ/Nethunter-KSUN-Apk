.class public Lcom/offsec/nethunter/DuckHunterPreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "DuckHunterPreviewFragment.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final duckyInputFile:Ljava/lang/String;

.field private final duckyOutputFile:Ljava/lang/String;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isReceiverRegistered:Z

.field private final mainHandler:Landroid/os/Handler;

.field private final previewDuckyBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private previewSource:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "inFilePath"    # Ljava/lang/String;
    .param p2, "outFilePath"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->mainHandler:Landroid/os/Handler;

    .line 30
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 36
    new-instance v0, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment$1;-><init>(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewDuckyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->duckyInputFile:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->duckyOutputFile:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->duckyInputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->duckyOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/offsec/nethunter/DuckHunterPreviewFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewSource:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->activity:Landroid/app/Activity;

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    const v0, 0x7f0d0050

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a0451

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewSource:Landroid/widget/TextView;

    .line 80
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewSource:Landroid/widget/TextView;

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 95
    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewDuckyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->isReceiverRegistered:Z

    .line 99
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 86
    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->isReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->previewDuckyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.offsec.nethunter.PREVIEWDUCKY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;->isReceiverRegistered:Z

    .line 90
    :cond_0
    return-void
.end method
