.class public Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
.super Lcom/google/android/gms/common/UserRecoverableException;
.source "com.google.android.gms:play-services-basement@@18.3.0"


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "connectionStatusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
    .end local p1    # "connectionStatusCode":I
    .end local p2    # "msg":Ljava/lang/String;
    .end local p3    # "intent":Landroid/content/Intent;
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/UserRecoverableException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->zza:I

    return-void
.end method


# virtual methods
.method public getConnectionStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->zza:I

    return v0
.end method
