.class public final synthetic Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/AudioFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/AudioFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/AudioFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;->f$0:Lcom/offsec/nethunter/AudioFragment;

    check-cast p1, Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-static {v0, p1}, Lcom/offsec/nethunter/AudioFragment$1;->lambda$onServiceConnected$0(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlayState;)V

    return-void
.end method
