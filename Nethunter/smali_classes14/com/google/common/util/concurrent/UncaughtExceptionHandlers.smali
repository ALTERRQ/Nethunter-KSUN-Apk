.class public final Lcom/google/common/util/concurrent/UncaughtExceptionHandlers;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;,
        Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static systemExit()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 3

    .line 53
    new-instance v0, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runtime;)V

    invoke-direct {v0, v2}, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;-><init>(Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;)V

    return-object v0
.end method
