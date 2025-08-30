.class public Lcom/offsec/nethunter/BTFragment$MainFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field selected_addr:Ljava/lang/String;

.field selected_class:Ljava/lang/String;

.field private selected_iface:Ljava/lang/String;

.field selected_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 270
    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    .line 272
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic access$102(Lcom/offsec/nethunter/BTFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$MainFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic lambda$onCreateView$6(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 379
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method private refresh(Landroid/view/View;)V
    .locals 24
    .param p1, "BTFragment"    # Landroid/view/View;

    .line 536
    move-object/from16 v0, p1

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 537
    .local v1, "Binderstatus":Landroid/widget/TextView;
    const v2, 0x7f0a0010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    .line 538
    .local v14, "DBUSstatus":Landroid/widget/TextView;
    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    .line 539
    .local v15, "BTstatus":Landroid/widget/TextView;
    const v2, 0x7f0a0017

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    .line 540
    .local v16, "HCIstatus":Landroid/widget/TextView;
    const v2, 0x7f0a00b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/Button;

    .line 541
    .local v17, "bluebinderButton":Landroid/widget/Button;
    const v2, 0x7f0a0143

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Button;

    .line 542
    .local v18, "dbusButton":Landroid/widget/Button;
    const v2, 0x7f0a00c1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Button;

    .line 543
    .local v19, "btButton":Landroid/widget/Button;
    const v2, 0x7f0a02a3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/Button;

    .line 544
    .local v20, "hciButton":Landroid/widget/Button;
    const v2, 0x7f0a02a5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/Spinner;

    .line 545
    .local v21, "ifaces":Landroid/widget/Spinner;
    move-object/from16 v13, p0

    iget-object v2, v13, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string v3, "com.offsec.nethunter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 547
    .local v22, "sharedpreferences":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    new-instance v11, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;

    move-object v2, v11

    move-object/from16 v3, p0

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object v6, v1

    move-object/from16 v7, v17

    move-object v8, v14

    move-object/from16 v9, v18

    move-object v10, v15

    move-object v0, v11

    move-object/from16 v11, v19

    move-object/from16 v23, v1

    move-object v1, v12

    .end local v1    # "Binderstatus":Landroid/widget/TextView;
    .local v23, "Binderstatus":Landroid/widget/TextView;
    move-object/from16 v12, v16

    move-object/from16 v13, v20

    invoke-direct/range {v2 .. v13}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 607
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Spinner;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "ifaces"    # Landroid/widget/Spinner;
    .param p2, "hciIfaces"    # Ljava/util/ArrayList;

    .line 336
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "btButton"    # Landroid/widget/Button;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 448
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bootkali custom_cmd service dbus status | grep dbus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "dbus_statusCMD":Ljava/lang/String;
    const-string v1, "dbus is running."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "Start"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bootkali custom_cmd service bluetooth start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "Stop"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bootkali custom_cmd service bluetooth stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 455
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Enable dbus service first!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 460
    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "hciButton"    # Landroid/widget/Button;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 463
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Start"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/bootkali custom_cmd hciconfig "

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    const-string v2, "None"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No interface, please refresh or check connections!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " up noscan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "Stop"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 472
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    .line 474
    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "targets"    # Landroid/widget/ListView;

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, "scanning":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Scanning.."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 492
    return-void
.end method

.method synthetic lambda$onCreateView$13$com-offsec-nethunter-BTFragment$MainFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/ListView;)V
    .locals 7
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "ScanLog"    # Ljava/io/File;
    .param p3, "targets"    # Landroid/widget/ListView;

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "outputScanLog":Ljava/lang/String;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "targetsArray":[Ljava/lang/String;
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 499
    .local v2, "targetsadapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 500
    invoke-virtual {p3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 502
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v3, "notargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "No devices found"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p3, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    .end local v3    # "notargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$14$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "targets"    # Landroid/widget/ListView;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "scantime"    # Ljava/lang/String;
    .param p4, "ScanLog"    # Ljava/io/File;

    .line 488
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd rm /root/blue.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd timeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bluelog -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -ncqo /root/blue.log;hciconfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " noscan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p4, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method synthetic lambda$onCreateView$15$com-offsec-nethunter-BTFragment$MainFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/ListView;Ljava/io/File;Landroid/view/View;)V
    .locals 10
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "BTtime"    # Landroid/widget/TextView;
    .param p3, "targets"    # Landroid/widget/ListView;
    .param p4, "ScanLog"    # Ljava/io/File;
    .param p5, "v"    # Landroid/view/View;

    .line 483
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/bootkali custom_cmd hciconfig "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | grep \'UP RUNNING\' | cut -f2 -d$\'\\t\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "hci_current":Ljava/lang/String;
    const-string v2, "UP RUNNING "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "scantime":Ljava/lang/String;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v9, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda7;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, v1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 508
    .end local v1    # "scantime":Ljava/lang/String;
    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Interface is down!"

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 510
    .end local v0    # "hci_current":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "No interface selected!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$16$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "targets"    # Landroid/widget/ListView;
    .param p2, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p3, "adapterView"    # Landroid/widget/AdapterView;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "i"    # I
    .param p6, "l"    # J

    .line 518
    invoke-virtual {p1, p5}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "selected_target":Ljava/lang/String;
    const-string v1, "No devices found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "No target!"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 522
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | cut -d , -f 1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_addr:Ljava/lang/String;

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | cut -d , -f 2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_class:Ljava/lang/String;

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | cut -d , -f 3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_name:Ljava/lang/String;

    .line 525
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string v3, "selected_address"

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_addr:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string v3, "selected_class"

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_class:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string v3, "selected_name"

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_name:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Target selected!"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 530
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "ifaces"    # Landroid/widget/Spinner;

    .line 328
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bootkali custom_cmd hciconfig | grep hci | cut -d: -f1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "outputHCI":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v1, "hciIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const-string v2, "None"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "ifacesArray":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 336
    .end local v2    # "ifacesArray":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, p1, v1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-BTFragment$MainFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 353
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-BTFragment$MainFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .line 354
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "bluebinderButton"    # Landroid/widget/Button;
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 372
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f06040f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 375
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 377
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->cancel()V

    .line 378
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-BTFragment$MainFragment()V
    .locals 5

    .line 409
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "settings put global airplane_mode_on 0"

    const-string v2, "am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false"

    const-string v3, "settings put global bluetooth_on 1"

    const-string v4, "am broadcast -a android.bluetooth.adapter.action.STATE_CHANGED --ei android.bluetooth.adapter.extra.STATE 12 --ei android.bluetooth.adapter.extra.PREVIOUS_STATE 10"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "bluebinderButton"    # Landroid/widget/Button;
    .param p2, "bt_smd"    # Ljava/io/File;
    .param p3, "hwbinder"    # Ljava/io/File;
    .param p4, "vhci"    # Ljava/io/File;
    .param p5, "rootView"    # Landroid/view/View;
    .param p6, "v"    # Landroid/view/View;

    .line 365
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Start"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "echo 0 > "

    const-string v2, "svc bluetooth enable"

    if-eqz v0, :cond_3

    .line 366
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 368
    .local v0, "confirmbuilder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Internal bluetooth support disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 369
    const-string v1, "Your device does not support hwbinder, vhci, or bt_smd. Make sure your kernel config has the recommended drivers enabled in order to use internal bluetooth."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 370
    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;)V

    const-string v2, "Sure"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 379
    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "Try anyway"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 380
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 381
    .local v1, "alert":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 382
    .end local v0    # "confirmbuilder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v1    # "alert":Landroidx/appcompat/app/AlertDialog;
    goto/16 :goto_2

    .line 383
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "svc bluetooth disable"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo 1 > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/usr/sbin/bluebinder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "bluebinder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "settings put global airplane_mode_on 1"

    const-string v4, "am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true"

    const-string v5, "settings put global bluetooth_on 0"

    const-string v6, "am broadcast -a android.bluetooth.adapter.action.STATE_CHANGED --ei android.bluetooth.adapter.extra.STATE 10 --ei android.bluetooth.adapter.extra.PREVIOUS_STATE 12"

    filled-new-array {v5, v6, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 405
    const-string v1, "echo -ne \"\\033]0;Bluebinder\\007\" && clear;bluebinder || bluebinder;exit"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/BTFragment$MainFragment;->run_cmd(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Starting bluebinder..."

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 409
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;)V

    const-wide/16 v3, 0x2328

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Bluebinder is not installed. Launching setup.."

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 418
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->RunSetup()V

    .line 421
    .end local v0    # "bluebinder":Ljava/io/File;
    :goto_0
    invoke-direct {p0, p5}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_2

    .line 423
    :cond_3
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v3, "Stop"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 425
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/bootkali custom_cmd pkill bluebinder;exit"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "pm enable com.android.bluetooth"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 432
    :goto_1
    invoke-direct {p0, p5}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    .line 434
    :cond_5
    :goto_2
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "dbusButton"    # Landroid/widget/Button;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "v"    # Landroid/view/View;

    .line 438
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Start"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bootkali custom_cmd service dbus start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 440
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    goto :goto_0

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Stop"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bootkali custom_cmd service dbus stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 443
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    .line 445
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onResume$0$com-offsec-nethunter-BTFragment$MainFragment()V
    .locals 1

    .line 288
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$refresh$17$com-offsec-nethunter-BTFragment$MainFragment(Landroid/widget/Spinner;Landroid/content/SharedPreferences;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 18
    .param p1, "ifaces"    # Landroid/widget/Spinner;
    .param p2, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p3, "Binderstatus"    # Landroid/widget/TextView;
    .param p4, "bluebinderButton"    # Landroid/widget/Button;
    .param p5, "DBUSstatus"    # Landroid/widget/TextView;
    .param p6, "dbusButton"    # Landroid/widget/Button;
    .param p7, "BTstatus"    # Landroid/widget/TextView;
    .param p8, "btButton"    # Landroid/widget/Button;
    .param p9, "HCIstatus"    # Landroid/widget/TextView;
    .param p10, "hciButton"    # Landroid/widget/Button;

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    iget-object v10, v0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/bootkali custom_cmd hciconfig | grep hci | cut -d: -f1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 549
    .local v10, "outputHCI":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v11, "hciIfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    const v13, 0x1090003

    if-eqz v12, :cond_0

    .line 551
    const-string v12, "None"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v12, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14, v13, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move-object/from16 v15, p2

    goto :goto_0

    .line 554
    :cond_0
    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 555
    .local v12, "ifacesArray":[Ljava/lang/String;
    new-instance v14, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15, v13, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 556
    const-string v13, "selected_iface"

    const/4 v14, 0x0

    move-object/from16 v15, p2

    invoke-interface {v15, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 557
    .local v13, "lastiface":I
    invoke-virtual {v1, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 559
    .end local v12    # "ifacesArray":[Ljava/lang/String;
    .end local v13    # "lastiface":I
    :goto_0
    iget-object v12, v0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v13, "pidof bluebinder"

    invoke-virtual {v12, v13}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 560
    .local v12, "binder_statusCMD":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    const-string v14, "/sys/module/hci_smd/parameters/hcismd_set"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 561
    .local v13, "bt_smd":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    const v1, 0x7f1300b1

    if-nez v14, :cond_2

    .line 562
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 563
    const v14, 0x7f1300b3

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    .line 564
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 567
    :cond_1
    const v14, 0x7f1300ad

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(I)V

    .line 568
    const v14, 0x7f1300b2

    invoke-virtual {v3, v14}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 571
    :cond_2
    const v14, 0x7f1300b2

    const-string v1, "hci0"

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 572
    const v1, 0x7f1300ab

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 573
    invoke-virtual {v3, v14}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 575
    :cond_3
    const v1, 0x7f1300a9

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 576
    const v1, 0x7f1300b1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(I)V

    .line 579
    :goto_1
    iget-object v1, v0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, "/bootkali custom_cmd service dbus status | grep dbus"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "dbus_statusCMD":Ljava/lang/String;
    const-string v2, "dbus is running."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 581
    const v2, 0x7f1300b1

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 582
    const v14, 0x7f1300b2

    invoke-virtual {v5, v14}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 585
    :cond_4
    const v2, 0x7f1300b1

    const v14, 0x7f1300b3

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(I)V

    .line 586
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(I)V

    .line 588
    :goto_2
    iget-object v2, v0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    .end local v1    # "dbus_statusCMD":Ljava/lang/String;
    .local v17, "dbus_statusCMD":Ljava/lang/String;
    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "/bootkali custom_cmd service bluetooth status | grep bluetooth"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "bt_statusCMD":Ljava/lang/String;
    const-string v2, "bluetooth is running."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 590
    const v2, 0x7f1300ad

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 591
    const v2, 0x7f1300b2

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 594
    :cond_5
    const v2, 0x7f1300b3

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 595
    const v2, 0x7f1300b1

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setText(I)V

    .line 597
    :goto_3
    iget-object v2, v0, Lcom/offsec/nethunter/BTFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "bt_statusCMD":Ljava/lang/String;
    .local v16, "bt_statusCMD":Ljava/lang/String;
    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "/bootkali custom_cmd hciconfig "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v14, v0, Lcom/offsec/nethunter/BTFragment$MainFragment;->selected_iface:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, " | grep \'UP RUNNING\' | cut -f2 -d$\'\\t\'"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "hci_statusCMD":Ljava/lang/String;
    const-string v2, "UP RUNNING "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 599
    const v2, 0x7f1300b5

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    .line 600
    const v2, 0x7f1300b2

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 603
    :cond_6
    const v2, 0x7f1300aa

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    .line 604
    const v2, 0x7f1300b1

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(I)V

    .line 606
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 280
    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    .line 282
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 29
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 295
    move-object/from16 v12, p0

    const v0, 0x7f0d0023

    const/4 v1, 0x0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual {v13, v0, v14, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 296
    .local v15, "rootView":Landroid/view/View;
    iget-object v0, v12, Lcom/offsec/nethunter/BTFragment$MainFragment;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 299
    .local v10, "sharedpreferences":Landroid/content/SharedPreferences;
    const v0, 0x7f0a00c5

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 300
    .local v9, "BTMainDesc":Landroid/widget/TextView;
    const v0, 0x7f0a00c2

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 301
    .local v8, "BTIface":Landroid/widget/TextView;
    const v0, 0x7f0a00c6

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 303
    .local v7, "BTService":Landroid/widget/TextView;
    const-string v0, "running_on_wearos"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 304
    .local v16, "iswatch":Ljava/lang/Boolean;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    const v0, 0x7f1300ac

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 307
    const v0, 0x7f1300ae

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 311
    :cond_0
    const-string v0, "bt_setup_done"

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 312
    .local v11, "setupdone":Ljava/lang/Boolean;
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 313
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->SetupDialogWatch()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->SetupDialog()V

    .line 317
    :cond_2
    :goto_0
    const v0, 0x7f0a02a5

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    .line 320
    .local v6, "ifaces":Landroid/widget/Spinner;
    const v0, 0x7f0a00b7

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 321
    .local v2, "Binder":Landroid/widget/TextView;
    new-instance v3, Ljava/io/File;

    const-string v0, "/sys/module/hci_smd/parameters/hcismd_set"

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v3, "bt_smd":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    const v0, 0x7f1300af

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 327
    :cond_3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12, v6}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Spinner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 339
    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment$1;

    invoke-direct {v0, v12, v10, v6}, Lcom/offsec/nethunter/BTFragment$MainFragment$1;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/content/SharedPreferences;Landroid/widget/Spinner;)V

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 352
    const v0, 0x7f0a03e6

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    .line 353
    .local v1, "RefreshStatus":Landroid/widget/ImageButton;
    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0, v12, v15}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v4, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;

    invoke-direct {v4, v12, v15}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/view/View;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 357
    const v0, 0x7f0a00b8

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 358
    .local v0, "bluebinderButton":Landroid/widget/Button;
    const v4, 0x7f0a0143

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/widget/Button;

    .line 359
    .local v5, "dbusButton":Landroid/widget/Button;
    const v4, 0x7f0a00c1

    invoke-virtual {v15, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 360
    .local v4, "btButton":Landroid/widget/Button;
    move-object/from16 v17, v0

    .end local v0    # "bluebinderButton":Landroid/widget/Button;
    .local v17, "bluebinderButton":Landroid/widget/Button;
    const v0, 0x7f0a02a3

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 361
    .local v0, "hciButton":Landroid/widget/Button;
    move-object/from16 v18, v0

    .end local v0    # "hciButton":Landroid/widget/Button;
    .local v18, "hciButton":Landroid/widget/Button;
    new-instance v0, Ljava/io/File;

    move-object/from16 v19, v1

    .end local v1    # "RefreshStatus":Landroid/widget/ImageButton;
    .local v19, "RefreshStatus":Landroid/widget/ImageButton;
    const-string v1, "/dev/hwbinder"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .end local v4    # "btButton":Landroid/widget/Button;
    .local v1, "btButton":Landroid/widget/Button;
    move-object v4, v0

    .line 362
    .local v4, "hwbinder":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    move-object/from16 v20, v1

    .end local v1    # "btButton":Landroid/widget/Button;
    .local v20, "btButton":Landroid/widget/Button;
    const-string v1, "/dev/vhci"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .end local v5    # "dbusButton":Landroid/widget/Button;
    .local v1, "dbusButton":Landroid/widget/Button;
    move-object v5, v0

    .line 364
    .local v5, "vhci":Ljava/io/File;
    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda11;

    move-object/from16 v21, v17

    move-object/from16 v13, v18

    move-object/from16 v17, v0

    .end local v17    # "bluebinderButton":Landroid/widget/Button;
    .end local v18    # "hciButton":Landroid/widget/Button;
    .local v13, "hciButton":Landroid/widget/Button;
    .local v21, "bluebinderButton":Landroid/widget/Button;
    move-object v14, v1

    move-object/from16 v18, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v20

    .end local v1    # "dbusButton":Landroid/widget/Button;
    .end local v20    # "btButton":Landroid/widget/Button;
    .local v10, "btButton":Landroid/widget/Button;
    .local v14, "dbusButton":Landroid/widget/Button;
    .local v18, "RefreshStatus":Landroid/widget/ImageButton;
    .local v19, "sharedpreferences":Landroid/content/SharedPreferences;
    move-object/from16 v1, p0

    move-object/from16 v20, v2

    .end local v2    # "Binder":Landroid/widget/TextView;
    .local v20, "Binder":Landroid/widget/TextView;
    move-object/from16 v2, v21

    move-object/from16 v22, v6

    .end local v6    # "ifaces":Landroid/widget/Spinner;
    .local v22, "ifaces":Landroid/widget/Spinner;
    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Ljava/io/File;Ljava/io/File;Ljava/io/File;Landroid/view/View;)V

    move-object/from16 v1, v17

    move-object/from16 v0, v21

    .end local v21    # "bluebinderButton":Landroid/widget/Button;
    .local v0, "bluebinderButton":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, v12, v14, v15}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v14, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, v12, v10, v15}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v10, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, v12, v13, v15}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v13, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    const v1, 0x7f0a048e

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 478
    .local v1, "StartScanButton":Landroid/widget/Button;
    const v2, 0x7f0a00c7

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 479
    .local v2, "BTtime":Landroid/widget/TextView;
    const v6, 0x7f0a04be

    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 480
    .local v6, "targets":Landroid/widget/ListView;
    new-instance v17, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct/range {v17 .. v17}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    move-object/from16 v21, v17

    .line 481
    .local v21, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    move-object/from16 v17, v0

    .end local v0    # "bluebinderButton":Landroid/widget/Button;
    .restart local v17    # "bluebinderButton":Landroid/widget/Button;
    new-instance v0, Ljava/io/File;

    move-object/from16 v23, v3

    .end local v3    # "bt_smd":Ljava/io/File;
    .local v23, "bt_smd":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v4

    .end local v4    # "hwbinder":Ljava/io/File;
    .local v24, "hwbinder":Ljava/io/File;
    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/root/blue.log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v11

    .end local v11    # "setupdone":Ljava/lang/Boolean;
    .local v3, "setupdone":Ljava/lang/Boolean;
    move-object v11, v0

    .line 482
    .local v11, "ScanLog":Ljava/io/File;
    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;

    move-object v4, v6

    .end local v6    # "targets":Landroid/widget/ListView;
    .local v4, "targets":Landroid/widget/ListView;
    move-object v6, v0

    move-object/from16 v25, v7

    .end local v7    # "BTService":Landroid/widget/TextView;
    .local v25, "BTService":Landroid/widget/TextView;
    move-object/from16 v7, p0

    move-object/from16 v26, v8

    .end local v8    # "BTIface":Landroid/widget/TextView;
    .local v26, "BTIface":Landroid/widget/TextView;
    move-object/from16 v8, v21

    move-object/from16 v27, v9

    .end local v9    # "BTMainDesc":Landroid/widget/TextView;
    .local v27, "BTMainDesc":Landroid/widget/TextView;
    move-object v9, v2

    move-object/from16 v28, v10

    .end local v10    # "btButton":Landroid/widget/Button;
    .local v28, "btButton":Landroid/widget/Button;
    move-object v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/TextView;Landroid/widget/ListView;Ljava/io/File;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda16;

    move-object/from16 v6, v21

    .end local v21    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .local v6, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-direct {v0, v12, v4, v6}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;Landroid/widget/ListView;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 531
    return-object v15
.end method

.method public onResume()V
    .locals 3

    .line 286
    invoke-super {p0}, Lcom/offsec/nethunter/BTFragment;->onResume()V

    .line 287
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Status updated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$MainFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment$MainFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method
