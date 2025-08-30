.class Lcom/offsec/nethunter/MacchangerFragment$3;
.super Ljava/lang/Object;
.source "MacchangerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/MacchangerFragment;->setMacModeSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/MacchangerFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/MacchangerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/MacchangerFragment;

    .line 230
    iput-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$3;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

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

    .line 233
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 234
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment$3;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/MacchangerFragment;->access$600(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment$3;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/MacchangerFragment;->access$700(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment$3;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/MacchangerFragment;->access$800(Lcom/offsec/nethunter/MacchangerFragment;)V

    goto :goto_0

    .line 237
    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 238
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment$3;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/MacchangerFragment;->access$600(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment$3;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/MacchangerFragment;->access$700(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
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

    .line 243
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
