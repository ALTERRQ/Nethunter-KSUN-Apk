.class public Lcom/offsec/nethunter/ModulesFragment;
.super Landroidx/fragment/app/Fragment;
.source "ModulesFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;,
        Lcom/offsec/nethunter/ModulesFragment$PreferencesData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "ModulesFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentSortOrder:I

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public modules_path:Landroid/widget/EditText;

.field private final permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 55
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/ModulesFragment;->currentSortOrder:I

    .line 68
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda13;-><init>()V

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/ModulesFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 68
    return-void
.end method

.method private checkFaultyModule(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "modulePath"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;

    .line 529
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 531
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 552
    nop

    .line 553
    return-void

    .line 551
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 552
    throw v1
.end method

.method static synthetic lambda$checkFaultyModule$18(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "finalKernelLogs"    # Ljava/lang/String;

    .line 539
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 542
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module Load Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kernel Logs:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 545
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 547
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/util/Map;)V
    .locals 4
    .param p0, "result"    # Ljava/util/Map;

    .line 70
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "granted"

    goto :goto_1

    :cond_0
    const-string v3, "denied"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ModulesFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

.method static synthetic lambda$refreshModules$13(Landroid/app/Activity;)V
    .locals 3
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Searching in /proc or / is not allowed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$refreshModules$14(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "sanitizedModulesPath"    # Ljava/lang/String;

    .line 476
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$showModuleDependencies$4(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "finalDependencies"    # Ljava/lang/String;

    .line 215
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module Dependencies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 218
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 215
    return-void
.end method

.method static synthetic lambda$showModuleInfo$2(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "finalInfo"    # Ljava/lang/String;

    .line 166
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 169
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 166
    return-void
.end method

.method private logMissingPermissions()V
    .locals 7

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v0, "requiredPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 637
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v1, "missingPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 643
    .local v3, "perm":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const-string v5, "ModulesFragment"

    if-eqz v4, :cond_1

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing permission: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 647
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Granted permission: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v3    # "perm":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 650
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 651
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 652
    iget-object v2, p0, Lcom/offsec/nethunter/ModulesFragment;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 655
    :cond_3
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/ModulesFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 61
    new-instance v0, Lcom/offsec/nethunter/ModulesFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/ModulesFragment;-><init>()V

    .line 62
    .local v0, "fragment":Lcom/offsec/nethunter/ModulesFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/ModulesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method private refreshModules(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "sharedpreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 446
    :cond_0
    const v1, 0x7f0a032a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 448
    .local v1, "modules":Landroid/widget/ListView;
    const v2, 0x7f0a032b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    .line 449
    const-string v2, ""

    .line 450
    .local v2, "modulesPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 451
    iget-object v3, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    :cond_1
    const-string v3, "[^a-zA-Z0-9/_\\-]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "sanitizedModulesPath":Ljava/lang/String;
    const-string v4, "/proc"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 463
    :cond_2
    if-eqz v0, :cond_3

    .line 464
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "last_modulespath"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 467
    :cond_3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 469
    .local v4, "executor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v5, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda17;

    invoke-direct {v5, p0, v3, v1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;Landroid/widget/ListView;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 525
    nop

    .line 526
    return-void

    .line 524
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 525
    throw v5

    .line 455
    .end local v4    # "executor":Ljava/util/concurrent/ExecutorService;
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 456
    .local v4, "currentActivity":Landroid/app/Activity;
    if-eqz v4, :cond_5

    .line 457
    new-instance v5, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda16;

    invoke-direct {v5, v4}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda16;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 461
    :cond_5
    return-void
.end method

.method private showLoadedModules(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .line 236
    const v0, 0x7f0a032a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 237
    .local v0, "modules":Landroid/widget/ListView;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 239
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    const-wide/16 v2, 0x3c

    :try_start_0
    new-instance v4, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 276
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    :cond_0
    goto :goto_0

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 281
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 283
    .end local v2    # "e":Ljava/lang/InterruptedException;
    nop

    .line 284
    :goto_0
    return-void

    .line 274
    :catchall_0
    move-exception v4

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 276
    :try_start_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 282
    :cond_1
    goto :goto_1

    .line 279
    :catch_1
    move-exception v2

    .line 280
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 281
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 283
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    throw v4
.end method

.method private showModuleDependencies(Ljava/lang/String;)V
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 179
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 181
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    const-wide/16 v1, 0x3c

    :try_start_0
    new-instance v3, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda19;

    invoke-direct {v3, p0, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 225
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    :cond_0
    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 232
    .end local v1    # "e":Ljava/lang/InterruptedException;
    nop

    .line 233
    :goto_0
    return-void

    .line 223
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 225
    :try_start_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 231
    :cond_1
    goto :goto_1

    .line 228
    :catch_1
    move-exception v1

    .line 229
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 232
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    throw v3
.end method

.method private showModuleInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 141
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 143
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    :try_start_0
    new-instance v1, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 175
    nop

    .line 176
    return-void

    .line 174
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 175
    throw v1
.end method

.method private toggleModule(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 22
    .param p1, "selectedModule"    # Ljava/lang/String;
    .param p2, "statusIcon"    # Landroid/widget/ImageView;

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    const-string v4, ""

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 388
    .local v3, "modulesPath":Ljava/lang/String;
    :goto_0
    const-string v5, "[^a-zA-Z0-9/_-]"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "sanitizedModulesPath":Ljava/lang/String;
    const-string v5, "os.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, "kernelVersion":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, "pathWithKernelVersion":Ljava/lang/String;
    iget-object v7, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lsmod | cut -d\' \' -f1 | grep "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 394
    .local v7, "isModuleLoaded":Ljava/lang/String;
    const-string v8, "ModulesFragment"

    const-string v9, "Success"

    const-string v10, " && echo Success || echo Failed"

    const/4 v11, 0x1

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 395
    iget-object v12, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rmmod "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 396
    .local v10, "disableModule":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 397
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Module disabled: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Module Disabled: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 399
    if-eqz v2, :cond_2

    .line 400
    const v8, 0x7f0800cc

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 403
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed - rmmod "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 405
    .end local v10    # "disableModule":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    goto/16 :goto_2

    .line 406
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "find "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " -name "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ".ko -print -quit"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 407
    .local v12, "findCommand":Ljava/lang/String;
    iget-object v14, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v14, v12}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 409
    .local v14, "foundModulePath":Ljava/lang/String;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    goto/16 :goto_3

    .line 413
    :cond_4
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 415
    .local v15, "modulePath":Ljava/lang/String;
    iget-object v11, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object/from16 v16, v3

    .end local v3    # "modulesPath":Ljava/lang/String;
    .local v16, "modulesPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "kernelVersion":Ljava/lang/String;
    .local v17, "kernelVersion":Ljava/lang/String;
    const-string v5, "insmod "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, "toggleModule":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v11, "Module Enabled: "

    move-object/from16 v18, v3

    .end local v3    # "toggleModule":Ljava/lang/String;
    .local v18, "toggleModule":Ljava/lang/String;
    const-string v3, "Module enabled: "

    move-object/from16 v19, v6

    .end local v6    # "pathWithKernelVersion":Ljava/lang/String;
    .local v19, "pathWithKernelVersion":Ljava/lang/String;
    const-string v6, " from path: "

    if-eqz v5, :cond_6

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 419
    if-eqz v2, :cond_5

    .line 420
    const v3, 0x7f0800cb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v20, v7

    goto/16 :goto_2

    .line 419
    :cond_5
    move-object/from16 v20, v7

    goto/16 :goto_2

    .line 423
    :cond_6
    iget-object v5, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object/from16 v20, v7

    .end local v7    # "isModuleLoaded":Ljava/lang/String;
    .local v20, "isModuleLoaded":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v12

    .end local v12    # "findCommand":Ljava/lang/String;
    .local v21, "findCommand":Ljava/lang/String;
    const-string v12, "modprobe -d "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 424
    .end local v18    # "toggleModule":Ljava/lang/String;
    .local v5, "toggleModule":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 427
    if-eqz v2, :cond_8

    .line 428
    const v3, 0x7f0800cb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 431
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed - modprobe -d "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v6, "com.offsec.nethunter"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 433
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "enable_faulty_check"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 434
    invoke-direct {v0, v4, v1}, Lcom/offsec/nethunter/ModulesFragment;->checkFaultyModule(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v5    # "toggleModule":Ljava/lang/String;
    .end local v14    # "foundModulePath":Ljava/lang/String;
    .end local v15    # "modulePath":Ljava/lang/String;
    .end local v21    # "findCommand":Ljava/lang/String;
    :cond_8
    :goto_2
    return-void

    .line 409
    .end local v16    # "modulesPath":Ljava/lang/String;
    .end local v17    # "kernelVersion":Ljava/lang/String;
    .end local v19    # "pathWithKernelVersion":Ljava/lang/String;
    .end local v20    # "isModuleLoaded":Ljava/lang/String;
    .local v3, "modulesPath":Ljava/lang/String;
    .local v5, "kernelVersion":Ljava/lang/String;
    .restart local v6    # "pathWithKernelVersion":Ljava/lang/String;
    .restart local v7    # "isModuleLoaded":Ljava/lang/String;
    .restart local v12    # "findCommand":Ljava/lang/String;
    .restart local v14    # "foundModulePath":Ljava/lang/String;
    :cond_9
    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v12

    .line 410
    .end local v3    # "modulesPath":Ljava/lang/String;
    .end local v5    # "kernelVersion":Ljava/lang/String;
    .end local v6    # "pathWithKernelVersion":Ljava/lang/String;
    .end local v7    # "isModuleLoaded":Ljava/lang/String;
    .end local v12    # "findCommand":Ljava/lang/String;
    .restart local v16    # "modulesPath":Ljava/lang/String;
    .restart local v17    # "kernelVersion":Ljava/lang/String;
    .restart local v19    # "pathWithKernelVersion":Ljava/lang/String;
    .restart local v20    # "isModuleLoaded":Ljava/lang/String;
    .restart local v21    # "findCommand":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "Module not found in the directory structure"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 411
    return-void
.end method


# virtual methods
.method synthetic lambda$checkFaultyModule$19$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "dmesg | tail -n 20"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "kernelLogs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 535
    .local v1, "currentActivity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "No kernel logs available"

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 537
    .local v2, "finalKernelLogs":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1, v2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 549
    .end local v2    # "finalKernelLogs":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p1, "modules"    # Landroid/widget/ListView;
    .param p2, "adapterView"    # Landroid/widget/AdapterView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "position"    # I
    .param p5, "id"    # J

    .line 303
    invoke-virtual {p1, p4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "selectedModule":Ljava/lang/String;
    new-instance v1, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 305
    .local v1, "popup":Landroidx/appcompat/widget/PopupMenu;
    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const-string v3, "Show module information"

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 306
    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const-string v3, "View Dependencies"

    invoke-interface {v2, v3}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 307
    new-instance v2, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 317
    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->show()V

    .line 318
    const/4 v2, 0x1

    return v2
.end method

.method synthetic lambda$onCreateView$11$com-offsec-nethunter-ModulesFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;

    .line 323
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->refreshModules(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$12$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;Landroid/content/SharedPreferences;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 23
    .param p1, "modules"    # Landroid/widget/ListView;
    .param p2, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p3, "adapterView"    # Landroid/widget/AdapterView;
    .param p4, "view"    # Landroid/view/View;
    .param p5, "i"    # I
    .param p6, "l"    # J

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    const-string v2, ""

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 329
    .local v1, "modulesPath":Ljava/lang/String;
    :goto_0
    const-string v3, "[^a-zA-Z0-9/_-]"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "sanitizedModulesPath":Ljava/lang/String;
    const-string v3, "os.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 331
    .local v3, "kernelVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 333
    .local v4, "pathWithKernelVersion":Ljava/lang/String;
    move-object/from16 v5, p1

    move/from16 v6, p5

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    .local v7, "selectedModule":Ljava/lang/String;
    iget-object v8, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lsmod | cut -d\' \' -f1 | grep "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "isModuleLoaded":Ljava/lang/String;
    const v9, 0x7f0a0326

    move-object/from16 v10, p4

    invoke-virtual {v10, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 337
    .local v9, "statusIcon":Landroid/widget/ImageView;
    const-string v11, "ModulesFragment"

    const-string v12, "Success"

    const-string v13, " && echo Success || echo Failed"

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 338
    iget-object v15, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "modulesPath":Ljava/lang/String;
    .local v16, "modulesPath":Ljava/lang/String;
    const-string v1, "rmmod "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "disableModule":Ljava/lang/String;
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 340
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Module disabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Module Disabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 342
    if-eqz v9, :cond_2

    .line 343
    const v11, 0x7f0800cc

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 346
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed - rmmod "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 348
    .end local v1    # "disableModule":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v22, v8

    move-object/from16 v4, p2

    goto/16 :goto_2

    .line 337
    .end local v16    # "modulesPath":Ljava/lang/String;
    .local v1, "modulesPath":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v1

    .line 349
    .end local v1    # "modulesPath":Ljava/lang/String;
    .restart local v16    # "modulesPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "find "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " -name "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, ".ko -print -quit"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "findCommand":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v15, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 352
    .local v15, "foundModulePath":Ljava/lang/String;
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v22, v8

    move-object/from16 v4, p2

    goto/16 :goto_3

    .line 356
    :cond_4
    move-object/from16 v17, v1

    .end local v1    # "findCommand":Ljava/lang/String;
    .local v17, "findCommand":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "modulePath":Ljava/lang/String;
    move-object/from16 v18, v3

    .end local v3    # "kernelVersion":Ljava/lang/String;
    .local v18, "kernelVersion":Ljava/lang/String;
    iget-object v3, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object/from16 v19, v4

    .end local v4    # "pathWithKernelVersion":Ljava/lang/String;
    .local v19, "pathWithKernelVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insmod "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "toggleModule":Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Module Enabled: "

    move-object/from16 v20, v3

    .end local v3    # "toggleModule":Ljava/lang/String;
    .local v20, "toggleModule":Ljava/lang/String;
    const-string v3, "Module enabled: "

    const-string v6, " from path: "

    if-eqz v4, :cond_6

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 362
    if-eqz v9, :cond_5

    .line 363
    const v3, 0x7f0800cb

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v4, p2

    move-object/from16 v22, v8

    goto/16 :goto_2

    .line 362
    :cond_5
    move-object/from16 v4, p2

    move-object/from16 v22, v8

    goto/16 :goto_2

    .line 366
    :cond_6
    iget-object v4, v0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    move-object/from16 v21, v1

    .end local v1    # "modulePath":Ljava/lang/String;
    .local v21, "modulePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v8

    .end local v8    # "isModuleLoaded":Ljava/lang/String;
    .local v22, "isModuleLoaded":Ljava/lang/String;
    const-string v8, "modprobe -d "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .end local v20    # "toggleModule":Ljava/lang/String;
    .local v1, "toggleModule":Ljava/lang/String;
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 370
    if-eqz v9, :cond_7

    .line 371
    const v3, 0x7f0800cb

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v4, p2

    goto :goto_2

    .line 370
    :cond_7
    move-object/from16 v4, p2

    goto :goto_2

    .line 374
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed - modprobe -d "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 375
    const-string v3, "enable_faulty_check"

    move-object/from16 v4, p2

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 376
    invoke-direct {v0, v2, v7}, Lcom/offsec/nethunter/ModulesFragment;->checkFaultyModule(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v1    # "toggleModule":Ljava/lang/String;
    .end local v15    # "foundModulePath":Ljava/lang/String;
    .end local v17    # "findCommand":Ljava/lang/String;
    .end local v21    # "modulePath":Ljava/lang/String;
    :cond_9
    :goto_2
    return-void

    .line 352
    .end local v18    # "kernelVersion":Ljava/lang/String;
    .end local v19    # "pathWithKernelVersion":Ljava/lang/String;
    .end local v22    # "isModuleLoaded":Ljava/lang/String;
    .local v1, "findCommand":Ljava/lang/String;
    .local v3, "kernelVersion":Ljava/lang/String;
    .restart local v4    # "pathWithKernelVersion":Ljava/lang/String;
    .restart local v8    # "isModuleLoaded":Ljava/lang/String;
    .restart local v15    # "foundModulePath":Ljava/lang/String;
    :cond_a
    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v22, v8

    move-object/from16 v4, p2

    .line 353
    .end local v1    # "findCommand":Ljava/lang/String;
    .end local v3    # "kernelVersion":Ljava/lang/String;
    .end local v4    # "pathWithKernelVersion":Ljava/lang/String;
    .end local v8    # "isModuleLoaded":Ljava/lang/String;
    .restart local v17    # "findCommand":Ljava/lang/String;
    .restart local v18    # "kernelVersion":Ljava/lang/String;
    .restart local v19    # "pathWithKernelVersion":Ljava/lang/String;
    .restart local v22    # "isModuleLoaded":Ljava/lang/String;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "Module not found in the directory structure"

    const/4 v5, 0x1

    invoke-static {v1, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 354
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-ModulesFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;

    .line 294
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->showLoadedModules(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "selectedModule"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 308
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "Show module information"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 309
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->showModuleInfo(Ljava/lang/String;)V

    .line 310
    return v1

    .line 311
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "View Dependencies"

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->showModuleDependencies(Ljava/lang/String;)V

    .line 313
    return v1

    .line 315
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onMenuItemSelected$1$com-offsec-nethunter-ModulesFragment(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 105
    iput p2, p0, Lcom/offsec/nethunter/ModulesFragment;->currentSortOrder:I

    .line 106
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/ModulesFragment;->refreshModules(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method synthetic lambda$refreshModules$15$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;)V
    .locals 4
    .param p1, "modules"    # Landroid/widget/ListView;

    .line 488
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No modules found"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method synthetic lambda$refreshModules$16$com-offsec-nethunter-ModulesFragment(Ljava/util/List;Ljava/util/Map;Landroid/widget/ListView;)V
    .locals 2
    .param p1, "moduleList"    # Ljava/util/List;
    .param p2, "moduleStates"    # Ljava/util/Map;
    .param p3, "modules"    # Landroid/widget/ListView;

    .line 518
    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    .line 519
    .local v0, "adapter":Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;
    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 520
    return-void
.end method

.method synthetic lambda$refreshModules$17$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;Landroid/widget/ListView;)V
    .locals 10
    .param p1, "sanitizedModulesPath"    # Ljava/lang/String;
    .param p2, "modules"    # Landroid/widget/ListView;

    .line 471
    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test -d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && echo exists || echo not_exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "pathCheck":Ljava/lang/String;
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "not_exists"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -type f -name \'*.ko\' -printf \'%f\\n\' | sed \'s/\\.ko$//1\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "modulesRaw":Ljava/lang/String;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 493
    :cond_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "modulesArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v5, "lsmod | cut -d\' \' -f1"

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "loadedModulesRaw":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 499
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 498
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 499
    :goto_1
    nop

    .line 502
    .local v2, "loadedModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 503
    .local v5, "moduleStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    array-length v6, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v3, v7

    .line 504
    .local v8, "module":Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .end local v8    # "module":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 508
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 509
    .local v6, "moduleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v7, p0, Lcom/offsec/nethunter/ModulesFragment;->currentSortOrder:I

    if-nez v7, :cond_5

    .line 510
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 511
    :cond_5
    iget v7, p0, Lcom/offsec/nethunter/ModulesFragment;->currentSortOrder:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 512
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v7}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 515
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    .line 516
    .local v7, "currentActivity":Landroid/app/Activity;
    if-eqz v7, :cond_7

    .line 517
    new-instance v8, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v6, v5, p2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/util/List;Ljava/util/Map;Landroid/widget/ListView;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 522
    :cond_7
    return-void

    .line 485
    .end local v2    # "loadedModules":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "modulesArray":[Ljava/lang/String;
    .end local v4    # "loadedModulesRaw":Ljava/lang/String;
    .end local v5    # "moduleStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "moduleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "currentActivity":Landroid/app/Activity;
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 486
    .local v2, "currentActivity":Landroid/app/Activity;
    if-eqz v2, :cond_9

    .line 487
    new-instance v3, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 491
    :cond_9
    return-void

    .line 473
    .end local v1    # "modulesRaw":Ljava/lang/String;
    .end local v2    # "currentActivity":Landroid/app/Activity;
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 474
    .local v1, "currentActivity":Landroid/app/Activity;
    if-eqz v1, :cond_b

    .line 475
    new-instance v2, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1, p1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda20;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 479
    :cond_b
    return-void
.end method

.method synthetic lambda$showLoadedModules$6$com-offsec-nethunter-ModulesFragment(Ljava/util/List;Landroid/widget/ListView;Ljava/util/Map;)V
    .locals 4
    .param p1, "moduleList"    # Ljava/util/List;
    .param p2, "modules"    # Landroid/widget/ListView;
    .param p3, "moduleStates"    # Ljava/util/Map;

    .line 265
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "No modules loaded"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 268
    :cond_0
    new-instance v0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    :goto_0
    return-void
.end method

.method synthetic lambda$showLoadedModules$7$com-offsec-nethunter-ModulesFragment(Landroid/widget/ListView;)V
    .locals 8
    .param p1, "modules"    # Landroid/widget/ListView;

    .line 240
    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "lsmod | cut -d\' \' -f1"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "loadedModulesRaw":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    :cond_0
    const-string v0, ""

    .line 244
    :cond_1
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "loadedModules":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_2

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Module"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    array-length v2, v1

    invoke-static {v1, v4, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 250
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 251
    .local v2, "moduleStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    array-length v5, v1

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, v1, v3

    .line 252
    .local v6, "module":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 253
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v6    # "module":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v3, "moduleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_5

    .line 259
    new-instance v4, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;

    invoke-direct {v4}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v3, v4}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    .line 262
    :cond_5
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 263
    .local v4, "currentActivity":Landroid/app/Activity;
    if-eqz v4, :cond_6

    .line 264
    new-instance v5, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, v3, p1, v2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/ModulesFragment;Ljava/util/List;Landroid/widget/ListView;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 272
    :cond_6
    return-void
.end method

.method synthetic lambda$showModuleDependencies$5$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;)V
    .locals 11
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 183
    .local v0, "modulesPath":Ljava/lang/String;
    :goto_0
    const-string v2, "[^a-zA-Z0-9/_-]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "sanitizedModulesPath":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "kernelVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "pathWithKernelVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ko -print -quit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "findCommand":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v5, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "moduleFilePath":Ljava/lang/String;
    const-string v6, "modinfo "

    const-string v7, "Module not found: "

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 195
    iget-object v8, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "info":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 197
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No information available for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 192
    .end local v8    # "info":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 202
    .restart local v8    # "info":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v5, :cond_9

    .line 203
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "dependencies":Ljava/lang/String;
    goto :goto_3

    .line 206
    .end local v6    # "dependencies":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " | grep depends"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 207
    .restart local v6    # "dependencies":Ljava/lang/String;
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 208
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No dependencies found for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 212
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    .line 213
    .local v7, "currentActivity":Landroid/app/Activity;
    if-eqz v7, :cond_8

    .line 214
    move-object v9, v6

    .line 215
    .local v9, "finalDependencies":Ljava/lang/String;
    new-instance v10, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v10, v7, p1, v9}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda3;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    .end local v9    # "finalDependencies":Ljava/lang/String;
    :cond_8
    return-void

    .line 202
    .end local v6    # "dependencies":Ljava/lang/String;
    .end local v7    # "currentActivity":Landroid/app/Activity;
    :cond_9
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
.end method

.method synthetic lambda$showModuleInfo$3$com-offsec-nethunter-ModulesFragment(Ljava/lang/String;)V
    .locals 10
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 145
    .local v0, "modulesPath":Ljava/lang/String;
    :goto_0
    const-string v2, "[^a-zA-Z0-9/_-]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "sanitizedModulesPath":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "kernelVersion":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "pathWithKernelVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".ko -print -quit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "findCommand":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v5, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "moduleFilePath":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 157
    iget-object v6, p0, Lcom/offsec/nethunter/ModulesFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modinfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "info":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No information available for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 154
    .end local v6    # "info":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Module not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    .restart local v6    # "info":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    .line 164
    .local v7, "currentActivity":Landroid/app/Activity;
    if-eqz v7, :cond_5

    .line 165
    move-object v8, v6

    .line 166
    .local v8, "finalInfo":Ljava/lang/String;
    new-instance v9, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda18;

    invoke-direct {v9, v7, p1, v8}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda18;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    .end local v8    # "finalInfo":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 135
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/ModulesFragment;->activity:Landroid/app/Activity;

    .line 137
    invoke-direct {p0}, Lcom/offsec/nethunter/ModulesFragment;->logMissingPermissions()V

    .line 138
    return-void
.end method

.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 77
    const v0, 0x7f0f000a

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    const v0, 0x7f0a0069

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 79
    .local v0, "searchItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    .line 81
    .local v1, "searchView":Landroidx/appcompat/widget/SearchView;
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a032a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 82
    .local v2, "modules":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 83
    const-string v3, "Search modules"

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v3, Lcom/offsec/nethunter/ModulesFragment$1;

    invoke-direct {v3, p0, v2}, Lcom/offsec/nethunter/ModulesFragment$1;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 288
    const v0, 0x7f0d0084

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 290
    .local v0, "rootView":Landroid/view/View;
    const v2, 0x7f0a032a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 293
    .local v2, "modules":Landroid/widget/ListView;
    const v3, 0x7f0a02f9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 294
    .local v3, "lsmodButton":Landroid/widget/Button;
    new-instance v4, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v4, 0x7f0a032b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    .line 298
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    const-string v5, "com.offsec.nethunter"

    invoke-virtual {v4, v5, v1}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 299
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "last_modulespath"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "LastModulesPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/offsec/nethunter/ModulesFragment;->modules_path:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    new-instance v5, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v2}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 322
    const v5, 0x7f0a03e1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 323
    .local v5, "refreshButton":Landroid/widget/Button;
    new-instance v6, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/ModulesFragment;->refreshModules(Landroid/view/View;)V

    .line 327
    new-instance v6, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, v2, v1}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/ModulesFragment;Landroid/widget/ListView;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 383
    return-object v0
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 121
    return v1

    .line 101
    :sswitch_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    const-string v1, "Sort Modules"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "Alphabetical"

    const-string v4, "Reverse"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/ModulesFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/ModulesFragment;)V

    .line 104
    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 110
    .end local v0    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    :cond_0
    return v2

    .line 112
    :sswitch_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v2

    .line 114
    .local v0, "isChecked":Z
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 115
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "com.offsec.nethunter"

    invoke-virtual {v3, v4, v1}, Landroidx/fragment/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 116
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 117
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "enable_faulty_check"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    .end local v0    # "isChecked":Z
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f0a005b -> :sswitch_1
        0x7f0a006b -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onPrepareMenu(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 613
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    const-string v0, "com.offsec.nethunter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 615
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "/system/lib/modules"

    .line 616
    .local v1, "defaultPath":Ljava/lang/String;
    const-string v2, "last_modulespath"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "modulesPath":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 618
    .local v3, "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 619
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "autoload_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 620
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, "moduleName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ko"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 622
    .local v7, "modulePath":Ljava/lang/String;
    new-instance v8, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v8}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 623
    .local v8, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "insmod "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 625
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "moduleName":Ljava/lang/String;
    .end local v7    # "modulePath":Ljava/lang/String;
    .end local v8    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    :cond_0
    goto :goto_0

    .line 627
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "defaultPath":Ljava/lang/String;
    .end local v2    # "modulesPath":Ljava/lang/String;
    .end local v3    # "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/ModulesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/ModulesFragment;->showLoadedModules(Landroid/view/View;)V

    .line 131
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 662
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 663
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 664
    return-void
.end method
