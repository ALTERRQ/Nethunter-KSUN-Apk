.class Lj$/sun/nio/cs/EUC_JP_Open$Decoder;
.super Lj$/sun/nio/cs/EUC_JP$Decoder;
.source "EUC_JP_Open.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/EUC_JP_Open;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# static fields
.field private static DEC0208_Solaris:Lj$/sun/nio/cs/DoubleByte$Decoder;

.field private static DEC0212_Solaris:Lj$/sun/nio/cs/DoubleByte$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0208_Solaris;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0208_Solaris;-><init>()V

    .line 67
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0208_Solaris;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0208_Solaris:Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 68
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0212_Solaris;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0212_Solaris;-><init>()V

    .line 69
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0212_Solaris;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0212_Solaris:Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 74
    sget-object v4, Lj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0201:Lj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v5, Lj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0208:Lj$/sun/nio/cs/DoubleByte$Decoder;

    sget-object v6, Lj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0212_Solaris:Lj$/sun/nio/cs/DoubleByte$Decoder;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lj$/sun/nio/cs/EUC_JP$Decoder;-><init>(Ljava/nio/charset/Charset;FFLj$/sun/nio/cs/SingleByte$Decoder;Lj$/sun/nio/cs/DoubleByte$Decoder;Lj$/sun/nio/cs/DoubleByte$Decoder;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/EUC_JP_Open$Decoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/EUC_JP_Open$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method protected decodeDouble(II)C
    .locals 4
    .param p1, "byte1"    # I
    .param p2, "byte2"    # I

    .line 78
    invoke-super {p0, p1, p2}, Lj$/sun/nio/cs/EUC_JP$Decoder;->decodeDouble(II)C

    move-result v0

    .line 79
    .local v0, "c":C
    const v1, 0xfffd

    if-ne v0, v1, :cond_0

    .line 80
    sget-object v1, Lj$/sun/nio/cs/EUC_JP_Open$Decoder;->DEC0208_Solaris:Lj$/sun/nio/cs/DoubleByte$Decoder;

    add-int/lit8 v2, p1, -0x80

    add-int/lit8 v3, p2, -0x80

    invoke-virtual {v1, v2, v3}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v1

    return v1

    .line 81
    :cond_0
    return v0
.end method
