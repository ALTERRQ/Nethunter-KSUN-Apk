.class Lj$/util/DesugarCollections$UnmodifiableSet;
.super Lj$/util/DesugarCollections$UnmodifiableCollection;
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
    name = "UnmodifiableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$UnmodifiableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7fe26d2e70647fabL


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TE;>;)V"
        }
    .end annotation

    .line 253
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSet;, "Ljava/util/DesugarCollections$UnmodifiableSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    .line 254
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 257
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSet;, "Ljava/util/DesugarCollections$UnmodifiableSet<TE;>;"
    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableSet;->c:Ljava/util/Collection;

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

    .line 261
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSet;, "Ljava/util/DesugarCollections$UnmodifiableSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableSet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method
