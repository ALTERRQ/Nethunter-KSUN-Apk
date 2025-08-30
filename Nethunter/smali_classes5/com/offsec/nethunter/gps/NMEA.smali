.class public final Lcom/offsec/nethunter/gps/NMEA;
.super Ljava/lang/Object;
.source "NMEA.java"


# static fields
.field private static lastGnssStatus:Landroid/location/GnssStatus;

.field private static lastGpsStatus:Landroid/location/GpsStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/GnssStatus;)Landroid/location/GnssStatus;
    .locals 0
    .param p0, "x0"    # Landroid/location/GnssStatus;

    .line 20
    sput-object p0, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    return-object p0
.end method

.method public static formatBearing(Landroid/location/Location;)Ljava/lang/String;
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .line 51
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static formatGpsGsa()Ljava/lang/String;
    .locals 2

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/offsec/nethunter/gps/NMEA;->formatGpsGsaGnss()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/gps/NMEA;->formatGpsGsaGps()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static formatGpsGsaGnss()Ljava/lang/String;
    .locals 7

    .line 64
    sget-object v0, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "prn":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 67
    .local v1, "nbr_sat":I
    const/4 v2, 0x0

    .line 68
    .local v2, "satCount":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 69
    sget-object v3, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v3}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v2

    .line 71
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v5, 0xc

    const-string v6, ","

    if-ge v3, v5, :cond_3

    .line 72
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v4, :cond_2

    .line 73
    if-ge v3, v2, :cond_2

    sget-object v5, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v5, v3}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    sget-object v5, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v5, v3}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 78
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x3

    if-le v1, v3, :cond_4

    const-string v3, "3"

    goto :goto_1

    :cond_4
    if-lez v1, :cond_5

    const-string v3, "2"

    goto :goto_1

    :cond_5
    const-string v3, "1"

    .line 81
    .local v3, "fix":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",,,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatGpsGsaGps()Ljava/lang/String;
    .locals 7

    .line 109
    sget-object v0, Lcom/offsec/nethunter/gps/NMEA;->lastGpsStatus:Landroid/location/GpsStatus;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v0, "prn":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 112
    .local v1, "nbr_sat":I
    sget-object v2, Lcom/offsec/nethunter/gps/NMEA;->lastGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    .local v2, "satellites":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xc

    const-string v5, ","

    if-ge v3, v4, :cond_2

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    .line 116
    .local v4, "sat":Landroid/location/GpsSatellite;
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 121
    .end local v4    # "sat":Landroid/location/GpsSatellite;
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x3

    if-le v1, v3, :cond_3

    const-string v3, "3"

    goto :goto_1

    :cond_3
    if-lez v1, :cond_4

    const-string v3, "2"

    goto :goto_1

    :cond_4
    const-string v3, "1"

    .line 124
    .local v3, "fix":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",,,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatGpsGsv()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/offsec/nethunter/gps/NMEA;->formatGpsGsvGnss()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/gps/NMEA;->formatGpsGsvGps()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static formatGpsGsvGnss()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "gsv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    if-nez v1, :cond_0

    return-object v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    .local v1, "nbr_sat":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 89
    sget-object v2, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v2}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    .line 91
    :cond_1
    const/4 v2, 0x0

    .line 92
    .local v2, "idx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    if-ge v2, v1, :cond_4

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .local v5, "g":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_1
    const/4 v7, 0x4

    if-ge v6, v7, :cond_3

    if-ge v2, v1, :cond_3

    .line 95
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_2

    .line 96
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v9, v2}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 97
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v9, v2}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 98
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v9, v2}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 99
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/offsec/nethunter/gps/NMEA;->lastGnssStatus:Landroid/location/GnssStatus;

    invoke-virtual {v8, v2}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v6    # "n":I
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v5    # "g":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    .end local v4    # "i":I
    :cond_4
    return-object v0
.end method

.method private static formatGpsGsvGps()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v0, "gsv":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/offsec/nethunter/gps/NMEA;->lastGpsStatus:Landroid/location/GpsStatus;

    if-nez v1, :cond_0

    return-object v0

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 131
    .local v1, "nbr_sat":I
    sget-object v2, Lcom/offsec/nethunter/gps/NMEA;->lastGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    sget-object v2, Lcom/offsec/nethunter/gps/NMEA;->lastGpsStatus:Landroid/location/GpsStatus;

    invoke-virtual {v2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 133
    .local v2, "satellites":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "g":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/GpsSatellite;

    .line 139
    .local v6, "sat":Landroid/location/GpsSatellite;
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 140
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 136
    .end local v6    # "sat":Landroid/location/GpsSatellite;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 143
    .end local v5    # "n":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v4    # "g":Ljava/lang/StringBuilder;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    .end local v3    # "i":I
    :cond_5
    return-object v0
.end method

.method public static formatSpeedKt(Landroid/location/Location;)Ljava/lang/String;
    .locals 4
    .param p0, "location"    # Landroid/location/Location;

    .line 43
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fff19fcae10f4f0L    # 1.94384449

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static registerGnssStatusCallback(Landroid/location/LocationManager;)V
    .locals 3
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/offsec/nethunter/gps/NMEA$1;

    invoke-direct {v0}, Lcom/offsec/nethunter/gps/NMEA$1;-><init>()V

    new-instance v1, Landroid/os/Handler;

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    .line 35
    :cond_0
    return-void
.end method

.method public static updateGpsStatus(Landroid/location/GpsStatus;)V
    .locals 0
    .param p0, "gpsStatus"    # Landroid/location/GpsStatus;

    .line 39
    sput-object p0, Lcom/offsec/nethunter/gps/NMEA;->lastGpsStatus:Landroid/location/GpsStatus;

    .line 40
    return-void
.end method
