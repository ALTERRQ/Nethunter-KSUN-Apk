.class Lcom/offsec/nethunter/gps/NMEA$1;
.super Landroid/location/GnssStatus$Callback;
.source "NMEA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/gps/NMEA;->registerGnssStatusCallback(Landroid/location/LocationManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 31
    invoke-static {p1}, Lcom/offsec/nethunter/gps/NMEA;->access$002(Landroid/location/GnssStatus;)Landroid/location/GnssStatus;

    .line 32
    return-void
.end method
