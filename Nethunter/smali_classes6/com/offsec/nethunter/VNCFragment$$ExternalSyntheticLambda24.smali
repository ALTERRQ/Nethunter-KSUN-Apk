.class public final synthetic Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/VNCFragment;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$3:Landroid/widget/CheckBox;

.field public final synthetic f$4:Landroid/content/SharedPreferences;

.field public final synthetic f$5:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/VNCFragment;Landroid/widget/TextView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p4, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$3:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$4:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$5:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$2:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$3:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$4:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda24;->f$5:Landroid/widget/EditText;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/VNCFragment;->lambda$onCreateView$9$com-offsec-nethunter-VNCFragment(Landroid/widget/TextView;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
