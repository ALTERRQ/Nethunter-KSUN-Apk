.class Lj$/util/DesugarCollections$UnmodifiableSortedSet;
.super Lj$/util/DesugarCollections$UnmodifiableSet;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Ljava/io/Serializable;
.implements Lj$/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$UnmodifiableSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4467db70141310fdL


# instance fields
.field private final ss:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 291
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSortedSet;, "Ljava/util/DesugarCollections$UnmodifiableSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    .line 292
    iput-object p1, p0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    .line 293
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSortedSet;, "Ljava/util/DesugarCollections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 312
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSortedSet;, "Ljava/util/DesugarCollections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 304
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSortedSet;, "Ljava/util/DesugarCollections$UnmodifiableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSortedSet;, "Ljava/util/DesugarCollections$UnmodifiableSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSortedSet;, "Ljava/util/DesugarCollections$UnmodifiableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableSortedSet;, "Ljava/util/DesugarCollections$UnmodifiableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method
