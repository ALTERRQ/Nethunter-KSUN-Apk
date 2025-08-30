.class public Lj$/sun/nio/cs/CharsetMapping;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/CharsetMapping$Entry;
    }
.end annotation


# static fields
.field private static final MAP_COMPOSITE:I = 0x7

.field private static final MAP_DOUBLEBYTE1:I = 0x2

.field private static final MAP_DOUBLEBYTE2:I = 0x3

.field private static final MAP_INDEXC2B:I = 0x8

.field private static final MAP_SINGLEBYTE:I = 0x1

.field private static final MAP_SUPPLEMENT:I = 0x5

.field private static final MAP_SUPPLEMENT_C2B:I = 0x6

.field public static final UNMAPPABLE_DECODING:C = '\ufffd'

.field public static final UNMAPPABLE_ENCODING:I = 0xfffd

.field static comparatorBytes:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lj$/sun/nio/cs/CharsetMapping$Entry;",
            ">;"
        }
    .end annotation
.end field

.field static comparatorCP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lj$/sun/nio/cs/CharsetMapping$Entry;",
            ">;"
        }
    .end annotation
.end field

.field static comparatorComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lj$/sun/nio/cs/CharsetMapping$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b1MaxDB1:I

.field b1MaxDB2:I

.field b1MinDB1:I

.field b1MinDB2:I

.field b2Max:I

.field b2Min:I

.field b2cComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

