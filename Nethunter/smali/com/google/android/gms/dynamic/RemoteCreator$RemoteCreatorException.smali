.class public Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-basement@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/RemoteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteCreatorException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
    .end local p1    # "message":Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 2
    nop

    .end local p0    # "this":Lcom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "cause":Ljava/lang/Throwable;
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
