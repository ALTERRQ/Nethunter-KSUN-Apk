.class public Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;
.super Ljava/lang/Object;
.source "PermissionCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/utils/PermissionCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Permissions"
.end annotation


# static fields
.field public static final BLUETOOTH_PERMISSIONS:[Ljava/lang/String;

.field public static final REQUEST_CODE:I = 0x3e9

.field public static final REQUEST_CODE_ALL:I = 0x3f1

.field public static final REQUEST_CODE_AUDIO:I = 0x3ee

.field public static final REQUEST_CODE_BLUETOOTH:I = 0x3ec

.field public static final REQUEST_CODE_LOCATION:I = 0x3eb

.field public static final REQUEST_CODE_MEDIA:I = 0x3ed

.field public static final REQUEST_CODE_NOTIFICATION:I = 0x3ef

.field public static final REQUEST_CODE_OTHER:I = 0x3f0

.field public static final REQUEST_CODE_STORAGE:I = 0x3ea

.field public static final TAG:Ljava/lang/String; = "Permissions"


# instance fields
.field public final ALL_PERMISSIONS:[Ljava/lang/String;

.field private final AUDIO_PERMISSIONS:[Ljava/lang/String;

.field public final LOCATION_PERMISSIONS:[Ljava/lang/String;

.field public final MACCHANGER_PERMISSIONS:[Ljava/lang/String;

.field public final MEDIA_PERMISSIONS:[Ljava/lang/String;

.field public final NOTIFICATION_PERMISSIONS:[Ljava/lang/String;

.field public final OTHER_PERMISSIONS:[Ljava/lang/String;

.field public final STORAGE_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 124
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    const-string v1, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->BLUETOOTH_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    .line 92
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v17, "android.permission.MODIFY_AUDIO_SETTINGS"

    const-string v18, "android.permission.POST_NOTIFICATIONS"

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    const-string v4, "android.permission.BLUETOOTH_SCAN"

    const-string v5, "android.permission.BLUETOOTH_ADVERTISE"

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v8, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v9, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v11, "android.permission.MANAGE_EXTERNAL_STORAGE"

    const-string v12, "android.permission.READ_MEDIA_AUDIO"

    const-string v13, "android.permission.READ_MEDIA_VIDEO"

    const-string v14, "android.permission.READ_MEDIA_IMAGES"

    const-string v15, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v16, "android.permission.RECORD_AUDIO"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->ALL_PERMISSIONS:[Ljava/lang/String;

    .line 132
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->LOCATION_PERMISSIONS:[Ljava/lang/String;

    .line 138
    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 144
    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    const-string v4, "android.permission.ACCESS_MEDIA_LOCATION"

    const-string v5, "android.permission.READ_MEDIA_AUDIO"

    const-string v6, "android.permission.READ_MEDIA_VIDEO"

    filled-new-array {v5, v6, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->MEDIA_PERMISSIONS:[Ljava/lang/String;

    .line 151
    const-string v1, "android.permission.RECORD_AUDIO"

    const-string v4, "android.permission.MODIFY_AUDIO_SETTINGS"

    filled-new-array {v1, v4, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->AUDIO_PERMISSIONS:[Ljava/lang/String;

    .line 158
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->NOTIFICATION_PERMISSIONS:[Ljava/lang/String;

    .line 162
    const-string v6, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "android.permission.INTERNET"

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    const-string v4, "android.permission.CHANGE_WIFI_STATE"

    const-string v5, "android.permission.CHANGE_NETWORK_STATE"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->MACCHANGER_PERMISSIONS:[Ljava/lang/String;

    .line 171
    const-string v1, "android.permission.WAKE_LOCK"

    const-string v2, "android.permission.INTERNET"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/offsec/nethunter/utils/PermissionCheck$Permissions;->OTHER_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method
