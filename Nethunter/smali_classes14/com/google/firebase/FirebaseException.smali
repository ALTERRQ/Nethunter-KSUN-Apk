.class public Lcom/google/firebase/FirebaseException;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-basement@@18.3.0"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseException;
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;

    .line 2
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseException;
    .end local p1    # "detailMessage":Ljava/lang/String;
    const-string v0, "Detail message must not be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 3
    nop

    .end local p0    # "this":Lcom/google/firebase/FirebaseException;
    .end local p1    # "detailMessage":Ljava/lang/String;
    .end local p2    # "cause":Ljava/lang/Throwable;
    const-string v0, "Detail message must not be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
