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

    .line 2848
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

    .line 2885
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$1;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1, p1}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$1;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2900
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2903
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

    .line 2904
    .local v1, "prevIface":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2905
    .local v2, "selectionIndex":I
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2906
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 2907
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 2908
    const/4 v2, 0x1

    .line 2911
    :cond_1
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2912
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p5, v4}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;->onInterfaceSelected(Ljava/lang/String;)V

    .line 2914
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;

    invoke-direct {v4, p3, p4, p5, p1}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2932
    if-nez p6, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 2933
    const-string v3, "dmesg | grep \"now attached to\" | tail -1 | awk \'{ $1=$2=$3=$4=\"\"; print substr($0, 5) }\'"

    invoke-virtual {p7, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2936
    .local v3, "detected":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "^(can|vcan|slcan)\\d+$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2937
    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2940
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

    .line 2866
    if-eqz p0, :cond_0

    .line 2867
    const-string v0, "ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM|ttyS)[0-9]+$\' | sed \'s|^|/dev/|\'"

    goto :goto_0

    .line 2868
    :cond_0
    const-string v0, "ifconfig | awk \'/^[a-zA-Z0-9]/ {print $1}\' | sed \'s/://\' | grep -E \'^(can|vcan|slcan)[0-9]+$\';ls /dev | grep -E \'^(ttyUSB|rfcomm|ttyACM|ttyS)[0-9]+$\' | sed \'s|^|/dev/|\'"

    :goto_0
    move-object v9, v0

    .line 2871
    .local v9, "command":Ljava/lang/String;
    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2873
    .local v11, "result":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 2874
    .local v12, "deviceIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 2875
    const-string v0, "USB Devices"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2877
    :cond_1
    const-string v0, "Interfaces"

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2880
    :goto_1
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2881
    const-string v0, "\n"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2884
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

    .line 2941
    return-void
.end method

.method static synthetic lambda$setupDeviceInterfaceSpinner$2(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "loadInterfaces"    # Ljava/lang/Runnable;
    .param p3, "v"    # Landroid/view/View;

    .line 2945
    const-string v0, "Refreshing Devices..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2946
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2948
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 2949
    .local v0, "activity":Landroid/app/Activity;
    const v2, 0x7f0a02b5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 2950
    .local v2, "icsimView":Landroid/webkit/WebView;
    const v3, 0x7f0a0123

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 2951
    .local v3, "controlsView":Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2952
    invoke-virtual {v2}, Landroid/webkit/WebView;->reload()V

    .line 2953
    invoke-virtual {v3}, Landroid/webkit/WebView;->reload()V

    .line 2954
    const-string v4, "Refreshing ICSim display..."

    invoke-static {p0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2956
    :cond_0
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

    .line 2865
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

    .line 2943
    .local v2, "loadInterfaces":Ljava/lang/Runnable;
    if-eqz v1, :cond_0

    .line 2944
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;

    move-object v4, p0

    invoke-direct {v3, p0, p1, v2}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 2943
    :cond_0
    move-object v4, p0

    .line 2959
    :goto_0
    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2960
    return-void
.end method
