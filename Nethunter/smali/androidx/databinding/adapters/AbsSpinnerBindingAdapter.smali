.class public Landroidx/databinding/adapters/AbsSpinnerBindingAdapter;
.super Ljava/lang/Object;
.source "AbsSpinnerBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEntries(Landroid/widget/AbsSpinner;Ljava/util/List;)V
    .locals 8
    .param p0, "view"    # Landroid/widget/AbsSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/AbsSpinner;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 62
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 64
    .local v0, "oldAdapter":Landroid/widget/SpinnerAdapter;
    instance-of v1, v0, Landroidx/databinding/adapters/ObservableListAdapter;

    if-eqz v1, :cond_0

    .line 66
    move-object v1, v0

    check-cast v1, Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v1, p1}, Landroidx/databinding/adapters/ObservableListAdapter;->setList(Ljava/util/List;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance v1, Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x1090009

    const/4 v7, 0x0

    const v5, 0x1090008

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Landroidx/databinding/adapters/ObservableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;III)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    .end local v0    # "oldAdapter":Landroid/widget/SpinnerAdapter;
    :goto_0
    goto :goto_1

    .line 73
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    :goto_1
    return-void
.end method

.method public static setEntries(Landroid/widget/AbsSpinner;[Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "view"    # Landroid/widget/AbsSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(",
            "Landroid/widget/AbsSpinner;",
            "[TT;)V"
        }
    .end annotation

    .line 35
    .local p1, "entries":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 37
    .local v0, "oldAdapter":Landroid/widget/SpinnerAdapter;
    const/4 v1, 0x1

    .line 38
    .local v1, "changed":Z
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    array-length v3, p1

    if-ne v2, v3, :cond_1

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 41
    aget-object v3, p1, v2

    invoke-interface {v0, v2}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 43
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 48
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 49
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 51
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 52
    invoke-virtual {p0, v2}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 54
    .end local v0    # "oldAdapter":Landroid/widget/SpinnerAdapter;
    .end local v1    # "changed":Z
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_2
    goto :goto_2

    .line 55
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 57
    :goto_2
    return-void
.end method
