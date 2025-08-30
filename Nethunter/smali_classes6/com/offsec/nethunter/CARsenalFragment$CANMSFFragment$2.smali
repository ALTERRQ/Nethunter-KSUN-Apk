.class Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$2;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;

    .line 2651
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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

    .line 2654
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    .line 2655
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->access$602(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2656
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$300()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selected_module"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2658
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 2662
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;

    const-string v1, "Module (None)"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->access$602(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2663
    return-void
.end method
