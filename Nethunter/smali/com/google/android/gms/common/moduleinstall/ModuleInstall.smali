.class public final Lcom/google/android/gms/common/moduleinstall/ModuleInstall;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.4.0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/app/Activity;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 1
    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/zay;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/moduleinstall/internal/zay;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static getClient(Landroid/content/Context;)Lcom/google/android/gms/common/moduleinstall/ModuleInstallClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/moduleinstall/internal/zay;

    .end local p0    # "context":Landroid/content/Context;
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/moduleinstall/internal/zay;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
