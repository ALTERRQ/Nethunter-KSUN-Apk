.class Lj$/util/DesugarCollections$CheckedSortedMap;
.super Lj$/util/DesugarCollections$CheckedMap;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$CheckedMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16332c973afe036eL


# instance fields
.field private final sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 2835
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedMap;, "Ljava/util/DesugarCollections$CheckedSortedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lj$/util/DesugarCollections$CheckedMap;-><init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 2836
    iput-object p1, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    .line 2837
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2840
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedMap;, "Ljava/util/DesugarCollections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2844
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedMap;, "Ljava/util/DesugarCollections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2856
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedMap;, "Ljava/util/DesugarCollections$CheckedSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lj$/util/DesugarCollections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2848
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedMap;, "Ljava/util/DesugarCollections$CheckedSortedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2852
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedMap;, "Ljava/util/DesugarCollections$CheckedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lj$/util/DesugarCollections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2860
    .local p0, "this":Lj$/util/DesugarCollections$CheckedSortedMap;, "Ljava/util/DesugarCollections$CheckedSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Lj$/util/DesugarCollections$CheckedSortedMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lj$/util/DesugarCollections;->checkedSortedMap(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
