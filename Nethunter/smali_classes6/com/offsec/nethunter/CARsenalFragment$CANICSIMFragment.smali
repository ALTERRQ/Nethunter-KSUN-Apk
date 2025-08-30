.class public Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;
.super Lcom/offsec/nethunter/CARsenalFragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CANICSIMFragment"
.end annotation


# static fields
.field private static final ICSIM_SCRIPT_PATH:Ljava/lang/String; = "/opt/car_hacking/icsim_service.sh"

.field private static final LONG_DELAY:J = 0x7d0L

.field private static final SHORT_DELAY:J = 0x3e8L


# instance fields
.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private floatingContainer:Landroid/widget/FrameLayout;

.field private final floatingInitialHeight:I

.field private final floatingInitialWidth:I

.field private selected_caniface:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2211
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 2212
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 2213
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 2218
    const/16 v0, 0x320

    iput v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingInitialWidth:I

    .line 2219
    const/16 v0, 0x258

    iput v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingInitialHeight:I

    return-void
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

    .line 2211
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

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

    .line 2502
    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "Level"

    const-string v3, "0"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2504
    .local v0, "levelOptions":[Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$3;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$3;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 2524
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2525
    return-object v1
.end method

.method private getVisibleParam(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 2529
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2530
    instance-of v0, p1, Landroid/widget/EditText;

    const-string v1, " -l "

    if-eqz v0, :cond_1

    .line 2531
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2532
    .local v0, "input":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2532
    .end local v0    # "input":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 2535
    :cond_1
    instance-of v0, p1, Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 2536
    move-object v0, p1

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2537
    .local v0, "selected":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Level"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2535
    .end local v0    # "selected":Ljava/lang/String;
    :cond_2
    :goto_0
    nop

    .line 2542
    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method static synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 10
    .param p0, "rootView"    # Landroid/view/View;

    .line 2298
    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 2299
    .local v0, "icsimView":Landroid/webkit/WebView;
    const v1, 0x7f0a0123

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 2301
    .local v1, "controlsView":Landroid/webkit/WebView;
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/webkit/WebView;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v7, v3, v6

    .line 2302
    .local v7, "view":Landroid/webkit/WebView;
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    .line 2303
    .local v8, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v8, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 2304
    invoke-virtual {v8, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 2305
    invoke-virtual {v8, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 2306
    invoke-virtual {v8, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 2307
    invoke-virtual {v8, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 2308
    invoke-virtual {v8, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 2309
    new-instance v9, Landroid/webkit/WebViewClient;

    invoke-direct {v9}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v7, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2301
    .end local v7    # "view":Landroid/webkit/WebView;
    .end local v8    # "settings":Landroid/webkit/WebSettings;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2312
    :cond_0
    const-string v2, "http://localhost:6080/vnc.html?autoconnect=true&resize=scale&view_only=true"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2313
    const-string v2, "http://localhost:6081/vnc.html?autoconnect=true&resize=scale"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2315
    return-void
.end method

.method static synthetic lambda$showFloatingWebView$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 2497
    const/4 v0, 0x1

    return v0
.end method

.method private removeFloatingWebView()V
    .locals 2

    .line 2347
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 2348
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2349
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    .line 2352
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private showFloatingWebView(Landroid/webkit/WebView;)V
    .locals 25
    .param p1, "originalWebView"    # Landroid/webkit/WebView;

    .line 2355
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-void

    .line 2357
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/WindowManager;

    .line 2360
    .local v9, "wm":Landroid/view/WindowManager;
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/ViewGroup;

    .line 2361
    .local v10, "originalParent":Landroid/view/ViewGroup;
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 2362
    .local v11, "originalLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    if-eqz v10, :cond_1

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    move v5, v1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    .line 2364
    .local v5, "originalIndex":I
    :goto_0
    if-eqz v10, :cond_2

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2367
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v7, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    .line 2368
    iget-object v1, v7, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x320

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2371
    new-instance v1, Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    move-object v12, v1

    .line 2372
    .local v12, "cardView":Lcom/google/android/material/card/MaterialCardView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v13, v1

    .line 2376
    .local v13, "cardParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0xa

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2377
    invoke-virtual {v12, v13}, Lcom/google/android/material/card/MaterialCardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2378
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v12, v1}, Lcom/google/android/material/card/MaterialCardView;->setRadius(F)V

    .line 2379
    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v12, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    .line 2380
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f06008c

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 2381
    const/4 v2, 0x4

    invoke-virtual {v12, v2}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 2382
    invoke-virtual {v12, v3}, Lcom/google/android/material/card/MaterialCardView;->setPreventCornerOverlap(Z)V

    .line 2385
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v14, v2

    .line 2388
    .local v14, "innerWrapper":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v8, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2394
    new-instance v2, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v15, v2

    .line 2395
    .local v15, "overlay":Landroid/view/View;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2399
    invoke-virtual {v15, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2400
    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2402
    invoke-virtual {v12, v14}, Lcom/google/android/material/card/MaterialCardView;->addView(Landroid/view/View;)V

    .line 2403
    iget-object v0, v7, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2406
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 2407
    .local v6, "closeBtn":Landroid/widget/ImageButton;
    const v0, 0x7f0800bd

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2408
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x50

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v4, v0

    .line 2409
    .local v4, "closeParams":Landroid/widget/FrameLayout$LayoutParams;
    const v0, 0x800035

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2410
    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2411
    iget-object v0, v7, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2412
    invoke-static {v6, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 2414
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v16, v12

    move-object v12, v3

    .end local v12    # "cardView":Lcom/google/android/material/card/MaterialCardView;
    .local v16, "cardView":Lcom/google/android/material/card/MaterialCardView;
    move-object v3, v10

    move-object/from16 v17, v4

    .end local v4    # "closeParams":Landroid/widget/FrameLayout$LayoutParams;
    .local v17, "closeParams":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v4, p1

    move-object/from16 v18, v10

    move-object v10, v6

    .end local v6    # "closeBtn":Landroid/widget/ImageButton;
    .local v10, "closeBtn":Landroid/widget/ImageButton;
    .local v18, "originalParent":Landroid/view/ViewGroup;
    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/webkit/WebView;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2428
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v23, 0x308

    const/16 v24, -0x3

    const/16 v20, 0x320

    const/16 v21, 0x258

    const/16 v22, 0x7f6

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v24}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2437
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2438
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2439
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2441
    iget-object v1, v7, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-interface {v9, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2444
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;

    invoke-direct {v1, v7, v0, v9}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2497
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v8, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2498
    return-void
.end method

.method private toggleFloatingICSIM()V
    .locals 2

    .line 2338
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 2339
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 2340
    .local v0, "icsimView":Landroid/webkit/WebView;
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->showFloatingWebView(Landroid/webkit/WebView;)V

    .line 2341
    .end local v0    # "icsimView":Landroid/webkit/WebView;
    goto :goto_0

    .line 2342
    :cond_0
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->removeFloatingWebView()V

    .line 2344
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$CANICSIMFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 2246
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$CANICSIMFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 2282
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->toggleFloatingICSIM()V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CARsenalFragment$CANICSIMFragment(Landroid/widget/Spinner;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "levelList"    # Landroid/widget/Spinner;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 2287
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2289
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->getVisibleParam(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 2290
    .local v0, "levelValue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "\'"

    const-string v3, "su -c \'sh /opt/car_hacking/icsim_service.sh "

    if-nez v1, :cond_0

    .line 2291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2294
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2296
    :goto_0
    const-string v1, "Running ICSim..."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    .line 2297
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2316
    .end local v0    # "levelValue":Ljava/lang/String;
    goto :goto_1

    .line 2317
    :cond_1
    const-string v0, "Please set a CAN interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    .line 2319
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-CARsenalFragment$CANICSIMFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 2323
    const v0, 0x7f0a02b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 2324
    .local v0, "icsimView":Landroid/webkit/WebView;
    const v1, 0x7f0a0123

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 2326
    .local v1, "controlsView":Landroid/webkit/WebView;
    const-string v2, "su -c \'sh /opt/car_hacking/icsim_service.sh stop\'"

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2327
    const-string v2, "Stopping ICSim..."

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->showToast(Ljava/lang/String;)V

    .line 2328
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2329
    const-string v3, "about:blank"

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 2331
    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2332
    return-void
.end method

.method synthetic lambda$showFloatingWebView$5$com-offsec-nethunter-CARsenalFragment$CANICSIMFragment(Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/webkit/WebView;ILandroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V
    .locals 1
    .param p1, "wm"    # Landroid/view/WindowManager;
    .param p2, "originalParent"    # Landroid/view/ViewGroup;
    .param p3, "originalWebView"    # Landroid/webkit/WebView;
    .param p4, "originalIndex"    # I
    .param p5, "originalLayoutParams"    # Landroid/view/ViewGroup$LayoutParams;
    .param p6, "v"    # Landroid/view/View;

    .line 2415
    :try_start_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2416
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->floatingContainer:Landroid/widget/FrameLayout;

    .line 2418
    if-eqz p2, :cond_1

    .line 2419
    invoke-virtual {p3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2420
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2422
    :cond_0
    invoke-virtual {p2, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2423
    invoke-virtual {p3, p5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2425
    .end local v0    # "currentParent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2225
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2226
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 2231
    move-object/from16 v0, p0

    const v1, 0x7f0d002b

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2234
    .local v1, "rootView":Landroid/view/View;
    const v5, 0x7f0a015a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 2235
    .local v5, "spinner":Landroid/widget/Spinner;
    const v6, 0x7f0a03e8

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/ImageButton;

    .line 2237
    .local v15, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 2238
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v8, v0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 2243
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$300()Landroid/content/SharedPreferences;

    move-result-object v11

    new-instance v14, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda1;

    invoke-direct {v14, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;)V

    .line 2237
    const-string v12, "selected_usb"

    const/4 v13, 0x0

    move-object v9, v5

    move-object v10, v15

    invoke-static/range {v6 .. v14}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 2253
    const v6, 0x7f0a02ee

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 2254
    .local v6, "levelList":Landroid/widget/Spinner;
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->getStringArrayAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 2255
    .local v7, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2256
    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2258
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$1;

    invoke-direct {v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;)V

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2273
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v2, v8, :cond_0

    .line 2274
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2275
    new-instance v2, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v2, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2277
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->startActivity(Landroid/content/Intent;)V

    .line 2281
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const v2, 0x7f0a027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2282
    .local v2, "floatICSIM":Landroid/widget/Button;
    new-instance v8, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda2;

    invoke-direct {v8, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2285
    const v8, 0x7f0a0401

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2286
    .local v8, "runICSIM":Landroid/widget/Button;
    new-instance v9, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0, v6, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;Landroid/widget/Spinner;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2321
    const v9, 0x7f0a049f

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 2322
    .local v9, "stopICSIM":Landroid/widget/Button;
    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;Landroid/view/View;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2334
    return-object v1
.end method
