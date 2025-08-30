.class Lj$/sun/nio/cs/EUC_JP_Open$Encoder;
.super Lj$/sun/nio/cs/EUC_JP$Encoder;
.source "EUC_JP_Open.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/EUC_JP_Open;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# static fields
.field private static ENC0208_Solaris:Lj$/sun/nio/cs/DoubleByte$Encoder;

.field private static ENC0212_Solaris:Lj$/sun/nio/cs/DoubleByte$Encoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0208_Solaris;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0208_Solaris;-><init>()V

    .line 87
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0208_Solaris;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Encoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP_Open$Encoder;->ENC0208_Solaris:Lj$/sun/nio/cs/DoubleByte$Encoder;

    .line 89
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0212_Solaris;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0212_Solaris;-><init>()V

    .line 90
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0212_Solaris;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Encoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP_Open$Encoder;->ENC0212_Solaris:Lj$/sun/nio/cs/DoubleByte$Encoder;

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 98
    invoke-direct {p0, p1}, Lj$/sun/nio/cs/EUC_JP$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/EUC_JP_Open$Encoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/EUC_JP_Open$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method protected encodeDouble(C)I
    .locals 3
    .param p1, "ch"    # C

    .line 102
    invoke-super {p0, p1}, Lj$/sun/nio/cs/EUC_JP$Encoder;->encodeDouble(C)I

    move-result v0

    .line 103
    .local v0, "b":I
    const v1, 0xfffd

    if-eq v0, v1, :cond_0

    .line 104
    return v0

    .line 105
    :cond_0
    sget-object v2, Lj$/sun/nio/cs/EUC_JP_Open$Encoder;->ENC0208_Solaris:Lj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v2, p1}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    .line 106
    if-eq v0, v1, :cond_1

    const/16 v2, 0x7500

    if-le v0, v2, :cond_1

    .line 107
    sget-object v1, Lj$/sun/nio/cs/EUC_JP_Open$Encoder;->ENC0212_Solaris:Lj$/sun/nio/cs/DoubleByte$Encoder;

    invoke-virtual {v1, p1}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v1

    const v2, 0x8f8080

    add-int/2addr v1, v2

    return v1

    .line 109
    :cond_1
    if-ne v0, v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const v1, 0x8080

    add-int/2addr v1, v0

    :goto_0
    return v1
.end method
