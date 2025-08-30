.class public final synthetic Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/AudioFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/AudioFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda3;->f$0:Lcom/offsec/nethunter/AudioFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda3;->f$0:Lcom/offsec/nethunter/AudioFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/AudioFragment;->lambda$onCreate$0$com-offsec-nethunter-AudioFragment(Ljava/lang/Boolean;)V

    return-void
.end method
