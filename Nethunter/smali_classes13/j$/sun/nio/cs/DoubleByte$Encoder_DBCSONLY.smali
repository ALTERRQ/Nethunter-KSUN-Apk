.class public Lj$/sun/nio/cs/DoubleByte$Encoder_DBCSONLY;
.super Lj$/sun/nio/cs/DoubleByte$Encoder;
.source "DoubleByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/DoubleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder_DBCSONLY"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[B[C[CZ)V
    .locals 8
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "repl"    # [B
    .param p3, "c2b"    # [C
    .param p4, "c2bIndex"    # [C
    .param p5, "isASCIICompatible"    # Z

    .line 848
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;FF[B[C[CZ)V

    .line 849
    return-void
.end method


# virtual methods
.method public encodeChar(C)I
    .locals 2
    .param p1, "ch"    # C

    .line 852
    invoke-super {p0, p1}, Lj$/sun/nio/cs/DoubleByte$Encoder;->encodeChar(C)I

    move-result v0

    .line 853
    .local v0, "bb":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 854
    const v1, 0xfffd

    return v1

    .line 855
    :cond_0
    return v0
.end method
