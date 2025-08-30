.class public Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;
.super Ljava/lang/Object;
.source "CopyBootFilesExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CopyBootFilesExecutor"

.field private static final result:Ljava/lang/String; = ""


# instance fields
.field public final NH_SYSTEM_LOGGING:I

.field private final activity:Landroid/app/Activity;

.field private final assetManager:Landroid/content/res/AssetManager;

.field private final buildTime:Ljava/lang/String;

.field private final context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private lastMessage:Ljava/lang/String;

.field private listener:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

.field private objects:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final progressDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final progressHandler:Landroid/os/Handler;

.field private final progressRunnable:Ljava/lang/Runnable;

.field private shouldRun:Ljava/lang/Boolean;

.field private tag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$78QKbfM5B_cNFTCmYJJOuwRZ4eo(Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->onPreExecute()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/app/ProgressDialog;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "progressDialog"    # Landroid/app/ProgressDialog;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->objects:Ljava/lang/String;

    .line 81
    const-string v1, "CopyBootFilesExecutor"

    iput-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->tag:Ljava/lang/String;

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressHandler:Landroid/os/Handler;

    .line 101
    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->lastMessage:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressRunnable:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->mainHandler:Landroid/os/Handler;

    .line 113
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->NH_SYSTEM_LOGGING:I

    .line 160
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->context:Ljava/lang/ref/WeakReference;

    .line 161
    iput-object p2, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->activity:Landroid/app/Activity;

    .line 162
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressDialogRef:Ljava/lang/ref/WeakReference;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->assetManager:Landroid/content/res/AssetManager;

    .line 164
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "sdCardDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v2, "scriptsDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_INITD_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "etcDir":Ljava/io/File;
    const-string v4, "com.offsec.nethunter"

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->prefs:Landroid/content/SharedPreferences;

    .line 168
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd KK:mm:ss a zzz"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 169
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    sget-object v4, Lcom/offsec/nethunter/BuildConfig;->BUILD_TIME:Ljava/util/Date;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->buildTime:Ljava/lang/String;

    .line 170
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->shouldRun:Ljava/lang/Boolean;

    .line 171
    return-void
.end method

.method private CheckEncrypted()V
    .locals 4

    .line 405
    const-string v0, "Checking if /data is encrypted..."

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "getprop ro.crypto.state"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "encrypted":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 408
    const-string v1, "encrypted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "Fixing pam.d and inet in chroot"

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bootkali custom_cmd sed -i \"s/pam_keyinit.so/pam_keyinit.so #/\" /etc/pam.d/*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bootkali custom_cmd echo \'APT::Sandbox::User \"root\";\' > /etc/apt/apt.conf.d/01-android-nosandbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bootkali custom_cmd groupadd -g 3003 aid_inet;usermod -G nogroup -g aid_inet _apt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 414
    :cond_0
    return-void
.end method

.method private FetchFiles(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "folder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetching files from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private Symlink(Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .line 418
    const-string v0, "bootkali"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "busybox_nh"

    if-nez v0, :cond_0

    const-string v0, "killkali"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping symlink/copy for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 420
    return-void

    .line 422
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/bin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "target":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " presence...."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 426
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/busybox_nh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "sourcePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "targetPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cp -p "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " && chown root:root "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " && chmod 0755 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v3

    .line 435
    .local v3, "result":I
    if-eqz v3, :cond_2

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to copy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 438
    .end local v1    # "sourcePath":Ljava/lang/String;
    .end local v2    # "targetPath":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_2
    goto :goto_0

    .line 439
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    .restart local v1    # "sourcePath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command output: ln -s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /system/bin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ln -s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v2

    .line 442
    .local v2, "result":I
    if-eqz v2, :cond_4

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create symlink for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 446
    .end local v1    # "sourcePath":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_4
    :goto_0
    return-void
.end method

.method private SymlinkScriptsToSystemBin()V
    .locals 15

    .line 450
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "mount -o remount,rw /system/bin"

    const-string v2, "mount -o remount,rw /system/xbin"

    const-string v3, "mount -o remount,rw /"

    const-string v4, "mount -o remount,rw /system"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "scriptsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 459
    .local v1, "scripts":[Ljava/io/File;
    if-eqz v1, :cond_6

    .line 460
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 461
    .local v4, "script":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 462
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "scriptName":Ljava/lang/String;
    const-string v6, "bootkali"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "killkali"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping symlink for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 465
    goto/16 :goto_1

    .line 467
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/bin/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 468
    .local v6, "targetPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 471
    .local v7, "sourcePath":Ljava/lang/String;
    iget-object v8, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v9, "mount | grep \' /system \'"

    invoke-virtual {v8, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 472
    .local v8, "mountInfo":Ljava/lang/String;
    const-string v9, "ro,"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 473
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/system is mounted read-only. Cannot create symlink for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 474
    goto/16 :goto_1

    .line 478
    :cond_1
    iget-object v9, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ls -l "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " | grep \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 479
    .local v9, "linkCheck":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 480
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Symlink already exists for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 481
    goto/16 :goto_1

    .line 485
    :cond_2
    iget-object v10, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rm -f "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v10

    .line 486
    .local v10, "rmResult":I
    if-eqz v10, :cond_3

    .line 487
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to remove existing file at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". rmResult="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 488
    goto :goto_1

    .line 492
    :cond_3
    iget-object v11, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ln -s "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v11

    .line 493
    .local v11, "lnResult":I
    const-string v12, " to "

    if-nez v11, :cond_4

    .line 494
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Symlinked "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 496
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to symlink "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". lnResult="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 460
    .end local v4    # "script":Ljava/io/File;
    .end local v5    # "scriptName":Ljava/lang/String;
    .end local v6    # "targetPath":Ljava/lang/String;
    .end local v7    # "sourcePath":Ljava/lang/String;
    .end local v8    # "mountInfo":Ljava/lang/String;
    .end local v9    # "linkCheck":Ljava/lang/String;
    .end local v10    # "rmResult":I
    .end local v11    # "lnResult":I
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 501
    :cond_6
    return-void
.end method

.method private checkStoragePermission()Z
    .locals 4

    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 305
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 308
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    return v2

    .line 313
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3e9

    invoke-static {v0, v1, v3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 315
    return v2

    .line 318
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private copyAssetFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "assetFile"    # Ljava/lang/String;
    .param p2, "destFile"    # Ljava/lang/String;

    .line 350
    const-string v0, " to "

    :try_start_0
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "children":[Ljava/lang/String;
    const-string v2, "/placeholder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "placeholder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "/replaceholder"

    .line 352
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "replaceholder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    goto/16 :goto_5

    .line 359
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->renameAssetIfneeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v2, "outFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 361
    .local v3, "parent":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create parent directories for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 363
    return-void

    .line 367
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is busy and cannot be overwritten: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 369
    return-void

    .line 372
    :cond_2
    iget-object v4, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 374
    .local v5, "out":Ljava/io/FileOutputStream;
    const/16 v6, 0x1000

    :try_start_2
    new-array v6, v6, [B

    .line 376
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "read":I
    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eq v7, v9, :cond_3

    .line 377
    invoke-virtual {v5, v6, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 379
    :cond_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copied asset file: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    .end local v6    # "buffer":[B
    .end local v8    # "read":I
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v5    # "out":Ljava/io/FileOutputStream;
    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 384
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_4
    const-string v4, "/scripts/bin/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 385
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 387
    invoke-virtual {v2, v4, v4}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    nop

    :goto_1
    move v4, v10

    .line 389
    .local v4, "permissionsSet":Z
    if-eqz v4, :cond_6

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set executable, readable, and writable permissions for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 391
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set permissions for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    :goto_2
    invoke-direct {p0, v5}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 372
    .local v4, "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v6

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v7

    :try_start_6
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "children":[Ljava/lang/String;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local p1    # "assetFile":Ljava/lang/String;
    .end local p2    # "destFile":Ljava/lang/String;
    :goto_3
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "children":[Ljava/lang/String;
    .restart local v2    # "outFile":Ljava/io/File;
    .restart local v3    # "parent":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local p1    # "assetFile":Ljava/lang/String;
    .restart local p2    # "destFile":Ljava/lang/String;
    :catchall_2
    move-exception v5

    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "assetFile":Ljava/lang/String;
    .end local p2    # "destFile":Ljava/lang/String;
    :cond_7
    :goto_4
    throw v5

    .line 354
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local p1    # "assetFile":Ljava/lang/String;
    .restart local p2    # "destFile":Ljava/lang/String;
    :cond_8
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping placeholder, replaceholder, or directory asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0

    .line 355
    return-void

    .line 395
    .end local v1    # "children":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 396
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception while copying asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 393
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 394
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error copying asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    :goto_6
    nop

    .line 398
    :goto_7
    return-void
.end method

.method private copyAssetFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "assetFolder"    # Ljava/lang/String;
    .param p2, "destFolder"    # Ljava/lang/String;

    .line 323
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->copyAssetFolderRecursive(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error copying asset folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private copyAssetFolderRecursive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "assetFolder"    # Ljava/lang/String;
    .param p2, "destFolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "assets":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 334
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Check storage permissions and path."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 337
    return-void

    .line 339
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 340
    .local v4, "asset":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "assetPath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "destPath":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->copyAssetFolderRecursive(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v4    # "asset":Ljava/lang/String;
    .end local v5    # "assetPath":Ljava/lang/String;
    .end local v6    # "destPath":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "dir":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->copyAssetFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_3
    return-void
.end method

.method private disableMagiskNotification()V
    .locals 6

    .line 577
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->MAGISK_DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 578
    const-string v0, "Disabling Magisk notification and log for nethunter app."

    const-string v1, "CopyBootFilesExecutor"

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sqlite3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->MAGISK_DB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \"SELECT * from policies\" | grep "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "com.offsec.nethunter"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->MAGISK_DB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \"UPDATE policies SET logging=\'0\',notification=\'0\' WHERE package_name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 585
    const-string v0, "Updated magisk db successfully."

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_BIN_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->MAGISK_DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \"UPDATE policies SET logging=\'0\',notification=\'0\' WHERE uid=\'$(stat -c %u /data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\';\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 592
    :cond_1
    :goto_0
    return-void
.end method

.method private doInBackground()Ljava/lang/String;
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->shouldRun:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 209
    return-object v1

    .line 211
    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isRoot()Z

    move-result v0

    const-string v2, "CHROOT_INSTALLED_TAG"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 213
    const-string v0, "Root permission is required!!"

    return-object v0

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "files_copied"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "nh_files"

    if-eqz v0, :cond_3

    .line 216
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-direct {v0, v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v0, "nhFilesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    const-string v2, "Files already copied, skipping copy operation."

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 219
    return-object v1

    .line 221
    :cond_2
    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->ensureNhFilesOnSdcard()V

    .line 223
    .end local v0    # "nhFilesDir":Ljava/io/File;
    goto :goto_0

    .line 224
    :cond_3
    const-string v0, "Proceeding with copy and symlink operations."

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 227
    :goto_0
    const-string v0, "COPYING FILES...."

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 228
    const-string v0, "Copying scripts and updating app files..."

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 229
    const-string v0, "etc/init.d"

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_INITD_PATH:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->copyAssetFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v0, "scripts"

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->copyAssetFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_NHFILES_PATH:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->copyAssetFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->ensureNhFilesOnSdcard()V

    .line 234
    const-string v0, "Fixing permissions for new files"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->APP_INITD_PATH:Ljava/lang/String;

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->setPermissions([Ljava/lang/String;)V

    .line 237
    const-string v0, "Checking for encrypted /data...."

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->CheckEncrypted()V

    .line 240
    const-string v0, "Checking for bootkali symlinks...."

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->SymlinkScriptsToSystemBin()V

    .line 242
    const-string v0, "bootkali"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->Symlink(Ljava/lang/String;)V

    .line 243
    const-string v0, "bootkali_bash"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->Symlink(Ljava/lang/String;)V

    .line 244
    const-string v0, "bootkali_init"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->Symlink(Ljava/lang/String;)V

    .line 245
    const-string v0, "bootkali_login"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->Symlink(Ljava/lang/String;)V

    .line 246
    const-string v0, "killkali"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->Symlink(Ljava/lang/String;)V

    .line 247
    const-string v0, "busybox_nh"

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->Symlink(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->disableMagiskNotification()V

    .line 250
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 251
    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v4, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->buildTime:Ljava/lang/String;

    .line 252
    const-string v6, "CopyBootFilesExecutor"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    const-string v4, "version_code"

    const v6, 0x78b35b28

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    const-string v0, "Checking for chroot...."

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "if [ -d "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ];then echo 1; fi"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "command":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v4, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 259
    iget-object v4, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    const-string v2, "Chroot Found!"

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mount -o remount,suid /data && chmod +s "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 262
    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/usr/bin/sudo && echo \"Initial setup done!\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-virtual {v2, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_4
    const-string v2, "Chroot not Found, install it in Chroot Manager"

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 268
    :goto_1
    const-string v2, "Installing additional apps...."

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/cache/apk/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->installApks(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->checkStoragePermission()Z

    move-result v2

    if-nez v2, :cond_5

    .line 272
    const-string v1, "Permission required to manage external storage."

    return-object v1

    .line 275
    :cond_5
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v2, "nhFilesDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"nh_files\" successfully copied to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"nh_files\" directory does NOT exist at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 280
    const-string v3, "Failed to copy nh_files to SD card!"

    invoke-direct {p0, v3}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->publishProgress(Ljava/lang/String;)V

    .line 282
    :goto_2
    return-object v1
.end method

.method private ensureNhFilesOnSdcard()V
    .locals 5

    .line 84
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    const-string v2, "nh_files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v0, "nhFilesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v3, "CopyBootFilesExecutor"

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"nh_files\" already exists at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/nh_files"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->copyAssetFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"nh_files\" directory copied to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_1
    return-void
.end method

.method private fixPermissions()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_INITD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -type f -exec chmod 700 {} \\;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 97
    const-string v0, "CopyBootFilesExecutor"

    const-string v1, "Permissions fixed for scripts and init.d files."

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private installApks(Ljava/lang/String;)V
    .locals 6
    .param p1, "folderPath"    # Ljava/lang/String;

    .line 292
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->FetchFiles(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    .local v1, "apk":Ljava/lang/String;
    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "apkPath":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v4, "mv %s /data/local/tmp/ && pm install /data/local/tmp/%s && rm -f /data/local/tmp/%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "command":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v4, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to install APK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;)V

    .line 300
    .end local v1    # "apk":Ljava/lang/String;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v3    # "command":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 301
    :cond_1
    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 203
    const-string v0, "CopyBootFilesExecutor"

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->tag:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, p1, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    return-void
.end method

.method private logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .line 401
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method private logDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .line 139
    if-eqz p3, :cond_0

    .line 140
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logToast(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 123
    const/4 v0, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    const-string v0, "CopyBootFilesExecutor"

    if-eqz p2, :cond_0

    .line 126
    invoke-direct {p0, v0, p1, p2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    nop

    .line 136
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private logToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->requireActivity()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 149
    return-void
.end method

.method private onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "objects"    # Ljava/lang/String;

    .line 536
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->objects:Ljava/lang/String;

    .line 537
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 538
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 539
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->listener:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->listener:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;->onExecutorFinished(Ljava/lang/Object;)V

    .line 545
    :cond_1
    return-void
.end method

.method private onPreExecute()V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "files_copied"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 183
    .local v0, "filesCopied":Z
    const/4 v1, 0x0

    const-string v3, "CopyBootFilesExecutor"

    if-nez v0, :cond_1

    .line 184
    const-string v4, "COPYING NEW FILES"

    invoke-direct {p0, v3, v4, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressDialogRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    .line 186
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    if-eqz v1, :cond_0

    .line 187
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 188
    const-string v3, "New app build detected:"

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    const-string v3, "Copying new files..."

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 191
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 193
    .end local v1    # "progressDialog":Landroid/app/ProgressDialog;
    :cond_0
    goto :goto_0

    .line 194
    :cond_1
    const-string v4, "NO NEW FILES TO COPY. Skipping file copy."

    invoke-direct {p0, v3, v4, v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->shouldRun:Ljava/lang/Boolean;

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->listener:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->listener:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;

    invoke-interface {v1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;->onExecutorPrepare()V

    .line 200
    :cond_2
    return-void
.end method

.method private publishProgress(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .line 530
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->lastMessage:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 532
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->progressRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 533
    return-void
.end method

.method private renameAssetIfneeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "asset"    # Ljava/lang/String;

    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 507
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .local v0, "cpuAbi":Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v0    # "cpuAbi":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 512
    .restart local v0    # "cpuAbi":Ljava/lang/String;
    :goto_0
    const-string v1, "^.*-arm64$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    const-string v3, "arm64-v8a"

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    const-string v1, "-arm64$"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 516
    :cond_1
    const-string v1, "^.*-armeabi$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 517
    const-string v1, "-armeabi$"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 520
    :cond_2
    return-object p1
.end method

.method private requireActivity()Landroid/content/Context;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 153
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 156
    return-object v0

    .line 154
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Context is not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private varargs setPermissions([Ljava/lang/String;)V
    .locals 6
    .param p1, "paths"    # [Ljava/lang/String;

    .line 286
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 287
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -type f -exec chmod 700 {} \\;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot(Ljava/lang/String;)V

    .line 286
    .end local v2    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getObjects()Ljava/lang/String;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->objects:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->tag:Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$execute$1$com-offsec-nethunter-Executor-CopyBootFilesExecutor(Ljava/lang/String;)V
    .locals 0
    .param p1, "res"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$execute$2$com-offsec-nethunter-Executor-CopyBootFilesExecutor()V
    .locals 3

    .line 176
    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->doInBackground()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method

.method synthetic lambda$new$0$com-offsec-nethunter-Executor-CopyBootFilesExecutor()V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->lastMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CopyBootFilesExecutor"

    invoke-direct {p0, v1, v0}, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;

    .line 548
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->listener:Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor$CopyBootFilesExecutorListener;

    .line 549
    return-void
.end method

.method public setObjects(Ljava/lang/String;)V
    .locals 0
    .param p1, "objects"    # Ljava/lang/String;

    .line 556
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->objects:Ljava/lang/String;

    .line 557
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 568
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/CopyBootFilesExecutor;->tag:Ljava/lang/String;

    .line 569
    return-void
.end method
