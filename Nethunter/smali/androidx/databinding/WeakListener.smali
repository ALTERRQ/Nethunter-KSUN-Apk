.class Landroidx/databinding/WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "WeakListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mLocalFieldId:I

.field private final mObservable:Landroidx/databinding/ObservableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/databinding/ViewDataBinding;ILandroidx/databinding/ObservableReference;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "binder"    # Landroidx/databinding/ViewDataBinding;
    .param p2, "localFieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ViewDataBinding;",
            "I",
            "Landroidx/databinding/ObservableReference<",
            "TT;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Landroidx/databinding/WeakListener;, "Landroidx/databinding/WeakListener<TT;>;"
    .local p3, "observable":Landroidx/databinding/ObservableReference;, "Landroidx/databinding/ObservableReference<TT;>;"
    .local p4, "referenceQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Landroidx/databinding/ViewDataBinding;>;"
    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 73
    iput p2, p0, Landroidx/databinding/WeakListener;->mLocalFieldId:I

    .line 74
    iput-object p3, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    .line 75
    return-void
.end method


# virtual methods
.method protected getBinder()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 105
    .local p0, "this":Landroidx/databinding/WeakListener;, "Landroidx/databinding/WeakListener<TT;>;"
    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    .line 106
    .local v0, "binder":Landroidx/databinding/ViewDataBinding;
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->unregister()Z

    .line 109
    :cond_0
    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 100
    .local p0, "this":Landroidx/databinding/WeakListener;, "Landroidx/databinding/WeakListener<TT;>;"
    iget-object v0, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 78
    .local p0, "this":Landroidx/databinding/WeakListener;, "Landroidx/databinding/WeakListener<TT;>;"
    iget-object v0, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    invoke-interface {v0, p1}, Landroidx/databinding/ObservableReference;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 79
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Landroidx/databinding/WeakListener;, "Landroidx/databinding/WeakListener<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroidx/databinding/WeakListener;->unregister()Z

    .line 83
    iput-object p1, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    iget-object v1, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/databinding/ObservableReference;->addListener(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public unregister()Z
    .locals 3

    .line 90
    .local p0, "this":Landroidx/databinding/WeakListener;, "Landroidx/databinding/WeakListener<TT;>;"
    const/4 v0, 0x0

    .line 91
    .local v0, "unregistered":Z
    iget-object v1, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Landroidx/databinding/WeakListener;->mObservable:Landroidx/databinding/ObservableReference;

    iget-object v2, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroidx/databinding/ObservableReference;->removeListener(Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x1

    .line 95
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/databinding/WeakListener;->mTarget:Ljava/lang/Object;

    .line 96
    return v0
.end method
