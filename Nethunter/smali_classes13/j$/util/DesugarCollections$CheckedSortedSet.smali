.class Lj$/util/DesugarCollections$CheckedSortedSet;
.super Lj$/util/DesugarCollections$CheckedSet;
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
    name = "CheckedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$CheckedSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x163406ba7362eb0fL


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
.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 2142
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedSet;, "Ljava/util/DesugarCollections$CheckedSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$CheckedSet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    .line 2143
    iput-object p1, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    .line 2144
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

    .line 2147
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedSet;, "Ljava/util/DesugarCollections$CheckedSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

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

    .line 2151
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedSet;, "Ljava/util/DesugarCollections$CheckedSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

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

    .line 2163
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedSet;, "Ljava/util/DesugarCollections$CheckedSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Lj$/util/DesugarCollections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2155
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedSet;, "Ljava/util/DesugarCollections$CheckedSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

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

    .line 2159
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedSet;, "Ljava/util/DesugarCollections$CheckedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Lj$/util/DesugarCollections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object v0

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

    .line 2167
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedSet;, "Ljava/util/DesugarCollections$CheckedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedSortedSet;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Lj$/util/DesugarCollections;->checkedSortedSet(Ljava/util/SortedSet;Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
