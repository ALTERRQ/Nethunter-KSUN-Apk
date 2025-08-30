.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;->f$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;->f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda8;->f$3:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->lambda$onCreateView$25$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
