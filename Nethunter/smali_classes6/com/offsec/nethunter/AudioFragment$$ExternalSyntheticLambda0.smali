.class public final synthetic Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/AudioFragment;

.field public final synthetic f$1:Landroid/widget/LinearLayout;

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/AudioFragment;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/AudioFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/AudioFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;->f$1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/AudioFragment;->lambda$onCreateView$1$com-offsec-nethunter-AudioFragment(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
