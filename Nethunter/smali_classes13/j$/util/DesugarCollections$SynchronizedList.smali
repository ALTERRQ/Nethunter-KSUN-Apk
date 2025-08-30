.class Lj$/util/DesugarCollections$SynchronizedList;
.super Lj$/util/DesugarCollections$SynchronizedCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/List;
.implements Lj$/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$SynchronizedCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Lj$/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 1344
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 1345
    iput-object p1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    .line 1346
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1349
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1350
    iput-object p1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    .line 1351
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1449
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lj$/util/DesugarCollections$SynchronizedRandomAccessList;

    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1381
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1382
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1383
    monitor-exit v0

    .line 1384
    return-void

    .line 1383
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1405
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1406
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1407
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

    .line 1354
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    if-ne p0, p1, :cond_0

    .line 1355
    const/4 v0, 0x1

    return v0

    .line 1357
    :cond_0
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1358
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1369
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1370
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 1363
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1364
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1393
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1394
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1399
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1400
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1401
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1411
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1415
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1387
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1388
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1426
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-static {v1, p1}, Lj$/util/List$-EL;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    .line 1428
    monitor-exit v0

    .line 1429
    return-void

    .line 1428
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1375
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1376
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1433
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1434
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-static {v1, p1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1435
    monitor-exit v0

    .line 1436
    return-void

    .line 1435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1419
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedList;, "Ljava/util/DesugarCollections$SynchronizedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1420
    :try_start_0
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedList;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 1421
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
