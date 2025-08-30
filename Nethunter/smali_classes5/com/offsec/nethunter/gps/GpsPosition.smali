.class public Lcom/offsec/nethunter/gps/GpsPosition;
.super Ljava/lang/Object;
.source "GpsPosition.java"


# instance fields
.field public final time:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/offsec/nethunter/gps/GpsPosition;->time:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 16

    .line 20
    const/4 v0, 0x0

    .line 21
    .local v0, "latitude":F
    const/4 v1, 0x0

    .line 22
    .local v1, "longitude":F
    const/4 v2, 0x0

    .line 23
    .local v2, "quality":I
    const/4 v3, 0x0

    .line 24
    .local v3, "direction":F
    const/4 v4, 0x0

    .line 25
    .local v4, "altitude":F
    const/4 v5, 0x0

    .line 26
    .local v5, "velocity":F
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 27
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 28
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v7, 0x1

    aput-object v8, v14, v7

    const/4 v7, 0x2

    aput-object v9, v14, v7

    const/4 v7, 0x3

    aput-object v10, v14, v7

    const/4 v7, 0x4

    aput-object v11, v14, v7

    const/4 v7, 0x5

    aput-object v12, v14, v7

    const/4 v7, 0x6

    aput-object v13, v14, v7

    .line 26
    const-string v7, "GpsPosition: latitude: %f, longitude: %f, time: %f, quality: %d, direction: %f, altitude: %f, velocity: %f"

    invoke-static {v6, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public updateIsfixed()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "isFixed":Z
    return-void
.end method
