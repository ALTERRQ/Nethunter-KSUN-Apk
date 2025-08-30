.class Lj$/sun/nio/cs/UTF_16BE$Encoder;
.super Lj$/sun/nio/cs/UnicodeEncoder;
.source "UTF_16BE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/UTF_16BE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lj$/sun/nio/cs/UnicodeEncoder;-><init>(Ljava/nio/charset/Charset;IZ)V

    .line 62
    return-void
.end method
