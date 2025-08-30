.class Lcom/offsec/nethunter/NmapFragment$3;
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

    .line 227
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

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

    .line 230
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "selectedItemText":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 266
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

    .line 261
    :pswitch_0
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -T 5"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$402(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 264
    goto/16 :goto_0

    .line 256
    :pswitch_1
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -T 4"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$402(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 259
    goto :goto_0

    .line 251
    :pswitch_2
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -T 3"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$402(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 254
    goto :goto_0

    .line 246
    :pswitch_3
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -T 2"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$402(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 249
    goto :goto_0

    .line 241
    :pswitch_4
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -T 1"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$402(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 244
    goto :goto_0

    .line 236
    :pswitch_5
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -T 0"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$402(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 239
    goto :goto_0

    .line 233
    :pswitch_6
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$3;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 234
    nop

    .line 268
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 273
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
