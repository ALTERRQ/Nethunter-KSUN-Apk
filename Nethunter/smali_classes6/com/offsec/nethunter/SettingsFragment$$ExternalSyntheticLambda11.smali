.class public final synthetic Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SettingsFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/Button;

.field public final synthetic f$4:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SettingsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$3:Landroid/widget/Button;

    iput-object p5, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$4:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$3:Landroid/widget/Button;

    iget-object v4, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda11;->f$4:Landroid/widget/Button;

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/SettingsFragment;->lambda$onCreateView$1$com-offsec-nethunter-SettingsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
