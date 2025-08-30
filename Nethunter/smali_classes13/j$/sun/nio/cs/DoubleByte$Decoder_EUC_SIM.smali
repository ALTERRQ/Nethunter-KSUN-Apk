.class public Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;
.super Lj$/sun/nio/cs/DoubleByte$Decoder;
.source "DoubleByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/DoubleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder_EUC_SIM"
.end annotation


# instance fields
.field private final SS2:I

.field private final SS3:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CIIZ)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [[C
    .param p3, "b2cSB"    # [C
    .param p4, "b2Min"    # I
    .param p5, "b2Max"    # I
    .param p6, "isASCIICompatible"    # Z

    .line 500
    invoke-direct/range {p0 .. p6}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[[C[CIIZ)V

    .line 494
    const/16 v0, 0x8e

    iput v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->SS2:I

    .line 495
    const/16 v0, 0x8f

    iput v0, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->SS3:I

    .line 501
    return-void
.end method


# virtual methods
.method protected crMalformedOrUnderFlow(I)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "b"    # I

    .line 505
    const/16 v0, 0x8e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8f

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    .line 506
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method protected crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 511
    const/16 v0, 0x8e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8f

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 512
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public decode([BII[C)I
    .locals 9
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [C

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 520
    .local v1, "sl":I
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->replacement()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 521
    .local v2, "repl":C
    :goto_0
    if-ge p2, v1, :cond_6

    .line 522
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "sp":I
    .local v3, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 523
    .local p2, "b1":I
    iget-object v4, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2cSB:[C

    aget-char v4, v4, p2

    .line 524
    .local v4, "c":C
    const v5, 0xfffd

    if-ne v4, v5, :cond_5

    .line 525
    if-ge v3, v1, :cond_4

    .line 526
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "sp":I
    .local v6, "sp":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 527
    .local v3, "b2":I
    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2Min:I

    if-lt v3, v7, :cond_0

    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2Max:I

    if-gt v3, v7, :cond_0

    iget-object v7, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2c:[[C

    aget-object v7, v7, p2

    iget v8, p0, Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;->b2Min:I

    sub-int v8, v3, v8

    aget-char v7, v7, v8

    move v4, v7

    if-ne v7, v5, :cond_3

    .line 529
    :cond_0
    const/16 v5, 0x8e

    if-eq p2, v5, :cond_1

    const/16 v5, 0x8f

    if-ne p2, v5, :cond_2

    .line 530
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 532
    :cond_2
    move v4, v2

    .line 534
    .end local v3    # "b2":I
    :cond_3
    move v3, v6

    goto :goto_1

    .line 535
    .end local v6    # "sp":I
    .local v3, "sp":I
    :cond_4
    move v4, v2

    .line 538
    :cond_5
    :goto_1
    add-int/lit8 v5, v0, 0x1

    .end local v0    # "dp":I
    .local v5, "dp":I
    aput-char v4, p4, v0

    .line 539
    .end local v4    # "c":C
    .end local p2    # "b1":I
    move p2, v3

    move v0, v5

    goto :goto_0

    .line 540
    .end local v3    # "sp":I
    .end local v5    # "dp":I
    .restart local v0    # "dp":I
    .local p2, "sp":I
    :cond_6
    return v0
.end method
