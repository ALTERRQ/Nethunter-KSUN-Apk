.class public final Lcom/offsec/nethunter/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.offsec.nethunter"

.field public static final BUILD_NAME:Ljava/lang/String; = "null"

.field public static final BUILD_TIME:Ljava/util/Date;

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final VERSION_CODE:I = 0x78b35b28

.field public static final VERSION_NAME:Ljava/lang/String; = "2025.3-rc1-dev"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7
    const-string v0, "true"

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/offsec/nethunter/BuildConfig;->DEBUG:Z

    .line 15
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x198fc26ac4dL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/offsec/nethunter/BuildConfig;->BUILD_TIME:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
