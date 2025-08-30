.class Lcom/offsec/nethunter/DuckHunterFragment$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "DuckHunterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/DuckHunterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/DuckHunterFragment;

    .line 109
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 112
    const v0, 0x7f0a017e

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 113
    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterFragment;->access$000(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/view/Menu;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 114
    invoke-static {}, Lcom/offsec/nethunter/DuckHunterFragment;->access$100()V

    .line 115
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterFragment;->access$200(Lcom/offsec/nethunter/DuckHunterFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/DuckHunterFragment;->access$300(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "ACTION"

    const-string v3, "WRITEDUCKY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.offsec.nethunter.WRITEDUCKY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterFragment;->access$300(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment$1;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterFragment;->access$000(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    :cond_1
    :goto_0
    return-void
.end method
