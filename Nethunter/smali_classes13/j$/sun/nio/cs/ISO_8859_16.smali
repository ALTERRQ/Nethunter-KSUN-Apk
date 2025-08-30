.class public Lj$/sun/nio/cs/ISO_8859_16;
.super Ljava/nio/charset/Charset;
.source "ISO_8859_16.java"

# interfaces
.implements Lj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field private static final b2c:[C

.field private static final b2cTable:Ljava/lang/String; = "\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\u009f\u00a0\u0104\u0105\u0141\u20ac\u201e\u0160\u00a7\u0161\u00a9\u0218\u00ab\u0179\u00ad\u017a\u017b\u00b0\u00b1\u010c\u0142\u017d\u201d\u00b6\u00b7\u017e\u010d\u0219\u00bb\u0152\u0153\u0178\u017c\u00c0\u00c1\u00c2\u0102\u00c4\u0106\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u0110\u0143\u00d2\u00d3\u00d4\u0150\u00d6\u015a\u0170\u00d9\u00da\u00db\u00dc\u0118\u021a\u00df\u00e0\u00e1\u00e2\u0103\u00e4\u0107\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u0111\u0144\u00f2\u00f3\u00f4\u0151\u00f6\u015b\u0171\u00f9\u00fa\u00fb\u00fc\u0119\u021b\u00ff\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

.field private static final c2b:[C

.field private static final c2bIndex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 93
    const-string v0, "\u0080\u0081\u0082\u0083\u0084\u0085\u0086\u0087\u0088\u0089\u008a\u008b\u008c\u008d\u008e\u008f\u0090\u0091\u0092\u0093\u0094\u0095\u0096\u0097\u0098\u0099\u009a\u009b\u009c\u009d\u009e\u009f\u00a0\u0104\u0105\u0141\u20ac\u201e\u0160\u00a7\u0161\u00a9\u0218\u00ab\u0179\u00ad\u017a\u017b\u00b0\u00b1\u010c\u0142\u017d\u201d\u00b6\u00b7\u017e\u010d\u0219\u00bb\u0152\u0153\u0178\u017c\u00c0\u00c1\u00c2\u0102\u00c4\u0106\u00c6\u00c7\u00c8\u00c9\u00ca\u00cb\u00cc\u00cd\u00ce\u00cf\u0110\u0143\u00d2\u00d3\u00d4\u0150\u00d6\u015a\u0170\u00d9\u00da\u00db\u00dc\u0118\u021a\u00df\u00e0\u00e1\u00e2\u0103\u00e4\u0107\u00e6\u00e7\u00e8\u00e9\u00ea\u00eb\u00ec\u00ed\u00ee\u00ef\u0111\u0144\u00f2\u00f3\u00f4\u0151\u00f6\u015b\u0171\u00f9\u00fa\u00fb\u00fc\u0119\u021b\u00ff\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lj$/sun/nio/cs/ISO_8859_16;->b2c:[C

    .line 94
    const/16 v0, 0x400

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/ISO_8859_16;->c2b:[C

    .line 95
    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/ISO_8859_16;->c2bIndex:[C

    .line 98
    sget-object v0, Lj$/sun/nio/cs/ISO_8859_16;->b2c:[C

    .line 99
    .local v0, "b2cMap":[C
    const/4 v1, 0x0

    .line 100
    .local v1, "c2bNR":[C
    sget-object v2, Lj$/sun/nio/cs/ISO_8859_16;->c2b:[C

    sget-object v3, Lj$/sun/nio/cs/ISO_8859_16;->c2bIndex:[C

    invoke-static {v0, v1, v2, v3}, Lj$/sun/nio/cs/SingleByte;->initC2B([C[C[C[C)V

    .line 101
    .end local v0    # "b2cMap":[C
    .end local v1    # "c2bNR":[C
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "ISO-8859-16"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_ISO_8859_16()[Ljava/lang/String;

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

    instance-of v0, p1, Lj$/sun/nio/cs/ISO_8859_16;

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
    const-string v0, "ISO8859_16"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 3

    .line 51
    new-instance v0, Lj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v1, Lj$/sun/nio/cs/ISO_8859_16;->b2c:[C

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lj$/sun/nio/cs/SingleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[CZ)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 4

    .line 55
    new-instance v0, Lj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v1, Lj$/sun/nio/cs/ISO_8859_16;->c2b:[C

    sget-object v2, Lj$/sun/nio/cs/ISO_8859_16;->c2bIndex:[C

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/sun/nio/cs/SingleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    return-object v0
.end method
