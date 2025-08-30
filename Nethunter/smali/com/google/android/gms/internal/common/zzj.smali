.class abstract Lcom/google/android/gms/internal/common/zzj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.3.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation runtime Lorg/jspecify/nullness/NullMarked;
.end annotation


# instance fields
.field private zza:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private zzb:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iput v1, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzj;->zza()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/common/zzj;->zza:Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iput v3, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    return v3

    .line 3
    :pswitch_1
    return v0

    .line 2
    :pswitch_2
    return v3

    :cond_0
    return v0

    .line 1
    :cond_1
    const/4 v0, 0x0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/common/zzj;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzj;->zza:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/common/zzj;->zza:Ljava/lang/Object;

    return-object v0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract zza()Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final zzb()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/common/zzj;->zzb:I

    const/4 v0, 0x0

    return-object v0
.end method
