.class public Lj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;
.super Lj$/sun/nio/cs/DoubleByte$Decoder;
.source "DoubleByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/DoubleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder_DBCSONLY"
.end annotation


# static fields
.field static final b2cSB_UNMAPPABLE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 470
    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;->b2cSB_UNMAPPABLE:[C

    .line 471
    sget-object v0, Lj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;->b2cSB_UNMAPPABLE:[C

    const v1, 0xfffd

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 472
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CII)V
    .locals 9
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [[C
    .param p3, "b2cSB"    # [C
    .param p4, "b2Min"    # I
    .param p5, "b2Max"    # I

    .line 486
    sget-object v5, Lj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;->b2cSB_UNMAPPABLE:[C

    const/4 v8, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    .line 487
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;[[C[CIIZ)V
    .locals 9
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "b2c"    # [[C
    .param p3, "b2cSB"    # [C
    .param p4, "b2Min"    # I
    .param p5, "b2Max"    # I
    .param p6, "isASCIICompatible"    # Z

    .line 482
    const/high16 v3, 0x3f800000    # 1.0f

    sget-object v5, Lj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;->b2cSB_UNMAPPABLE:[C

    const/high16 v2, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lj$/sun/nio/cs/DoubleByte$Decoder;-><init>(Ljava/nio/charset/Charset;FF[[C[CIIZ)V

    .line 483
    return-void
.end method


# virtual methods
.method protected crMalformedOrUnmappable(II)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "b1"    # I
    .param p2, "b2"    # I

    .line 477
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
