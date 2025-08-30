.class Lcom/offsec/nethunter/CustomCommandsFragment$2;
.super Ljava/lang/Object;
.source "CustomCommandsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CustomCommandsFragment;->onAddItemSetup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CustomCommandsFragment;

.field final synthetic val$arrayAdapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$customCommandsModelList:Ljava/util/List;

.field final synthetic val$insertLabels:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CustomCommandsFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->this$0:Lcom/offsec/nethunter/CustomCommandsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$customCommandsModelList:Ljava/util/List;

    iput-object p4, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

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

    .line 242
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 243
    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 244
    sput v1, Lcom/offsec/nethunter/CustomCommandsFragment;->targetPositionId:I

    goto :goto_0

    .line 246
    :cond_0
    if-ne p3, v1, :cond_1

    .line 247
    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$customCommandsModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    sput v0, Lcom/offsec/nethunter/CustomCommandsFragment;->targetPositionId:I

    goto :goto_0

    .line 250
    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 253
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$2$1;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 267
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2;->val$insertLabels:Landroid/widget/Spinner;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$2$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$2$2;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 278
    :goto_0
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

    .line 281
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "CustomCommandsFragment"

    const-string v1, "onNothingSelected: Nothing Selected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method
