.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;

.field public final synthetic f$1:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda7;->f$0:Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda7;->f$1:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda7;->f$0:Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment$$ExternalSyntheticLambda7;->f$1:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;->lambda$onCreateView$4$com-offsec-nethunter-CARsenalFragment$CANMSFFragment(Landroid/widget/Spinner;)V

    return-void
.end method
