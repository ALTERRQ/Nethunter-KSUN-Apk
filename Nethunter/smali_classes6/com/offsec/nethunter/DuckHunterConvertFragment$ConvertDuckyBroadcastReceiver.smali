.class public Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DuckHunterConvertFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/DuckHunterConvertFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConvertDuckyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/DuckHunterConvertFragment;

    .line 289
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 292
    const-string v0, "ACTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WRITEDUCKY"

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->access$200(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V

    .line 294
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;->this$0:Lcom/offsec/nethunter/DuckHunterConvertFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->access$000(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 295
    const-string v3, "PREVIEWDUCKY"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 296
    const-string v2, "com.offsec.nethunter.PREVIEWDUCKY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 299
    :cond_0
    return-void
.end method
