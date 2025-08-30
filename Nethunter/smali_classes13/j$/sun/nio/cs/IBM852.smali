.class public Lj$/sun/nio/cs/IBM852;
.super Ljava/nio/charset/Charset;
.source "IBM852.java"

# interfaces
.implements Lj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field private static final b2c:[C

.field private static final b2cTable:Ljava/lang/String; = "\u00c7\u00fc\u00e9\u00e2\u00e4\u016f\u0107\u00e7\u0142\u00eb\u0150\u0151\u00ee\u0179\u00c4\u0106\u00c9\u0139\u013a\u00f4\u00f6\u013d\u013e\u015a\u015b\u00d6\u00dc\u0164\u0165\u0141\u00d7\u010d\u00e1\u00ed\u00f3\u00fa\u0104\u0105\u017d\u017e\u0118\u0119\u00ac\u017a\u010c\u015f\u00ab\u00bb\u2591\u2592\u2593\u2502\u2524\u00c1\u00c2\u011a\u015e\u2563\u2551\u2557\u255d\u017b\u017c\u2510\u2514\u2534\u252c\u251c\u2500\u253c\u0102\u0103\u255a\u2554\u2569\u2566\u2560\u2550\u256c\u00a4\u0111\u0110\u010e\u00cb\u010f\u0147\u00cd\u00ce\u011b\u2518\u250c\u2588\u2584\u0162\u016e\u2580\u00d3\u00df\u00d4\u0143\u0144\u0148\u0160\u0161\u0154\u00da\u0155\u0170\u00fd\u00dd\u0163\u00b4\u00ad\u02dd\u02db\u02c7\u02d8\u00a7\u00f7\u00b8\u00b0\u00a8\u02d9\u0171\u0158\u0159\u25a0\u00a0\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

.field private static final c2b:[C

.field private static final c2bIndex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 93
    const-string v0, "\u00c7\u00fc\u00e9\u00e2\u00e4\u016f\u0107\u00e7\u0142\u00eb\u0150\u0151\u00ee\u0179\u00c4\u0106\u00c9\u0139\u013a\u00f4\u00f6\u013d\u013e\u015a\u015b\u00d6\u00dc\u0164\u0165\u0141\u00d7\u010d\u00e1\u00ed\u00f3\u00fa\u0104\u0105\u017d\u017e\u0118\u0119\u00ac\u017a\u010c\u015f\u00ab\u00bb\u2591\u2592\u2593\u2502\u2524\u00c1\u00c2\u011a\u015e\u2563\u2551\u2557\u255d\u017b\u017c\u2510\u2514\u2534\u252c\u251c\u2500\u253c\u0102\u0103\u255a\u2554\u2569\u2566\u2560\u2550\u256c\u00a4\u0111\u0110\u010e\u00cb\u010f\u0147\u00cd\u00ce\u011b\u2518\u250c\u2588\u2584\u0162\u016e\u2580\u00d3\u00df\u00d4\u0143\u0144\u0148\u0160\u0161\u0154\u00da\u0155\u0170\u00fd\u00dd\u0163\u00b4\u00ad\u02dd\u02db\u02c7\u02d8\u00a7\u00f7\u00b8\u00b0\u00a8\u02d9\u0171\u0158\u0159\u25a0\u00a0\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lj$/sun/nio/cs/IBM852;->b2c:[C

    .line 94
    const/16 v0, 0x400

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/IBM852;->c2b:[C

    .line 95
    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/IBM852;->c2bIndex:[C

    .line 98
    sget-object v0, Lj$/sun/nio/cs/IBM852;->b2c:[C

    .line 99
    .local v0, "b2cMap":[C
    const/4 v1, 0x0

    .line 100
    .local v1, "c2bNR":[C
    sget-object v2, Lj$/sun/nio/cs/IBM852;->c2b:[C

    sget-object v3, Lj$/sun/nio/cs/IBM852;->c2bIndex:[C

    invoke-static {v0, v1, v2, v3}, Lj$/sun/nio/cs/SingleByte;->initC2B([C[C[C[C)V

    .line 101
    .end local v0    # "b2cMap":[C
    .end local v1    # "c2bNR":[C
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "IBM852"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_IBM852()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 47
    instance-of v0, p1, Lj$/sun/nio/cs/IBM852;

    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "Cp852"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 3

    .line 51
    new-instance v0, Lj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v1, Lj$/sun/nio/cs/IBM852;->b2c:[C

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/sun/nio/cs/SingleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[CZ)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 4

    .line 55
    new-instance v0, Lj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v1, Lj$/sun/nio/cs/IBM852;->c2b:[C

    sget-object v2, Lj$/sun/nio/cs/IBM852;->c2bIndex:[C

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/sun/nio/cs/SingleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    return-object v0
.end method
