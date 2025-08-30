.class Lcom/offsec/nethunter/WifipumpkinFragment$2;
.super Ljava/lang/Object;
.source "WifipumpkinFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/WifipumpkinFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/WifipumpkinFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/WifipumpkinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/WifipumpkinFragment;

    .line 248
    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$2;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 251
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 252
    return-void
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 257
    .local v0, "id":I
    const v1, 0x7f0a043f

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a050a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 258
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$2;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->RunSetup()V

    .line 259
    const/4 v1, 0x1

    return v1
.end method

.method public synthetic onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onPrepareMenu(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method
