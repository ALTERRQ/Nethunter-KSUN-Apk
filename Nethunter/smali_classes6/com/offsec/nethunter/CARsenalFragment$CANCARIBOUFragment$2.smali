.class Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1902
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

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

    .line 1905
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v0, 0x8

    if-lez p3, :cond_2

    .line 1906
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1907
    .local v1, "selected":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1910
    :cond_0
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    goto :goto_1

    .line 1908
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1912
    .end local v1    # "selected":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 1913
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 1915
    :goto_2
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

    .line 1916
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
