.class Lj$/sun/nio/cs/CharsetMapping$2;
.super Ljava/lang/Object;
.source "CharsetMapping.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/CharsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lj$/sun/nio/cs/CharsetMapping$Entry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lj$/sun/nio/cs/CharsetMapping$Entry;Lj$/sun/nio/cs/CharsetMapping$Entry;)I
    .locals 2
    .param p1, "m1"    # Lj$/sun/nio/cs/CharsetMapping$Entry;
    .param p2, "m2"    # Lj$/sun/nio/cs/CharsetMapping$Entry;

    .line 154
    iget v0, p1, Lj$/sun/nio/cs/CharsetMapping$Entry;->bs:I

    iget v1, p2, Lj$/sun/nio/cs/CharsetMapping$Entry;->bs:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 152
    check-cast p1, Lj$/sun/nio/cs/CharsetMapping$Entry;

    check-cast p2, Lj$/sun/nio/cs/CharsetMapping$Entry;

    invoke-virtual {p0, p1, p2}, Lj$/sun/nio/cs/CharsetMapping$2;->compare(Lj$/sun/nio/cs/CharsetMapping$Entry;Lj$/sun/nio/cs/CharsetMapping$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 157
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
