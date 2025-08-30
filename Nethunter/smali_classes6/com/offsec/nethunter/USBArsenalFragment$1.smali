.class Lcom/offsec/nethunter/USBArsenalFragment$1;
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

.field final synthetic val$usbFuncMACArrayAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$usbFuncWinArrayAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/USBArsenalFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->val$usbFuncMACArrayAdapter:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->val$usbFuncWinArrayAdapter:Landroid/widget/ArrayAdapter;

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

    .line 163
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/USBArsenalFragment;->access$000(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->val$usbFuncMACArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/USBArsenalFragment;->access$000(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->val$usbFuncWinArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/USBArsenalFragment;->access$100(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment$1;->this$0:Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/USBArsenalFragment;->access$200(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/USBArsenalFragment;->access$300(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
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

    .line 174
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
