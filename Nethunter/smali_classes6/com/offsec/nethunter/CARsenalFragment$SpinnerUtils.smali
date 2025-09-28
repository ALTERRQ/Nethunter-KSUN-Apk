.class public Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpinnerUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$setupDeviceInterfaceSpinner$0(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;ZLcom/offsec/nethunter/utils/ShellExecuter;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceIfaces"    # Ljava/util/ArrayList;
    .param p2, "spinner"    # Landroid/widget/Spinner;
    .param p3, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p4, "sharedPrefKey"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;
    .param p6, "onlyUsbDevices"    # Z
    .param p7, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 3509
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$1;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1, p1}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$1;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 3523
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3527
    .local v1, "prevIface":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3528
    .local v2, "selectionIndex":I
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3529
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 3530
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 3531
    const/4 v2, 0x1

    .line 3534
    :cond_1
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 3535
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p5, v4}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;->onInterfaceSelected(Ljava/lang/String;)V

    .line 3537
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;

    invoke-direct {v4, p3, p4, p5, p1}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3553
    if-nez p6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 3554
    const-string v3, "dmesg | grep \"now attached to\" | tail -1 | awk \'{ $1=$2=$3=$4=\"\"; print substr($0, 5) }\'"

    invoke-virtual {p7, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3557
    .local v3, "detected":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "^(can|vcan|slcan)\\d+$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3558
    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3561
    .end local v3    # "detected":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method static synthetic lambda$setupDeviceInterfaceSpinner$1(ZLcom/offsec/nethunter/utils/ShellExecuter;Landroid/content/Context;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V
    .locals 15
    .param p0, "onlyUsbDevices"    # Z
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "spinner"    # Landroid/widget/Spinner;
    .param p4, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p5, "sharedPrefKey"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    .line 3494
    if-eqz p0, :cond_0

    .line 3495
    const-string v0, "ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM|ttyS)[0-9]+$\' | sed \'s|^|/dev/|\'"

    goto :goto_0

    .line 3496
    :cond_0
    const-string v0, "ifconfig | awk \'/^[a-zA-Z0-9]/ {print $1}\' | sed \'s/://\' | grep -E \'^(can|vcan|slcan)[0-9]+$\';ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM|ttyS)[0-9]+$\' | sed \'s|^|/dev/|\'"

    :goto_0
    move-object v9, v0

    .line 3499
    .local v9, "command":Ljava/lang/String;
    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3501
    .local v11, "result":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 3502
    .local v12, "deviceIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    const-string v0, "USB Devices"

    goto :goto_1

    :cond_1
    const-string v0, "Interfaces"

    :goto_1
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3504
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3505
    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3508
    :cond_2
    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v14, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;ZLcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3562
    return-void
.end method

.method static synthetic lambda$setupDeviceInterfaceSpinner$2(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "loadInterfaces"    # Ljava/lang/Runnable;
    .param p3, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p4, "v"    # Landroid/view/View;

    .line 3567
    move-object v0, p0

    const-string v1, "Refreshing Devices..."

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3568
    invoke-interface/range {p1 .. p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3570
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 3571
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 3573
    .local v1, "activity":Landroid/app/Activity;
    const v3, 0x7f0a04e5

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout;

    .line 3574
    .local v3, "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v4

    .line 3576
    .local v4, "selectedTabIndex":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 3577
    const v5, 0x7f0a02cb

    invoke-virtual {v1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 3578
    .local v5, "icsimContainer":Landroid/widget/FrameLayout;
    const v6, 0x7f0a0131

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 3579
    .local v6, "controlsContainer":Landroid/widget/FrameLayout;
    const v7, 0x7f0a0542

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 3581
    .local v7, "udsimContainer":Landroid/widget/FrameLayout;
    invoke-static {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->getICSIMWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v8

    .line 3582
    .local v8, "icsimView":Landroid/webkit/WebView;
    invoke-static {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->getControlsWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v9

    .line 3583
    .local v9, "controlsView":Landroid/webkit/WebView;
    invoke-static {p0}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$ICSIMWebViewHolder;->getUDSIMWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v10

    .line 3586
    .local v10, "udsimView":Landroid/webkit/WebView;
    invoke-virtual {v8}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v8}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3587
    :cond_0
    invoke-virtual {v9}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v9}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3588
    :cond_1
    invoke-virtual {v10}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3591
    :cond_2
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 3592
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3596
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3600
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3606
    const-string v11, "ps aux | pgrep \'icsim\'"

    move-object/from16 v12, p3

    invoke-virtual {v12, v11}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3607
    .local v11, "output":Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 3608
    const-string v13, "http://localhost:6080/vnc.html?autoconnect=true&resize=scale&view_only=true"

    invoke-virtual {v8, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3609
    const-string v13, "http://localhost:6081/vnc.html?autoconnect=true&resize=scale"

    invoke-virtual {v9, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3610
    const-string v13, "http://localhost:6082/vnc.html?autoconnect=true&resize=scale"

    invoke-virtual {v10, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 3613
    :cond_3
    const-string v13, "Refreshing ICSim and UDSim display..."

    invoke-static {p0, v13, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3591
    .end local v11    # "output":Ljava/lang/String;
    :cond_4
    move-object/from16 v12, p3

    goto :goto_0

    .line 3576
    .end local v5    # "icsimContainer":Landroid/widget/FrameLayout;
    .end local v6    # "controlsContainer":Landroid/widget/FrameLayout;
    .end local v7    # "udsimContainer":Landroid/widget/FrameLayout;
    .end local v8    # "icsimView":Landroid/webkit/WebView;
    .end local v9    # "controlsView":Landroid/webkit/WebView;
    .end local v10    # "udsimView":Landroid/webkit/WebView;
    :cond_5
    move-object/from16 v12, p3

    goto :goto_0

    .line 3570
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "tabLayout":Lcom/google/android/material/tabs/TabLayout;
    .end local v4    # "selectedTabIndex":I
    :cond_6
    move-object/from16 v12, p3

    .line 3617
    :goto_0
    return-void
.end method

.method public static setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "spinner"    # Landroid/widget/Spinner;
    .param p4, "refreshButton"    # Landroid/view/View;
    .param p5, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p6, "sharedPrefKey"    # Ljava/lang/String;
    .param p7, "onlyUsbDevices"    # Z
    .param p8, "callback"    # Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    .line 3493
    move-object v0, p1

    move-object v1, p4

    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;

    move-object v2, v10

    move/from16 v3, p7

    move-object v4, p2

    move-object v5, p0

    move-object v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;-><init>(ZLcom/offsec/nethunter/utils/ShellExecuter;Landroid/content/Context;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 3565
    .local v2, "loadInterfaces":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 3566
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;

    move-object v4, p0

    move-object v5, p2

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 3565
    :cond_0
    move-object v4, p0

    move-object v5, p2

    .line 3620
    :goto_0
    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3621
    return-void
.end method
