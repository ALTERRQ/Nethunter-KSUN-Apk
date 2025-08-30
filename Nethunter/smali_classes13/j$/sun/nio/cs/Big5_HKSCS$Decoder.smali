.class Lj$/sun/nio/cs/Big5_HKSCS$Decoder;
.super Lj$/sun/nio/cs/HKSCS$Decoder;
.source "Big5_HKSCS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/Big5_HKSCS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static b2cBmp:[[C

.field private static b2cSupp:[[C

.field private static big5:Lj$/sun/nio/cs/DoubleByte$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lj$/sun/nio/cs/Big5;

    invoke-direct {v0}, Lj$/sun/nio/cs/Big5;-><init>()V

    .line 63
    invoke-virtual {v0}, Lj$/sun/nio/cs/Big5;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->big5:Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 65
    const/16 v0, 0x100

    new-array v1, v0, [[C

    sput-object v1, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cBmp:[[C

    .line 66
    new-array v0, v0, [[C

    sput-object v0, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cSupp:[[C

    .line 68
    sget-object v0, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cBmp:[[C

    sget-object v1, Lj$/sun/nio/cs/HKSCSMapping;->b2cBmpStr:[Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->initb2c([[C[Ljava/lang/String;)V

    .line 69
    sget-object v0, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cSupp:[[C

    sget-object v1, Lj$/sun/nio/cs/HKSCSMapping;->b2cSuppStr:[Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->initb2c([[C[Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 3
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 73
    sget-object v0, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->big5:Lj$/sun/nio/cs/DoubleByte$Decoder;

    sget-object v1, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cBmp:[[C

    sget-object v2, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;->b2cSupp:[[C

    invoke-direct {p0, p1, v0, v1, v2}, Lj$/sun/nio/cs/HKSCS$Decoder;-><init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/DoubleByte$Decoder;[[C[[C)V

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/Big5_HKSCS$Decoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/Big5_HKSCS$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method
