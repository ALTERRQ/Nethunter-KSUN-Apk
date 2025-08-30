.class public Lj$/sun/nio/cs/SingleByte;
.super Ljava/lang/Object;
.source "SingleByte.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/SingleByte$Encoder;,
        Lj$/sun/nio/cs/SingleByte$Decoder;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$smwithResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/sun/nio/cs/SingleByte;->withResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initC2B([C[C[C[C)V
    .locals 8
    .param p0, "b2c"    # [C
    .param p1, "c2bNR"    # [C
    .param p2, "c2b"    # [C
    .param p3, "c2bIndex"    # [C

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    const v2, 0xfffd

    if-ge v0, v1, :cond_0

    .line 322
    aput-char v2, p3, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 324
    aput-char v2, p2, v0

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .line 326
    .local v0, "off":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_5

    .line 327
    aget-char v3, p0, v1

    .line 328
    .local v3, "c":C
    if-ne v3, v2, :cond_2

    .line 329
    goto :goto_4

    .line 330
    :cond_2
    shr-int/lit8 v4, v3, 0x8

    .line 331
    .local v4, "index":I
    aget-char v5, p3, v4

    if-ne v5, v2, :cond_3

    .line 332
    int-to-char v5, v0

    aput-char v5, p3, v4

    .line 333
    add-int/lit16 v0, v0, 0x100

    .line 335
    :cond_3
    aget-char v5, p3, v4

    and-int/lit16 v6, v3, 0xff

    add-int/2addr v5, v6

    .line 336
    .end local v4    # "index":I
    .local v5, "index":I
    const/16 v4, 0x80

    if-lt v1, v4, :cond_4

    add-int/lit8 v4, v1, -0x80

    goto :goto_3

    :cond_4
    add-int/lit16 v4, v1, 0x80

    :goto_3
    int-to-char v4, v4

    aput-char v4, p2, v5

    .line 326
    .end local v3    # "c":C
    .end local v5    # "index":I
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    .end local v1    # "i":I
    :cond_5
    if-eqz p1, :cond_7

    .line 340
    const/4 v1, 0x0

    .line 341
    .restart local v1    # "i":I
    :goto_5
    array-length v3, p1

    if-ge v1, v3, :cond_7

    .line 342
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-char v1, p1, v1

    .line 343
    .local v1, "b":C
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-char v3, p1, v3

    .line 344
    .local v3, "c":C
    shr-int/lit8 v5, v3, 0x8

    .line 345
    .restart local v5    # "index":I
    aget-char v6, p3, v5

    if-ne v6, v2, :cond_6

    .line 346
    int-to-char v6, v0

    aput-char v6, p3, v5

    .line 347
    add-int/lit16 v0, v0, 0x100

    .line 349
    :cond_6
    aget-char v6, p3, v5

    and-int/lit16 v7, v3, 0xff

    add-int/2addr v6, v7

    .line 350
    .end local v5    # "index":I
    .local v6, "index":I
    aput-char v1, p2, v6

    .line 351
    .end local v1    # "b":C
    .end local v3    # "c":C
    .end local v6    # "index":I
    move v1, v4

    goto :goto_5

    .line 353
    .end local v4    # "i":I
    :cond_7
    return-void
.end method

.method private static final withResult(Ljava/nio/charset/CoderResult;Ljava/nio/Buffer;ILjava/nio/Buffer;I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p0, "cr"    # Ljava/nio/charset/CoderResult;
    .param p1, "src"    # Ljava/nio/Buffer;
    .param p2, "sp"    # I
    .param p3, "dst"    # Ljava/nio/Buffer;
    .param p4, "dp"    # I

    .line 44
    invoke-virtual {p1}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 45
    invoke-virtual {p3}, Ljava/nio/Buffer;->arrayOffset()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p3, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 46
    return-object p0
.end method
