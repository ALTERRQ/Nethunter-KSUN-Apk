.class public Lj$/sun/nio/cs/EUC_TW;
.super Ljava/nio/charset/Charset;
.source "EUC_TW.java"

# interfaces
.implements Lj$/sun/nio/cs/HistoricallyNamedCharset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/EUC_TW$Encoder;,
        Lj$/sun/nio/cs/EUC_TW$Decoder;
    }
.end annotation


# static fields
.field private static final SS2:I = 0x8e


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 82
    const-string v0, "x-EUC-TW"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_EUC_TW()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 90
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lj$/sun/nio/cs/EUC_TW;

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

    .line 86
    const-string v0, "EUC_TW"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 1

    .line 95
    new-instance v0, Lj$/sun/nio/cs/EUC_TW$Decoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/EUC_TW$Decoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 99
    new-instance v0, Lj$/sun/nio/cs/EUC_TW$Encoder;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/EUC_TW$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method
