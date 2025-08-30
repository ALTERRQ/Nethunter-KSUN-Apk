.class public Lj$/sun/nio/cs/IBM775;
.super Ljava/nio/charset/Charset;
.source "IBM775.java"

# interfaces
.implements Lj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field private static final b2c:[C

.field private static final b2cTable:Ljava/lang/String; = "\u0106\u00fc\u00e9\u0101\u00e4\u0123\u00e5\u0107\u0142\u0113\u0156\u0157\u012b\u0179\u00c4\u00c5\u00c9\u00e6\u00c6\u014d\u00f6\u0122\u00a2\u015a\u015b\u00d6\u00dc\u00f8\u00a3\u00d8\u00d7\u00a4\u0100\u012a\u00f3\u017b\u017c\u017a\u201d\u00a6\u00a9\u00ae\u00ac\u00bd\u00bc\u0141\u00ab\u00bb\u2591\u2592\u2593\u2502\u2524\u0104\u010c\u0118\u0116\u2563\u2551\u2557\u255d\u012e\u0160\u2510\u2514\u2534\u252c\u251c\u2500\u253c\u0172\u016a\u255a\u2554\u2569\u2566\u2560\u2550\u256c\u017d\u0105\u010d\u0119\u0117\u012f\u0161\u0173\u016b\u017e\u2518\u250c\u2588\u2584\u258c\u2590\u2580\u00d3\u00df\u014c\u0143\u00f5\u00d5\u00b5\u0144\u0136\u0137\u013b\u013c\u0146\u0112\u0145\u2019\u00ad\u00b1\u201c\u00be\u00b6\u00a7\u00f7\u201e\u00b0\u2219\u00b7\u00b9\u00b3\u00b2\u25a0\u00a0\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

.field private static final c2b:[C

.field private static final c2bIndex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 93
    const-string v0, "\u0106\u00fc\u00e9\u0101\u00e4\u0123\u00e5\u0107\u0142\u0113\u0156\u0157\u012b\u0179\u00c4\u00c5\u00c9\u00e6\u00c6\u014d\u00f6\u0122\u00a2\u015a\u015b\u00d6\u00dc\u00f8\u00a3\u00d8\u00d7\u00a4\u0100\u012a\u00f3\u017b\u017c\u017a\u201d\u00a6\u00a9\u00ae\u00ac\u00bd\u00bc\u0141\u00ab\u00bb\u2591\u2592\u2593\u2502\u2524\u0104\u010c\u0118\u0116\u2563\u2551\u2557\u255d\u012e\u0160\u2510\u2514\u2534\u252c\u251c\u2500\u253c\u0172\u016a\u255a\u2554\u2569\u2566\u2560\u2550\u256c\u017d\u0105\u010d\u0119\u0117\u012f\u0161\u0173\u016b\u017e\u2518\u250c\u2588\u2584\u258c\u2590\u2580\u00d3\u00df\u014c\u0143\u00f5\u00d5\u00b5\u0144\u0136\u0137\u013b\u013c\u0146\u0112\u0145\u2019\u00ad\u00b1\u201c\u00be\u00b6\u00a7\u00f7\u201e\u00b0\u2219\u00b7\u00b9\u00b3\u00b2\u25a0\u00a0\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lj$/sun/nio/cs/IBM775;->b2c:[C

    .line 94
    const/16 v0, 0x500

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/IBM775;->c2b:[C

    .line 95
    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/IBM775;->c2bIndex:[C

    .line 98
    sget-object v0, Lj$/sun/nio/cs/IBM775;->b2c:[C

    .line 99
    .local v0, "b2cMap":[C
    const/4 v1, 0x0

    .line 100
    .local v1, "c2bNR":[C
    sget-object v2, Lj$/sun/nio/cs/IBM775;->c2b:[C

    sget-object v3, Lj$/sun/nio/cs/IBM775;->c2bIndex:[C

    invoke-static {v0, v1, v2, v3}, Lj$/sun/nio/cs/SingleByte;->initC2B([C[C[C[C)V

    .line 101
    .end local v0    # "b2cMap":[C
    .end local v1    # "c2bNR":[C
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "IBM775"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_IBM775()[Ljava/lang/String;

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
    instance-of v0, p1, Lj$/sun/nio/cs/IBM775;

    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "Cp775"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 3

    .line 51
    new-instance v0, Lj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v1, Lj$/sun/nio/cs/IBM775;->b2c:[C

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lj$/sun/nio/cs/SingleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[CZ)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 4

    .line 55
    new-instance v0, Lj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v1, Lj$/sun/nio/cs/IBM775;->c2b:[C

    sget-object v2, Lj$/sun/nio/cs/IBM775;->c2bIndex:[C

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/sun/nio/cs/SingleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    return-object v0
.end method
