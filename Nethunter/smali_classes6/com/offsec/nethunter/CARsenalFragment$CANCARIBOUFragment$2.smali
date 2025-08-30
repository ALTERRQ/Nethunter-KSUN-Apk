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

.field final synthetic val$emptySubModuleAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$modules:[Ljava/lang/String;

.field final synthetic val$subModuleSpinner:Landroid/widget/Spinner;

.field final synthetic val$subModulesMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;[Ljava/lang/String;Ljava/util/Map;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2024
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$modules:[Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModulesMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModuleSpinner:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$emptySubModuleAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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

    .line 2027
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$modules:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 2028
    .local v0, "selectedModule":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModulesMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2029
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModulesMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->access$400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;[Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 2030
    .local v1, "subAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2031
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModuleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2032
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 2033
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModuleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 2035
    :cond_0
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModuleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2037
    .end local v1    # "subAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 2038
    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModuleSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$emptySubModuleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2039
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$emptySubModuleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 2040
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModuleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 2042
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;->val$subModuleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2045
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

    .line 2047
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
