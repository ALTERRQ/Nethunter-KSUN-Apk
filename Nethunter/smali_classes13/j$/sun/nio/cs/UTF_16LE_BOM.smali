.class Lj$/sun/nio/cs/UTF_16LE_BOM;
.super Lj$/sun/nio/cs/Unicode;
.source "UTF_16LE_BOM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/UTF_16LE_BOM$Encoder;,
        Lj$/sun/nio/cs/UTF_16LE_BOM$Decoder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    const-string v0, "x-UTF-16LE-BOM"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_UTF_16LE_BOM()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "UnicodeLittle"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .line 44
    new-instance v0, Lj$/sun/nio/cs/UTF_16LE_BOM$Decoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/UTF_16LE_BOM$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 48
    new-instance v0, Lj$/sun/nio/cs/UTF_16LE_BOM$Encoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/UTF_16LE_BOM$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
