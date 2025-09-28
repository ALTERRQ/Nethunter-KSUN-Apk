.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

.field public final synthetic f$1:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;->f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;->f$1:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;->f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda18;->f$1:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, p1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->lambda$onCreateView$7$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Landroid/content/SharedPreferences;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
