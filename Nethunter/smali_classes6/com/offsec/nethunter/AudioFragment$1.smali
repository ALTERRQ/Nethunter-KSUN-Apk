.class Lcom/offsec/nethunter/AudioFragment$1;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AudioFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/AudioFragment;

    .line 62
    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onServiceConnected$0(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlayState;)V
    .locals 0
    .param p0, "rec$"    # Lcom/offsec/nethunter/AudioFragment;
    .param p1, "x$0"    # Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 66
    invoke-static {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->access$700(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlayState;)V

    return-void
.end method

.method private updatePlayStateInternal(Lcom/offsec/nethunter/audio/AudioPlayState;)V
    .locals 4
    .param p1, "audioPlayState"    # Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 79
    const-string v0, "AudioFragment"

    if-nez p1, :cond_0

    .line 80
    const-string v1, "AudioPlayState is null in updatePlayStateInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating play state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v1, p1}, Lcom/offsec/nethunter/AudioFragment;->access$400(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlayState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    sget-object v0, Lcom/offsec/nethunter/AudioFragment$3;->$SwitchMap$com$offsec$nethunter$audio$AudioPlayState:[I

    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlayState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const v2, 0x1060015

    const v3, 0x1060018

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const-string v1, "Connection Disconnecting"

    const v2, 0x1060016

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/AudioFragment;->access$500(Lcom/offsec/nethunter/AudioFragment;Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const-string v3, "Everything is working fine! Enjoy!"

    invoke-static {v0, v3, v2}, Lcom/offsec/nethunter/AudioFragment;->access$500(Lcom/offsec/nethunter/AudioFragment;Ljava/lang/String;I)V

    .line 103
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$600(Lcom/offsec/nethunter/AudioFragment;)V

    .line 104
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    goto :goto_0

    .line 98
    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const-string v2, "Establishing Connection"

    invoke-static {v0, v2, v3}, Lcom/offsec/nethunter/AudioFragment;->access$500(Lcom/offsec/nethunter/AudioFragment;Ljava/lang/String;I)V

    .line 99
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const-string v3, "Connection Starting"

    invoke-static {v0, v3, v2}, Lcom/offsec/nethunter/AudioFragment;->access$500(Lcom/offsec/nethunter/AudioFragment;Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    goto :goto_0

    .line 89
    :pswitch_4
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const-string v2, "Disconnected State"

    invoke-static {v0, v2, v3}, Lcom/offsec/nethunter/AudioFragment;->access$500(Lcom/offsec/nethunter/AudioFragment;Ljava/lang/String;I)V

    .line 90
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$600(Lcom/offsec/nethunter/AudioFragment;)V

    .line 91
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 92
    nop

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getError()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x1060017

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/AudioFragment;->access$500(Lcom/offsec/nethunter/AudioFragment;Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$600(Lcom/offsec/nethunter/AudioFragment;)V

    .line 116
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 64
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    move-object v1, p2

    check-cast v1, Lcom/offsec/nethunter/audio/AudioPlaybackService$LocalBinder;

    invoke-virtual {v1}, Lcom/offsec/nethunter/audio/AudioPlaybackService$LocalBinder;->getService()Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/AudioFragment;->access$002(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlaybackService;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    .line 65
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->playState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/AudioFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    new-instance v3, Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 67
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->showNotification()V

    .line 68
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/AudioFragment;->access$100(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlaybackService;)V

    .line 70
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getAutostartPref()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->isStartable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AudioFragment;->play()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/AudioFragment;->access$302(Lcom/offsec/nethunter/AudioFragment;Z)Z

    .line 76
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 119
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/AudioFragment;->access$002(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlaybackService;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    .line 120
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/AudioFragment;->access$302(Lcom/offsec/nethunter/AudioFragment;Z)Z

    .line 121
    return-void
.end method
