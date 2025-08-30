.class Lcom/offsec/nethunter/KaliServicesFragment$2;
.super Ljava/lang/Object;
.source "KaliServicesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/KaliServicesFragment;->onAddItemSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/KaliServicesFragment;

.field final synthetic val$arrayAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$insertTitles:Landroid/widget/Spinner;

.field final synthetic val$kaliServicesModelList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/KaliServicesFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/KaliServicesFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->this$0:Lcom/offsec/nethunter/KaliServicesFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$kaliServicesModelList:Ljava/util/List;

    iput-object p4, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

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

    .line 305
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 306
    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 307
    invoke-static {v1}, Lcom/offsec/nethunter/KaliServicesFragment;->access$102(I)I

    goto :goto_0

    .line 309
    :cond_0
    if-ne p3, v1, :cond_1

    .line 310
    iget-object v2, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$kaliServicesModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Lcom/offsec/nethunter/KaliServicesFragment;->access$102(I)I

    goto :goto_0

    .line 313
    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 316
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$2$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliServicesFragment$2$1;-><init>(Lcom/offsec/nethunter/KaliServicesFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 330
    iget-object v0, p0, Lcom/offsec/nethunter/KaliServicesFragment$2;->val$insertTitles:Landroid/widget/Spinner;

    new-instance v1, Lcom/offsec/nethunter/KaliServicesFragment$2$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/KaliServicesFragment$2$2;-><init>(Lcom/offsec/nethunter/KaliServicesFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 341
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

    .line 345
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
