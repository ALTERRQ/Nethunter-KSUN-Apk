.class public final synthetic Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$$ExternalSyntheticLambda3;->f$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-virtual {v0}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->lambda$onPositionUpdate$8$com-offsec-nethunter-KaliGpsServiceFragment()V

    return-void
.end method
