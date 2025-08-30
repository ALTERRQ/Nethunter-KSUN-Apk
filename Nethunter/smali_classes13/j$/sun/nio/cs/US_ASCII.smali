.class public Lj$/sun/nio/cs/US_ASCII;
.super Ljava/nio/charset/Charset;
.source "US_ASCII.java"

# interfaces
.implements Lj$/sun/nio/cs/HistoricallyNamedCharset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/US_ASCII$Encoder;,
        Lj$/sun/nio/cs/US_ASCII$Decoder;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lj$/sun/nio/cs/US_ASCII;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lj$/sun/nio/cs/US_ASCII;

    invoke-direct {v0}, Lj$/sun/nio/cs/US_ASCII;-><init>()V

    sput-object v0, Lj$/sun/nio/cs/US_ASCII;->INSTANCE:Lj$/sun/nio/cs/US_ASCII;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    const-string v0, "US-ASCII"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_US_ASCII()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 50
    instance-of v0, p1, Lj$/sun/nio/cs/US_ASCII;

    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "ASCII"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .line 54
    new-instance v0, Lj$/sun/nio/cs/US_ASCII$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/sun/nio/cs/US_ASCII$Decoder;-><init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/US_ASCII$Decoder-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .line 58
    new-instance v0, Lj$/sun/nio/cs/US_ASCII$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/sun/nio/cs/US_ASCII$Encoder;-><init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/US_ASCII$Encoder-IA;)V

    return-object v0
.end method
