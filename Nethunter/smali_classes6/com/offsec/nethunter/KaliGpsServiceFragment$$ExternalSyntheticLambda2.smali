.class public final synthetic Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

.field public final synthetic f$1:Landroid/widget/EditText;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;->f$3:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;->f$1:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda2;->f$3:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->lambda$onViewCreated$4$com-offsec-nethunter-KaliGpsServiceFragment(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V

    return-void
.end method
