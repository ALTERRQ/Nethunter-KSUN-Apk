.class public final synthetic Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SettingsFragment;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SettingsFragment;[Ljava/lang/String;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;->f$3:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda17;->f$3:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/offsec/nethunter/SettingsFragment;->lambda$onCreateView$15$com-offsec-nethunter-SettingsFragment([Ljava/lang/String;Ljava/lang/String;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V

    return-void
.end method
