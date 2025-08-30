.class Lcom/offsec/nethunter/MacchangerFragment$2;
.super Ljava/lang/Object;
.source "MacchangerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/MacchangerFragment;->setupInterfaceSpinner()V
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

    .line 209
    iput-object p1, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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

    .line 212
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {p3}, Lcom/offsec/nethunter/MacchangerFragment;->access$002(I)I

    .line 213
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/MacchangerFragment;->access$300(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/offsec/nethunter/MacchangerFragment;->access$200()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/MacchangerFragment;->access$100(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/MacchangerFragment;->access$400(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    const v2, 0x7f1300dc

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/MacchangerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/MacchangerFragment;->access$100(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v2, "{0} {1}"

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/MacchangerFragment;->access$500(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v4, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    const v6, 0x7f130285

    invoke-virtual {v4, v6}, Lcom/offsec/nethunter/MacchangerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/offsec/nethunter/MacchangerFragment$2;->this$0:Lcom/offsec/nethunter/MacchangerFragment;

    invoke-static {v6}, Lcom/offsec/nethunter/MacchangerFragment;->access$100(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Spinner;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v5

    aput-object v6, v3, v1

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
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

    .line 218
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
