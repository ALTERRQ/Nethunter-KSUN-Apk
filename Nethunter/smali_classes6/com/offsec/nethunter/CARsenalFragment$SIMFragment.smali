.class public Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;
.super Lcom/offsec/nethunter/CARsenalFragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SIMFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;
    }
.end annotation


# static fields
.field private static final ICSIM_SCRIPT_PATH:Ljava/lang/String; = "/opt/car_hacking/icsim_service.sh"

.field private static final LONG_DELAY:J = 0x7d0L

.field private static final SHORT_DELAY:J = 0x3e8L

.field private static final UDSIM_SCRIPT_PATH:Ljava/lang/String; = "/opt/car_hacking/udsim_service.sh"


# instance fields
.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private floatingContainer:Landroid/widget/FrameLayout;

.field private selected_caniface:Ljava/lang/String;

.field private udsimConfigEdit:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2735
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 2736
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 2737
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2743
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5600(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;

    .line 2735
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private getStringArrayAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3118
    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "Level"

    const-string v3, "0"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 3120
    .local v0, "levelOptions":[Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$3;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$3;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 3133
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 3134
    return-object v1
.end method

.method private getVisibleParam(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 3138
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 3139
    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3140
    .local v0, "selected":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -l "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3142
    .end local v0    # "selected":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private isICSIMRunning()Z
    .locals 2

    .line 3112
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "pgrep -f icsim_service.sh"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3113
    .local v0, "output":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$runICSIM$7(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .locals 1
    .param p0, "icsimView"    # Landroid/webkit/WebView;
    .param p1, "controlsView"    # Landroid/webkit/WebView;
    .param p2, "udsimView"    # Landroid/webkit/WebView;

    .line 2893
    const-string v0, "http://localhost:6080/vnc.html?autoconnect=true&resize=scale&view_only=true"

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2894
    const-string v0, "http://localhost:6081/vnc.html?autoconnect=true&resize=scale"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2895
    const-string v0, "http://localhost:6082/vnc.html?autoconnect=true&resize=scale"

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2896
    return-void
.end method

.method private removeFloatingWebViews(Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .locals 5
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "udsimView"    # Landroid/webkit/WebView;

    .line 2927
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 2928
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2930
    .local v0, "wm":Landroid/view/WindowManager;
    :try_start_0
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2931
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 2932
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    .line 2935
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 2936
    .local v1, "icsimContainer":Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2937
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2943
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireView()Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0542

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 2944
    .local v2, "udsimContainer":Landroid/widget/FrameLayout;
    invoke-virtual {p2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2945
    :cond_1
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2950
    .end local v0    # "wm":Landroid/view/WindowManager;
    .end local v1    # "icsimContainer":Landroid/widget/FrameLayout;
    .end local v2    # "udsimContainer":Landroid/widget/FrameLayout;
    :cond_2
    return-void
.end method

.method private runICSIM(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/widget/Spinner;Landroid/webkit/WebView;)V
    .locals 7
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "controlsView"    # Landroid/webkit/WebView;
    .param p3, "levelList"    # Landroid/widget/Spinner;
    .param p4, "udsimView"    # Landroid/webkit/WebView;

    .line 2873
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2875
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->udsimConfigEdit:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->udsimConfigEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2876
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->udsimConfigEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2877
    :cond_0
    const-string v0, ""

    :goto_0
    nop

    .line 2878
    .local v0, "udsimConfig":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su -c \'sh /opt/car_hacking/icsim_service.sh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2879
    .local v1, "combinedCmd":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->getVisibleParam(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 2881
    .local v2, "levelValue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2882
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2884
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " && sh /opt/car_hacking/udsim_service.sh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2885
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2886
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -c \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2888
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2889
    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2890
    const-string v3, "Running ICSim and UDSim..."

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->showToast(Ljava/lang/String;)V

    .line 2892
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1, p2, p4}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2898
    .end local v0    # "udsimConfig":Ljava/lang/String;
    .end local v1    # "combinedCmd":Ljava/lang/String;
    .end local v2    # "levelValue":Ljava/lang/String;
    goto :goto_1

    .line 2899
    :cond_3
    const-string v0, "Please set a CAN interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->showToast(Ljava/lang/String;)V

    .line 2901
    :goto_1
    return-void
.end method

.method private showFloatingWebView(Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .locals 23
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "udsimView"    # Landroid/webkit/WebView;

    .line 2955
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    return-void

    .line 2957
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 2960
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2961
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2963
    :cond_2
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    .line 2964
    const/16 v4, 0x320

    .line 2965
    .local v4, "floatingInitialWidth":I
    const/16 v5, 0x258

    .line 2966
    .local v5, "floatingInitialHeight":I
    iget-object v6, v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2968
    new-instance v6, Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    move-object v12, v6

    .line 2969
    .local v12, "cardView":Lcom/google/android/material/card/MaterialCardView;
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v13, v6

    .line 2972
    .local v13, "cardParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0xa

    const/16 v8, 0x14

    const/4 v9, 0x0

    invoke-virtual {v13, v8, v9, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2973
    invoke-virtual {v12, v13}, Lcom/google/android/material/card/MaterialCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2974
    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v12, v6}, Lcom/google/android/material/card/MaterialCardView;->setRadius(F)V

    .line 2975
    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v12, v8}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    .line 2976
    const/4 v8, 0x4

    invoke-virtual {v12, v8}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 2977
    invoke-virtual {v12, v9}, Lcom/google/android/material/card/MaterialCardView;->setPreventCornerOverlap(Z)V

    .line 2980
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v14, v8

    .line 2981
    .local v14, "verticalWrapper":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2982
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2987
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v15, v8

    .line 2988
    .local v15, "icsimWrapper":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2991
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2996
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v11, v8

    .line 2997
    .local v11, "udsimWrapper":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v7, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3000
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3005
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3006
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3009
    new-instance v8, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v10, v8

    .line 3010
    .local v10, "overlay":Landroid/view/View;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3013
    invoke-virtual {v10, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3016
    invoke-virtual {v12, v14}, Lcom/google/android/material/card/MaterialCardView;->addView(Landroid/view/View;)V

    .line 3017
    invoke-virtual {v12, v10}, Lcom/google/android/material/card/MaterialCardView;->addView(Landroid/view/View;)V

    .line 3018
    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3021
    new-instance v7, Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object v9, v7

    .line 3022
    .local v9, "closeBtn":Landroid/widget/ImageButton;
    const v7, 0x7f0800bf

    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3023
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v8, 0x50

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v8, v7

    .line 3024
    .local v8, "closeParams":Landroid/widget/FrameLayout$LayoutParams;
    const v7, 0x800035

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3025
    invoke-virtual {v9, v8}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3026
    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3027
    invoke-static {v9, v6}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 3029
    new-instance v6, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    invoke-virtual {v9, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3031
    new-instance v16, Landroid/view/WindowManager$LayoutParams;

    const/16 v17, 0x308

    const/16 v18, -0x3

    const/16 v19, 0x7f6

    move-object/from16 v6, v16

    move v7, v4

    move-object/from16 v20, v8

    .end local v8    # "closeParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v20, "closeParams":Landroid/widget/FrameLayout$LayoutParams;
    move v8, v5

    move-object/from16 v21, v9

    .end local v9    # "closeBtn":Landroid/widget/ImageButton;
    .local v21, "closeBtn":Landroid/widget/ImageButton;
    move/from16 v9, v19

    move-object/from16 v22, v10

    .end local v10    # "overlay":Landroid/view/View;
    .local v22, "overlay":Landroid/view/View;
    move/from16 v10, v17

    move-object/from16 v17, v11

    .end local v11    # "udsimWrapper":Landroid/widget/FrameLayout;
    .local v17, "udsimWrapper":Landroid/widget/FrameLayout;
    move/from16 v11, v18

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 3039
    .local v6, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v7, 0x800033

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3040
    const/16 v7, 0x64

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3041
    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3043
    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-interface {v3, v7, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3046
    new-instance v7, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;

    invoke-direct {v7, v0, v6, v3}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V

    move-object/from16 v8, v22

    .end local v22    # "overlay":Landroid/view/View;
    .local v8, "overlay":Landroid/view/View;
    invoke-virtual {v8, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3109
    return-void
.end method

.method private stopICSIM(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "controlsView"    # Landroid/webkit/WebView;
    .param p3, "udsimView"    # Landroid/webkit/WebView;

    .line 2904
    const-string v0, "su -c \'sh /opt/car_hacking/icsim_service.sh stop;sh /opt/car_hacking/udsim_service.sh stop\'"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2905
    const-string v0, "Stopping ICSim and UDSim..."

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->showToast(Ljava/lang/String;)V

    .line 2906
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2907
    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2908
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2909
    invoke-virtual {p2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2910
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2911
    invoke-virtual {p3, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2912
    return-void
.end method

.method private toggleFloatingICSIM(Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "udsimView"    # Landroid/webkit/WebView;

    .line 2916
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2918
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->showFloatingWebView(Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 2921
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->removeFloatingWebViews(Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    .line 2923
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$SIMFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 2764
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$SIMFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 2796
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->udsimConfigEdit:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-direct {v0, v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 2797
    .local v0, "browser":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 2798
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CARsenalFragment$SIMFragment(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "udsimView"    # Landroid/webkit/WebView;
    .param p3, "v"    # Landroid/view/View;

    .line 2806
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->toggleFloatingICSIM(Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CARsenalFragment$SIMFragment(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/widget/Spinner;Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "controlsView"    # Landroid/webkit/WebView;
    .param p3, "levelList"    # Landroid/widget/Spinner;
    .param p4, "udsimView"    # Landroid/webkit/WebView;
    .param p5, "v"    # Landroid/view/View;

    .line 2833
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->runICSIM(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/widget/Spinner;Landroid/webkit/WebView;)V

    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-CARsenalFragment$SIMFragment(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "controlsView"    # Landroid/webkit/WebView;
    .param p3, "udsimView"    # Landroid/webkit/WebView;
    .param p4, "v"    # Landroid/view/View;

    .line 2834
    invoke-direct {p0, p1, p2, p3}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->stopICSIM(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CARsenalFragment$SIMFragment(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V
    .locals 3
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "udsimView"    # Landroid/webkit/WebView;
    .param p3, "icsimContainer"    # Landroid/widget/FrameLayout;
    .param p4, "controlsContainer"    # Landroid/widget/FrameLayout;
    .param p5, "udsimContainer"    # Landroid/widget/FrameLayout;
    .param p6, "controlsView"    # Landroid/webkit/WebView;

    .line 2841
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->removeFloatingWebViews(Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    .line 2843
    :cond_0
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2844
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2845
    invoke-virtual {p5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2847
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2851
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2855
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p5, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2860
    const-string v0, "http://localhost:6080/vnc.html?autoconnect=true&resize=scale&view_only=true"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2861
    const-string v0, "http://localhost:6081/vnc.html?autoconnect=true&resize=scale"

    invoke-virtual {p6, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2862
    const-string v0, "http://localhost:6082/vnc.html?autoconnect=true&resize=scale"

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2864
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Restored ICSim and UDSim sessions..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2865
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CARsenalFragment$SIMFragment(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V
    .locals 10
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "udsimView"    # Landroid/webkit/WebView;
    .param p3, "icsimContainer"    # Landroid/widget/FrameLayout;
    .param p4, "controlsContainer"    # Landroid/widget/FrameLayout;
    .param p5, "udsimContainer"    # Landroid/widget/FrameLayout;
    .param p6, "controlsView"    # Landroid/webkit/WebView;

    .line 2838
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->isICSIMRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2839
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2867
    :cond_0
    return-void
.end method

.method synthetic lambda$showFloatingWebView$8$com-offsec-nethunter-CARsenalFragment$SIMFragment(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 0
    .param p1, "icsimView"    # Landroid/webkit/WebView;
    .param p2, "udsimView"    # Landroid/webkit/WebView;
    .param p3, "v"    # Landroid/view/View;

    .line 3029
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->removeFloatingWebViews(Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2749
    move-object/from16 v8, p0

    const v0, 0x7f0d002e

    const/4 v1, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual {v9, v0, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 2751
    .local v11, "rootView":Landroid/view/View;
    const v0, 0x7f0a0167

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/Spinner;

    .line 2752
    .local v21, "spinner":Landroid/widget/Spinner;
    const v0, 0x7f0a0410

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/ImageButton;

    .line 2755
    .local v22, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 2756
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v12

    iget-object v13, v8, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v14, v8, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 2761
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$400()Landroid/content/SharedPreferences;

    move-result-object v17

    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;)V

    .line 2755
    const-string v18, "selected_usb"

    const/16 v19, 0x0

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    move-object/from16 v20, v0

    invoke-static/range {v12 .. v20}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 2768
    const v0, 0x7f0a0308

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 2769
    .local v12, "levelList":Landroid/widget/Spinner;
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->getStringArrayAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2770
    invoke-virtual {v12, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2771
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$1;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;)V

    invoke-virtual {v12, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2786
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2787
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2788
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2789
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v8, v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->startActivity(Landroid/content/Intent;)V

    .line 2792
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const v0, 0x7f0a0541

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, v8, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->udsimConfigEdit:Lcom/google/android/material/textfield/TextInputEditText;

    .line 2793
    const v0, 0x7f0a0540

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageButton;

    .line 2795
    .local v13, "udsimBrowseBtn":Landroid/widget/ImageButton;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2801
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->getICSIMWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v14

    .line 2802
    .local v14, "icsimView":Landroid/webkit/WebView;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->getControlsWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v15

    .line 2803
    .local v15, "controlsView":Landroid/webkit/WebView;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->getUDSIMWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v7

    .line 2805
    .local v7, "udsimView":Landroid/webkit/WebView;
    const v0, 0x7f0a0290

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    .line 2806
    .local v6, "floatICSIM":Landroid/widget/Button;
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, v8, v14, v7}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2808
    const v0, 0x7f0a02cb

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    .line 2809
    .local v5, "icsimContainer":Landroid/widget/FrameLayout;
    const v0, 0x7f0a0131

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    .line 2810
    .local v4, "controlsContainer":Landroid/widget/FrameLayout;
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2811
    const v0, 0x7f0a0542

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/FrameLayout;

    .line 2814
    .local v3, "udsimContainer":Landroid/widget/FrameLayout;
    invoke-virtual {v14}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v14}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2815
    :cond_1
    invoke-virtual {v15}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v15}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2816
    :cond_2
    invoke-virtual {v7}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2819
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v14, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2823
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v15, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2827
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2833
    const v0, 0x7f0a042c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda7;

    move-object v0, v1

    move-object/from16 v16, v6

    move-object v6, v1

    .end local v6    # "floatICSIM":Landroid/widget/Button;
    .local v16, "floatICSIM":Landroid/widget/Button;
    move-object/from16 v1, p0

    move-object v9, v2

    move-object v2, v14

    move-object/from16 v17, v3

    .end local v3    # "udsimContainer":Landroid/widget/FrameLayout;
    .local v17, "udsimContainer":Landroid/widget/FrameLayout;
    move-object v3, v15

    move-object/from16 v18, v4

    .end local v4    # "controlsContainer":Landroid/widget/FrameLayout;
    .local v18, "controlsContainer":Landroid/widget/FrameLayout;
    move-object v4, v12

    move-object/from16 v19, v5

    .end local v5    # "icsimContainer":Landroid/widget/FrameLayout;
    .local v19, "icsimContainer":Landroid/widget/FrameLayout;
    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/widget/Spinner;Landroid/webkit/WebView;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2834
    const v0, 0x7f0a04d4

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, v8, v14, v15, v7}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2837
    iget-object v9, v8, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda9;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v3, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v18

    move-object v8, v6

    move-object/from16 v6, v17

    move-object/from16 v20, v7

    .end local v7    # "udsimView":Landroid/webkit/WebView;
    .local v20, "udsimView":Landroid/webkit/WebView;
    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/webkit/WebView;)V

    invoke-interface {v9, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2869
    return-object v11
.end method
