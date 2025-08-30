.class Lj$/util/DesugarCollections$CheckedSet;
.super Lj$/util/DesugarCollections$CheckedCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/io/Serializable;
.implements Lj$/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$CheckedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x41249ba27ad9ffabL


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 2097
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSet;, "Ljava/util/DesugarCollections$CheckedSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    .line 2098
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2101
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSet;, "Ljava/util/DesugarCollections$CheckedSet<TE;>;"
    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSet;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 2105
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSet;, "Ljava/util/DesugarCollections$CheckedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method
