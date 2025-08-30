.class Lj$/sun/nio/cs/CESU_8;
.super Lj$/sun/nio/cs/Unicode;
.source "CESU_8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/CESU_8$Encoder;,
        Lj$/sun/nio/cs/CESU_8$Decoder;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smupdatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj$/sun/nio/cs/CESU_8;->updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    const-string v0, "CESU-8"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_CESU_8()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lj$/sun/nio/cs/Unicode;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private static final updatePositions(Ljava/nio/Buffer;ILjava/nio/Buffer;I)V
    .locals 1
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "sp"    # I
    .param p2, "dst"    # Ljava/nio/Buffer;
    .param p3, "dp"    # I

    .line 72
    invoke-virtual {p0}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 73
    invoke-virtual {p2}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 74
    return-void
.end method


# virtual methods
.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "CESU8"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .line 63
    new-instance v0, Lj$/sun/nio/cs/CESU_8$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/sun/nio/cs/CESU_8$Decoder;-><init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/CESU_8$Decoder-IA;)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .line 67
    new-instance v0, Lj$/sun/nio/cs/CESU_8$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lj$/sun/nio/cs/CESU_8$Encoder;-><init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/CESU_8$Encoder-IA;)V

    return-object v0
.end method
