.class Lj$/sun/nio/cs/EUC_JP_LINUX$Encoder;
.super Lj$/sun/nio/cs/EUC_JP$Encoder;
.source "EUC_JP_LINUX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/EUC_JP_LINUX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 71
    sget-object v4, Lj$/sun/nio/cs/EUC_JP_LINUX$Encoder;->ENC0201:Lj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v5, Lj$/sun/nio/cs/EUC_JP_LINUX$Encoder;->ENC0208:Lj$/sun/nio/cs/DoubleByte$Encoder;

    const/4 v6, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lj$/sun/nio/cs/EUC_JP$Encoder;-><init>(Ljava/nio/charset/Charset;FFLj$/sun/nio/cs/SingleByte$Encoder;Lj$/sun/nio/cs/DoubleByte$Encoder;Lj$/sun/nio/cs/DoubleByte$Encoder;)V

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/EUC_JP_LINUX$Encoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/EUC_JP_LINUX$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method
