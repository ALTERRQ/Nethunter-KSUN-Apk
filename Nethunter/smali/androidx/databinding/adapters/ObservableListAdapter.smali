.class Landroidx/databinding/adapters/ObservableListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ObservableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDropDownResourceId:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

.field private final mResourceId:I

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resourceId"    # I
    .param p4, "dropDownResourceId"    # I
    .param p5, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;III)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter;, "Landroidx/databinding/adapters/ObservableListAdapter<TT;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput p3, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mResourceId:I

    .line 48
    iput p4, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mDropDownResourceId:I

    .line 49
    iput p5, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    .line 50
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    :goto_0
    iput-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 52
    invoke-virtual {p0, p2}, Landroidx/databinding/adapters/ObservableListAdapter;->setList(Ljava/util/List;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 105
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter;, "Landroidx/databinding/adapters/ObservableListAdapter<TT;>;"
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 125
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter;, "Landroidx/databinding/adapters/ObservableListAdapter<TT;>;"
    iget v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mDropDownResourceId:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/databinding/adapters/ObservableListAdapter;->getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 110
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter;, "Landroidx/databinding/adapters/ObservableListAdapter<TT;>;"
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 115
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter;, "Landroidx/databinding/adapters/ObservableListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 120
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter;, "Landroidx/databinding/adapters/ObservableListAdapter<TT;>;"
    iget v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mResourceId:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/databinding/adapters/ObservableListAdapter;->getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForResource(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "resourceId"    # I
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .line 130
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter;, "Landroidx/databinding/adapters/ObservableListAdapter<TT;>;"
    if-nez p3, :cond_1

    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object p3, v0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 137
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    if-nez v0, :cond_2

    move-object v0, p3

    goto :goto_1

    .line 138
    :cond_2
    iget v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mTextViewResourceId:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, "text":Landroid/widget/TextView;
    iget-object v1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 141
    .local v1, "item":Ljava/lang/Object;, "TT;"
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 142
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "value":Ljava/lang/CharSequence;
    goto :goto_2

    .line 144
    .end local v2    # "value":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "value":Ljava/lang/CharSequence;
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-object p3
.end method

.method public setList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter;, "Landroidx/databinding/adapters/ObservableListAdapter<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    if-ne v0, p1, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    instance-of v0, v0, Landroidx/databinding/ObservableList;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    check-cast v0, Landroidx/databinding/ObservableList;

    iget-object v1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    invoke-interface {v0, v1}, Landroidx/databinding/ObservableList;->removeOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    .line 63
    :cond_1
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    .line 64
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    instance-of v0, v0, Landroidx/databinding/ObservableList;

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    if-nez v0, :cond_2

    .line 66
    new-instance v0, Landroidx/databinding/adapters/ObservableListAdapter$1;

    invoke-direct {v0, p0}, Landroidx/databinding/adapters/ObservableListAdapter$1;-><init>(Landroidx/databinding/adapters/ObservableListAdapter;)V

    iput-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    .line 98
    :cond_2
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mList:Ljava/util/List;

    check-cast v0, Landroidx/databinding/ObservableList;

    iget-object v1, p0, Landroidx/databinding/adapters/ObservableListAdapter;->mListChangedCallback:Landroidx/databinding/ObservableList$OnListChangedCallback;

    invoke-interface {v0, v1}, Landroidx/databinding/ObservableList;->addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    .line 100
    :cond_3
    invoke-virtual {p0}, Landroidx/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method
