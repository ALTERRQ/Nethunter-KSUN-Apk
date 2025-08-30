.class final Lcom/google/common/collect/SneakyThrows;
.super Ljava/lang/Object;
.source "SneakyThrows.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    .local p0, "this":Lcom/google/common/collect/SneakyThrows;, "Lcom/google/common/collect/SneakyThrows<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static sneakyThrow(Ljava/lang/Throwable;)Ljava/lang/Error;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/google/common/collect/SneakyThrows;

    invoke-direct {v0}, Lcom/google/common/collect/SneakyThrows;-><init>()V

    invoke-direct {v0, p0}, Lcom/google/common/collect/SneakyThrows;->throwIt(Ljava/lang/Throwable;)Ljava/lang/Error;

    move-result-object v0

    throw v0
.end method

.method private throwIt(Ljava/lang/Throwable;)Ljava/lang/Error;
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Error;",
            "^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/google/common/collect/SneakyThrows;, "Lcom/google/common/collect/SneakyThrows<TT;>;"
    throw p1
.end method
