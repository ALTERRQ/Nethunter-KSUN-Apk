.class public final Lcom/google/android/gms/location/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:Lcom/google/android/gms/common/Feature;

.field public static final zzh:Lcom/google/android/gms/common/Feature;

.field public static final zzi:Lcom/google/android/gms/common/Feature;

.field public static final zzj:Lcom/google/android/gms/common/Feature;

.field public static final zzk:Lcom/google/android/gms/common/Feature;

.field public static final zzl:Lcom/google/android/gms/common/Feature;

.field public static final zzm:Lcom/google/android/gms/common/Feature;

.field public static final zzn:Lcom/google/android/gms/common/Feature;

.field public static final zzo:Lcom/google/android/gms/common/Feature;

.field public static final zzp:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "name_ulr_private"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zza:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    const-string v1, "name_sleep_segment_request"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzb:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 3
    const-string v1, "get_last_activity_feature_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzc:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 4
    const-string/jumbo v1, "support_context_feature_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzd:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 5
    const-string v1, "get_current_location"

    const-wide/16 v4, 0x2

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zze:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 6
    const-string v1, "get_last_location_with_request"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzf:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 7
    const-string/jumbo v1, "set_mock_mode_with_callback"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzg:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 8
    const-string/jumbo v1, "set_mock_location_with_callback"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzh:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 9
    const-string v1, "inject_location_with_callback"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzi:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 10
    const-string v1, "location_updates_with_callback"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzj:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 11
    const-string/jumbo v1, "use_safe_parcelable_in_intents"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzk:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 12
    const-string v1, "flp_debug_updates"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzl:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 13
    const-string v1, "google_location_accuracy_enabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzm:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 14
    const-string v1, "geofences_with_callback"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzn:Lcom/google/android/gms/common/Feature;

    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 15
    const-string v1, "location_enabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/location/zzo;->zzo:Lcom/google/android/gms/common/Feature;

    sget-object v0, Lcom/google/android/gms/location/zzo;->zza:Lcom/google/android/gms/common/Feature;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzb:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzc:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzd:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Lcom/google/android/gms/location/zzo;->zze:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzf:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzg:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/4 v0, 0x7

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzh:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/16 v0, 0x8

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzi:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/16 v0, 0x9

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzj:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/16 v0, 0xa

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzk:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/16 v0, 0xb

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzl:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/16 v0, 0xc

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzm:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/16 v0, 0xd

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzn:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    const/16 v0, 0xe

    sget-object v2, Lcom/google/android/gms/location/zzo;->zzo:Lcom/google/android/gms/common/Feature;

    aput-object v2, v1, v0

    sput-object v1, Lcom/google/android/gms/location/zzo;->zzp:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
