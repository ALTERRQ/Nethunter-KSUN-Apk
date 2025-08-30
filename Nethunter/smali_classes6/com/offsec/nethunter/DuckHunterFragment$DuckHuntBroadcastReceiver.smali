.class public Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DuckHunterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/DuckHunterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DuckHuntBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterFragment;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/DuckHunterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/DuckHunterFragment;

    .line 278
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 281
    const-string v0, "ACTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHOULDCONVERT"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/DuckHunterFragment;->access$202(Lcom/offsec/nethunter/DuckHunterFragment;Z)Z

    .line 284
    :cond_0
    return-void
.end method
