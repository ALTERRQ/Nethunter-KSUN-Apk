.class public Lcom/offsec/nethunter/audio/AudioPlaybackService$LocalBinder;
.super Landroid/os/Binder;
.source "AudioPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/audio/AudioPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalBinder"
.end annotation


# instance fields
.field private final service:Lcom/offsec/nethunter/audio/AudioPlaybackService;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/audio/AudioPlaybackService;)V
    .locals 0
    .param p1, "service"    # Lcom/offsec/nethunter/audio/AudioPlaybackService;

    .line 353
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService$LocalBinder;->service:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    .line 355
    return-void
.end method


# virtual methods
.method public getService()Lcom/offsec/nethunter/audio/AudioPlaybackService;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioPlaybackService$LocalBinder;->service:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    return-object v0
.end method
