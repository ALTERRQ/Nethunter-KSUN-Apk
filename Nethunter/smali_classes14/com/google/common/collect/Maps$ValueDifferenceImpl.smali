.class Lcom/google/common/collect/Maps$ValueDifferenceImpl;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Lcom/google/common/collect/MapDifference$ValueDifference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueDifferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapDifference$ValueDifference<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)V"
        }
    .end annotation

    .line 712
    .local p0, "this":Lcom/google/common/collect/Maps$ValueDifferenceImpl;, "Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    .local p1, "left":Ljava/lang/Object;, "TV;"
    .local p2, "right":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    .line 714
    iput-object p2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    .line 715
    return-void
.end method

.method static create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/MapDifference$ValueDifference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;TV;)",
            "Lcom/google/common/collect/MapDifference$ValueDifference<",
            "TV;>;"
        }
    .end annotation

    .line 709
    .local p0, "left":Ljava/lang/Object;, "TV;"
    .local p1, "right":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$ValueDifferenceImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 731
    .local p0, "this":Lcom/google/common/collect/Maps$ValueDifferenceImpl;, "Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    instance-of v0, p1, Lcom/google/common/collect/MapDifference$ValueDifference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 732
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/MapDifference$ValueDifference;

    .line 733
    .local v0, "that":Lcom/google/common/collect/MapDifference$ValueDifference;, "Lcom/google/common/collect/MapDifference$ValueDifference<*>;"
    iget-object v2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/MapDifference$ValueDifference;->leftValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    .line 734
    invoke-interface {v0}, Lcom/google/common/collect/MapDifference$ValueDifference;->rightValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 733
    :goto_0
    return v1

    .line 736
    .end local v0    # "that":Lcom/google/common/collect/MapDifference$ValueDifference;, "Lcom/google/common/collect/MapDifference$ValueDifference<*>;"
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 741
    .local p0, "this":Lcom/google/common/collect/Maps$ValueDifferenceImpl;, "Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public leftValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 720
    .local p0, "this":Lcom/google/common/collect/Maps$ValueDifferenceImpl;, "Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public rightValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 726
    .local p0, "this":Lcom/google/common/collect/Maps$ValueDifferenceImpl;, "Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 746
    .local p0, "this":Lcom/google/common/collect/Maps$ValueDifferenceImpl;, "Lcom/google/common/collect/Maps$ValueDifferenceImpl<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->left:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$ValueDifferenceImpl;->right:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
