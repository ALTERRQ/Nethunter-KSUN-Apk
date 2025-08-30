.class public final Lcom/jetradarmobile/snowfall/Randomizer;
.super Ljava/lang/Object;
.source "Randomizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0006J\u0018\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ \u0010\n\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/jetradarmobile/snowfall/Randomizer;",
        "",
        "()V",
        "random",
        "Ljava/util/Random;",
        "randomDouble",
        "",
        "max",
        "",
        "randomGaussian",
        "randomInt",
        "gaussian",
        "",
        "min",
        "randomSignum",
        "snowfall_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/jetradarmobile/snowfall/Randomizer;->random:Ljava/util/Random;

    return-void
.end method

.method public static synthetic randomInt$default(Lcom/jetradarmobile/snowfall/Randomizer;IIZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 31
    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/jetradarmobile/snowfall/Randomizer;->randomInt(IIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic randomInt$default(Lcom/jetradarmobile/snowfall/Randomizer;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jetradarmobile/snowfall/Randomizer;->randomInt(IZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final randomDouble(I)D
    .locals 4
    .param p1, "max"    # I

    .line 28
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Randomizer;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    int-to-double v2, v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public final randomGaussian()D
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Randomizer;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const/4 v2, 0x3

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 45
    .local v0, "gaussian":D
    const/4 v2, -0x1

    int-to-double v2, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v2, 0x1

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/Randomizer;->randomGaussian()D

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method public final randomInt(IIZ)I
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "gaussian"    # Z

    .line 32
    sub-int v0, p2, p1

    invoke-virtual {p0, v0, p3}, Lcom/jetradarmobile/snowfall/Randomizer;->randomInt(IZ)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public final randomInt(IZ)I
    .locals 4
    .param p1, "max"    # I
    .param p2, "gaussian"    # Z

    .line 36
    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/Randomizer;->randomGaussian()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    add-int/lit8 v2, p1, 0x1

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Randomizer;->random:Ljava/util/Random;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 36
    :goto_0
    return v0
.end method

.method public final randomSignum()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/Randomizer;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
