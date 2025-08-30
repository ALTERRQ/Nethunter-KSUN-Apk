.class Lcom/offsec/nethunter/MPCFragment$1;
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

    .line 76
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

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

    .line 79
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "selectedItemText":Ljava/lang/String;
    const-string v1, "Selected: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 119
    :pswitch_0
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "apk"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "windows"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "tomcat"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "python"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "powershell"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    goto :goto_0

    .line 104
    :pswitch_5
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "php"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    goto :goto_0

    .line 101
    :pswitch_6
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "perl"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    goto :goto_0

    .line 98
    :pswitch_7
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "osx"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    goto :goto_0

    .line 95
    :pswitch_8
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "linux"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    goto :goto_0

    .line 92
    :pswitch_9
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "java"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    goto :goto_0

    .line 89
    :pswitch_a
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "bash"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    goto :goto_0

    .line 86
    :pswitch_b
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "aspx"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    goto :goto_0

    .line 83
    :pswitch_c
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$1;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "asp"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    nop

    .line 122
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    .line 127
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