.field b2cDB1:[C

.field b2cDB2:[C

.field b2cSB:[C

.field b2cSupp:[C

.field bb:[B

.field c2b:[C

.field c2bComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

.field c2bIndex:[C

.field c2bSupp:[C

.field dbSegSize:I

.field off:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 151
    new-instance v0, Lj$/sun/nio/cs/CharsetMapping$2;

    invoke-direct {v0}, Lj$/sun/nio/cs/CharsetMapping$2;-><init>()V

    sput-object v0, Lj$/sun/nio/cs/CharsetMapping;->comparatorBytes:Ljava/util/Comparator;

    .line 161
    new-instance v0, Lj$/sun/nio/cs/CharsetMapping$3;

    invoke-direct {v0}, Lj$/sun/nio/cs/CharsetMapping$3;-><init>()V

    sput-object v0, Lj$/sun/nio/cs/CharsetMapping;->comparatorCP:Ljava/util/Comparator;

    .line 171
    new-instance v0, Lj$/sun/nio/cs/CharsetMapping$4;

    invoke-direct {v0}, Lj$/sun/nio/cs/CharsetMapping$4;-><init>()V

    sput-object v0, Lj$/sun/nio/cs/CharsetMapping;->comparatorComp:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    return-void
.end method

.method static findBytes([Lj$/sun/nio/cs/CharsetMapping$Entry;Lj$/sun/nio/cs/CharsetMapping$Entry;)I
    .locals 3
    .param p0, "a"    # [Lj$/sun/nio/cs/CharsetMapping$Entry;
    .param p1, "k"    # Lj$/sun/nio/cs/CharsetMapping$Entry;

    .line 185
    array-length v0, p0

    sget-object v1, Lj$/sun/nio/cs/CharsetMapping;->comparatorBytes:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static findCP([Lj$/sun/nio/cs/CharsetMapping$Entry;Lj$/sun/nio/cs/CharsetMapping$Entry;)I
    .locals 3
    .param p0, "a"    # [Lj$/sun/nio/cs/CharsetMapping$Entry;
    .param p1, "k"    # Lj$/sun/nio/cs/CharsetMapping$Entry;

    .line 189
    array-length v0, p0

    sget-object v1, Lj$/sun/nio/cs/CharsetMapping;->comparatorCP:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static findComp([Lj$/sun/nio/cs/CharsetMapping$Entry;Lj$/sun/nio/cs/CharsetMapping$Entry;)I
    .locals 3
    .param p0, "a"    # [Lj$/sun/nio/cs/CharsetMapping$Entry;
    .param p1, "k"    # Lj$/sun/nio/cs/CharsetMapping$Entry;

    .line 193
    array-length v0, p0

    sget-object v1, Lj$/sun/nio/cs/CharsetMapping;->comparatorComp:Ljava/util/Comparator;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static get(Ljava/io/InputStream;)Lj$/sun/nio/cs/CharsetMapping;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .line 138
    new-instance v0, Lj$/sun/nio/cs/CharsetMapping$1;

    invoke-direct {v0, p0}, Lj$/sun/nio/cs/CharsetMapping$1;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/CharsetMapping;

    return-object v0
.end method

.method private readCharArray()[C
    .locals 7

    .line 224
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 225
    .local v0, "size":I
    new-array v1, v0, [C

    .line 226
    .local v1, "cc":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 227
    iget-object v3, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v4, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v5, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static final readNBytes(Ljava/io/InputStream;[BI)Z
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "bb"    # [B
    .param p2, "N"    # I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "off":I
    :goto_0
    if-lez p2, :cond_1

    .line 211
    invoke-virtual {p0, p1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 212
    .local v1, "n":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 213
    const/4 v2, 0x0

    return v2

    .line 214
    :cond_0
    sub-int/2addr p2, v1

    .line 215
    add-int/2addr v0, v1

    .line 216
    .end local v1    # "n":I
    goto :goto_0

    .line 217
    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public decodeComposite(Lj$/sun/nio/cs/CharsetMapping$Entry;[C)[C
    .locals 3
    .param p1, "comp"    # Lj$/sun/nio/cs/CharsetMapping$Entry;
    .param p2, "cc"    # [C

    .line 95
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-static {v0, p1}, Lj$/sun/nio/cs/CharsetMapping;->findBytes([Lj$/sun/nio/cs/CharsetMapping$Entry;Lj$/sun/nio/cs/CharsetMapping$Entry;)I

    move-result v0

    .line 96
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 97
    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Lj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, p2, v2

    .line 98
    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Lj$/sun/nio/cs/CharsetMapping$Entry;->cp2:I

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, p2, v2

    .line 99
    return-object p2

    .line 101
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public decodeDouble(II)C
    .locals 2
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 67
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Min:I

    if-lt p2, v0, :cond_1

    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Max:I

    if-ge p2, v0, :cond_1

    .line 68
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Min:I

    sub-int/2addr p2, v0

    .line 69
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MinDB1:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MaxDB1:I

    if-gt p1, v0, :cond_0

    .line 70
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MinDB1:I

    sub-int/2addr p1, v0

    .line 71
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cDB1:[C

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    mul-int v1, v1, p1

    add-int/2addr v1, p2

    aget-char v0, v0, v1

    return v0

    .line 73
    :cond_0
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MinDB2:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MaxDB2:I

    if-gt p1, v0, :cond_1

    .line 74
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MinDB2:I

    sub-int/2addr p1, v0

    .line 75
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cDB2:[C

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    mul-int v1, v1, p1

    add-int/2addr v1, p2

    aget-char v0, v0, v1

    return v0

    .line 78
    :cond_1
    const v0, 0xfffd

    return v0
.end method

.method public decodeSingle(I)C
    .locals 1
    .param p1, "b"    # I

    .line 63
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cSB:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public decodeSurrogate(I[C)[C
    .locals 5
    .param p1, "db"    # I
    .param p2, "cc"    # [C

    .line 85
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cSupp:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 86
    .local v0, "end":I
    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cSupp:[C

    int-to-char v2, p1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->binarySearch([CIIC)I

    move-result v1

    .line 87
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 88
    iget-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cSupp:[C

    add-int v4, v0, v1

    aget-char v2, v2, v4

    const/high16 v4, 0x20000

    add-int/2addr v2, v4

    invoke-static {v2, p2, v3}, Ljava/lang/Character;->toChars(I[CI)I

    .line 89
    return-object p2

    .line 91
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public encodeChar(C)I
    .locals 3
    .param p1, "ch"    # C

    .line 105
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bIndex:[C

    shr-int/lit8 v1, p1, 0x8

    aget-char v0, v0, v1

    .line 106
    .local v0, "index":I
    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 107
    const v1, 0xfffd

    return v1

    .line 108
    :cond_0
    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->c2b:[C

    and-int/lit16 v2, p1, 0xff

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    return v1
.end method

.method public encodeComposite(Lj$/sun/nio/cs/CharsetMapping$Entry;)I
    .locals 2
    .param p1, "comp"    # Lj$/sun/nio/cs/CharsetMapping$Entry;

    .line 130
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-static {v0, p1}, Lj$/sun/nio/cs/CharsetMapping;->findComp([Lj$/sun/nio/cs/CharsetMapping$Entry;Lj$/sun/nio/cs/CharsetMapping$Entry;)I

    move-result v0

    .line 131
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 132
    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    aget-object v1, v1, v0

    iget v1, v1, Lj$/sun/nio/cs/CharsetMapping$Entry;->bs:I

    return v1

    .line 133
    :cond_0
    const v1, 0xfffd

    return v1
.end method

.method public encodeSurrogate(CC)I
    .locals 6
    .param p1, "hi"    # C
    .param p2, "lo"    # C

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    .line 113
    .local v0, "cp":I
    const/high16 v1, 0x20000

    const v2, 0xfffd

    if-lt v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bSupp:[C

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 116
    .local v1, "end":I
    iget-object v3, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bSupp:[C

    const/4 v4, 0x0

    int-to-char v5, v0

    invoke-static {v3, v4, v1, v5}, Ljava/util/Arrays;->binarySearch([CIIC)I

    move-result v3

    .line 117
    .local v3, "i":I
    if-ltz v3, :cond_1

    .line 118
    iget-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bSupp:[C

    add-int v4, v1, v3

    aget-char v2, v2, v4

    return v2

    .line 119
    :cond_1
    return v2

    .line 114
    .end local v1    # "end":I
    .end local v3    # "i":I
    :cond_2
    :goto_0
    return v2
.end method

.method public isCompositeBase(Lj$/sun/nio/cs/CharsetMapping$Entry;)Z
    .locals 3
    .param p1, "comp"    # Lj$/sun/nio/cs/CharsetMapping$Entry;

    .line 123
    iget v0, p1, Lj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    const/16 v1, 0x31f7

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    iget v0, p1, Lj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    const/16 v1, 0xe6

    if-lt v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-static {v0, p1}, Lj$/sun/nio/cs/CharsetMapping;->findCP([Lj$/sun/nio/cs/CharsetMapping$Entry;Lj$/sun/nio/cs/CharsetMapping$Entry;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 126
    :cond_1
    return v2
.end method

.method load(Ljava/io/InputStream;)Lj$/sun/nio/cs/CharsetMapping;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;

    .line 308
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 309
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 310
    .local v1, "len":I
    new-array v2, v1, [B

    iput-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    .line 311
    const/4 v2, 0x0

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    .line 314
    iget-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    invoke-static {p1, v2, v1}, Lj$/sun/nio/cs/CharsetMapping;->readNBytes(Ljava/io/InputStream;[BI)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Corrupted data file"

    if-eqz v2, :cond_1

    .line 316
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 318
    :goto_0
    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    if-ge v2, v1, :cond_0

    .line 319
    iget-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v4, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v4, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v5, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 320
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 343
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    goto :goto_2

    .line 322
    :pswitch_1
    invoke-virtual {p0}, Lj$/sun/nio/cs/CharsetMapping;->readINDEXC2B()V

    .line 323
    goto :goto_1

    .line 340
    :pswitch_2
    invoke-virtual {p0}, Lj$/sun/nio/cs/CharsetMapping;->readCOMPOSITE()V

    .line 341
    goto :goto_1

    .line 337
    :pswitch_3
    invoke-direct {p0}, Lj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bSupp:[C

    .line 338
    goto :goto_1

    .line 334
    :pswitch_4
    invoke-direct {p0}, Lj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cSupp:[C

    .line 335
    goto :goto_1

    .line 331
    :pswitch_5
    invoke-virtual {p0}, Lj$/sun/nio/cs/CharsetMapping;->readDOUBLEBYTE2()V

    .line 332
    goto :goto_1

    .line 328
    :pswitch_6
    invoke-virtual {p0}, Lj$/sun/nio/cs/CharsetMapping;->readDOUBLEBYTE1()V

    .line 329
    goto :goto_1

    .line 325
    :pswitch_7
    invoke-virtual {p0}, Lj$/sun/nio/cs/CharsetMapping;->readSINGLEBYTE()V

    .line 326
    nop

    .line 345
    .end local v2    # "type":I
    :goto_1
    goto :goto_0

    .line 343
    .restart local v2    # "type":I
    :goto_2
    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "in":Ljava/io/InputStream;
    throw v4

    .line 346
    .end local v2    # "type":I
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_0
    iput-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    .line 347
    return-object p0

    .line 315
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "in":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    .end local v1    # "len":I
    .restart local p1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "x":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 350
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method readCOMPOSITE()V
    .locals 6

    .line 289
    invoke-direct {p0}, Lj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v0

    .line 290
    .local v0, "map":[C
    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    .line 291
    .local v1, "mLen":I
    new-array v2, v1, [Lj$/sun/nio/cs/CharsetMapping$Entry;

    iput-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    .line 292
    new-array v2, v1, [Lj$/sun/nio/cs/CharsetMapping$Entry;

    iput-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    .line 293
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 294
    new-instance v4, Lj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-direct {v4}, Lj$/sun/nio/cs/CharsetMapping$Entry;-><init>()V

    .line 295
    .local v4, "m":Lj$/sun/nio/cs/CharsetMapping$Entry;
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .local v5, "j":I
    aget-char v3, v0, v3

    iput v3, v4, Lj$/sun/nio/cs/CharsetMapping$Entry;->bs:I

    .line 296
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "j":I
    .restart local v3    # "j":I
    aget-char v5, v0, v5

    iput v5, v4, Lj$/sun/nio/cs/CharsetMapping$Entry;->cp:I

    .line 297
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "j":I
    .restart local v5    # "j":I
    aget-char v3, v0, v3

    iput v3, v4, Lj$/sun/nio/cs/CharsetMapping$Entry;->cp2:I

    .line 298
    iget-object v3, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    aput-object v4, v3, v2

    .line 299
    iget-object v3, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    aput-object v4, v3, v2

    .line 293
    .end local v4    # "m":Lj$/sun/nio/cs/CharsetMapping$Entry;
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 301
    .end local v2    # "i":I
    .end local v5    # "j":I
    :cond_0
    iget-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    iget-object v3, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bComp:[Lj$/sun/nio/cs/CharsetMapping$Entry;

    array-length v3, v3

    sget-object v4, Lj$/sun/nio/cs/CharsetMapping;->comparatorComp:Ljava/util/Comparator;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 302
    return-void
.end method

.method readDB(III)[C
    .locals 9
    .param p1, "b1Min"    # I
    .param p2, "b2Min"    # I
    .param p3, "segSize"    # I

    .line 256
    invoke-direct {p0}, Lj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v0

    .line 257
    .local v0, "map":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 258
    aget-char v2, v0, v1

    .line 259
    .local v2, "c":C
    const v3, 0xfffd

    if-eq v2, v3, :cond_0

    .line 260
    div-int v3, v1, p3

    .line 261
    .local v3, "b1":I
    rem-int v4, v1, p3

    .line 262
    .local v4, "b2":I
    add-int v5, v3, p1

    mul-int/lit16 v5, v5, 0x100

    add-int v6, v4, p2

    add-int/2addr v5, v6

    .line 264
    .local v5, "b":I
    iget-object v6, p0, Lj$/sun/nio/cs/CharsetMapping;->c2b:[C

    iget-object v7, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bIndex:[C

    shr-int/lit8 v8, v2, 0x8

    aget-char v7, v7, v8

    and-int/lit16 v8, v2, 0xff

    add-int/2addr v7, v8

    int-to-char v8, v5

    aput-char v8, v6, v7

    .line 257
    .end local v2    # "c":C
    .end local v3    # "b1":I
    .end local v4    # "b2":I
    .end local v5    # "b":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method readDOUBLEBYTE1()V
    .locals 4

    .line 271
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MinDB1:I

    .line 272
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MaxDB1:I

    .line 273
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Min:I

    .line 274
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Max:I

    .line 275
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Max:I

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Min:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    .line 276
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MinDB1:I

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Min:I

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    invoke-virtual {p0, v0, v1, v2}, Lj$/sun/nio/cs/CharsetMapping;->readDB(III)[C

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cDB1:[C

    .line 277
    return-void
.end method

.method readDOUBLEBYTE2()V
    .locals 4

    .line 280
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MinDB2:I

    .line 281
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MaxDB2:I

    .line 282
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Min:I

    .line 283
    iget-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping;->bb:[B

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/sun/nio/cs/CharsetMapping;->off:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Max:I

    .line 284
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Max:I

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Min:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    .line 285
    iget v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b1MinDB2:I

    iget v1, p0, Lj$/sun/nio/cs/CharsetMapping;->b2Min:I

    iget v2, p0, Lj$/sun/nio/cs/CharsetMapping;->dbSegSize:I

    invoke-virtual {p0, v0, v1, v2}, Lj$/sun/nio/cs/CharsetMapping;->readDB(III)[C

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cDB2:[C

    .line 286
    return-void
.end method

.method readINDEXC2B()V
    .locals 4

    .line 244
    invoke-direct {p0}, Lj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v0

    .line 245
    .local v0, "map":[C
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 246
    iget-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->c2b:[C

    if-nez v2, :cond_0

    aget-char v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 247
    aget-char v2, v0, v1

    add-int/lit16 v2, v2, 0x100

    new-array v2, v2, [C

    iput-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->c2b:[C

    .line 248
    iget-object v2, p0, Lj$/sun/nio/cs/CharsetMapping;->c2b:[C

    const v3, 0xfffd

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 249
    goto :goto_1

    .line 245
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 252
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iput-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bIndex:[C

    .line 253
    return-void
.end method

.method readSINGLEBYTE()V
    .locals 6

    .line 233
    invoke-direct {p0}, Lj$/sun/nio/cs/CharsetMapping;->readCharArray()[C

    move-result-object v0

    .line 234
    .local v0, "map":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 235
    aget-char v2, v0, v1

    .line 236
    .local v2, "c":C
    const v3, 0xfffd

    if-eq v2, v3, :cond_0

    .line 237
    iget-object v3, p0, Lj$/sun/nio/cs/CharsetMapping;->c2b:[C

    iget-object v4, p0, Lj$/sun/nio/cs/CharsetMapping;->c2bIndex:[C

    shr-int/lit8 v5, v2, 0x8

    aget-char v4, v4, v5

    and-int/lit16 v5, v2, 0xff

    add-int/2addr v4, v5

    int-to-char v5, v1

    aput-char v5, v3, v4

    .line 234
    .end local v2    # "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    :cond_1
    iput-object v0, p0, Lj$/sun/nio/cs/CharsetMapping;->b2cSB:[C

    .line 241
    return-void
.end method
