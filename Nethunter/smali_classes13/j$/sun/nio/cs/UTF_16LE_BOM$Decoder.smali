.class Lj$/sun/nio/cs/UTF_16LE_BOM$Decoder;
.super Lj$/sun/nio/cs/UnicodeDecoder;
.source "UTF_16LE_BOM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/UTF_16LE_BOM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lj$/sun/nio/cs/UnicodeDecoder;-><init>(Ljava/nio/charset/Charset;II)V

    .line 55
    return-void
.end method
