.class Lcom/offsec/nethunter/MPCFragment$5;
.super Ljava/lang/Object;
.source "MPCFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/MPCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/MPCFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/MPCFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/MPCFragment;

    .line 216
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 219
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "selectedItemText":Ljava/lang/String;
    const-string v1, "Selected: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "HTTPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "HTTP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "TCP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "Find Port"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 233
    :pswitch_0
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "find_port"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$402(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 230
    :pswitch_1
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "https"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$402(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    goto :goto_2

    .line 227
    :pswitch_2
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "http"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$402(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    goto :goto_2

    .line 224
    :pswitch_3
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$5;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "tcp"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$402(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    nop

    .line 236
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72732d78 -> :sswitch_3
        0x143c1 -> :sswitch_2
        0x220088 -> :sswitch_1
        0x41e10cb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 241
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
