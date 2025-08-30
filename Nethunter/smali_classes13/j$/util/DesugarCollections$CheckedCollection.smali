.class Lj$/util/DesugarCollections$CheckedCollection;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;
.implements Lj$/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Collection<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15e96dfd18e6cc6fL


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private zeroLengthElementArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1918
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1919
    const-string v0, "c"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    .line 1920
    const-string v0, "type"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->type:Ljava/lang/Class;

    .line 1921
    return-void
.end method

.method private badElementMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1912
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    nop

    .line 1913
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedCollection;->type:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " element into collection with element type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1912
    return-object v0
.end method

.method private zeroLengthElementArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .line 2000
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2001
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    goto :goto_0

    .line 2002
    :cond_0
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-static {v0}, Lj$/util/DesugarCollections;->zeroLengthArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->zeroLengthElementArray:[Ljava/lang/Object;

    .line 2000
    :goto_0
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1994
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lj$/util/DesugarCollections$CheckedCollection;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 2035
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lj$/util/DesugarCollections$CheckedCollection;->checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 2009
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    :try_start_0
    invoke-direct {p0}, Lj$/util/DesugarCollections$CheckedCollection;->zeroLengthElementArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2010
    .local v0, "z":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 2012
    .local v1, "a":[Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 2013
    array-length v2, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2025
    .end local v0    # "z":[Ljava/lang/Object;, "[TE;"
    :cond_0
    goto :goto_1

    .line 2015
    .end local v1    # "a":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 2021
    .local v0, "ignore":Ljava/lang/ArrayStoreException;
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 2022
    .restart local v1    # "a":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2023
    .local v4, "o":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lj$/util/DesugarCollections$CheckedCollection;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2027
    .end local v0    # "ignore":Ljava/lang/ArrayStoreException;
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 1955
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1956
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1932
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1959
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2041
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 2042
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1928
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1973
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1974
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    new-instance v1, Lj$/util/DesugarCollections$CheckedCollection$1;

    invoke-direct {v1, p0, v0}, Lj$/util/DesugarCollections$CheckedCollection$1;-><init>(Lj$/util/DesugarCollections$CheckedCollection;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public parallelStream()Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 2061
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/DesugarCollections$CheckedCollection;->parallelStream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 1951
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

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

    .line 1963
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 2046
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

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

    .line 1967
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1924
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 2051
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/DesugarCollections$CheckedCollection;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public stream()Lj$/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 2056
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/DesugarCollections$CheckedCollection;->stream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1936
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1940
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1947
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method typeCheck(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 1905
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection;, "Ljava/util/DesugarCollections$CheckedCollection<TE;>;"
    if-eqz p1, :cond_1

    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1906
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$CheckedCollection;->badElementMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1908
    :cond_1
    :goto_0
    return-object p1
.end method
