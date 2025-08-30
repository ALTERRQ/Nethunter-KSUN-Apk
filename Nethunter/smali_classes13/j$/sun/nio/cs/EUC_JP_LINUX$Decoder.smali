.class Lj$/sun/nio/cs/EUC_JP_LINUX$Decoder;
.super Lj$/sun/nio/cs/EUC_JP$Decoder;
.source "EUC_JP_LINUX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/EUC_JP_LINUX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 65
    sget-object v4, Lj$/sun/nio/cs/EUC_JP_LINUX$Decoder;->DEC0201:Lj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v5, Lj$/sun/nio/cs/EUC_JP_LINUX$Decoder;->DEC0208:Lj$/sun/nio/cs/DoubleByte$Decoder;

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lj$/sun/nio/cs/EUC_JP$Decoder;-><init>(Ljava/nio/charset/Charset;FFLj$/sun/nio/cs/SingleByte$Decoder;Lj$/sun/nio/cs/DoubleByte$Decoder;Lj$/sun/nio/cs/DoubleByte$Decoder;)V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/EUC_JP_LINUX$Decoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/EUC_JP_LINUX$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method
