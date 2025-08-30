.class Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;
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

.field final synthetic val$badbt_class:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1128
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

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

    .line 1131
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$302(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1132
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$300(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "Custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1
    const-string v1, "Printer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "Keyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "Mouse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "PC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "Speaker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "Headset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_7
    const-string v1, "Mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1155
    :pswitch_0
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1152
    :pswitch_1
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string v1, "0x000204"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    goto :goto_2

    .line 1149
    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string v1, "0x02010c"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1150
    goto :goto_2

    .line 1146
    :pswitch_3
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string v1, "0x040680"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    goto :goto_2

    .line 1143
    :pswitch_4
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string v1, "0x002580"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    goto :goto_2

    .line 1140
    :pswitch_5
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string v1, "0x240414"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    goto :goto_2

    .line 1137
    :pswitch_6
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string v1, "0x000408"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    goto :goto_2

    .line 1134
    :pswitch_7
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;->val$badbt_class:Landroid/widget/EditText;

    const-string v1, "0x000540"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    nop

    .line 1158
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7650833e -> :sswitch_7
        -0x6d5fc59e -> :sswitch_6
        -0x147f0821 -> :sswitch_5
        0x9f3 -> :sswitch_4
        0x4714c85 -> :sswitch_3
        0x21e0d807 -> :sswitch_2
        0x50765ffa -> :sswitch_1
        0x78fb7791 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
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

    .line 1161
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
