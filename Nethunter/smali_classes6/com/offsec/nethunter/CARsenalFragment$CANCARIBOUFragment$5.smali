.class Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;
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

.field final synthetic val$moduleSpinner:Landroid/widget/Spinner;

.field final synthetic val$subModuleSpinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2023
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->val$moduleSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->val$subModuleSpinner:Landroid/widget/Spinner;

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

    .line 2026
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->val$moduleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2027
    .local v0, "selectedModule":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->val$subModuleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2030
    .local v1, "selectedSubModule":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2031
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2032
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2033
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2034
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2035
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2036
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2037
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2038
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2039
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2040
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2041
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2042
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2043
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2044
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2045
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2046
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2047
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2048
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2049
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2050
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2051
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2052
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2053
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2054
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2055
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2056
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2057
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2058
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2059
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2060
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2061
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2062
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2063
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2064
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2065
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2066
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2067
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2068
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2069
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2070
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2071
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2072
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2073
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2074
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2075
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2078
    const-string v2, "Dump"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "None"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 2079
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2080
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2081
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2082
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2083
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2084
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2087
    :cond_0
    const-string v2, "Fuzzer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2088
    const-string v2, "brute"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "mutate"

    if-nez v2, :cond_1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2089
    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2090
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2091
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2092
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2093
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2094
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2095
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2097
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2098
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2100
    :cond_3
    const-string v2, "identify"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "replay"

    if-nez v2, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2101
    :cond_4
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2102
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2103
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2105
    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2106
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2108
    :cond_6
    const-string v2, "random"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2109
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2110
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2111
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2112
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2113
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2114
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2115
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2116
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2117
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2120
    :cond_7
    const-string v2, "Listener"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2121
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2122
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2125
    :cond_8
    const-string v2, "module_template"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2126
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2127
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2130
    :cond_9
    const-string v2, "Send"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2131
    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2132
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2133
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2134
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2136
    :cond_a
    const-string v2, "message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2137
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2138
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2139
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2140
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2143
    :cond_b
    const-string v2, "UDS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "discovery"

    if-eqz v2, :cond_16

    .line 2144
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "auto"

    if-nez v2, :cond_c

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2145
    :cond_c
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2146
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2147
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2148
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2149
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2150
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2152
    :cond_d
    const-string v2, "services"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "dump_dids"

    if-nez v2, :cond_e

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2153
    :cond_e
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2154
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2155
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2157
    :cond_f
    const-string v2, "subservices"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2158
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2159
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2160
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2161
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2162
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2164
    :cond_10
    const-string v2, "ecu_reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2165
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2166
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2167
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2168
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2170
    :cond_11
    const-string v2, "security_seed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2171
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2172
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2173
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2174
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2175
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2176
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2177
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2179
    :cond_12
    const-string v2, "testerpresent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2180
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2181
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2182
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2183
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2185
    :cond_13
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2186
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2187
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2189
    :cond_14
    const-string v2, "read_mem"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2190
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2191
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2192
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2193
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2194
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2195
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2196
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2197
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2198
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2199
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2201
    :cond_15
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2202
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2203
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2204
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2207
    :cond_16
    const-string v2, "UDS_Fuzz"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2208
    const-string v2, "delay_fuzzer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2209
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2210
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2211
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2212
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2213
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2214
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2216
    :cond_17
    const-string v2, "seed_randomness_fuzzer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2217
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2218
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$4400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2219
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2220
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2221
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2222
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$5500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2223
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2224
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2227
    :cond_18
    const-string v2, "XCP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2228
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2229
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2230
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2231
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2232
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$3600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2234
    :cond_19
    const-string v2, "info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v2, "commands"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2235
    :cond_1a
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2236
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2238
    :cond_1b
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2239
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2240
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2241
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2242
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 2243
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$1800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2244
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2247
    :cond_1c
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

    .line 2249
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
