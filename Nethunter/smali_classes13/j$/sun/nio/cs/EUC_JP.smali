.class public Lj$/sun/nio/cs/EUC_JP;
.super Ljava/nio/charset/Charset;
.source "EUC_JP.java"

# interfaces
.implements Lj$/sun/nio/cs/HistoricallyNamedCharset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/EUC_JP$Encoder;,
        Lj$/sun/nio/cs/EUC_JP$Decoder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    const-string v0, "EUC-JP"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_EUC_JP()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 55
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lj$/sun/nio/cs/JIS_X_0201;

    if-nez v0, :cond_1

    instance-of v0, p1, Lj$/sun/nio/cs/JIS_X_0208;

    if-nez v0, :cond_1

    instance-of v0, p1, Lj$/sun/nio/cs/JIS_X_0212;

    if-nez v0, :cond_1

    instance-of v0, p1, Lj$/sun/nio/cs/EUC_JP;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "EUC_JP"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .line 63
    new-instance v0, Lj$/sun/nio/cs/EUC_JP$Decoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/EUC_JP$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 67
    new-instance v0, Lj$/sun/nio/cs/EUC_JP$Encoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/EUC_JP$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
