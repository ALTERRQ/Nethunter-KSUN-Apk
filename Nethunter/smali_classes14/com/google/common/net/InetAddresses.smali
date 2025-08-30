.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$Scope;,
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_DELIMITER:C = '.'

.field private static final IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV6_DELIMITER:C = ':'

.field private static final IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 111
    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 112
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 113
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/net/Inet4Address;
    .locals 1

    .line 105
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    .locals 7
    .param p0, "addr"    # [B
    .param p1, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "addr",
            "scope"
        }
    .end annotation

    .line 421
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 422
    .local v0, "address":Ljava/net/InetAddress;
    if-nez p1, :cond_0

    .line 423
    return-object v0

    .line 425
    :cond_0
    instance-of v1, v0, Ljava/net/Inet6Address;

    const-string v2, "Unexpected state, scope should only appear for ipv6"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 427
    move-object v1, v0

    check-cast v1, Ljava/net/Inet6Address;

    .line 428
    .local v1, "v6Address":Ljava/net/Inet6Address;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lcom/google/common/net/InetAddresses;->tryParseDecimal(Ljava/lang/String;II)I

    move-result v2

    .line 429
    .local v2, "interfaceIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 430
    nop

    .line 431
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v4

    .line 430
    invoke-static {v3, v4, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v3

    .line 434
    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 435
    .local v4, "asInterface":Ljava/net/NetworkInterface;
    if-eqz v4, :cond_2

    .line 438
    nop

    .line 439
    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v5

    .line 438
    invoke-static {v3, v5, v4}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    move-result-object v3

    return-object v3

    .line 436
    :cond_2
    const-string v5, "No such interface: \'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v3

    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "v6Address":Ljava/net/Inet6Address;
    .end local v2    # "interfaceIndex":I
    .end local p0    # "addr":[B
    .end local p1    # "scope":Ljava/lang/String;
    throw v3
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 440
    .end local v4    # "asInterface":Ljava/net/NetworkInterface;
    .restart local v0    # "address":Ljava/net/InetAddress;
    .restart local v1    # "v6Address":Ljava/net/Inet6Address;
    .restart local v2    # "interfaceIndex":I
    .restart local p0    # "addr":[B
    .restart local p1    # "scope":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 441
    .local v3, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No such interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "addr":[B
    .end local p1    # "scope":Ljava/lang/String;
    throw v4
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 443
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "v6Address":Ljava/net/Inet6Address;
    .end local v2    # "interfaceIndex":I
    .end local v3    # "e":Ljava/io/IOException;
    .restart local p0    # "addr":[B
    .restart local p1    # "scope":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 444
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 1060
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 5
    .param p0, "hextets"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hextets"
        }
    .end annotation

    .line 507
    const/4 v0, -0x1

    .line 508
    .local v0, "bestRunStart":I
    const/4 v1, -0x1

    .line 509
    .local v1, "bestRunLength":I
    const/4 v2, -0x1

    .line 510
    .local v2, "runStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_3

    .line 511
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget v4, p0, v3

    if-nez v4, :cond_0

    .line 512
    if-gez v2, :cond_2

    .line 513
    move v2, v3

    goto :goto_1

    .line 515
    :cond_0
    if-ltz v2, :cond_2

    .line 516
    sub-int v4, v3, v2

    .line 517
    .local v4, "runLength":I
    if-le v4, v1, :cond_1

    .line 518
    move v0, v2

    .line 519
    move v1, v4

    .line 521
    :cond_1
    const/4 v2, -0x1

    .line 510
    .end local v4    # "runLength":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x2

    if-lt v1, v3, :cond_4

    .line 525
    add-int v3, v0, v1

    const/4 v4, -0x1

    invoke-static {p0, v0, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 527
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 337
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 338
    .local v0, "lastColon":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "dottedQuad":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 341
    .local v4, "quad":[B
    if-nez v4, :cond_0

    .line 342
    const/4 v2, 0x0

    return-object v2

    .line 344
    :cond_0
    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "penultimate":Ljava/lang/String;
    const/4 v5, 0x2

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1180
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1181
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1182
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v3, v0, v1

    if-nez v3, :cond_0

    .line 1183
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 1184
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1187
    :cond_0
    if-ltz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Decrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1189
    aget-byte v3, v0, v1

    sub-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 1190
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/google/common/net/InetAddresses$Scope;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/net/InetAddresses$Scope;-><init>(Lcom/google/common/net/InetAddresses$1;)V

    .line 159
    .local v0, "scope":Lcom/google/common/net/InetAddresses$Scope;
    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;Lcom/google/common/net/InetAddresses$Scope;)[B

    move-result-object v1

    .line 162
    .local v1, "addr":[B
    if-eqz v1, :cond_0

    .line 166
    invoke-static {v0}, Lcom/google/common/net/InetAddresses$Scope;->access$100(Lcom/google/common/net/InetAddresses$Scope;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2

    .line 163
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string v3, "\'%s\' is not an IP string literal."

    invoke-static {v3, v2}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "hostAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostAddr"
        }
    .end annotation

    .line 609
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->forUriStringOrNull(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v1

    .line 610
    .local v1, "addr":Ljava/net/InetAddress;
    if-eqz v1, :cond_0

    .line 614
    return-object v1

    .line 611
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const-string v2, "Not a valid URI IP literal: \'%s\'"

    invoke-static {v2, v0}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static forUriStringOrNull(Ljava/lang/String;Z)Ljava/net/InetAddress;
    .locals 6
    .param p0, "hostAddr"    # Ljava/lang/String;
    .param p1, "parseScope"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hostAddr",
            "parseScope"
        }
    .end annotation

    .line 618
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "ipString":Ljava/lang/String;
    const/16 v1, 0x10

    .local v1, "expectBytes":I
    goto :goto_0

    .line 627
    .end local v0    # "ipString":Ljava/lang/String;
    .end local v1    # "expectBytes":I
    :cond_0
    move-object v0, p0

    .line 628
    .restart local v0    # "ipString":Ljava/lang/String;
    const/4 v1, 0x4

    .line 632
    .restart local v1    # "expectBytes":I
    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-instance v3, Lcom/google/common/net/InetAddresses$Scope;

    invoke-direct {v3, v2}, Lcom/google/common/net/InetAddresses$Scope;-><init>(Lcom/google/common/net/InetAddresses$1;)V

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 633
    .local v3, "scope":Lcom/google/common/net/InetAddresses$Scope;
    :goto_1
    invoke-static {v0, v3}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;Lcom/google/common/net/InetAddresses$Scope;)[B

    move-result-object v4

    .line 634
    .local v4, "addr":[B
    if-eqz v4, :cond_4

    array-length v5, v4

    if-eq v5, v1, :cond_2

    goto :goto_2

    .line 638
    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/google/common/net/InetAddresses$Scope;->access$100(Lcom/google/common/net/InetAddresses$Scope;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-static {v4, v2}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2

    .line 635
    :cond_4
    :goto_2
    return-object v2
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "args"
        }
    .end annotation

    .line 1236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;
    .locals 11
    .param p0, "address"    # Ljava/math/BigInteger;
    .param p1, "isIpv6"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "address",
            "isIpv6"
        }
    .end annotation

    .line 1121
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "BigInteger must be greater than or equal to 0"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1123
    if-eqz p1, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    .line 1125
    .local v0, "numBytes":I
    :goto_1
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 1126
    .local v3, "addressBytes":[B
    new-array v4, v0, [B

    .line 1128
    .local v4, "targetCopyArray":[B
    array-length v5, v3

    sub-int/2addr v5, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1129
    .local v5, "srcPos":I
    array-length v6, v3

    sub-int/2addr v6, v5

    .line 1130
    .local v6, "copyLength":I
    sub-int v7, v0, v6

    .line 1133
    .local v7, "destPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v5, :cond_3

    .line 1134
    aget-byte v9, v3, v8

    if-nez v9, :cond_2

    .line 1133
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1135
    :cond_2
    nop

    .line 1138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v2

    aput-object p0, v10, v1

    .line 1135
    const-string v1, "BigInteger cannot be converted to InetAddress because it has more than %d bytes: %s"

    invoke-static {v1, v10}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 1143
    .end local v8    # "i":I
    :cond_3
    invoke-static {v3, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1146
    :try_start_0
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1147
    :catch_0
    move-exception v1

    .line 1148
    .local v1, "impossible":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static fromIPv4BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1095
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static fromIPv6BigInteger(Ljava/math/BigInteger;)Ljava/net/Inet6Address;
    .locals 1
    .param p0, "address"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1107
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->fromBigInteger(Ljava/math/BigInteger;Z)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1083
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1163
    array-length v0, p0

    new-array v0, v0, [B

    .line 1164
    .local v0, "reversed":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1165
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 1164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1167
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 734
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 736
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 8
    .param p0, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 998
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 999
    move-object v0, p0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 1003
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1004
    .local v0, "bytes":[B
    const/4 v1, 0x1

    .line 1005
    .local v1, "leadingBytesOfZero":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    .line 1006
    aget-byte v4, v0, v2

    if-eqz v4, :cond_1

    .line 1007
    const/4 v1, 0x0

    .line 1008
    goto :goto_1

    .line 1005
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1011
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 1012
    sget-object v2, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object v2

    .line 1013
    :cond_3
    if-eqz v1, :cond_4

    aget-byte v2, v0, v3

    if-nez v2, :cond_4

    .line 1014
    sget-object v2, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v2

    .line 1017
    :cond_4
    move-object v2, p0

    check-cast v2, Ljava/net/Inet6Address;

    .line 1018
    .local v2, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v3, 0x0

    .line 1019
    .local v3, "addressAsLong":J
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1020
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Inet4Address;->hashCode()I

    move-result v5

    int-to-long v3, v5

    goto :goto_2

    .line 1023
    :cond_5
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 1027
    :goto_2
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32_fixed()Lcom/google/common/hash/HashFunction;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v5

    .line 1030
    .local v5, "coercedHash":I
    const/high16 v6, -0x20000000

    or-int/2addr v5, v6

    .line 1034
    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 1035
    const/4 v5, -0x2

    .line 1038
    :cond_6
    invoke-static {v5}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    return-object v6
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 703
    nop

    .line 704
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    .line 703
    const-string v2, "Address \'%s\' is not IPv4-compatible."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 706
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 919
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 923
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 927
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 931
    :cond_2
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "\'%s\' has no embedded IPv4 address."

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 125
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Byte array has invalid length for an IPv4 address: %s != 4."

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 885
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 887
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 7
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 824
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a Teredo address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 826
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 827
    .local v0, "bytes":[B
    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 829
    .local v1, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v2}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 832
    .local v2, "flags":I
    const/16 v4, 0xa

    invoke-static {v0, v4}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v4

    not-int v4, v4

    and-int/2addr v3, v4

    .line 834
    .local v3, "port":I
    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 835
    .local v4, "clientBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 837
    aget-byte v6, v4, v5

    not-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 835
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 839
    .end local v5    # "i":I
    :cond_0
    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v5

    .line 841
    .local v5, "client":Ljava/net/Inet4Address;
    new-instance v6, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v6, v1, v5, v3, v2}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v6
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 903
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

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

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 5
    .param p0, "hextets"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hextets"
        }
    .end annotation

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 543
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 544
    .local v1, "lastWasNumber":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 545
    aget v3, p0, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 546
    .local v3, "thisIsNumber":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 547
    if-eqz v1, :cond_1

    .line 548
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    :cond_1
    aget v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 552
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    .line 553
    :cond_3
    const-string v4, "::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_4
    :goto_2
    move v1, v3

    .line 544
    .end local v3    # "thisIsNumber":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1203
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1204
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1205
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_0

    aget-byte v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1206
    aput-byte v3, v0, v1

    .line 1207
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1210
    :cond_0
    if-ltz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string v4, "Incrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1212
    aget-byte v3, v0, v1

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 1213
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private static ipStringToBytes(Ljava/lang/String;Lcom/google/common/net/InetAddresses$Scope;)[B
    .locals 9
    .param p0, "ipStringParam"    # Ljava/lang/String;
    .param p1, "scope"    # Lcom/google/common/net/InetAddresses$Scope;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ipStringParam",
            "scope"
        }
    .end annotation

    .line 195
    move-object v0, p0

    .line 197
    .local v0, "ipString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 198
    .local v1, "hasColon":Z
    const/4 v2, 0x0

    .line 199
    .local v2, "hasDot":Z
    const/4 v3, -0x1

    .line 200
    .local v3, "percentIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ge v4, v5, :cond_5

    .line 201
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 202
    .local v5, "c":C
    const/16 v8, 0x2e

    if-ne v5, v8, :cond_0

    .line 203
    const/4 v2, 0x1

    goto :goto_1

    .line 204
    :cond_0
    const/16 v8, 0x3a

    if-ne v5, v8, :cond_2

    .line 205
    if-eqz v2, :cond_1

    .line 206
    return-object v7

    .line 208
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 209
    :cond_2
    const/16 v8, 0x25

    if-ne v5, v8, :cond_3

    .line 210
    move v3, v4

    .line 211
    goto :goto_2

    .line 212
    :cond_3
    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-ne v8, v6, :cond_4

    .line 213
    return-object v7

    .line 200
    .end local v5    # "c":C
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    .end local v4    # "i":I
    :cond_5
    :goto_2
    if-eqz v1, :cond_9

    .line 219
    if-eqz v2, :cond_6

    .line 220
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    if-nez v0, :cond_6

    .line 222
    return-object v7

    .line 225
    :cond_6
    if-eq v3, v6, :cond_8

    .line 226
    if-eqz p1, :cond_7

    .line 227
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/common/net/InetAddresses$Scope;->access$102(Lcom/google/common/net/InetAddresses$Scope;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_8
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 232
    :cond_9
    if-eqz v2, :cond_b

    .line 233
    if-eq v3, v6, :cond_a

    .line 234
    return-object v7

    .line 236
    :cond_a
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    return-object v4

    .line 238
    :cond_b
    return-object v7
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 722
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 723
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 680
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 681
    return v1

    .line 684
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 685
    .local v0, "bytes":[B
    const/16 v2, 0xc

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xf

    aget-byte v4, v0, v2

    if-eqz v4, :cond_1

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2

    .line 689
    :cond_1
    return v1

    .line 692
    :cond_2
    return v3
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;Lcom/google/common/net/InetAddresses$Scope;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 861
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 862
    return v1

    .line 865
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 867
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    or-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    .line 871
    return v1

    .line 874
    :cond_1
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 957
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;Lcom/google/common/net/InetAddresses$Scope;)[B

    move-result-object v0

    .line 958
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 959
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 960
    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    .line 961
    return v1

    .line 959
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0xa

    .restart local v2    # "i":I
    :goto_1
    const/16 v3, 0xc

    if-ge v2, v3, :cond_3

    .line 965
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 966
    return v1

    .line 964
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 969
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 971
    :cond_4
    return v1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1225
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1226
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, v0, v3

    .line 1227
    .local v4, "b":B
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1228
    return v2

    .line 1226
    .end local v4    # "b":B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1231
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 809
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 810
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    if-ne v3, v2, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 658
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/net/InetAddresses;->forUriStringOrNull(Ljava/lang/String;Z)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static parseHextet(Ljava/lang/String;II)S
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ipString",
            "start",
            "end"
        }
    .end annotation

    .line 397
    sub-int v0, p2, p1

    .line 398
    .local v0, "length":I
    if-lez v0, :cond_1

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 401
    const/4 v1, 0x0

    .line 402
    .local v1, "hextet":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 403
    shl-int/lit8 v1, v1, 0x4

    .line 404
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    or-int/2addr v1, v3

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v2    # "i":I
    :cond_0
    int-to-short v2, v1

    return v2

    .line 399
    .end local v1    # "hextet":I
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static parseOctet(Ljava/lang/String;II)B
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ipString",
            "start",
            "end"
        }
    .end annotation

    .line 352
    sub-int v0, p2, p1

    .line 353
    .local v0, "length":I
    if-lez v0, :cond_5

    const/4 v1, 0x3

    if-gt v0, v1, :cond_5

    .line 358
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 361
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 362
    .local v1, "octet":I
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-ge v2, p2, :cond_3

    .line 363
    mul-int/lit8 v1, v1, 0xa

    .line 364
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 365
    .local v3, "digit":I
    if-ltz v3, :cond_2

    .line 368
    add-int/2addr v1, v3

    .line 362
    .end local v3    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 366
    .restart local v3    # "digit":I
    :cond_2
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    .line 370
    .end local v2    # "i":I
    .end local v3    # "digit":I
    :cond_3
    const/16 v2, 0xff

    if-gt v1, v2, :cond_4

    .line 373
    int-to-byte v2, v1

    return v2

    .line 371
    :cond_4
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2}, Ljava/lang/NumberFormatException;-><init>()V

    throw v2

    .line 354
    .end local v1    # "octet":I
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static scopeWithDelimiter(Ljava/net/Inet6Address;)Ljava/lang/String;
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getScopedInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 488
    .local v0, "scopedInterface":Ljava/net/NetworkInterface;
    const-string v1, "%"

    if-eqz v0, :cond_0

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 491
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v2

    .line 492
    .local v2, "scope":I
    if-eqz v2, :cond_1

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 495
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 7
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV4_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 243
    return-object v1

    .line 246
    :cond_0
    new-array v0, v2, [B

    .line 247
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 250
    .local v3, "start":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 251
    const/16 v5, 0x2e

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 252
    .local v5, "end":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 256
    :cond_1
    :try_start_0
    invoke-static {p0, v3, v5}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;II)B

    move-result v6

    aput-byte v6, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    nop

    .line 260
    add-int/lit8 v3, v5, 0x1

    .line 250
    .end local v5    # "end":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    .restart local v5    # "end":I
    :catch_0
    move-exception v2

    .line 258
    .local v2, "ex":Ljava/lang/NumberFormatException;
    return-object v1

    .line 263
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "i":I
    .end local v5    # "end":I
    :cond_2
    return-object v0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 10
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ipString"
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/google/common/net/InetAddresses;->IPV6_DELIMITER_MATCHER:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->countIn(Ljava/lang/CharSequence;)I

    move-result v0

    .line 269
    .local v0, "delimiterCount":I
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_e

    const/16 v3, 0x8

    if-le v0, v3, :cond_0

    goto/16 :goto_4

    .line 272
    :cond_0
    add-int/lit8 v4, v0, 0x1

    rsub-int/lit8 v4, v4, 0x8

    .line 273
    .local v4, "partsSkipped":I
    const/4 v5, 0x0

    .line 276
    .local v5, "hasSkip":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/16 v9, 0x3a

    if-ge v6, v7, :cond_4

    .line 277
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    .line 278
    if-eqz v5, :cond_1

    .line 279
    return-object v1

    .line 281
    :cond_1
    const/4 v5, 0x1

    .line 282
    add-int/lit8 v4, v4, 0x1

    .line 283
    if-nez v6, :cond_2

    .line 284
    add-int/lit8 v4, v4, 0x1

    .line 286
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v6, v7, :cond_3

    .line 287
    add-int/lit8 v4, v4, 0x1

    .line 276
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 291
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_5

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_5

    .line 292
    return-object v1

    .line 294
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_6

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v9, :cond_6

    .line 296
    return-object v1

    .line 298
    :cond_6
    if-eqz v5, :cond_7

    if-gtz v4, :cond_7

    .line 299
    return-object v1

    .line 301
    :cond_7
    if-nez v5, :cond_8

    add-int/lit8 v2, v0, 0x1

    if-eq v2, v3, :cond_8

    .line 302
    return-object v1

    .line 305
    :cond_8
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 310
    .local v2, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 311
    .local v3, "start":I
    :try_start_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_9

    .line 312
    const/4 v3, 0x1

    .line 314
    :cond_9
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_d

    .line 315
    invoke-virtual {p0, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 316
    .local v7, "end":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    move v7, v8

    .line 319
    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v9, :cond_c

    .line 321
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_b

    .line 322
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 321
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v8    # "i":I
    :cond_b
    goto :goto_3

    .line 326
    :cond_c
    invoke-static {p0, v3, v7}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;II)S

    move-result v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_3
    add-int/lit8 v3, v7, 0x1

    .line 329
    .end local v7    # "end":I
    goto :goto_1

    .line 332
    .end local v3    # "start":I
    :cond_d
    nop

    .line 333
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 330
    :catch_0
    move-exception v3

    .line 331
    .local v3, "ex":Ljava/lang/NumberFormatException;
    return-object v1

    .line 270
    .end local v2    # "rawBytes":Ljava/nio/ByteBuffer;
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    .end local v4    # "partsSkipped":I
    .end local v5    # "hasSkip":Z
    :cond_e
    :goto_4
    return-object v1
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6
    .param p0, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 467
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 473
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 474
    .local v0, "bytes":[B
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 475
    .local v1, "hextets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 476
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v3

    aput v3, v1, v2

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Ljava/net/Inet6Address;

    invoke-static {v3}, Lcom/google/common/net/InetAddresses;->scopeWithDelimiter(Ljava/net/Inet6Address;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toBigInteger(Ljava/net/InetAddress;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 1073
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 581
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 584
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static tryParseDecimal(Ljava/lang/String;II)I
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "start",
            "end"
        }
    .end annotation

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "decimal":I
    const v1, 0xccccccc

    .line 380
    .local v1, "max":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 381
    const/4 v3, -0x1

    if-le v0, v1, :cond_0

    .line 382
    return v3

    .line 384
    :cond_0
    mul-int/lit8 v0, v0, 0xa

    .line 385
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 386
    .local v4, "digit":I
    if-gez v4, :cond_1

    .line 387
    return v3

    .line 389
    :cond_1
    add-int/2addr v0, v4

    .line 380
    .end local v4    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_2
    return v0
.end method
