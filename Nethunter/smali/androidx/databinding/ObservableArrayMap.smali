.class public Landroidx/databinding/ObservableArrayMap;
.super Landroidx/collection/ArrayMap;
.source "ObservableArrayMap.java"

# interfaces
.implements Landroidx/databinding/ObservableMap;
.implements Lj$/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/ArrayMap<",
        "TK;TV;>;",
        "Landroidx/databinding/ObservableMap<",
        "TK;TV;>;",
        "Lj$/util/Map;"
    }
.end annotation


# instance fields
.field private transient mListeners:Landroidx/databinding/MapChangeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroidx/collection/ArrayMap;-><init>()V

    return-void
.end method

.method private notifyChange(Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 103
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroidx/databinding/MapChangeRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnMapChangedCallback(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableMap$OnMapChangedCallback<",
            "+",
            "Landroidx/databinding/ObservableMap<",
            "TK;TV;>;TK;TV;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    .local p1, "listener":Landroidx/databinding/ObservableMap$OnMapChangedCallback;, "Landroidx/databinding/ObservableMap$OnMapChangedCallback<+Landroidx/databinding/ObservableMap<TK;TV;>;TK;TV;>;"
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroidx/databinding/MapChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/MapChangeRegistry;-><init>()V

    iput-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/MapChangeRegistry;->add(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public clear()V
    .locals 2

    .line 45
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayMap;->isEmpty()Z

    move-result v0

    .line 46
    .local v0, "wasEmpty":Z
    if-nez v0, :cond_0

    .line 47
    invoke-super {p0}, Landroidx/collection/ArrayMap;->clear()V

    .line 48
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroidx/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 53
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Landroidx/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    .line 55
    return-object p2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 60
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 61
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroidx/databinding/ObservableArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    .line 63
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v3}, Landroidx/databinding/ObservableArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 67
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "index":I
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 86
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0, v0}, Landroidx/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    .line 91
    :cond_0
    return-object v1
.end method

.method public removeOnMapChangedCallback(Landroidx/databinding/ObservableMap$OnMapChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableMap$OnMapChangedCallback<",
            "+",
            "Landroidx/databinding/ObservableMap<",
            "TK;TV;>;TK;TV;>;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    .local p1, "listener":Landroidx/databinding/ObservableMap$OnMapChangedCallback;, "Landroidx/databinding/ObservableMap$OnMapChangedCallback<+Landroidx/databinding/ObservableMap<TK;TV;>;TK;TV;>;"
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Landroidx/databinding/ObservableArrayMap;->mListeners:Landroidx/databinding/MapChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/MapChangeRegistry;->remove(Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 73
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 74
    .local v0, "removed":Z
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 75
    invoke-virtual {p0, v1}, Landroidx/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Landroidx/databinding/ObservableArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 78
    const/4 v0, 0x1

    .line 74
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 81
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroidx/databinding/ObservableArrayMap;, "Landroidx/databinding/ObservableArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1, p2}, Landroidx/collection/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0}, Landroidx/databinding/ObservableArrayMap;->notifyChange(Ljava/lang/Object;)V

    .line 99
    return-object v1
.end method
