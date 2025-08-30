.class Lj$/util/DesugarCollections$SynchronizedRandomAccessList;
.super Lj$/util/DesugarCollections$SynchronizedList;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$SynchronizedList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x153e0c6c865668d2L


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

    .line 1458
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedRandomAccessList;, "Ljava/util/DesugarCollections$SynchronizedRandomAccessList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;)V

    .line 1459
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

    .line 1462
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedRandomAccessList;, "Ljava/util/DesugarCollections$SynchronizedRandomAccessList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 1463
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1479
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedRandomAccessList;, "Ljava/util/DesugarCollections$SynchronizedRandomAccessList<TE;>;"
    new-instance v0, Lj$/util/DesugarCollections$SynchronizedList;

    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
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

    .line 1466
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedRandomAccessList;, "Ljava/util/DesugarCollections$SynchronizedRandomAccessList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1467
    :try_start_0
    new-instance v1, Lj$/util/DesugarCollections$SynchronizedRandomAccessList;

    iget-object v2, p0, Lj$/util/DesugarCollections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lj$/util/DesugarCollections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lj$/util/DesugarCollections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 1468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
