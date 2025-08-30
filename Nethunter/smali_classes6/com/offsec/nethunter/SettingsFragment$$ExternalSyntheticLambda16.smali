.class public final synthetic Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SettingsFragment;

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$2:Landroid/widget/Button;

.field public final synthetic f$3:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SettingsFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p3, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;->f$2:Landroid/widget/Button;

    iput-object p4, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;->f$3:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;->f$2:Landroid/widget/Button;

    iget-object v3, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda16;->f$3:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/offsec/nethunter/SettingsFragment;->lambda$onCreateView$14$com-offsec-nethunter-SettingsFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
