.class Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections$CheckedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetvalueType(Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    return-object p0
.end method

.method constructor <init>(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 2577
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2578
    iput-object p1, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    .line 2579
    iput-object p2, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    .line 2580
    return-void
.end method

.method private batchRemove(Ljava/util/Collection;Z)Z
    .locals 3
    .param p2, "complement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;Z)Z"
        }
    .end annotation

    .line 2707
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    const/4 v0, 0x0

    .line 2709
    .local v0, "modified":Z
    invoke-virtual {p0}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2710
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2711
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 2712
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2713
    const/4 v0, 0x1

    goto :goto_0

    .line 2716
    :cond_1
    return v0
.end method

.method static checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<",
            "TK;TV;TT;>;"
        }
    .end annotation

    .line 2731
    .local p0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    invoke-direct {v0, p0, p1}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 2573
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2603
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 2607
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 2599
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2600
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 2670
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 2671
    const/4 v0, 0x0

    return v0

    .line 2673
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 2674
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    instance-of v2, v0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    if-eqz v2, :cond_1

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v0, v2}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v2

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2682
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2683
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2685
    const/4 v0, 0x0

    return v0

    .line 2687
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 2688
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2720
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 2721
    return v0

    .line 2723
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2724
    return v2

    .line 2726
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 2727
    .local v1, "that":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0, v1}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 2595
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2587
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2611
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2612
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;

    invoke-direct {v1, p0, v0}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;-><init>(Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 2692
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 2693
    const/4 v0, 0x0

    return v0

    .line 2695
    :cond_0
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2699
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 2703
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->batchRemove(Ljava/util/Collection;Z)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 2583
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 2633
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2638
    .local v0, "source":[Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2639
    .local v1, "dest":[Ljava/lang/Object;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2640
    aget-object v3, v0, v2

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v3, v4}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2639
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2642
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2650
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 2651
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 2652
    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->valueType:Ljava/lang/Class;

    invoke-static {v3, v4}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v3

    aput-object v3, v0, v1

    .line 2651
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2654
    .end local v1    # "i":I
    :cond_1
    array-length v1, v0

    array-length v3, p1

    if-le v1, v3, :cond_2

    .line 2655
    return-object v0

    .line 2657
    :cond_2
    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2658
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3

    .line 2659
    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 2661
    :cond_3
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2591
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->s:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
