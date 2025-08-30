.class final Lcom/google/common/graph/MapRetrievalCache;
.super Lcom/google/common/graph/MapIteratorCache;
.source "MapRetrievalCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/MapIteratorCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private volatile transient cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile transient cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backingMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    .line 37
    return-void
.end method

.method private addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/graph/MapRetrievalCache$CacheEntry;, "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 97
    iput-object p1, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 98
    return-void
.end method

.method private addToCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    invoke-direct {v0, p1, p2}, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V

    .line 92
    return-void
.end method


# virtual methods
.method clearCache()V
    .locals 1

    .line 85
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 87
    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 88
    return-void
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapRetrievalCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 45
    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapRetrievalCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_1
    return-object v0
.end method

.method getIfCached(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/google/common/graph/MapRetrievalCache;, "Lcom/google/common/graph/MapRetrievalCache<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 61
    return-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 70
    .local v1, "entry":Lcom/google/common/graph/MapRetrievalCache$CacheEntry;, "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<TK;TV;>;"
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_1

    .line 71
    iget-object v2, v1, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->value:Ljava/lang/Object;

    return-object v2

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    .line 74
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_2

    .line 77
    invoke-direct {p0, v1}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V

    .line 78
    iget-object v2, v1, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->value:Ljava/lang/Object;

    return-object v2

    .line 80
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method
