.class public Lcom/offsec/nethunter/service/RunAtBootService;
.super Landroidx/core/app/JobIntentService;
.source "RunAtBootService.java"


# static fields
.field static final SERVICE_JOB_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Nethunter: Startup"


# instance fields
.field private n:Landroidx/core/app/NotificationCompat$Builder;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 116
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "Nethunter Boot Check Service"

    const/4 v2, 0x4

    const-string v3, "BOOT_CHANNEL"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 122
    .local v0, "serviceChannel":Landroid/app/NotificationChannel;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/service/RunAtBootService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 123
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 127
    .end local v0    # "serviceChannel":Landroid/app/NotificationChannel;
    .end local v1    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method private doNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "contents"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "BOOT_CHANNEL"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 44
    const-string v1, "Nethunter: Startup"

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 45
    const v1, 0x7f0800d8

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    nop

    .line 48
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/service/RunAtBootService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 50
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/offsec/nethunter/service/RunAtBootService;->n:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 53
    :cond_1
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "work"    # Landroid/content/Intent;

    .line 56
    const-class v0, Lcom/offsec/nethunter/service/RunAtBootService;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Lcom/offsec/nethunter/service/RunAtBootService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 32
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onCreate()V

    .line 33
    invoke-virtual {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/utils/NhPaths;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/utils/NhPaths;

    .line 35
    invoke-direct {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->createNotificationChannel()V

    .line 36
    invoke-virtual {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/service/RunAtBootService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 111
    invoke-super {p0}, Landroidx/core/app/JobIntentService;->onDestroy()V

    .line 112
    return-void
.end method

.method protected onHandleIntent()V
    .locals 10

    .line 66
    const-string v0, "OK."

    .line 67
    .local v0, "isOK":Ljava/lang/String;
    const-string v1, "Doing boot checks..."

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/service/RunAtBootService;->doNotification(Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v1, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "No root access is granted."

    const-string v3, "ROOT"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v2, "No busybox is found."

    const-string v4, "BUSYBOX"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "Chroot is not yet installed."

    const-string v5, "CHROOT"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/utils/CheckForRoot;->isBusyboxInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    new-instance v2, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v2}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 85
    .local v2, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    iget-object v6, p0, Lcom/offsec/nethunter/service/RunAtBootService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "SELinuxOnBoot"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v6}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    const-string v7, "[ ! \"$(getenforce | grep Permissive)\" ] && setenforce 0"

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/offsec/nethunter/utils/NhPaths;->BUSYBOX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " run-parts "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/offsec/nethunter/utils/NhPaths;->APP_INITD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/chrootmgr -c \"status\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rm -rf "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/tmp/.X1*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_3
    const-string v6, "Boot completed.\nEveryting is fine and Chroot has been started!"

    .line 95
    .local v6, "resultMsg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 96
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 97
    const-string v6, "Make sure the above requirements are met."

    .line 98
    goto :goto_1

    .line 100
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    goto :goto_0

    .line 102
    :cond_5
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Root: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\nBusybox: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nChroot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-direct {p0, v3}, Lcom/offsec/nethunter/service/RunAtBootService;->doNotification(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 61
    invoke-virtual {p0}, Lcom/offsec/nethunter/service/RunAtBootService;->onHandleIntent()V

    .line 62
    return-void
.end method
