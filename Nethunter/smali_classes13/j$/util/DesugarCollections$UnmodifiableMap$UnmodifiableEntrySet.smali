.class Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;
.super Lj$/util/DesugarCollections$UnmodifiableSet;
.source "DesugarCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections$UnmodifiableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableEntrySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;,
        Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$UnmodifiableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6d0066a59f08eab5L


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    .line 668
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$UnmodifiableSet;-><init>(Ljava/util/Set;)V

    .line 669
    return-void
.end method

.method static entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;"
        }
    .end annotation

    .line 673
    .local p0, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method static synthetic lambda$entryConsumer$0(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .locals 1
    .param p0, "action"    # Ljava/util/function/Consumer;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 673
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    invoke-direct {v0, p1}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 804
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 805
    const/4 v0, 0x0

    return v0

    .line 807
    :cond_0
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    new-instance v1, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 815
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 816
    .local v1, "e":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 818
    const/4 v0, 0x0

    return v0

    .line 820
    .end local v1    # "e":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 821
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 825
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 826
    const/4 v0, 0x1

    return v0

    .line 828
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 829
    return v1

    .line 831
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 832
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 833
    return v1

    .line 835
    :cond_2
    invoke-virtual {p0, v0}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 677
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-static {p1}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 679
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 749
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;

    invoke-direct {v0, p0}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;-><init>(Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;)V

    return-object v0
.end method

.method public parallelStream()Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 745
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 734
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    .line 735
    invoke-static {v1}, Lj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntrySetSpliterator;-><init>(Lj$/util/Spliterator;)V

    .line 734
    return-object v0
.end method

.method public stream()Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 740
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 772
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 773
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 774
    new-instance v2, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, v3}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v2, v0, v1

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    .end local v1    # "i":I
    :cond_0
    return-object v0
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

    .line 784
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet<TK;TV;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    array-length v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 785
    .local v0, "arr":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 786
    new-instance v3, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, v4}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v0, v1

    .line 785
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 788
    .end local v1    # "i":I
    :cond_1
    array-length v1, v0

    array-length v3, p1

    if-le v1, v3, :cond_2

    .line 789
    return-object v0

    .line 791
    :cond_2
    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3

    .line 793
    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 795
    :cond_3
    return-object p1
.end method
