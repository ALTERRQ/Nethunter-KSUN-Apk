.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CARsenalFragment;

.field public final synthetic f$1:Landroid/media/MediaPlayer;

.field public final synthetic f$2:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CARsenalFragment;Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/CARsenalFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaPlayer;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;->f$2:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/CARsenalFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$$ExternalSyntheticLambda1;->f$2:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment;->lambda$RunAbout$4$com-offsec-nethunter-CARsenalFragment(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/content/DialogInterface;I)V

    return-void
.end method
