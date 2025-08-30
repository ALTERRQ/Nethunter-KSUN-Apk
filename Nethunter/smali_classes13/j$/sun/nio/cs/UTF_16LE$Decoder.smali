.class Lj$/sun/nio/cs/UTF_16LE$Decoder;
.super Lj$/sun/nio/cs/UnicodeDecoder;
.source "UTF_16LE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/UTF_16LE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 54
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lj$/sun/nio/cs/UnicodeDecoder;-><init>(Ljava/nio/charset/Charset;I)V

    .line 55
    return-void
.end method
