.class public Lj$/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/Base64$DecInputStream;,
        Lj$/util/Base64$EncOutputStream;,
        Lj$/util/Base64$Decoder;,
        Lj$/util/Base64$Encoder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoder()Lj$/util/Base64$Decoder;
    .locals 1

    .line 157
    sget-object v0, Lj$/util/Base64$Decoder;->RFC4648:Lj$/util/Base64$Decoder;

    return-object v0
.end method

.method public static getEncoder()Lj$/util/Base64$Encoder;
    .locals 1

    .line 92
    sget-object v0, Lj$/util/Base64$Encoder;->RFC4648:Lj$/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeDecoder()Lj$/util/Base64$Decoder;
    .locals 1

    .line 178
    sget-object v0, Lj$/util/Base64$Decoder;->RFC2045:Lj$/util/Base64$Decoder;

    return-object v0
.end method

.method public static getMimeEncoder()Lj$/util/Base64$Encoder;
    .locals 1

    .line 113
    sget-object v0, Lj$/util/Base64$Encoder;->RFC2045:Lj$/util/Base64$Encoder;

    return-object v0
.end method

.method public static getMimeEncoder(I[B)Lj$/util/Base64$Encoder;
    .locals 10
    .param p0, "lineLength"    # I
    .param p1, "lineSeparator"    # [B

    .line 135
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lj$/util/Base64$Decoder;->-$$Nest$sfgetfromBase64()[I

    move-result-object v0

    .line 137
    .local v0, "base64":[I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 138
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xff

    aget v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 137
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .restart local v3    # "b":B
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 140
    const/16 v2, 0x10

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal base64 line separator character 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    .end local v3    # "b":B
    :cond_1
    and-int/lit8 p0, p0, -0x4

    .line 144
    if-gtz p0, :cond_2

    .line 145
    sget-object v1, Lj$/util/Base64$Encoder;->RFC4648:Lj$/util/Base64$Encoder;

    return-object v1

    .line 147
    :cond_2
    new-instance v1, Lj$/util/Base64$Encoder;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, v1

    move-object v6, p1

    move v7, p0

    invoke-direct/range {v4 .. v9}, Lj$/util/Base64$Encoder;-><init>(Z[BIZLj$/util/Base64$Encoder-IA;)V

    return-object v1
.end method

.method public static getUrlDecoder()Lj$/util/Base64$Decoder;
    .locals 1

    .line 168
    sget-object v0, Lj$/util/Base64$Decoder;->RFC4648_URLSAFE:Lj$/util/Base64$Decoder;

    return-object v0
.end method

.method public static getUrlEncoder()Lj$/util/Base64$Encoder;
    .locals 1

    .line 103
    sget-object v0, Lj$/util/Base64$Encoder;->RFC4648_URLSAFE:Lj$/util/Base64$Encoder;

    return-object v0
.end method
