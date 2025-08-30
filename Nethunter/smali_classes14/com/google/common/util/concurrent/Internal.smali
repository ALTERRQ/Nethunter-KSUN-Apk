.class final Lcom/google/common/util/concurrent/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toNanosSaturated(Lj$/time/Duration;)J
    .locals 3
    .param p0, "duration"    # Lj$/time/Duration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lj$/time/Duration;->toNanos()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "tooBig":Ljava/lang/ArithmeticException;
    invoke-virtual {p0}, Lj$/time/Duration;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    return-wide v1
.end method
