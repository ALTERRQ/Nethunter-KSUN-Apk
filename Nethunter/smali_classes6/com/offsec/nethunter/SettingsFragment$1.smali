.class Lcom/offsec/nethunter/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/SettingsFragment;

    .line 134
    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 137
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 138
    return-void
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 143
    .local v0, "id":I
    const v1, 0x7f0a043f

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/SettingsFragment;->RunSetup()V

    .line 145
    return v2

    .line 146
    :cond_0
    const v1, 0x7f0a050a

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/SettingsFragment;->RunUpdate()V

    .line 148
    return v2

    .line 150
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onPrepareMenu(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method
