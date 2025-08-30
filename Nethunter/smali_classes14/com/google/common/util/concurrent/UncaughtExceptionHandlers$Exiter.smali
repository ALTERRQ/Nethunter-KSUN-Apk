.class final Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlers.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/UncaughtExceptionHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Exiter"
.end annotation


# static fields
.field private static final logger:Lcom/google/common/util/concurrent/LazyLogger;


# instance fields
.field private final runtime:Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Lcom/google/common/util/concurrent/LazyLogger;

    const-class v1, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/LazyLogger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;->logger:Lcom/google/common/util/concurrent/LazyLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;)V
    .locals 0
    .param p1, "runtime"    # Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runtime"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;->runtime:Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;

    .line 69
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "e"
        }
    .end annotation

    .line 74
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;->logger:Lcom/google/common/util/concurrent/LazyLogger;

    .line 75
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/LazyLogger;->get()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "Caught an exception in %s.  Shutting down."

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 78
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v1, v2, v3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    .line 83
    .local v1, "errorInLogging":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .end local v1    # "errorInLogging":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;->runtime:Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;->exit(I)V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$Exiter;->runtime:Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;

    invoke-interface {v2, v0}, Lcom/google/common/util/concurrent/UncaughtExceptionHandlers$RuntimeWrapper;->exit(I)V

    .line 87
    throw v1
.end method
