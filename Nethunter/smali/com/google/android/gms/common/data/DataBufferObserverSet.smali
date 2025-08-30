.class public final Lcom/google/android/gms/common/data/DataBufferObserverSet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.4.0"

# interfaces
.implements Lcom/google/android/gms/common/data/DataBufferObserver;
.implements Lcom/google/android/gms/common/data/DataBufferObserver$Observable;


# instance fields
.field private final zaa:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/google/android/gms/common/data/DataBufferObserver;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    .end local p1    # "observer":Lcom/google/android/gms/common/data/DataBufferObserver;
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public hasObservers()Z
    .locals 1

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDataChanged()V
    .locals 2

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataBufferObserver;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataRangeChanged(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    .end local p1    # "position":I
    .end local p2    # "count":I
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataBufferObserver;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataRangeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataRangeInserted(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    .end local p1    # "position":I
    .end local p2    # "count":I
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataBufferObserver;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataRangeInserted(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "count"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    .end local p1    # "fromPosition":I
    .end local p2    # "toPosition":I
    .end local p3    # "count":I
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataBufferObserver;

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataRangeMoved(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataRangeRemoved(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    .end local p1    # "position":I
    .end local p2    # "count":I
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataBufferObserver;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/common/data/DataBufferObserver;->onDataRangeRemoved(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/google/android/gms/common/data/DataBufferObserver;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/common/data/DataBufferObserverSet;
    .end local p1    # "observer":Lcom/google/android/gms/common/data/DataBufferObserver;
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataBufferObserverSet;->zaa:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
