.class public final synthetic Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

.field public final synthetic f$1:Ljava/net/ConnectException;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/audio/AudioPlaybackWorker;Ljava/net/ConnectException;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda6;->f$0:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    iput-object p2, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda6;->f$1:Ljava/net/ConnectException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda6;->f$0:Lcom/offsec/nethunter/audio/AudioPlaybackWorker;

    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackWorker$$ExternalSyntheticLambda6;->f$1:Ljava/net/ConnectException;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/audio/AudioPlaybackWorker;->lambda$connect$6$com-offsec-nethunter-audio-AudioPlaybackWorker(Ljava/net/ConnectException;)V

    return-void
.end method
