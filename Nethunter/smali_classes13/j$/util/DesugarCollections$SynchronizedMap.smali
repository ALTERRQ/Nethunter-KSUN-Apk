.class Lj$/util/DesugarCollections$SynchronizedMap;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1b73f9094b4b397bL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1524
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    .line 1526
    iput-object p0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    .line 1527
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1529
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1530
    iput-object p1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    .line 1531
    iput-object p2, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    .line 1532
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;

    .line 1721
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1722
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1723
    monitor-exit v0

    .line 1724
    return-void

    .line 1723
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1583
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1584
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1585
    monitor-exit v0

    .line 1586
    return-void

    .line 1585
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1707
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1708
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1692
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1693
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1694
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1700
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1701
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 1547
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1548
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1549
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 1553
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1554
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1602
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1603
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1604
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedSet;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 1606
    :cond_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1607
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1620
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    if-ne p0, p1, :cond_0

    .line 1621
    const/4 v0, 0x1

    return v0

    .line 1623
    :cond_0
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1624
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1650
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1651
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 1652
    monitor-exit v0

    .line 1653
    return-void

    .line 1652
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1559
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1560
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1643
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1644
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1645
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 1629
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1630
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1631
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1541
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1542
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1593
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1594
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1595
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedSet;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 1597
    :cond_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->keySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1598
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1715
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1716
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2, p3}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1717
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1565
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1566
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1567
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1577
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1578
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1579
    monitor-exit v0

    .line 1580
    return-void

    .line 1579
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1664
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1665
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1571
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1572
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1671
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1672
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1685
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1686
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2}, Lj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1678
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1679
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1, p2, p3}, Lj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1657
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1658
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-static {v1, p1}, Lj$/util/Map$-EL;->replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    .line 1659
    monitor-exit v0

    .line 1660
    return-void

    .line 1659
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 1535
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1536
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1537
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1635
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1636
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1611
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedMap;, "Ljava/util/DesugarCollections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1612
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 1613
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedCollection;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->values:Ljava/util/Collection;

    .line 1615
    :cond_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedMap;->values:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 1616
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
