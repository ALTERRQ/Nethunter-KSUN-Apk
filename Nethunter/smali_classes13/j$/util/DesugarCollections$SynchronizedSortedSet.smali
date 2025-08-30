.class Lj$/util/DesugarCollections$SynchronizedSortedSet;
.super Lj$/util/DesugarCollections$SynchronizedSet;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/SortedSet;
.implements Lj$/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$SynchronizedSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;",
        "Lj$/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78adb1384b50312eL


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

    .line 1252
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedSet;, "Ljava/util/DesugarCollections$SynchronizedSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    .line 1253
    iput-object p1, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 1254
    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1257
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedSet;, "Ljava/util/DesugarCollections$SynchronizedSortedSet<TE;>;"
    .local p1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 1258
    iput-object p1, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 1259
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 1262
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedSet;, "Ljava/util/DesugarCollections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1264
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1286
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedSet;, "Ljava/util/DesugarCollections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1287
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1274
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedSet;, "Ljava/util/DesugarCollections$SynchronizedSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_0
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedSortedSet;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 1276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1292
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedSet;, "Ljava/util/DesugarCollections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1293
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1268
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedSet;, "Ljava/util/DesugarCollections$SynchronizedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1269
    :try_start_0
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedSortedSet;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 1270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1280
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSortedSet;, "Ljava/util/DesugarCollections$SynchronizedSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1281
    :try_start_0
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedSortedSet;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 1282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
