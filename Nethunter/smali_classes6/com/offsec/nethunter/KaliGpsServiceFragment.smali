.class public Lcom/offsec/nethunter/KaliGpsServiceFragment;
.super Landroidx/fragment/app/Fragment;
.source "KaliGpsServiceFragment.java"

# interfaces
.implements Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "KaliGpsServiceFragment"


# instance fields
.field private context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

.field private gpsTextView:Landroid/widget/TextView;

.field private final mousejack:Ljava/lang/String;

.field private mousejackcheckbox:Landroid/widget/CheckBox;

.field private reattachedToRunningService:Z

.field private final rtladsb:Ljava/lang/String;

.field private final rtlamr:Ljava/lang/String;

.field private final rtlsdr:Ljava/lang/String;

.field private satelliteSignalContainer:Landroid/widget/LinearLayout;

.field private satellitesEditText:Lcom/google/android/material/textfield/TextInputEditText;

.field private sdradsbcheckbox:Landroid/widget/CheckBox;

.field private sdramrcheckbox:Landroid/widget/CheckBox;

.field private sdrcheckbox:Landroid/widget/CheckBox;

.field private switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

.field private switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

.field private wantHelpView:Z

.field private wantKismet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->executor:Ljava/util/concurrent/ExecutorService;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantKismet:Z

    .line 85
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantHelpView:Z

    .line 86
    iput-boolean v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    .line 87
    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    .line 88
    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlsdr:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtlamr:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->rtladsb:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->mousejack:Ljava/lang/String;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/KaliGpsServiceFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/KaliGpsServiceFragment;

    .line 74
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->isInternalMonitorModeSupported()Z

    move-result v0

    return v0
.end method

.method private check_gpsd()V
    .locals 6

    .line 408
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 409
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const-string v1, "pgrep gpsd"

    .line 410
    .local v1, "command":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KaliGpsServiceFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, "response":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setCheckedQuietly(Landroid/widget/CompoundButton;Z)V

    .line 414
    return-void
.end method

