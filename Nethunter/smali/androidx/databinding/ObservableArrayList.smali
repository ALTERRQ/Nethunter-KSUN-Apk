.class public Landroidx/databinding/ObservableArrayList;
.super Ljava/util/ArrayList;
.source "ObservableArrayList.java"

# interfaces
.implements Landroidx/databinding/ObservableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;",
        "Landroidx/databinding/ObservableList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private transient mListeners:Landroidx/databinding/ListChangeRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v0, Landroidx/databinding/ListChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/ListChangeRegistry;-><init>()V

    iput-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    return-void
.end method

.method private notifyAdd(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 117
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/ListChangeRegistry;->notifyInserted(Landroidx/databinding/ObservableList;II)V

    .line 120
    :cond_0
    return-void
.end method

.method private notifyRemove(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 123
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/databinding/ListChangeRegistry;->notifyRemoved(Landroidx/databinding/ObservableList;II)V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 53
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 44
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 46
    return v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 67
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 68
    .local v0, "added":Z
    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 71
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 57
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "oldSize":I
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 59
    .local v1, "added":Z
    if-eqz v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v0, v2}, Landroidx/databinding/ObservableArrayList;->notifyAdd(II)V

    .line 62
    :cond_0
    return v1
.end method

.method public addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V
    .locals 1
    .param p1, "listener"    # Landroidx/databinding/ObservableList$OnListChangedCallback;

    .line 29
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroidx/databinding/ListChangeRegistry;

    invoke-direct {v0}, Landroidx/databinding/ListChangeRegistry;-><init>()V

    iput-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    .line 32
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/ListChangeRegistry;->add(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public clear()V
    .locals 2

    .line 76
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    invoke-virtual {p0}, Landroidx/databinding/ObservableArrayList;->size()I

    move-result v0

    .line 77
    .local v0, "oldSize":I
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 81
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 85
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "val":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 87
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 92
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 93
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Landroidx/databinding/ObservableArrayList;->remove(I)Ljava/lang/Object;

    .line 95
    const/4 v1, 0x1

    return v1

    .line 97
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V
    .locals 1
    .param p1, "listener"    # Landroidx/databinding/ObservableList$OnListChangedCallback;

    .line 37
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/ListChangeRegistry;->remove(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected removeRange(II)V
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 112
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 113
    sub-int v0, p2, p1

    invoke-direct {p0, p1, v0}, Landroidx/databinding/ObservableArrayList;->notifyRemove(II)V

    .line 114
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 103
    .local p0, "this":Landroidx/databinding/ObservableArrayList;, "Landroidx/databinding/ObservableArrayList<TT;>;"
    .local p2, "object":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "val":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Landroidx/databinding/ObservableArrayList;->mListeners:Landroidx/databinding/ListChangeRegistry;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Landroidx/databinding/ListChangeRegistry;->notifyChanged(Landroidx/databinding/ObservableList;II)V

    .line 107
    :cond_0
    return-object v0
.end method
