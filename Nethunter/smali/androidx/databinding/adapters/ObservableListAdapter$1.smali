.class Landroidx/databinding/adapters/ObservableListAdapter$1;
.super Landroidx/databinding/ObservableList$OnListChangedCallback;
.source "ObservableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/ObservableListAdapter;->setList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/databinding/adapters/ObservableListAdapter;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/ObservableListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/databinding/adapters/ObservableListAdapter;

    .line 66
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter$1;, "Landroidx/databinding/adapters/ObservableListAdapter$1;"
    iput-object p1, p0, Landroidx/databinding/adapters/ObservableListAdapter$1;->this$0:Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-direct {p0}, Landroidx/databinding/ObservableList$OnListChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroidx/databinding/ObservableList;)V
    .locals 1
    .param p1, "observableList"    # Landroidx/databinding/ObservableList;

    .line 69
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter$1;, "Landroidx/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter$1;->this$0:Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroidx/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 70
    return-void
.end method

.method public onItemRangeChanged(Landroidx/databinding/ObservableList;II)V
    .locals 1
    .param p1, "observableList"    # Landroidx/databinding/ObservableList;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 75
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter$1;, "Landroidx/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter$1;->this$0:Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroidx/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public onItemRangeInserted(Landroidx/databinding/ObservableList;II)V
    .locals 1
    .param p1, "observableList"    # Landroidx/databinding/ObservableList;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 81
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter$1;, "Landroidx/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter$1;->this$0:Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroidx/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 82
    return-void
.end method

.method public onItemRangeMoved(Landroidx/databinding/ObservableList;III)V
    .locals 1
    .param p1, "observableList"    # Landroidx/databinding/ObservableList;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 87
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter$1;, "Landroidx/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter$1;->this$0:Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroidx/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V
    .locals 1
    .param p1, "observableList"    # Landroidx/databinding/ObservableList;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 93
    .local p0, "this":Landroidx/databinding/adapters/ObservableListAdapter$1;, "Landroidx/databinding/adapters/ObservableListAdapter$1;"
    iget-object v0, p0, Landroidx/databinding/adapters/ObservableListAdapter$1;->this$0:Landroidx/databinding/adapters/ObservableListAdapter;

    invoke-virtual {v0}, Landroidx/databinding/adapters/ObservableListAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method
