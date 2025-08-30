.class public Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;
.super Landroidx/fragment/app/Fragment;
.source "WifipumpkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/WifipumpkinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HostapdFragmentWPE"
.end annotation


# instance fields
.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/offsec/nethunter/WifipumpkinFragment;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/WifipumpkinFragment;

    .line 386
    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadOptions$2(Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;)V
    .locals 2
    .param p0, "matcherIfc"    # Ljava/util/regex/Matcher;
    .param p1, "ifc"    # Landroid/widget/EditText;
    .param p2, "matcherBssid"    # Ljava/util/regex/Matcher;
    .param p3, "bssid"    # Landroid/widget/EditText;
    .param p4, "matcherSsid"    # Ljava/util/regex/Matcher;
    .param p5, "ssid"    # Landroid/widget/EditText;
    .param p6, "matcherChannel"    # Ljava/util/regex/Matcher;
    .param p7, "channel"    # Landroid/widget/EditText;
    .param p8, "matcherPrivateKey"    # Ljava/util/regex/Matcher;
    .param p9, "privatekey"    # Landroid/widget/EditText;

    .line 486
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "ifcValue":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    .end local v0    # "ifcValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "bssidVal":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .end local v0    # "bssidVal":Ljava/lang/String;
    :cond_1
    invoke-virtual {p4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 501
    invoke-virtual {p4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "ssidVal":Ljava/lang/String;
    invoke-virtual {p5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    .end local v0    # "ssidVal":Ljava/lang/String;
    :cond_2
    invoke-virtual {p6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    invoke-virtual {p6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "channelVal":Ljava/lang/String;
    invoke-virtual {p7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    .end local v0    # "channelVal":Ljava/lang/String;
    :cond_3
    invoke-virtual {p8}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    invoke-virtual {p8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "PrivateKeyVal":Ljava/lang/String;
    invoke-virtual {p9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 518
    .end local v0    # "PrivateKeyVal":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private loadOptions(Landroid/view/View;)V
    .locals 14
    .param p1, "rootView"    # Landroid/view/View;

    .line 451
    const v0, 0x7f0a053e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 452
    .local v0, "ifc":Landroid/widget/EditText;
    const v1, 0x7f0a053b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    .line 453
    .local v8, "bssid":Landroid/widget/EditText;
    const v1, 0x7f0a0540

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/EditText;

    .line 454
    .local v9, "ssid":Landroid/widget/EditText;
    const v1, 0x7f0a053c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/EditText;

    .line 455
    .local v10, "channel":Landroid/widget/EditText;
    const v1, 0x7f0a053f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/EditText;

    .line 457
    .local v11, "privatekey":Landroid/widget/EditText;
    new-instance v12, Ljava/lang/Thread;

    new-instance v13, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda0;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-direct {v12, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 519
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V

    .line 520
    return-void
.end method

.method private updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?m)^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=(.*)$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic lambda$loadOptions$3$com-offsec-nethunter-WifipumpkinFragment$HostapdFragmentWPE(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 29
    .param p1, "ifc"    # Landroid/widget/EditText;
    .param p2, "bssid"    # Landroid/widget/EditText;
    .param p3, "ssid"    # Landroid/widget/EditText;
    .param p4, "channel"    # Landroid/widget/EditText;
    .param p5, "privatekey"    # Landroid/widget/EditText;

    .line 458
    move-object/from16 v0, p0

    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 459
    .local v1, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v2, "exe: "

    iget-object v3, v0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v2, v0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "text":Ljava/lang/String;
    const-string v3, "^interface=(.*)$"

    .line 463
    .local v3, "regExpatInterface":Ljava/lang/String;
    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 464
    .local v5, "patternIfc":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 466
    .local v17, "matcherIfc":Ljava/util/regex/Matcher;
    const-string v15, "^bssid=(.*)$"

    .line 467
    .local v15, "regExpatbssid":Ljava/lang/String;
    invoke-static {v15, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 468
    .local v14, "patternBssid":Ljava/util/regex/Pattern;
    invoke-virtual {v14, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 470
    .local v18, "matcherBssid":Ljava/util/regex/Matcher;
    const-string v13, "^ssid=(.*)$"

    .line 471
    .local v13, "regExpatssid":Ljava/lang/String;
    invoke-static {v13, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 472
    .local v12, "patternSsid":Ljava/util/regex/Pattern;
    invoke-virtual {v12, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 474
    .local v19, "matcherSsid":Ljava/util/regex/Matcher;
    const-string v11, "^channel=(.*)$"

    .line 475
    .local v11, "regExpatChannel":Ljava/lang/String;
    invoke-static {v11, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 476
    .local v10, "patternChannel":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v20

    .line 478
    .local v20, "matcherChannel":Ljava/util/regex/Matcher;
    const-string v9, "^private_key_passwd=(.*)$"

    .line 479
    .local v9, "regExpatEnablePrivateKey":Ljava/lang/String;
    invoke-static {v9, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 480
    .local v4, "patternEnablePrivateKey":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    .line 482
    .local v21, "matcherPrivateKey":Ljava/util/regex/Matcher;
    new-instance v8, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda1;

    move-object v6, v8

    move-object/from16 v7, v17

    move-object v0, v8

    move-object/from16 v8, p1

    move-object/from16 v22, v9

    .end local v9    # "regExpatEnablePrivateKey":Ljava/lang/String;
    .local v22, "regExpatEnablePrivateKey":Ljava/lang/String;
    move-object/from16 v9, v18

    move-object/from16 v23, v10

    .end local v10    # "patternChannel":Ljava/util/regex/Pattern;
    .local v23, "patternChannel":Ljava/util/regex/Pattern;
    move-object/from16 v10, p2

    move-object/from16 v24, v11

    .end local v11    # "regExpatChannel":Ljava/lang/String;
    .local v24, "regExpatChannel":Ljava/lang/String;
    move-object/from16 v11, v19

    move-object/from16 v25, v12

    .end local v12    # "patternSsid":Ljava/util/regex/Pattern;
    .local v25, "patternSsid":Ljava/util/regex/Pattern;
    move-object/from16 v12, p3

    move-object/from16 v26, v13

    .end local v13    # "regExpatssid":Ljava/lang/String;
    .local v26, "regExpatssid":Ljava/lang/String;
    move-object/from16 v13, v20

    move-object/from16 v27, v14

    .end local v14    # "patternBssid":Ljava/util/regex/Pattern;
    .local v27, "patternBssid":Ljava/util/regex/Pattern;
    move-object/from16 v14, p4

    move-object/from16 v28, v15

    .end local v15    # "regExpatbssid":Ljava/lang/String;
    .local v28, "regExpatbssid":Ljava/lang/String;
    move-object/from16 v15, v21

    move-object/from16 v16, p5

    invoke-direct/range {v6 .. v16}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda1;-><init>(Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/EditText;)V

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-WifipumpkinFragment$HostapdFragmentWPE(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 409
    iget-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    const-string v1, "cd /etc/hostapd-wpe/certs && ./bootstrap"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-WifipumpkinFragment$HostapdFragmentWPE(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .line 412
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 413
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, "file":Ljava/io/File;
    :try_start_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/google/common/io/Files;->asCharSource(Ljava/io/File;Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/io/CharSource;->read()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .local v2, "source":Ljava/lang/String;
    nop

    .line 423
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->getView()Landroid/view/View;

    move-result-object v3

    .line 424
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 425
    return-void

    .line 428
    :cond_0
    const v4, 0x7f0a053e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 429
    .local v4, "ifc":Landroid/widget/EditText;
    const v5, 0x7f0a053b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 430
    .local v5, "bssid":Landroid/widget/EditText;
    const v6, 0x7f0a0540

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 431
    .local v6, "ssid":Landroid/widget/EditText;
    const v7, 0x7f0a053c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 432
    .local v7, "channel":Landroid/widget/EditText;
    const v8, 0x7f0a053f

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 434
    .local v8, "privatekey":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "interface"

    invoke-direct {p0, v2, v10, v9}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 435
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "bssid"

    invoke-direct {p0, v2, v10, v9}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ssid"

    invoke-direct {p0, v2, v10, v9}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "channel"

    invoke-direct {p0, v2, v10, v9}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "private_key_passwd"

    invoke-direct {p0, v2, v10, v9}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->updateConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    iget-object v9, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    .line 441
    iget-object v9, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->context:Landroid/content/Context;

    const-string v10, "Source updated"

    invoke-static {v9, v10}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    return-void

    .line 417
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "ifc":Landroid/widget/EditText;
    .end local v5    # "bssid":Landroid/widget/EditText;
    .end local v6    # "ssid":Landroid/widget/EditText;
    .end local v7    # "channel":Landroid/widget/EditText;
    .end local v8    # "privatekey":Landroid/widget/EditText;
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->context:Landroid/content/Context;

    const-string v4, "Failed to read the configuration file."

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 420
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 392
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 393
    invoke-virtual {p0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->context:Landroid/content/Context;

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/configs/hostapd-wpe.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->configFilePath:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 400
    const v0, 0x7f0d0073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 402
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a0541

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 403
    .local v1, "button":Landroid/widget/Button;
    const v2, 0x7f0a053d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 404
    .local v2, "gencerts":Landroid/widget/Button;
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;->loadOptions(Landroid/view/View;)V

    .line 407
    const-string v3, "cd /etc/hostapd-wpe/certs && ./bootstrap"

    .line 409
    .local v3, "GENERATE_CERTS_CMD":Ljava/lang/String;
    new-instance v4, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    new-instance v4, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/WifipumpkinFragment$HostapdFragmentWPE;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    return-object v0
.end method
