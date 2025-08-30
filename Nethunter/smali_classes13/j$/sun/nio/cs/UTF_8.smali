.class public final Lj$/sun/nio/cs/UTF_8;
.super Lj$/sun/nio/cs/Unicode;
.source "UTF_8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/UTF_8$Encoder;,
        Lj$/sun/nio/cs/UTF_8$Decoder;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lj$/sun/nio/cs/UTF_8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lj$/sun/nio/cs/UTF_8;

    invoke-direct {v0}, Lj$/sun/nio/cs/UTF_8;-><init>()V

    sput-object v0, Lj$/sun/nio/cs/UTF_8;->INSTANCE:Lj$/sun/nio/cs/UTF_8;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    const-string v0, "UTF-8"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_UTF_8()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static final updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
    .locals 1
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "dp"    # I

    .line 79
    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 80
    invoke-virtual {p2}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 81
    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/nio/charset/Charset;)Z
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lj$/sun/nio/cs/Unicode;->contains(Ljava/nio/charset/Charset;)Z

    move-result p1

    return p1
.end method

.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "UTF8"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .line 70
    new-instance v0, Lj$/sun/nio/cs/UTF_8$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/sun/nio/cs/UTF_8$Decoder;-><init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/UTF_8$Decoder-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .line 74
    new-instance v0, Lj$/sun/nio/cs/UTF_8$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/sun/nio/cs/UTF_8$Encoder;-><init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/UTF_8$Encoder-IA;)V

    return-object v0
.end method
