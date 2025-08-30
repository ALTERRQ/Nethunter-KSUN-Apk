.class Lcom/offsec/nethunter/NmapFragment$2;
.super Ljava/lang/Object;
.source "NmapFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/NmapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/NmapFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/NmapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 159
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    .line 162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "selectedItemText":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 208
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :pswitch_0
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -sX"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 206
    goto/16 :goto_0

    .line 198
    :pswitch_1
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -sF"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 201
    goto/16 :goto_0

    .line 193
    :pswitch_2
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -sN"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 196
    goto/16 :goto_0

    .line 188
    :pswitch_3
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -sM"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 191
    goto :goto_0

    .line 183
    :pswitch_4
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -sW"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 186
    goto :goto_0

    .line 178
    :pswitch_5
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -sA"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 181
    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -sT"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 176
    goto :goto_0

    .line 168
    :pswitch_7
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -sS"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 171
    goto :goto_0

    .line 165
    :pswitch_8
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$2;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 166
    nop

    .line 210
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

    .line 215
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
