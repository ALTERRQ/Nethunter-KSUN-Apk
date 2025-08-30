.class public Lcom/offsec/nethunter/gps/LocationUpdateService;
.super Landroid/app/Service;
.source "LocationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "NethunterLocationUpdateChannel"

.field public static final NOTIFY_ID:I = 0x3ec

.field private static final TAG:Ljava/lang/String; = "LocationUpdateService"

.field private static instance:Lcom/offsec/nethunter/gps/LocationUpdateService; = null

.field private static final notificationText:Ljava/lang/String;

.field private static final notificationTitle:Ljava/lang/String; = "GPS Provider running"


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private dSock:Ljava/net/DatagramSocket;

.field private firstupdate:Z

.field private fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private lastLocationAccuracy:D

.field private lastLocationLatitude:D

.field private lastLocationLongitude:D

.field private lastLocationSats:I

.field private lastLocationSourcePublished:Ljava/lang/String;

.field private lastLocationSourceReceived:Ljava/lang/String;

.field private lastLocationTime:Ljava/util/Date;

.field private lastNotificationText:Ljava/lang/String;

.field private final locationListener:Lcom/google/android/gms/location/LocationListener;

.field private locationUpdatesStarted:Z

.field private final nmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private final resetListenersTimerTask:Ljava/lang/Runnable;

.field private resetListenersTimerTaskHandler:Landroid/os/Handler;

.field private final timerTask:Ljava/lang/Runnable;

.field private timerTaskHandler:Landroid/os/Handler;

.field private udpDestAddr:Ljava/net/InetAddress;

