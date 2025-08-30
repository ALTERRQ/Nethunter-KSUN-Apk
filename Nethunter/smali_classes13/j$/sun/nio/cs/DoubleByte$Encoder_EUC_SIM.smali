.class public Lj$/sun/nio/cs/DoubleByte$Encoder_EUC_SIM;
.super Lj$/sun/nio/cs/DoubleByte$Encoder;
.source "DoubleByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/DoubleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder_EUC_SIM"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[C[CZ)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "c2b"    # [C
    .param p3, "c2bIndex"    # [C
    .param p4, "isASCIICompatible"    # Z

    .line 1103
    invoke-direct {p0, p1, p2, p3, p4}, Lj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    .line 1104
    return-void
.end method
