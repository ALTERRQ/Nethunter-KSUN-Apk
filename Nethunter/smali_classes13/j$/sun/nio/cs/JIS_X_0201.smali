.class public Lj$/sun/nio/cs/JIS_X_0201;
.super Ljava/nio/charset/Charset;
.source "JIS_X_0201.java"

# interfaces
.implements Lj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field private static final b2c:[C

.field private static final b2cTable:Ljava/lang/String; = "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\uff61\uff62\uff63\uff64\uff65\uff66\uff67\uff68\uff69\uff6a\uff6b\uff6c\uff6d\uff6e\uff6f\uff70\uff71\uff72\uff73\uff74\uff75\uff76\uff77\uff78\uff79\uff7a\uff7b\uff7c\uff7d\uff7e\uff7f\uff80\uff81\uff82\uff83\uff84\uff85\uff86\uff87\uff88\uff89\uff8a\uff8b\uff8c\uff8d\uff8e\uff8f\uff90\uff91\uff92\uff93\uff94\uff95\uff96\uff97\uff98\uff99\uff9a\uff9b\uff9c\uff9d\uff9e\uff9f\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

.field private static final c2b:[C

.field private static final c2bIndex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 93
    const-string v0, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\uff61\uff62\uff63\uff64\uff65\uff66\uff67\uff68\uff69\uff6a\uff6b\uff6c\uff6d\uff6e\uff6f\uff70\uff71\uff72\uff73\uff74\uff75\uff76\uff77\uff78\uff79\uff7a\uff7b\uff7c\uff7d\uff7e\uff7f\uff80\uff81\uff82\uff83\uff84\uff85\uff86\uff87\uff88\uff89\uff8a\uff8b\uff8c\uff8d\uff8e\uff8f\uff90\uff91\uff92\uff93\uff94\uff95\uff96\uff97\uff98\uff99\uff9a\uff9b\uff9c\uff9d\uff9e\uff9f\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lj$/sun/nio/cs/JIS_X_0201;->b2c:[C

    .line 94
    const/16 v0, 0x300

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/JIS_X_0201;->c2b:[C

    .line 95
    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/JIS_X_0201;->c2bIndex:[C

    .line 98
    sget-object v0, Lj$/sun/nio/cs/JIS_X_0201;->b2c:[C

    .line 99
    .local v0, "b2cMap":[C
    const/4 v1, 0x0

    .line 101
    .local v1, "c2bNR":[C
    const/4 v2, 0x4

    new-array v1, v2, [C

    .line 102
    const/4 v2, 0x0

    const/16 v3, 0x7e

    aput-char v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x203e

    aput-char v3, v1, v2

    .line 103
    const/4 v2, 0x2

    const/16 v3, 0x5c

    aput-char v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0xa5

    aput-char v3, v1, v2

    .line 105
    sget-object v2, Lj$/sun/nio/cs/JIS_X_0201;->c2b:[C

    sget-object v3, Lj$/sun/nio/cs/JIS_X_0201;->c2bIndex:[C

    invoke-static {v0, v1, v2, v3}, Lj$/sun/nio/cs/SingleByte;->initC2B([C[C[C[C)V

    .line 106
    .end local v0    # "b2cMap":[C
    .end local v1    # "c2bNR":[C
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "JIS_X0201"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_JIS_X_0201()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 47
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lj$/sun/nio/cs/JIS_X_0201;

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

    .line 43
    const-string v0, "JIS_X0201"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 3

    .line 51
    new-instance v0, Lj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v1, Lj$/sun/nio/cs/JIS_X_0201;->b2c:[C

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lj$/sun/nio/cs/SingleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[CZ)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 4

    .line 55
    new-instance v0, Lj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v1, Lj$/sun/nio/cs/JIS_X_0201;->c2b:[C

    sget-object v2, Lj$/sun/nio/cs/JIS_X_0201;->c2bIndex:[C

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/sun/nio/cs/SingleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    return-object v0
.end method
