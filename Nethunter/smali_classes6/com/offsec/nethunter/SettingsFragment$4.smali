.class Lcom/offsec/nethunter/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/SettingsFragment;

    .line 593
    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$4;->this$0:Lcom/offsec/nethunter/SettingsFragment;

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

    .line 596
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$4;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SettingsFragment;->access$302(Lcom/offsec/nethunter/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 597
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

    .line 600
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$4;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    const-string v1, "oneline"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SettingsFragment;->access$302(Lcom/offsec/nethunter/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 601
    return-void
.end method
