.class public Lcom/offsec/nethunter/audio/AudioPlaybackService;
.super Landroid/app/Service;
.source "AudioPlaybackService.java"

# interfaces
.implements Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/audio/AudioPlaybackService$LocalBinder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTION_TOGGLE:Ljava/lang/String;

.field public static final KEY_BUFFER_HEADROOM:Ljava/lang/String; = "buffer_ms_ahead"

.field public static final KEY_TARGET_LATENCY:Ljava/lang/String; = "buffer_ms_behind"

.field private static final NOTIFICATION:I = 0x7f130272


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private final handler:Landroid/os/Handler;

.field private headroomUsec:J

.field private latencyUsec:J

.field private notifManager:Landroid/app/NotificationManager;

.field private final playState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/offsec/nethunter/audio/AudioPlayState;",
            ">;"
        }
    .end annotation
.end field

.field private playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

.field private playWorkerThread:Ljava/lang/Thread;

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private togglePendingIntent:Landroid/app/PendingIntent;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    nop

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".TOGGLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->ACTION_TOGGLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/offsec/nethunter/audio/AudioPlaybackService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService$LocalBinder;-><init>(Lcom/offsec/nethunter/audio/AudioPlaybackService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->binder:Landroid/os/IBinder;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->handler:Landroid/os/Handler;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    .line 52
    const-wide/32 v0, 0x1e848

    iput-wide v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->headroomUsec:J

    .line 53
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->latencyUsec:J

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private createNotification(Lcom/offsec/nethunter/audio/AudioPlayState;)Landroid/app/Notification;
    .locals 8
    .param p1, "state"    # Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/offsec/nethunter/AudioFragment;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 291
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v1, 0x7f1300ba

    .line 292
    .local v1, "buttonResId":I
    sget-object v3, Lcom/offsec/nethunter/audio/AudioPlaybackService$1;->$SwitchMap$com$offsec$nethunter$audio$AudioPlayState:[I

    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlayState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 310
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 307
    :pswitch_0
    const v3, 0x7f130277

    .line 308
    .local v3, "statusResId":I
    goto :goto_0

    .line 304
    .end local v3    # "statusResId":I
    :pswitch_1
    const v3, 0x7f130274

    .line 305
    .restart local v3    # "statusResId":I
    goto :goto_0

    .line 301
    .end local v3    # "statusResId":I
    :pswitch_2
    const v3, 0x7f130273

    .line 302
    .restart local v3    # "statusResId":I
    goto :goto_0

    .line 298
    .end local v3    # "statusResId":I
    :pswitch_3
    const v3, 0x7f130275

    .line 299
    .restart local v3    # "statusResId":I
    goto :goto_0

    .line 294
    .end local v3    # "statusResId":I
    :pswitch_4
    const v3, 0x7f130276

    .line 295
    .restart local v3    # "statusResId":I
    const v1, 0x7f1300b8

    .line 296
    nop

    .line 313
    :goto_0
    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const v2, 0x7f130272

    invoke-virtual {p0, v2, v6}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "contentText":Ljava/lang/String;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0d00af

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 316
    .local v4, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f0a04e9

    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 317
    iget-object v6, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->togglePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 318
    const v6, 0x7f0a0120

    invoke-virtual {v4, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 319
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    const v7, 0x7f130297

    invoke-virtual {p0, v7}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v6, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 321
    const v7, 0x7f130271

    invoke-virtual {p0, v7}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 322
    invoke-virtual {v6, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 323
    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 324
    const v7, 0x7f0800d8

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 325
    invoke-virtual {v6, v5}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 326
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 319
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBufferSizePref(Ljava/lang/String;J)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 248
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ignored":Ljava/lang/ClassCastException;
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const/16 v2, -0x3e8

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 253
    .local v1, "compatValue":I
    if-ne v1, v2, :cond_0

    move-wide v2, p2

    goto :goto_0

    :cond_0
    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    :goto_0
    return-wide v2

    .line 256
    .end local v0    # "ignored":Ljava/lang/ClassCastException;
    .end local v1    # "compatValue":I
    :cond_1
    return-wide p2
.end method

.method private notifyState(Lcom/offsec/nethunter/audio/AudioPlayState;)V
    .locals 3
    .param p1, "state"    # Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 260
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    const v1, 0x7f130272

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->createNotification(Lcom/offsec/nethunter/audio/AudioPlayState;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 262
    return-void
.end method

.method private stopWorker()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->stop()V

    .line 199
    iput-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 203
    iput-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    .line 205
    :cond_1
    return-void
.end method


# virtual methods
.method public getAutostartPref()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "auto_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBufferHeadroom()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->headroomUsec:J

    return-wide v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->getError()Ljava/lang/Throwable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlayState()Lcom/offsec/nethunter/audio/AudioPlayState;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/audio/AudioPlayState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    :goto_0
    return-object v0
.end method

.method public getPort()Z
    .locals 2

    .line 347
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPortPref()I

    move-result v0

    .line 348
    .local v0, "port":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPortPref()I
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "port"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getServer()I
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getServerPref()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "server":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, -0x1

    return v1

    .line 343
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public getServerPref()Ljava/lang/String;
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "server"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetLatency()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->latencyUsec:J

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStartable()Z
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/audio/AudioPlayState;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .line 64
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    .line 65
    const-class v0, Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 67
    const-string v1, "buffer_ms_ahead"

    const-wide/32 v2, 0x1e848

    invoke-direct {p0, v1, v2, v3}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getBufferSizePref(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->headroomUsec:J

    .line 68
    const-string v1, "buffer_ms_behind"

    const-wide/32 v2, 0x7a120

    invoke-direct {p0, v1, v2, v3}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getBufferSizePref(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->latencyUsec:J

    .line 70
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 72
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->ACTION_TOGGLE:Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x7f0a02d4

    const/high16 v2, 0x4000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->togglePendingIntent:Landroid/app/PendingIntent;

    .line 77
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 78
    .local v1, "pm":Landroid/os/PowerManager;
    if-eqz v1, :cond_1

    .line 79
    const/4 v2, 0x1

    const-string v3, "audio:wakelock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 81
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 82
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    .line 83
    const v4, 0x7f130297

    invoke-virtual {p0, v4}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    const v5, 0x7f130271

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 82
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 87
    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public onDestroy()V
    .locals 4

    .line 103
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 106
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->stop()V

    .line 107
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->stopWorker()V

    .line 110
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v1, "AudioFragment"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 112
    const-string v0, "WakeLock released."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    const-string v2, "Handler callbacks removed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    const v3, 0x7f130272

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 123
    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 129
    const-string v0, "AudioPlaybackService destroyed and cleaned up."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public onPlaybackBuffering(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V
    .locals 1
    .param p1, "worker"    # Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    .line 144
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-ne p1, v0, :cond_0

    .line 145
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->BUFFERING:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/audio/AudioPlayState;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onPlaybackError(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "worker"    # Lcom/offsec/nethunter/audio/AudioPlaybackWorker;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 135
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-ne p1, v0, :cond_0

    .line 136
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/audio/AudioPlayState;)V

    .line 137
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 138
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->stopSelf()V

    .line 140
    :cond_0
    return-void
.end method

.method public onPlaybackStarted(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V
    .locals 1
    .param p1, "worker"    # Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    .line 151
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-ne p1, v0, :cond_0

    .line 152
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STARTED:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/audio/AudioPlayState;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onPlaybackStopped(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;)V
    .locals 1
    .param p1, "worker"    # Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    .line 158
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-ne p1, v0, :cond_0

    .line 159
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/audio/AudioPlayState;)V

    .line 160
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 161
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->stopSelf()V

    .line 163
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 91
    if-eqz p1, :cond_1

    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->ACTION_TOGGLE:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/audio/AudioPlayState;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    if-ne v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getServerPref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPortPref()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->play(Ljava/lang/String;I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->stop()V

    .line 98
    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public play(Ljava/lang/String;I)V
    .locals 7
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 167
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->isStartable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->stopWorker()V

    .line 173
    :cond_0
    new-instance v0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    iget-object v4, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v5, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->handler:Landroid/os/Handler;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;-><init>(Ljava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Handler;Lcom/offsec/nethunter/audio/AudioPlaybackWorker$Listener;)V

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    .line 174
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    iget-wide v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->headroomUsec:J

    iget-wide v3, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->latencyUsec:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->setBufferUsec(JJ)V

    .line 175
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    .line 177
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STARTING:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->createNotification(Lcom/offsec/nethunter/audio/AudioPlayState;)Landroid/app/Notification;

    move-result-object v0

    const v1, 0x7f130272

    invoke-virtual {p0, v1, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 178
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STARTING:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/audio/AudioPlayState;)V

    .line 179
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 183
    return-void

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start with playState == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/audio/AudioPlayState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public playState()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/offsec/nethunter/audio/AudioPlayState;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public setBufferUsec(JJ)V
    .locals 4
    .param p1, "headroomUsec"    # J
    .param p3, "latencyUsec"    # J

    .line 236
    iput-wide p1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->headroomUsec:J

    .line 237
    iput-wide p3, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->latencyUsec:J

    .line 238
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playWorker:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->setBufferUsec(JJ)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->headroomUsec:J

    .line 242
    const-string v3, "buffer_ms_ahead"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->latencyUsec:J

    .line 243
    const-string v3, "buffer_ms_behind"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    return-void
.end method

.method public setPrefs(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "checked"    # Z

    .line 220
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    const-string v1, "server"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 222
    const-string v1, "port"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    const-string v1, "auto_start"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    return-void
.end method

.method public showNotification()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/audio/AudioPlayState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->createNotification(Lcom/offsec/nethunter/audio/AudioPlayState;)Landroid/app/Notification;

    move-result-object v1

    const v2, 0x7f130272

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 283
    return-void
.end method

.method public stop()V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPlayState()Lcom/offsec/nethunter/audio/AudioPlayState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlayState;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPING:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/audio/AudioPlayState;)V

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->stopWorker()V

    .line 191
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->notifyState(Lcom/offsec/nethunter/audio/AudioPlayState;)V

    .line 192
    return-void
.end method
