.class Lj$/util/DesugarCollections$SynchronizedSet;
.super Lj$/util/DesugarCollections$SynchronizedCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Set;
.implements Lj$/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$SynchronizedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;",
        "Lj$/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6c3c27902eedf3cL


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 1177
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSet;, "Ljava/util/DesugarCollections$SynchronizedSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 1178
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1181
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSet;, "Ljava/util/DesugarCollections$SynchronizedSet<TE;>;"
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1182
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1185
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSet;, "Ljava/util/DesugarCollections$SynchronizedSet<TE;>;"
    if-ne p0, p1, :cond_0

    .line 1186
    const/4 v0, 0x1

    return v0

    .line 1188
    :cond_0
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1189
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedSet;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 1194
    .local p0, "this":Lj$/util/DesugarCollections$SynchronizedSet;, "Ljava/util/DesugarCollections$SynchronizedSet<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1195
    :try_start_0
    iget-object v1, p0, Lj$/util/DesugarCollections$SynchronizedSet;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