.method private extractSatelliteCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "nmeaSentences"    # Ljava/lang/String;

    .line 462
    const-string v0, "GPGGA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    aget-object v1, v0, v2

    const-string v3, "\\d+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 468
    .end local v0    # "parts":[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private extractSatelliteSnrs(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "nmeaSentences"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, "snrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "lines":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 347
    .local v4, "line":Ljava/lang/String;
    const-string v5, "$GPGSV"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "$GLGSV"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    :cond_0
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "parts":[Ljava/lang/String;
    const/4 v6, 0x7

    .local v6, "i":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 352
    :try_start_0
    aget-object v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 353
    .local v7, "snr":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    nop

    .end local v7    # "snr":I
    goto :goto_2

    .line 354
    :catch_0
    move-exception v7

    .line 350
    :goto_2
    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    .line 346
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_2
    return-object v0
.end method

.method private isInternalMonitorModeSupported()Z
    .locals 5

    .line 134
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    const-string v3, "-c"

    const-string v4, "ls /sys/module/*/parameters/con_mode"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 135
    .local v1, "process":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .local v2, "exitCode":I
    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 137
    .end local v1    # "process":Ljava/lang/Process;
    .end local v2    # "exitCode":I
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method static synthetic lambda$onViewCreated$3(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;)V
    .locals 2
    .param p0, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p1, "conf"    # Ljava/lang/String;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "echo \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/kismet_site.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 293
    const-string v0, "bootkali custom_cmd mv /sdcard/kismet_site.conf /etc/kismet/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method static synthetic lambda$startChrootGpsd$6()V
    .locals 6

    .line 324
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 325
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su -c \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bootkali start_gpsd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "command":Ljava/lang/String;
    const-string v2, "KaliGpsServiceFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "response":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method static synthetic lambda$stopChrootGpsd$7()V
    .locals 3

    .line 336
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 337
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su -c \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stop-gpsd\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "command":Ljava/lang/String;
    const-string v2, "KaliGpsServiceFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 340
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/KaliGpsServiceFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 99
    new-instance v0, Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;-><init>()V

    .line 100
    .local v0, "fragment":Lcom/offsec/nethunter/KaliGpsServiceFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setArguments(Landroid/os/Bundle;)V

    .line 103
    return-object v0
.end method

.method private setCheckedQuietly(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "state"    # Z

    .line 143
    const-string v0, "quiet"

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method private startChrootGpsd()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Starting gpsd in Kali chroot\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 323
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 329
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 330
    return-void
.end method

.method private startGpsProvider()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Starting Android GPS Publisher\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS NMEA messages will be sent to udp://127.0.0.1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/offsec/nethunter/utils/NhPaths;->GPS_PORT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;->onLocationUpdatesRequested(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    .line 307
    :cond_0
    return-void
.end method

.method private startKismet()V
    .locals 3

    .line 478
    :try_start_0
    const-string v0, "/usr/bin/start-kismet"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->run_cmd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    const v2, 0x7f1302c4

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private stopChrootGpsd()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Stopping gpsd in Kali chroot\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 340
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 341
    return-void
.end method

.method private stopGpsProvider()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "Stopping Android GPS Publisher\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    invoke-interface {v0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;->onStopRequested()V

    .line 313
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_0
    return-void
.end method

.method private updateSatelliteSignalBars(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 363
    .local p1, "snrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->satelliteSignalContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->satelliteSignalContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 365
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 377
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 378
    .local v4, "snr":I
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 379
    .local v5, "bar":Landroid/view/View;
    mul-int/lit8 v6, v4, 0x2

    const/16 v7, 0x8

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 380
    .local v6, "barHeight":I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 381
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 382
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    const/16 v8, 0x1e

    if-le v4, v8, :cond_2

    const v8, -0xb350b0

    goto :goto_1

    :cond_2
    const/16 v8, -0x3ef9

    :goto_1
    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 384
    iget-object v8, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->satelliteSignalContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    .end local v4    # "snr":I
    .end local v5    # "bar":Landroid/view/View;
    .end local v6    # "barHeight":I
    .end local v7    # "params":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_0

    .line 386
    :cond_3
    return-void

    .line 367
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_5

    .line 368
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 369
    .local v4, "bar":Landroid/view/View;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x10

    invoke-direct {v5, v2, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 370
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 371
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    const v6, -0x424243

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 373
    iget-object v6, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->satelliteSignalContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    .end local v4    # "bar":Landroid/view/View;
    .end local v5    # "params":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 375
    .end local v3    # "i":I
    :cond_5
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-offsec-nethunter-KaliGpsServiceFragment(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isGranted"    # Ljava/lang/Boolean;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    const-string v1, "Background location permission denied"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    :cond_0
    return-void
.end method

.method synthetic lambda$onPositionUpdate$8$com-offsec-nethunter-KaliGpsServiceFragment()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 444
    .local v0, "scrollAmount":I
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 445
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-offsec-nethunter-KaliGpsServiceFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 243
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch_gps_provider clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KaliGpsServiceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz p2, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startGpsProvider()V

    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->stopGpsProvider()V

    .line 250
    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$2$com-offsec-nethunter-KaliGpsServiceFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 255
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch_gpsd clicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KaliGpsServiceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    if-eqz p2, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startChrootGpsd()V

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->stopChrootGpsd()V

    .line 262
    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$4$com-offsec-nethunter-KaliGpsServiceFragment(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 7
    .param p1, "wlan_interface"    # Landroid/widget/EditText;
    .param p2, "bt_interface"    # Landroid/widget/EditText;
    .param p3, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p4, "view1"    # Landroid/view/View;

    .line 266
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v2, "Android GPS Provider not running!\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 269
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startGpsProvider()V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v2, "chroot gpsd not running!\n"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 274
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startChrootGpsd()V

    .line 277
    :cond_1
    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 278
    .local v2, "wlaniface":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, "\n"

    const-string v5, "source="

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    move-object v2, v3

    .line 280
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v0

    .line 281
    .local v3, "btiface":Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v0

    :goto_3
    move-object v3, v4

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "log_template=%p/%n\nlog_prefix=/captures/kismet/\ngps=gpsd:host=localhost,port=2947\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 286
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdrcheckbox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdrcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "source=rtl433-0\n"

    goto :goto_4

    :cond_6
    move-object v5, v0

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 287
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdramrcheckbox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdramrcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "source=rtlamr-0\n"

    goto :goto_5

    :cond_7
    move-object v5, v0

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 288
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdradsbcheckbox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdradsbcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "source=rtladsb-0\n"

    goto :goto_6

    :cond_8
    move-object v5, v0

    :goto_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 289
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->mousejackcheckbox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->mousejackcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v0, "source=mousejack:name=nRF,channel_hoprate=100/sec\n"

    :cond_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "conf":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v5, p3, v0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 295
    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Starting Kismet.. Web UI will be available at localhost:2501\""

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 296
    iput-boolean v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantKismet:Z

    .line 297
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v4, "Kismet will launch after next position received.  Waiting...\n"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 298
    return-void
.end method

.method synthetic lambda$stopGpsProvider$5$com-offsec-nethunter-KaliGpsServiceFragment()V
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 315
    .local v0, "scrollAmount":I
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 316
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 418
    instance-of v0, p1, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    if-eqz v0, :cond_0

    .line 419
    move-object v0, p1

    check-cast v0, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    .line 420
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;->onReceiverReattach(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    .line 422
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 423
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantHelpView:Z

    .line 426
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 427
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    .line 111
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    .line 120
    .local v0, "backgroundLocationPermissionLauncher":Landroidx/activity/result/ActivityResultLauncher;, "Landroidx/activity/result/ActivityResultLauncher<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0, v2}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    const v0, 0x7f0d0052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 486
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 487
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 489
    :try_start_0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->executor:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 494
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 496
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public onFirstPositionUpdate()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v1, "First position received\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 474
    return-void
.end method

.method public onPositionUpdate(Ljava/lang/String;)V
    .locals 8
    .param p1, "nmeaSentences"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 432
    .local v0, "charSequence":Ljava/lang/CharSequence;
    const/16 v1, 0x14

    .line 433
    .local v1, "maxLines":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0xa

    invoke-static {v0, v3, v2, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 434
    .local v2, "index":I
    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 435
    iget-object v4, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 438
    :cond_0
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->extractSatelliteSnrs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 439
    .local v4, "snrs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->updateSatelliteSignalBars(Ljava/util/List;)V

    .line 441
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    new-instance v6, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 448
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->extractSatelliteCount(Ljava/lang/String;)I

    move-result v5

    .line 449
    .local v5, "satelliteCount":I
    iget-object v6, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->satellitesEditText:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v6, :cond_1

    .line 450
    iget-object v6, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->satellitesEditText:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 453
    :cond_1
    iget-boolean v6, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantKismet:Z

    if-eqz v6, :cond_2

    .line 454
    iput-boolean v3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantKismet:Z

    .line 455
    iget-object v3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    const-string v6, "Launching kismet in NetHunter Terminal\n"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 456
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->startKismet()V

    .line 458
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 390
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 391
    const-string v0, "KaliGpsServiceFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-static {}, Lcom/offsec/nethunter/gps/LocationUpdateService;->isInstanceCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setCheckedQuietly(Landroid/widget/CompoundButton;Z)V

    .line 396
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsProvider:Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;

    invoke-interface {v0, p0}, Lcom/offsec/nethunter/gps/KaliGPSUpdates$Provider;->onReceiverReattach(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setCheckedQuietly(Landroid/widget/CompoundButton;Z)V

    .line 404
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->check_gpsd()V

    .line 405
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 150
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V

    .line 207
    invoke-virtual {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 151
    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)V

    .line 209
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 210
    const v0, 0x7f0a028d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->satellitesEditText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 211
    const v0, 0x7f0a0298

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    .line 212
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->gpsTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 213
    const v0, 0x7f0a028f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    .local v0, "gpsHelpView":Landroid/widget/TextView;
    const v1, 0x7f0a04a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    .line 215
    const v1, 0x7f0a0405

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->satelliteSignalContainer:Landroid/widget/LinearLayout;

    .line 216
    const v1, 0x7f0a04a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    .line 217
    const v1, 0x7f0a028b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 218
    .local v1, "button_launch_app":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v2}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 219
    .local v2, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    const v3, 0x7f0a0538

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 220
    .local v3, "wlan_interface":Landroid/widget/EditText;
    const v4, 0x7f0a00c3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 223
    .local v4, "bt_interface":Landroid/widget/EditText;
    const v5, 0x7f0a03ff

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdrcheckbox:Landroid/widget/CheckBox;

    .line 224
    const v5, 0x7f0a03fe

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdramrcheckbox:Landroid/widget/CheckBox;

    .line 225
    const v5, 0x7f0a03fd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->sdradsbcheckbox:Landroid/widget/CheckBox;

    .line 226
    const v5, 0x7f0a0334

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->mousejackcheckbox:Landroid/widget/CheckBox;

    .line 228
    const v5, 0x7f130184

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 229
    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->wantHelpView:Z

    if-nez v5, :cond_0

    .line 230
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reattachedToRunningService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "KaliGpsServiceFragment"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-boolean v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->reattachedToRunningService:Z

    if-eqz v5, :cond_1

    .line 234
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v5, :cond_1

    .line 235
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->setCheckedQuietly(Landroid/widget/CompoundButton;Z)V

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->check_gpsd()V

    .line 241
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v5, :cond_2

    .line 242
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gps_provider:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v6, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 253
    :cond_2
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v5, :cond_3

    .line 254
    iget-object v5, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->switch_gpsd:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v6, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    :cond_3
    new-instance v5, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 501
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 503
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
