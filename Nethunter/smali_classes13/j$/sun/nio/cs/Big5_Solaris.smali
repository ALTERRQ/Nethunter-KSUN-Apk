.class public Lj$/sun/nio/cs/Big5_Solaris;
.super Ljava/nio/charset/Charset;
.source "Big5_Solaris.java"

# interfaces
.implements Lj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field static b2c:[[C

.field private static volatile b2cInitialized:Z

.field static b2cSB:[C

.field static c2b:[C

.field static c2bIndex:[C

.field private static volatile c2bInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lj$/sun/nio/cs/Big5_Solaris;->b2cInitialized:Z

    .line 98
    sput-boolean v0, Lj$/sun/nio/cs/Big5_Solaris;->c2bInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "x-Big5-Solaris"

    invoke-static {}, Lj$/sun/nio/cs/StandardCharsets;->aliases_Big5_Solaris()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method static initb2c()V
    .locals 8

    .line 67
    sget-boolean v0, Lj$/sun/nio/cs/Big5_Solaris;->b2cInitialized:Z

    if-eqz v0, :cond_0

    .line 68
    return-void

    .line 69
    :cond_0
    const-class v0, Lj$/sun/nio/cs/Big5_Solaris;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-boolean v1, Lj$/sun/nio/cs/Big5_Solaris;->b2cInitialized:Z

    if-eqz v1, :cond_1

    .line 71
    monitor-exit v0

    return-void

    .line 72
    :cond_1
    invoke-static {}, Lj$/sun/nio/cs/Big5;->initb2c()V

    .line 73
    sget-object v1, Lj$/sun/nio/cs/Big5;->b2c:[[C

    invoke-virtual {v1}, [[C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    sput-object v1, Lj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    .line 75
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 83
    .local v1, "sol":[I
    sget-object v2, Lj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    const/16 v3, 0xf9

    aget-object v2, v2, v3

    sget-object v4, Lj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    const/16 v5, 0xbf

    if-ne v2, v4, :cond_2

    .line 84
    sget-object v2, Lj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    new-array v4, v5, [C

    aput-object v4, v2, v3

    .line 85
    sget-object v2, Lj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    aget-object v2, v2, v3

    const v4, 0xfffd

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 88
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 89
    sget-object v4, Lj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    aget-object v4, v4, v3

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aget v2, v1, v2

    and-int/2addr v2, v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aget v6, v1, v6

    int-to-char v6, v6

    aput-char v6, v4, v2

    move v2, v7

    goto :goto_0

    .line 91
    .end local v7    # "i":I
    :cond_3
    sget-object v2, Lj$/sun/nio/cs/Big5;->b2cSB:[C

    sput-object v2, Lj$/sun/nio/cs/Big5_Solaris;->b2cSB:[C

    .line 92
    const/4 v2, 0x1

    sput-boolean v2, Lj$/sun/nio/cs/Big5_Solaris;->b2cInitialized:Z

    .line 93
    .end local v1    # "sol":[I
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :array_0
    .array-data 4
        0xf9d6
        0x7881
        0xf9d7
        0x92b9
        0xf9d8
        0x88cf
        0xf9d9
        0x58bb
        0xf9da
        0x6052
        0xf9db
        0x7ca7
        0xf9dc
        0x5afa
    .end array-data
.end method

.method static initc2b()V
    .locals 7

    .line 101
    sget-boolean v0, Lj$/sun/nio/cs/Big5_Solaris;->c2bInitialized:Z

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 103
    :cond_0
    const-class v0, Lj$/sun/nio/cs/Big5_Solaris;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-boolean v1, Lj$/sun/nio/cs/Big5_Solaris;->c2bInitialized:Z

    if-eqz v1, :cond_1

    .line 105
    monitor-exit v0

    return-void

    .line 106
    :cond_1
    invoke-static {}, Lj$/sun/nio/cs/Big5;->initc2b()V

    .line 107
    sget-object v1, Lj$/sun/nio/cs/Big5;->c2b:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    sput-object v1, Lj$/sun/nio/cs/Big5_Solaris;->c2b:[C

    .line 108
    sget-object v1, Lj$/sun/nio/cs/Big5;->c2bIndex:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    sput-object v1, Lj$/sun/nio/cs/Big5_Solaris;->c2bIndex:[C

    .line 109
    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 118
    .local v1, "sol":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 119
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aget v2, v1, v2

    .line 122
    .local v2, "c":I
    sget-object v4, Lj$/sun/nio/cs/Big5_Solaris;->c2b:[C

    sget-object v5, Lj$/sun/nio/cs/Big5_Solaris;->c2bIndex:[C

    shr-int/lit8 v6, v2, 0x8

    aget-char v5, v5, v6

    and-int/lit16 v6, v2, 0xff

    add-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget v3, v1, v3

    int-to-char v3, v3

    aput-char v3, v4, v5

    .line 123
    .end local v2    # "c":I
    move v2, v6

    goto :goto_0

    .line 124
    .end local v6    # "i":I
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lj$/sun/nio/cs/Big5_Solaris;->c2bInitialized:Z

    .line 125
    .end local v1    # "sol":[I
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :array_0
    .array-data 4
        0x7881
        0xf9d6
        0x92b9
        0xf9d7
        0x88cf
        0xf9d8
        0x58bb
        0xf9d9
        0x6052
        0xf9da
        0x7ca7
        0xf9db
        0x5afa
        0xf9dc
    .end array-data
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

    instance-of v0, p1, Lj$/sun/nio/cs/Big5;

    if-nez v0, :cond_1

    instance-of v0, p1, Lj$/sun/nio/cs/Big5_Solaris;

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
    const-string v0, "Big5_Solaris"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 8

    .line 53
    invoke-static {}, Lj$/sun/nio/cs/Big5_Solaris;->initb2c()V

    .line 54
    new-instance v7, Lj$/sun/nio/cs/DoubleByte$Decoder;

    sget-object v2, Lj$/sun/nio/cs/Big5_Solaris;->b2c:[[C

    sget-object v3, Lj$/sun/nio/cs/Big5_Solaris;->b2cSB:[C

    const/16 v5, 0xfe

    const/4 v6, 0x1

    const/16 v4, 0x40

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[[C[CIIZ)V

    return-object v7
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 4

    .line 58
    invoke-static {}, Lj$/sun/nio/cs/Big5_Solaris;->initc2b()V

    .line 59
    new-instance v0, Lj$/sun/nio/cs/DoubleByte$Encoder;

    sget-object v1, Lj$/sun/nio/cs/Big5_Solaris;->c2b:[C

    sget-object v2, Lj$/sun/nio/cs/Big5_Solaris;->c2bIndex:[C

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    return-object v0
.end method
