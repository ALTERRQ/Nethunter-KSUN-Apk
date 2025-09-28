.class public Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;
.super Lcom/offsec/nethunter/CARsenalFragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CANMSFFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private selected_caniface:Ljava/lang/String;

.field private selected_module:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3188
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 3189
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 3190
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$5702(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 3188
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic lambda$onCreateView$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 3324
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 3221
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 4
    .param p1, "selected_baud"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 3228
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3231
    .local v0, "baudSpeed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "baudValue":Ljava/lang/String;
    goto :goto_0

    .line 3234
    .end local v1    # "baudValue":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 3237
    .restart local v1    # "baudValue":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/usr/share/metasploit-framework/tools/hardware/elm327_relay.rb -s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 3238
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "msfCmd"    # Ljava/lang/StringBuilder;

    .line 3462
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 3463
    return-void
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 10
    .param p1, "optionsContainer"    # Landroid/widget/LinearLayout;
    .param p2, "v"    # Landroid/view/View;

    .line 3420
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    const-string v1, "Module (None)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 3426
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 3428
    .local v0, "userInputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/widget/EditText;>;"
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 3433
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3434
    .local v1, "msfCmd":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    const-string v3, ".rb"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3435
    .local v2, "moduleName":Ljava/lang/String;
    const-string v3, "connect"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "`echo -ne \'\\015\'`"

    if-eqz v3, :cond_2

    .line 3436
    const-string v3, "msfsession=$(screen -ls | awk \'/^[[:space:]]*[0-9]+\\.msf/ {print $1}\'\n);screen -S $msfsession -X stuff \"use auxiliary/client/hwbridge/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3437
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3438
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3439
    :cond_2
    const-string v3, "local_hwbridge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3440
    const-string v3, "msfsession=$(screen -ls | awk \'/^[[:space:]]*[0-9]+\\.msf/ {print $1}\'\n);screen -S $msfsession -X stuff \"use auxiliary/server/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3441
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3442
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3444
    :cond_3
    const-string v3, "msfsession=$(screen -ls | awk \'/^[[:space:]]*[0-9]+\\.msf/ {print $1}\'\n);screen -S $msfsession -X stuff \"use post/hardware/automotive/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3445
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3446
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3450
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/widget/EditText;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3451
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 3453
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3454
    const-string v7, "\'"

    const-string v8, "\'\"\'\"\'"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 3455
    .local v7, "sanitized":Ljava/lang/String;
    const-string v8, "set "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'`echo -ne \'\\015\'`"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3457
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/widget/EditText;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "sanitized":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 3459
    :cond_5
    const-string v3, "run\"`echo -ne \'\\015\'`;screen -d -r $msfsession;exit"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3461
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Ljava/lang/StringBuilder;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3464
    return-void

    .line 3429
    .end local v1    # "msfCmd":Ljava/lang/StringBuilder;
    .end local v2    # "moduleName":Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v1, "Please press Set and fill options first."

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->showToast(Ljava/lang/String;)V

    .line 3430
    return-void

    .line 3421
    .end local v0    # "userInputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/widget/EditText;>;"
    :cond_7
    :goto_3
    const-string v0, "Select a module first"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->showToast(Ljava/lang/String;)V

    .line 3422
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 3
    .param p1, "module"    # Ljava/util/ArrayList;
    .param p2, "modulesList"    # Landroid/widget/Spinner;

    .line 3260
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$1;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 3275
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3277
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 3279
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3293
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Landroid/widget/Spinner;)V
    .locals 4
    .param p1, "modulesList"    # Landroid/widget/Spinner;

    .line 3244
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "basename /usr/share/metasploit-framework/modules/auxiliary/server/local_hwbridge.rb && basename /usr/share/metasploit-framework/modules/auxiliary/client/hwbridge/connect.rb && ls /usr/share/metasploit-framework/modules/post/hardware/automotive/"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3250
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3251
    .local v1, "module":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "MSF Modules"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3253
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3256
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3254
    :cond_1
    :goto_0
    const-string v2, "Module (None)"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3259
    :goto_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3294
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "moduleInfo"    # Ljava/lang/String;

    .line 3321
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3322
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Module Information"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3323
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3324
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3325
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3326
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3328
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 3329
    .local v3, "closeButton":Landroid/widget/Button;
    if-eqz v3, :cond_0

    .line 3330
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 3332
    :cond_0
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 3302
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    const-string v1, "Module (None)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3307
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    const-string v1, ".rb"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3308
    .local v0, "moduleNameKey":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "module_info_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3310
    .local v1, "resourceKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3312
    .local v2, "resId":I
    if-nez v2, :cond_1

    .line 3313
    const-string v3, "No info available for this module"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->showToast(Ljava/lang/String;)V

    .line 3314
    return-void

    .line 3317
    :cond_1
    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3320
    .local v3, "moduleInfo":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3333
    return-void

    .line 3303
    .end local v0    # "moduleNameKey":Ljava/lang/String;
    .end local v1    # "resourceKey":Ljava/lang/String;
    .end local v2    # "resId":I
    .end local v3    # "moduleInfo":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "Select a module first"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->showToast(Ljava/lang/String;)V

    .line 3304
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 20
    .param p1, "infoText"    # Landroid/widget/TextView;
    .param p2, "optionsContainer"    # Landroid/widget/LinearLayout;
    .param p3, "v"    # Landroid/view/View;

    .line 3338
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    const-string v4, "Module (None)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    .line 3343
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3345
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "module_set_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->selected_module:Ljava/lang/String;

    .line 3346
    const-string v6, ".rb"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3348
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3345
    const-string v6, "string"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3350
    .local v3, "optionsStringId":I
    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 3351
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3352
    const v4, 0x7f1300d7

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 3353
    return-void

    .line 3356
    :cond_1
    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3357
    .local v5, "optionsText":Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3359
    .local v6, "optionLines":[Ljava/lang/String;
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3360
    .local v8, "inputLayout":Landroid/widget/LinearLayout;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3361
    const/16 v10, 0x14

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3363
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3365
    .local v10, "userInputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/widget/EditText;>;"
    array-length v11, v6

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_8

    aget-object v13, v6, v12

    .line 3366
    .local v13, "line":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 3367
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    move/from16 v18, v3

    move-object/from16 v19, v5

    const/16 v16, 0x1

    goto/16 :goto_4

    .line 3369
    :cond_2
    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 3370
    new-instance v14, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3371
    .local v14, "header":Landroid/widget/TextView;
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3372
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    const v4, 0x1030044

    invoke-virtual {v14, v15, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 3373
    const/4 v4, 0x0

    invoke-virtual {v14, v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3374
    const/16 v4, 0x1e

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v4, v15, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3376
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3377
    move/from16 v18, v3

    move-object/from16 v19, v5

    const/16 v16, 0x1

    goto/16 :goto_4

    .line 3380
    .end local v14    # "header":Landroid/widget/TextView;
    :cond_3
    const-string v4, "\\|"

    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3381
    .local v4, "parts":[Ljava/lang/String;
    array-length v14, v4

    if-lez v14, :cond_4

    const/4 v14, 0x0

    aget-object v15, v4, v14

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_4
    move-object v14, v7

    .line 3382
    .local v14, "name":Ljava/lang/String;
    :goto_1
    array-length v15, v4

    if-le v15, v9, :cond_5

    aget-object v15, v4, v9

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_5
    move-object v15, v7

    .line 3383
    .local v15, "defaultVal":Ljava/lang/String;
    :goto_2
    array-length v9, v4

    const/4 v1, 0x2

    if-le v9, v1, :cond_6

    aget-object v9, v4, v1

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_6
    const-string v9, "optional"

    .line 3385
    .local v9, "required":Ljava/lang/String;
    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_7

    move/from16 v18, v3

    move-object/from16 v19, v5

    const/16 v16, 0x1

    goto :goto_4

    .line 3387
    :cond_7
    new-instance v1, Landroid/widget/TextView;

    move/from16 v18, v3

    .end local v3    # "optionsStringId":I
    .local v18, "optionsStringId":I
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3388
    .local v1, "label":Landroid/widget/TextView;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "parts":[Ljava/lang/String;
    .local v17, "parts":[Ljava/lang/String;
    aput-object v14, v3, v4

    const/16 v16, 0x1

    aput-object v9, v3, v16

    const-string v4, "%s (%s)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3389
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3390
    const/16 v4, 0xa

    const/4 v3, 0x4

    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "optionsText":Ljava/lang/String;
    .local v19, "optionsText":Ljava/lang/String;
    invoke-virtual {v1, v5, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3392
    new-instance v3, Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 3393
    .local v3, "input":Landroid/widget/EditText;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3394
    invoke-virtual {v3, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3395
    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 3396
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3398
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3399
    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3401
    invoke-interface {v10, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3365
    .end local v1    # "label":Landroid/widget/TextView;
    .end local v3    # "input":Landroid/widget/EditText;
    .end local v9    # "required":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "defaultVal":Ljava/lang/String;
    .end local v17    # "parts":[Ljava/lang/String;
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v18

    move-object/from16 v5, v19

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3404
    .end local v18    # "optionsStringId":I
    .end local v19    # "optionsText":Ljava/lang/String;
    .local v3, "optionsStringId":I
    .restart local v5    # "optionsText":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3405
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 3406
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3407
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 3408
    return-void

    .line 3339
    .end local v3    # "optionsStringId":I
    .end local v5    # "optionsText":Ljava/lang/String;
    .end local v6    # "optionLines":[Ljava/lang/String;
    .end local v8    # "inputLayout":Landroid/widget/LinearLayout;
    .end local v10    # "userInputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/widget/EditText;>;"
    :cond_9
    :goto_5
    const-string v1, "Select a module first"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->showToast(Ljava/lang/String;)V

    .line 3340
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-CARsenalFragment$CANMSFFragment()V
    .locals 1

    .line 3412
    const-string v0, "msfsession=$(screen -ls | awk \'/^[[:space:]]*[0-9]+\\.msf/ {print $1}\'\n); if [ -n \"$msfsession\" ]; then screen -wipe; screen -d \"$msfsession\"; screen -r \"$msfsession\"; else screen -wipe; screen -S msf -m msfconsole;exit; fi"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 3416
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 3411
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 3197
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 3198
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->context:Landroid/content/Context;

    .line 3199
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 3204
    move-object/from16 v0, p0

    const v1, 0x7f0d002d

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3206
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 3209
    .local v2, "selected_baud":Landroid/widget/EditText;
    const v5, 0x7f0a0167

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 3210
    .local v5, "spinner":Landroid/widget/Spinner;
    const v6, 0x7f0a0410

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Landroid/widget/ImageButton;

    .line 3212
    .local v15, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 3213
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v8, v0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 3218
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$400()Landroid/content/SharedPreferences;

    move-result-object v11

    new-instance v14, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda4;

    invoke-direct {v14, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;)V

    .line 3212
    const-string v12, "selected_usb"

    const/4 v13, 0x0

    move-object v9, v5

    move-object v10, v15

    invoke-static/range {v6 .. v14}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 3225
    const v6, 0x7f0a042f

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 3227
    .local v6, "elm327relayButton":Landroid/widget/ImageButton;
    new-instance v7, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda5;

    invoke-direct {v7, v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3241
    const v7, 0x7f0a0365

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 3243
    .local v7, "modulesList":Landroid/widget/Spinner;
    iget-object v8, v0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda6;

    invoke-direct {v9, v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Landroid/widget/Spinner;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 3296
    const v8, 0x7f0a034c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 3297
    .local v8, "infoText":Landroid/widget/TextView;
    const v9, 0x7f0a034d

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 3300
    .local v9, "optionsContainer":Landroid/widget/LinearLayout;
    const v10, 0x7f0a02e0

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 3301
    .local v10, "infoBtn":Landroid/widget/Button;
    new-instance v11, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda7;

    invoke-direct {v11, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3336
    const v11, 0x7f0a0466

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 3337
    .local v11, "setBtn":Landroid/widget/Button;
    new-instance v12, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda8;

    invoke-direct {v12, v0, v8, v9}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3410
    const v12, 0x7f0a0366

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 3411
    .local v12, "msfBtn":Landroid/widget/Button;
    new-instance v13, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda9;

    invoke-direct {v13, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3418
    const v13, 0x7f0a042e

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 3419
    .local v13, "runBtn":Landroid/widget/Button;
    new-instance v14, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda10;

    invoke-direct {v14, v0, v9}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3466
    return-object v1
.end method
