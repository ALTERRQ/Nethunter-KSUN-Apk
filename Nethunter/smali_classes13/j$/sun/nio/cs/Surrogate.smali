.class public Lj$/sun/nio/cs/Surrogate;
.super Ljava/lang/Object;
.source "Surrogate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/Surrogate$Generator;,
        Lj$/sun/nio/cs/Surrogate$Parser;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MAX:C = '\udfff'

.field public static final MAX_HIGH:C = '\udbff'

.field public static final MAX_LOW:C = '\udfff'

.field public static final MIN:C = '\ud800'

.field public static final MIN_HIGH:C = '\ud800'

.field public static final MIN_LOW:C = '\udc00'

.field public static final UCS4_MAX:I = 0x10ffff

.field public static final UCS4_MIN:I = 0x10000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static high(I)C
    .locals 1
    .param p0, "uc"    # I

    .line 92
    nop

    .line 93
    invoke-static {p0}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    return v0
.end method

.method public static is(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 75
    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHigh(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 59
    const v0, 0xd800

    if-gt v0, p0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLow(I)Z
    .locals 1
    .param p0, "c"    # I

    .line 67
    const v0, 0xdc00

    if-gt v0, p0, :cond_0

    const v0, 0xdfff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static low(I)C
    .locals 1
    .param p0, "uc"    # I

    .line 101
    nop

    .line 102
    invoke-static {p0}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v0

    return v0
.end method

.method public static neededFor(I)Z
    .locals 1
    .param p0, "uc"    # I

    .line 84
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    return v0
.end method

.method public static toUCS4(CC)I
    .locals 1
    .param p0, "c"    # C
    .param p1, "d"    # C

    .line 110
    nop

    .line 111
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    return v0
.end method
