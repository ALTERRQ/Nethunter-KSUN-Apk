.class public Lj$/sun/nio/cs/UTF_32;
.super Lj$/sun/nio/cs/Unicode;
.source "UTF_32.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    const-string v0, "UTF-32"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_UTF_32()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/nio/charset/Charset;)Z
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lj$/sun/nio/cs/Unicode;->contains(Ljava/nio/charset/Charset;)Z

    move-result p1

    return p1
.end method

.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "UTF-32"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .line 42
    new-instance v0, Lj$/sun/nio/cs/UTF_32Coder$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/sun/nio/cs/UTF_32Coder$Decoder;-><init>(Ljava/nio/charset/Charset;I)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 3

    .line 46
    new-instance v0, Lj$/sun/nio/cs/UTF_32Coder$Encoder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/sun/nio/cs/UTF_32Coder$Encoder;-><init>(Ljava/nio/charset/Charset;IZ)V

    return-object v0
.end method
