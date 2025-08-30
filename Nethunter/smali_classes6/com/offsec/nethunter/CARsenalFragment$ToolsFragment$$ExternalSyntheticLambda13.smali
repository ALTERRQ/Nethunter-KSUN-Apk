.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

.field public final synthetic f$1:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic f$2:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;->f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;->f$1:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;->f$2:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;->f$0:Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;->f$1:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment$$ExternalSyntheticLambda13;->f$2:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;->lambda$onCreateView$29$com-offsec-nethunter-CARsenalFragment$ToolsFragment(Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
