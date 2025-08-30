.class Landroidx/databinding/ListChangeRegistry$1;
.super Landroidx/databinding/CallbackRegistry$NotifierCallback;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/ListChangeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
        "Landroidx/databinding/ObservableList$OnListChangedCallback;",
        "Landroidx/databinding/ObservableList;",
        "Landroidx/databinding/ListChangeRegistry$ListChanges;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/databinding/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V
    .locals 3
    .param p1, "callback"    # Landroidx/databinding/ObservableList$OnListChangedCallback;
    .param p2, "sender"    # Landroidx/databinding/ObservableList;
    .param p3, "notificationType"    # I
    .param p4, "listChanges"    # Landroidx/databinding/ListChangeRegistry$ListChanges;

    .line 43
    packed-switch p3, :pswitch_data_0

    .line 58
    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onChanged(Landroidx/databinding/ObservableList;)V

    goto :goto_0

    .line 55
    :pswitch_0
    iget v0, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    iget v1, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, v0, v1}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V

    .line 56
    goto :goto_0

    .line 51
    :pswitch_1
    iget v0, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    iget v1, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->to:I

    iget v2, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeMoved(Landroidx/databinding/ObservableList;III)V

    .line 53
    goto :goto_0

    .line 48
    :pswitch_2
    iget v0, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    iget v1, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, v0, v1}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeInserted(Landroidx/databinding/ObservableList;II)V

    .line 49
    goto :goto_0

    .line 45
    :pswitch_3
    iget v0, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->start:I

    iget v1, p4, Landroidx/databinding/ListChangeRegistry$ListChanges;->count:I

    invoke-virtual {p1, p2, v0, v1}, Landroidx/databinding/ObservableList$OnListChangedCallback;->onItemRangeChanged(Landroidx/databinding/ObservableList;II)V

    .line 46
    nop

    .line 61
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Landroidx/databinding/ObservableList$OnListChangedCallback;

    check-cast p2, Landroidx/databinding/ObservableList;

    check-cast p4, Landroidx/databinding/ListChangeRegistry$ListChanges;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/ListChangeRegistry$1;->onNotifyCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;Landroidx/databinding/ObservableList;ILandroidx/databinding/ListChangeRegistry$ListChanges;)V

    return-void
.end method
