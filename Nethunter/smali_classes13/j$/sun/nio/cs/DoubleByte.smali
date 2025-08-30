.class public Lj$/sun/nio/cs/DoubleByte;
.super Ljava/lang/Object;
.source "DoubleByte.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/DoubleByte$Encoder_EUC_SIM;,
        Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;,
        Lj$/sun/nio/cs/DoubleByte$Encoder_DBCSONLY;,
        Lj$/sun/nio/cs/DoubleByte$Encoder;,
        Lj$/sun/nio/cs/DoubleByte$Decoder_EUC_SIM;,
        Lj$/sun/nio/cs/DoubleByte$Decoder_DBCSONLY;,
        Lj$/sun/nio/cs/DoubleByte$Decoder_EBCDIC;,
        Lj$/sun/nio/cs/DoubleByte$Decoder;
    }
.end annotation


# static fields
.field public static final B2C_UNMAPPABLE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Lj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    .line 108
    sget-object v0, Lj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    const v1, 0xfffd

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
