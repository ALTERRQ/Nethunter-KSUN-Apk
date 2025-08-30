.class public abstract Landroidx/databinding/OnRebindCallback;
.super Ljava/lang/Object;
.source "OnRebindCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    .local p0, "this":Landroidx/databinding/OnRebindCallback;, "Landroidx/databinding/OnRebindCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBound(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Landroidx/databinding/OnRebindCallback;, "Landroidx/databinding/OnRebindCallback<TT;>;"
    .local p1, "binding":Landroidx/databinding/ViewDataBinding;, "TT;"
    return-void
.end method

.method public onCanceled(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Landroidx/databinding/OnRebindCallback;, "Landroidx/databinding/OnRebindCallback<TT;>;"
    .local p1, "binding":Landroidx/databinding/ViewDataBinding;, "TT;"
    return-void
.end method

.method public onPreBind(Landroidx/databinding/ViewDataBinding;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 42
    .local p0, "this":Landroidx/databinding/OnRebindCallback;, "Landroidx/databinding/OnRebindCallback<TT;>;"
    .local p1, "binding":Landroidx/databinding/ViewDataBinding;, "TT;"
    const/4 v0, 0x1

    return v0
.end method
