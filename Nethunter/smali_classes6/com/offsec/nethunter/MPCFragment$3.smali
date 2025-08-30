.class Lcom/offsec/nethunter/MPCFragment$3;
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

    .line 164
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment$3;->this$0:Lcom/offsec/nethunter/MPCFragment;

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

    .line 167
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "selectedItemText":Ljava/lang/String;
    const-string v1, "Selected: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string v1, "Reverse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$3;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "reverse"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$202(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_0
    const-string v1, "Bind"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$3;->this$0:Lcom/offsec/nethunter/MPCFragment;

    const-string v2, "bind"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/MPCFragment;->access$202(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    :cond_1
    :goto_0
    return-void
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

    .line 179
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
