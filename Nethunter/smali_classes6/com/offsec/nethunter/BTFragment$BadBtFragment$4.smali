.class Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;
.super Ljava/lang/Object;
.source "BTFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/BTFragment$BadBtFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

.field final synthetic val$badbtstring:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1321
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;->val$badbtstring:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "selectedItemView"    # Landroid/view/View;
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

    .line 1324
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$502(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1325
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$500(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "Fake Windows Update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "Rickroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1333
    :pswitch_0
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;->val$badbtstring:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1330
    :pswitch_1
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;->val$badbtstring:Landroid/widget/EditText;

    const v1, 0x7f1300a5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 1331
    goto :goto_2

    .line 1327
    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;->val$badbtstring:Landroid/widget/EditText;

    const v1, 0x7f1300a6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 1328
    nop

    .line 1336
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58683a04 -> :sswitch_2
        0x252358 -> :sswitch_1
        0x6c9a7151 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 1339
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
