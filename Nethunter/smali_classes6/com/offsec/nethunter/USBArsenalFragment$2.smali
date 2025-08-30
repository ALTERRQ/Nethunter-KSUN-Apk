.class Lcom/offsec/nethunter/USBArsenalFragment$2;
.super Ljava/lang/Object;
.source "USBArsenalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/USBArsenalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/USBArsenalFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/USBArsenalFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/USBArsenalFragment;

    .line 177
    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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

    .line 180
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/offsec/nethunter/USBArsenalFragment;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/USBArsenalFragment;->access$500(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 185
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/USBArsenalFragment;->access$500(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1

    .line 181
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/USBArsenalFragment;->access$500(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 182
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/USBArsenalFragment;->access$500(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/USBArsenalFragment;->access$100(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment$2;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/USBArsenalFragment;->access$200(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/USBArsenalFragment;->access$300(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
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

    .line 193
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
