.class Lj$/sun/nio/cs/UTF_32Coder;
.super Ljava/lang/Object;
.source "UTF_32Coder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/UTF_32Coder$Encoder;,
        Lj$/sun/nio/cs/UTF_32Coder$Decoder;
    }
.end annotation


# static fields
.field protected static final BIG:I = 0x1

.field protected static final BOM_BIG:I = 0xfeff

.field protected static final BOM_LITTLE:I = -0x20000

.field protected static final LITTLE:I = 0x2

.field protected static final NONE:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
