.class Lcom/offsec/nethunter/WPSFragment$2;
.super Ljava/lang/Object;
.source "WPSFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/WPSFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/WPSFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/WPSFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/WPSFragment;

    .line 155
    iput-object p1, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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

    .line 158
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/WPSFragment;->access$000(Lcom/offsec/nethunter/WPSFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "selected_target":Ljava/lang/String;
    const-string v1, "No nearby WPS networks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Please reset the interface!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

    iget-object v2, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/WPSFragment;->access$200(Lcom/offsec/nethunter/WPSFragment;)Lcom/offsec/nethunter/utils/ShellExecuter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" | cut -d \' \' -f 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/WPSFragment;->access$102(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 160
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/WPSFragment$2;->this$0:Lcom/offsec/nethunter/WPSFragment;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/offsec/nethunter/WPSFragment;->access$102(Lcom/offsec/nethunter/WPSFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    :goto_1
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

    .line 166
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