.field private updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->instance:Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending GPS data to udp://127.0.0.1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->notificationText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    const-string v0, "None"

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourceReceived:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastNotificationText:Ljava/lang/String;

    .line 68
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    .line 69
    iput-wide v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLongitude:D

    .line 70
    const/4 v3, 0x0

    iput v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSats:I

    .line 71
    iput-wide v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationAccuracy:D

    .line 72
    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    .line 73
    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    .line 74
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationTime:Ljava/util/Date;

    .line 75
    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTaskHandler:Landroid/os/Handler;

    .line 76
    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTaskHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->binder:Landroid/os/IBinder;

    .line 224
    iput-boolean v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationUpdatesStarted:Z

    .line 327
    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTask:Ljava/lang/Runnable;

    .line 334
    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$1;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTask:Ljava/lang/Runnable;

    .line 412
    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->firstupdate:Z

    .line 436
    new-instance v0, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationListener:Lcom/google/android/gms/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/gps/LocationUpdateService;)D
    .locals 2
    .param p0, "x0"    # Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 56
    iget-wide v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 56
    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateNotification()V

    return-void
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/gps/LocationUpdateService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 56
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/gps/LocationUpdateService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 56
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTaskHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, "checksum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v0, v2

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "hex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatPosition(Landroid/location/Location;)Ljava/lang/String;
    .locals 19
    .param p0, "location"    # Landroid/location/Location;

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 178
    .local v0, "latitude":D
    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/16 v4, 0x53

    goto :goto_0

    :cond_0
    const/16 v4, 0x4e

    .line 179
    .local v4, "nsSuffix":C
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 182
    .local v5, "longitude":D
    cmpg-double v7, v5, v2

    if-gez v7, :cond_1

    const/16 v2, 0x57

    goto :goto_1

    :cond_1
    const/16 v2, 0x45

    .line 183
    .local v2, "ewSuffix":C
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    double-to-int v7, v0

    .line 185
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double v10, v0, v8

    double-to-int v10, v10

    rem-int/lit8 v10, v10, 0x3c

    .line 186
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    mul-double v11, v0, v8

    const-wide v13, 0x40c3880000000000L    # 10000.0

    mul-double v11, v11, v13

    double-to-int v11, v11

    rem-int/lit16 v11, v11, 0x2710

    .line 187
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 188
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const/4 v15, 0x4

    new-array v13, v15, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v7, 0x1

    aput-object v10, v13, v7

    const/4 v10, 0x2

    aput-object v11, v13, v10

    const/4 v11, 0x3

    aput-object v12, v13, v11

    .line 184
    const-string v12, "%02d%02d.%04d,%c"

    invoke-static {v3, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "lat":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    double-to-int v13, v5

    .line 190
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v18, v12

    mul-double v11, v5, v8

    double-to-int v11, v11

    rem-int/lit8 v11, v11, 0x3c

    .line 191
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    mul-double v8, v8, v5

    const-wide v16, 0x40c3880000000000L    # 10000.0

    mul-double v8, v8, v16

    double-to-int v8, v8

    rem-int/lit16 v8, v8, 0x2710

    .line 192
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 193
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v13, v12, v14

    aput-object v11, v12, v7

    aput-object v8, v12, v10

    const/4 v7, 0x3

    aput-object v9, v12, v7

    .line 189
    const-string v7, "%03d%02d.%04d,%c"

    move-object/from16 v8, v18

    invoke-static {v8, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "lon":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static formatTime(Landroid/location/Location;)Ljava/lang/String;
    .locals 4
    .param p0, "location"    # Landroid/location/Location;

    .line 168
    const-string v0, "HHmmss"

    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 169
    .local v0, "dtf":Lorg/joda/time/format/DateTimeFormatter;
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initTimers()V
    .locals 1

    .line 310
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTaskHandler:Landroid/os/Handler;

    .line 311
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTaskHandler:Landroid/os/Handler;

    .line 312
    return-void
.end method

.method private initializeUdpComponents()V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    const-string v1, "LocationUpdateService"

    if-nez v0, :cond_0

    .line 495
    :try_start_0
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnknownHostException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    if-nez v0, :cond_1

    .line 503
    :try_start_1
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 507
    goto :goto_1

    .line 504
    :catch_1
    move-exception v0

    .line 505
    .local v0, "e":Ljava/net/SocketException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SocketException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    .line 509
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_1
    :goto_1
    return-void
.end method

.method public static isInstanceCreated()Z
    .locals 1

    .line 81
    sget-object v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->instance:Lcom/offsec/nethunter/gps/LocationUpdateService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nmeaSentenceFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .locals 8
    .param p1, "location"    # Landroid/location/Location;

    .line 533
    invoke-static {p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->formatTime(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "time":Ljava/lang/String;
    invoke-static {p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->formatPosition(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "position":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x4033000000000000L    # 19.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "%.4f"

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "accuracy":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->formatSatellites(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->formatAltitude(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v6

    aput-object v1, v7, v4

    const/4 v4, 0x2

    aput-object v3, v7, v4

    const/4 v3, 0x3

    aput-object v2, v7, v3

    const/4 v3, 0x4

    aput-object v5, v7, v3

    .line 536
    const-string v3, "GPGGA,%s,%s,1,%s,%s,%s,,,,"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "innerSentence":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, "checksum":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private publishLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "nmeaSentence"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .line 448
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    .line 449
    .local v3, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 451
    const/4 v4, 0x0

    :try_start_0
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 452
    .local v5, "fields":[Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v6, v5, v0

    .line 453
    .local v6, "latStr":Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v8, v5, v7

    .line 454
    .local v8, "ns":Ljava/lang/String;
    const/4 v9, 0x4

    aget-object v9, v5, v9

    .line 455
    .local v9, "lonStr":Ljava/lang/String;
    const/4 v10, 0x5

    aget-object v10, v5, v10

    .line 456
    .local v10, "ew":Ljava/lang/String;
    const/4 v11, 0x7

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 457
    .local v11, "sats":I
    const/16 v12, 0x8

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x4033000000000000L    # 19.0

    mul-double v12, v12, v14

    .line 459
    .local v12, "accuracy":D
    invoke-virtual {v6, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 460
    .local v14, "latDeg":I
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    move-object/from16 v16, v5

    .end local v5    # "fields":[Ljava/lang/String;
    .local v16, "fields":[Ljava/lang/String;
    float-to-double v4, v0

    .line 461
    .local v4, "latMin":D
    move-object/from16 v17, v8

    .end local v8    # "ns":Ljava/lang/String;
    .local v17, "ns":Ljava/lang/String;
    int-to-double v7, v14

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    div-double v20, v4, v18

    add-double v7, v7, v20

    .line 462
    .local v7, "lat":D
    const/4 v0, 0x3

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v21, v20

    .line 463
    .local v21, "lonDeg":I
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v20, v3

    move-wide/from16 v22, v4

    .end local v3    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v4    # "latMin":D
    .local v20, "policy":Landroid/os/StrictMode$ThreadPolicy;
    .local v22, "latMin":D
    float-to-double v3, v0

    .line 464
    .local v3, "lonMin":D
    move/from16 v5, v21

    move/from16 v21, v14

    .end local v14    # "latDeg":I
    .local v5, "lonDeg":I
    .local v21, "latDeg":I
    int-to-double v14, v5

    div-double v18, v3, v18

    add-double v14, v14, v18

    .line 465
    .local v14, "lon":D
    :try_start_1
    const-string v0, "S"

    move-wide/from16 v18, v3

    move-object/from16 v3, v17

    .end local v17    # "ns":Ljava/lang/String;
    .local v3, "ns":Ljava/lang/String;
    .local v18, "lonMin":D
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_0

    .line 466
    mul-double v7, v7, v24

    .line 467
    :cond_0
    const-string v0, "W"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    mul-double v14, v14, v24

    .line 470
    :cond_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 471
    :try_start_2
    iput-wide v7, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    .line 472
    iput-wide v14, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLongitude:D

    .line 473
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    :try_start_3
    iput v11, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSats:I

    .line 475
    iput-wide v12, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationAccuracy:D

    .line 476
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationTime:Ljava/util/Date;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 477
    move-object/from16 v4, p2

    :try_start_4
    iput-object v4, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 479
    .end local v3    # "ns":Ljava/lang/String;
    .end local v5    # "lonDeg":I
    .end local v6    # "latStr":Ljava/lang/String;
    .end local v7    # "lat":D
    .end local v9    # "lonStr":Ljava/lang/String;
    .end local v10    # "ew":Ljava/lang/String;
    .end local v11    # "sats":I
    .end local v12    # "accuracy":D
    .end local v14    # "lon":D
    .end local v16    # "fields":[Ljava/lang/String;
    .end local v18    # "lonMin":D
    .end local v21    # "latDeg":I
    .end local v22    # "latMin":D
    goto :goto_3

    .line 473
    .restart local v3    # "ns":Ljava/lang/String;
    .restart local v5    # "lonDeg":I
    .restart local v6    # "latStr":Ljava/lang/String;
    .restart local v7    # "lat":D
    .restart local v9    # "lonStr":Ljava/lang/String;
    .restart local v10    # "ew":Ljava/lang/String;
    .restart local v11    # "sats":I
    .restart local v12    # "accuracy":D
    .restart local v14    # "lon":D
    .restart local v16    # "fields":[Ljava/lang/String;
    .restart local v18    # "lonMin":D
    .restart local v21    # "latDeg":I
    .restart local v22    # "latMin":D
    :catchall_0
    move-exception v0

    move-object/from16 v4, p2

    :goto_0
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v20    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p1    # "nmeaSentence":Ljava/lang/String;
    .end local p2    # "source":Ljava/lang/String;
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 478
    .end local v3    # "ns":Ljava/lang/String;
    .end local v5    # "lonDeg":I
    .end local v6    # "latStr":Ljava/lang/String;
    .end local v7    # "lat":D
    .end local v9    # "lonStr":Ljava/lang/String;
    .end local v10    # "ew":Ljava/lang/String;
    .end local v11    # "sats":I
    .end local v12    # "accuracy":D
    .end local v14    # "lon":D
    .end local v16    # "fields":[Ljava/lang/String;
    .end local v18    # "lonMin":D
    .end local v21    # "latDeg":I
    .end local v22    # "latMin":D
    .restart local v20    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p1    # "nmeaSentence":Ljava/lang/String;
    .restart local p2    # "source":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    .line 473
    .restart local v3    # "ns":Ljava/lang/String;
    .restart local v5    # "lonDeg":I
    .restart local v6    # "latStr":Ljava/lang/String;
    .restart local v7    # "lat":D
    .restart local v9    # "lonStr":Ljava/lang/String;
    .restart local v10    # "ew":Ljava/lang/String;
    .restart local v11    # "sats":I
    .restart local v12    # "accuracy":D
    .restart local v14    # "lon":D
    .restart local v16    # "fields":[Ljava/lang/String;
    .restart local v18    # "lonMin":D
    .restart local v21    # "latDeg":I
    .restart local v22    # "latMin":D
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 478
    .end local v3    # "ns":Ljava/lang/String;
    .end local v5    # "lonDeg":I
    .end local v6    # "latStr":Ljava/lang/String;
    .end local v7    # "lat":D
    .end local v9    # "lonStr":Ljava/lang/String;
    .end local v10    # "ew":Ljava/lang/String;
    .end local v11    # "sats":I
    .end local v12    # "accuracy":D
    .end local v14    # "lon":D
    .end local v16    # "fields":[Ljava/lang/String;
    .end local v18    # "lonMin":D
    .end local v21    # "latDeg":I
    .end local v22    # "latMin":D
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_1
    move-object/from16 v4, p2

    goto :goto_3

    .end local v20    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .local v3, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    :goto_2
    move-object/from16 v4, p2

    move-object/from16 v20, v3

    .line 481
    .end local v3    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v20    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :goto_3
    iget-object v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    if-eqz v0, :cond_3

    .line 482
    iget-boolean v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->firstupdate:Z

    if-eqz v0, :cond_2

    .line 483
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->firstupdate:Z

    .line 484
    iget-object v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    invoke-interface {v0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;->onFirstPositionUpdate()V

    .line 486
    :cond_2
    iget-object v0, v1, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    invoke-interface {v0, v2}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;->onPositionUpdate(Ljava/lang/String;)V

    .line 489
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->sendUdpPacket(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method private requestPostNotificationsPermission(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 560
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 566
    :cond_0
    return-void
.end method

.method private sendUdpPacket(Ljava/lang/String;)V
    .locals 6
    .param p1, "nmeaSentence"    # Ljava/lang/String;

    .line 512
    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->initializeUdpComponents()V

    .line 514
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    const-string v1, "LocationUpdateService"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    goto :goto_1

    .line 520
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 522
    .local v0, "buf":[B
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    iget-object v4, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    sget v5, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 523
    .local v2, "packet":Ljava/net/DatagramPacket;
    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    .end local v0    # "buf":[B
    .end local v2    # "packet":Ljava/net/DatagramPacket;
    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->dSock:Ljava/net/DatagramSocket;

    .line 527
    iput-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->udpDestAddr:Ljava/net/InetAddress;

    .line 529
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 515
    :cond_1
    :goto_1
    const-string v0, "UDP destination address or socket is null. Packet not sent."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void
.end method

.method private startTimers()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 318
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTask:Ljava/lang/Runnable;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    return-void
.end method

.method private stopLocationUpdates()V
    .locals 7

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationUpdatesStarted:Z

    .line 546
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 548
    .local v1, "locationManager":Landroid/location/LocationManager;
    :try_start_0
    const-class v2, Landroid/location/LocationManager;

    const-string v3, "removeNmeaListener"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/location/GpsStatus$NmeaListener;

    aput-object v6, v5, v0

    .line 549
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 550
    .local v2, "removeNmeaListener":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v0, "LocationUpdateService"

    const-string v3, "removeNmeaListener success"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    nop

    .end local v2    # "removeNmeaListener":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 555
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationListener:Lcom/google/android/gms/location/LocationListener;

    invoke-interface {v0, v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/tasks/Task;

    .line 556
    return-void
.end method

.method private stopTimers()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->timerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTaskHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->resetListenersTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method private updateNotification()V
    .locals 17

    .line 355
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 356
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationTime:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 358
    .local v2, "age":J
    const-wide/16 v4, 0xa

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 359
    const-string v4, "current"

    .local v4, "ageStr":Ljava/lang/String;
    goto :goto_0

    .line 360
    .end local v4    # "ageStr":Ljava/lang/String;
    :cond_0
    const-wide/16 v4, 0x3c

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "ageStr":Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v4    # "ageStr":Ljava/lang/String;
    :cond_1
    const-wide/16 v6, 0xe10

    cmp-long v8, v2, v6

    if-gez v8, :cond_2

    .line 363
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, v2, v4

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "ageStr":Ljava/lang/String;
    goto :goto_0

    .line 365
    .end local v4    # "ageStr":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-long v5, v2, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "h"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .restart local v4    # "ageStr":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    iget-wide v6, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    .line 367
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iget-wide v7, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLongitude:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-wide v8, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationAccuracy:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v9, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    iget v10, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSats:I

    .line 368
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    aput-object v7, v11, v6

    const/4 v7, 0x2

    aput-object v8, v11, v7

    const/4 v7, 0x3

    aput-object v9, v11, v7

    const/4 v7, 0x4

    aput-object v4, v11, v7

    const/4 v7, 0x5

    aput-object v10, v11, v7

    .line 366
    const-string v7, "Latitude: %1.5f  Longitude: %1.5f  +/- %1.1fm  Source: %s  Age: %s  Satellites: %d"

    invoke-static {v5, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "updatedText":Ljava/lang/String;
    iget-object v7, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastNotificationText:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 371
    return-void

    .line 372
    :cond_3
    iput-object v5, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastNotificationText:Ljava/lang/String;

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v7

    .line 375
    .local v7, "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {v8, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v8, "resultIntent":Landroid/content/Intent;
    const-string v9, "menuFragment"

    const v10, 0x7f0a0291

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    invoke-static/range {p0 .. p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v9

    .line 378
    .local v9, "stackBuilder":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {v9, v8}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 379
    const/high16 v10, 0xc000000

    invoke-virtual {v9, v12, v10}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v10

    .line 381
    .local v10, "resultPendingIntent":Landroid/app/PendingIntent;
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0d0055

    invoke-direct {v11, v13, v14}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 382
    .local v11, "contentView":Landroid/widget/RemoteViews;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    iget-wide v14, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLatitude:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v14, v15, v12

    const-string v14, "%1.5f"

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f0a0294

    invoke-virtual {v11, v15, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 383
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v16, v13

    iget-wide v12, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationLongitude:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v13, v15

    move-object/from16 v12, v16

    invoke-static {v12, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0a0295

    invoke-virtual {v11, v13, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 384
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    iget-wide v13, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationAccuracy:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v13, v14, v15

    const-string v13, "%1.1fm"

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0a0292

    invoke-virtual {v11, v13, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 385
    const v12, 0x7f0a0297

    iget-object v13, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 386
    const v12, 0x7f0a0293

    invoke-virtual {v11, v12, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 387
    iget-object v12, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    const-string v13, "GPS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const v13, 0x7f0a0296

    if-eqz v12, :cond_4

    .line 388
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    iget v14, v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSats:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v6, v15

    const-string v14, "%d"

    invoke-static {v12, v14, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v13, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 390
    :cond_4
    const-string v6, "-"

    invoke-virtual {v11, v13, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 392
    :goto_1
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "NethunterLocationUpdateChannel"

    invoke-direct {v6, v12, v13}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 394
    const v12, 0x108009b

    invoke-virtual {v6, v12}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 395
    invoke-virtual {v6, v11}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    new-instance v12, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v12}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 396
    invoke-virtual {v6, v12}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 397
    invoke-virtual {v6, v11}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 398
    const-string v12, "GPS Provider running"

    invoke-virtual {v6, v12}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 399
    const/4 v12, -0x1

    invoke-virtual {v6, v12}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 400
    invoke-virtual {v6, v10}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v6

    .line 401
    .local v6, "builder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 402
    .local v12, "notification":Landroid/app/Notification;
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x21

    const-string v15, "LocationUpdateService"

    if-lt v13, v14, :cond_5

    .line 403
    const-string v13, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v13}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_5

    .line 404
    const-string v13, "POST_NOTIFICATIONS permission not granted. Requesting permission."

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-direct {v0, v0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestPostNotificationsPermission(Landroid/content/Context;)V

    .line 406
    return-void

    .line 408
    :cond_5
    const/16 v13, 0x3ec

    invoke-virtual {v7, v13, v12}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 409
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notification Sent: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method


# virtual methods
.method public formatAltitude(Landroid/location/Location;)Ljava/lang/String;
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%.4f,M"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 144
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatSatellites(Landroid/location/Location;)Ljava/lang/String;
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "satellites":I
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 118
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 119
    const-string v2, "satellites"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    :cond_0
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 123
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 126
    :cond_1
    const-string v2, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    if-nez v0, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 131
    :cond_3
    const-string v2, "4"

    return-object v2
.end method

.method synthetic lambda$new$0$com-offsec-nethunter-gps-LocationUpdateService()V
    .locals 2

    .line 329
    const-string v0, "LocationUpdateService"

    const-string v1, "Restarting listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopLocationUpdates()V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    .line 332
    return-void
.end method

.method synthetic lambda$new$1$com-offsec-nethunter-gps-LocationUpdateService(JLjava/lang/String;)V
    .locals 5
    .param p1, "l"    # J
    .param p3, "s"    # Ljava/lang/String;

    .line 413
    const-string v0, "$GPGGA"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "GPS"

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourcePublished:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0, p3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->sendUdpPacket(Ljava/lang/String;)V

    .line 417
    :cond_0
    return-void

    .line 419
    :cond_1
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "fields":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 423
    .local v2, "fixType":I
    const/4 v3, 0x6

    :try_start_0
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 426
    goto :goto_0

    .line 425
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 427
    :goto_0
    if-nez v2, :cond_2

    .line 428
    return-void

    .line 430
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Real NMEA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationUpdateService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v3, "NmeaListener"

    iput-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourceReceived:Ljava/lang/String;

    .line 432
    invoke-direct {p0, p3, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->publishLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method synthetic lambda$new$2$com-offsec-nethunter-gps-LocationUpdateService(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .line 437
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->nmeaSentenceFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "nmeaSentence":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructed NMEA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationUpdateService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourceReceived:Ljava/lang/String;

    const-string v2, "LocationListener"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "Network"

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->publishLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    iput-object v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->lastLocationSourceReceived:Ljava/lang/String;

    .line 444
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 205
    const-string v0, "LocationUpdateService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 207
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 94
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 95
    sput-object p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->instance:Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 96
    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->initTimers()V

    .line 97
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "NethunterPersistentChannelService"

    const/4 v2, 0x2

    const-string v3, "NethunterLocationUpdateChannel"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 104
    .local v0, "serviceChannel":Landroid/app/NotificationChannel;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 105
    .local v1, "manager":Landroid/app/NotificationManager;
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 107
    .end local v0    # "serviceChannel":Landroid/app/NotificationChannel;
    .end local v1    # "manager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 570
    const-string v0, "LocationUpdateService"

    const-string v1, "OnDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x0

    sput-object v0, Lcom/offsec/nethunter/gps/LocationUpdateService;->instance:Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->firstupdate:Z

    .line 575
    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopTimers()V

    .line 576
    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopLocationUpdates()V

    .line 577
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 578
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 87
    const-string v0, "LocationUpdateService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V
    .locals 2
    .param p1, "receiver"    # Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    .line 211
    const-string v0, "LocationUpdateService"

    const-string v1, "In requestUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz p1, :cond_0

    .line 213
    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->updateReceiver:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    .line 214
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->startLocationUpdates()V

    .line 217
    :cond_1
    return-void
.end method

.method public startLocationUpdates()V
    .locals 11

    .line 227
    iget-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationUpdatesStarted:Z

    if-eqz v0, :cond_0

    .line 228
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationUpdatesStarted:Z

    .line 230
    const-string v1, "In startLocationUpdates"

    const-string v2, "LocationUpdateService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Lcom/google/android/gms/location/LocationRequest$Builder;

    const/16 v3, 0x64

    const-wide/16 v4, 0x1f4

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/location/LocationRequest$Builder;-><init>(IJ)V

    .line 233
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v1

    .line 234
    const-wide/16 v3, 0x258

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setMaxUpdateDelayMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v1

    .line 235
    const-wide/32 v3, 0x6ddd00

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/location/LocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/LocationRequest$Builder;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest$Builder;->build()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 238
    .local v1, "lr":Lcom/google/android/gms/location/LocationRequest;
    const-string v3, "Requesting permissions .."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/offsec/nethunter/utils/PermissionCheck;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    const-string v0, "Location permissions not granted. Requesting permissions."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 248
    :cond_1
    iget-object v5, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    if-nez v5, :cond_2

    .line 249
    invoke-static {p0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v5

    iput-object v5, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 253
    :cond_2
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    return-void

    .line 263
    :cond_3
    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->fusedLocationClient:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v4, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->locationListener:Lcom/google/android/gms/location/LocationListener;

    const/4 v5, 0x0

    invoke-interface {v3, v1, v4, v5}, Lcom/google/android/gms/location/FusedLocationProviderClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    .line 266
    const-string v3, "location"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 268
    .local v3, "locationManager":Landroid/location/LocationManager;
    const/4 v4, 0x0

    :try_start_0
    const-class v5, Landroid/location/LocationManager;

    const-string v6, "addNmeaListener"

    new-array v7, v0, [Ljava/lang/Class;

    const-class v8, Landroid/location/GpsStatus$NmeaListener;

    aput-object v8, v7, v4

    .line 269
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 270
    .local v5, "addNmeaListener":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lcom/offsec/nethunter/gps/LocationUpdateService;->nmeaListener:Landroid/location/GpsStatus$NmeaListener;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v4

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v0, "addNmeaListener success"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    nop

    .end local v5    # "addNmeaListener":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add NMEA listener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    .line 279
    .local v0, "notificationManagerCompat":Landroidx/core/app/NotificationManagerCompat;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 280
    .local v5, "resultIntent":Landroid/content/Intent;
    const-string v6, "menuFragment"

    const v7, 0x7f0a0291

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 281
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v6

    .line 282
    .local v6, "stackBuilder":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {v6, v5}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    .line 283
    const/high16 v7, 0xc000000

    invoke-virtual {v6, v4, v7}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v7

    .line 285
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "NethunterLocationUpdateChannel"

    invoke-direct {v8, v9, v10}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v8, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 287
    const v8, 0x108009b

    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    sget-object v8, Lcom/offsec/nethunter/gps/LocationUpdateService;->notificationText:Ljava/lang/String;

    .line 288
    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    new-instance v8, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v8}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 289
    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 290
    const-string v8, "GPS Provider running"

    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 291
    const/4 v8, -0x1

    invoke-virtual {v4, v8}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 292
    invoke-virtual {v4, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 293
    .local v4, "builder":Landroidx/core/app/NotificationCompat$Builder;
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 295
    .local v8, "notification":Landroid/app/Notification;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x21

    if-lt v9, v10, :cond_4

    .line 296
    const-string v9, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v9}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_4

    .line 297
    const-string v9, "POST_NOTIFICATIONS permission not granted. Requesting permission."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0, p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestPostNotificationsPermission(Landroid/content/Context;)V

    .line 299
    return-void

    .line 301
    :cond_4
    const/16 v9, 0x3ec

    invoke-virtual {v0, v9, v8}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 303
    invoke-virtual {p0, v9, v8}, Lcom/offsec/nethunter/gps/LocationUpdateService;->startForeground(ILandroid/app/Notification;)V

    .line 305
    const-string v9, "starting Notification Update Timer"

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->startTimers()V

    .line 307
    return-void
.end method

.method public stopUpdates()V
    .locals 2

    .line 220
    const-string v0, "LocationUpdateService"

    const-string v1, "In stopUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->stopSelf()V

    .line 222
    return-void
.end method
