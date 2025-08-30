.class Lcom/offsec/nethunter/NmapFragment$1;
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

    .line 114
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

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

    .line 117
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "selectedItemText":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 143
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

    .line 138
    :pswitch_0
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -e rndis0"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$002(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 141
    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -e eth0"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$002(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 136
    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -e wlan1"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$002(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 131
    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    const-string v2, " -e wlan0"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/NmapFragment;->access$002(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 126
    goto :goto_0

    .line 120
    :pswitch_4
    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$1;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 121
    nop

    .line 145
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    .line 150
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
