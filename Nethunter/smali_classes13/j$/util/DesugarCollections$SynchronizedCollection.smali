.class Lj$/util/DesugarCollections$SynchronizedCollection;
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
    name = "SynchronizedCollection"
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
.field private static final serialVersionUID:J = 0x2a61f84d099c99b5L


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .line 1002
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    .line 1004
    iput-object p0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    .line 1005
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 1
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1007
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    .line 1009
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    .line 1010
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;

    .line 1130
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1131
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1132
    monitor-exit v0

    .line 1133
    return-void

    .line 1132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1052
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1054
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 1070
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1072
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 1088
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 1090
    monitor-exit v0

    .line 1091
    return-void

    .line 1090
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1025
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1026
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1027
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1064
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1066
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1102
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1103
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    .line 1104
    monitor-exit v0

    .line 1105
    return-void

    .line 1104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1019
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1021
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1048
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
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

    .line 1126
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->parallelStream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallelStream()Ljava/util/stream/Stream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/DesugarCollections$SynchronizedCollection;->parallelStream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1058
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1059
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1060
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1076
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1078
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1109
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1110
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1082
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1083
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1084
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 1013
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1015
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 1116
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->spliterator(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lj$/util/DesugarCollections$SynchronizedCollection;->spliterator()Lj$/util/Spliterator;

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

    .line 1121
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic stream()Ljava/util/stream/Stream;
    .locals 1

    invoke-virtual {p0}, Lj$/util/DesugarCollections$SynchronizedCollection;->stream()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 1031
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1033
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1037
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1039
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1094
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedCollection;, "Ljava/util/DesugarCollections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1096
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
