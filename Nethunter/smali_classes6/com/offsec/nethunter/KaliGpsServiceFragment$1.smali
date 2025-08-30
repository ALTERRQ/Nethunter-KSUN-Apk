.class Lcom/offsec/nethunter/KaliGpsServiceFragment$1;
.super Ljava/lang/Object;
.source "KaliGpsServiceFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/KaliGpsServiceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/KaliGpsServiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/KaliGpsServiceFragment;

    .line 151
    iput-object p1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;->this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onMenuItemSelected$0(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p1, "v"    # Landroid/view/View;

    .line 185
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onMenuItemSelected$1(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p1, "v"    # Landroid/view/View;

    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuInflater"    # Landroid/view/MenuInflater;

    .line 154
    const v0, 0x7f0f0005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    return-void
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 172
    .local v0, "id":I
    const v1, 0x7f0a006e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;->this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->access$000(Lcom/offsec/nethunter/KaliGpsServiceFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "WIFI: MONITOR MODE: SUPPORTED"

    goto :goto_0

    .line 175
    :cond_0
    const-string v1, "WIFI: MONITOR MODE: NOT SUPPORTED"

    :goto_0
    nop

    .line 176
    .local v1, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;->this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-virtual {v4}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 177
    return v3

    .line 178
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    const v1, 0x7f0a005e

    const/4 v4, 0x0

    if-ne v0, v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;->this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0d0054

    invoke-virtual {v1, v5, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "dialogView":Landroid/view/View;
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;->this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-virtual {v4}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 184
    .local v2, "dialog":Landroidx/appcompat/app/AlertDialog;
    const v4, 0x7f0a028e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 185
    .local v4, "closeButton":Landroid/widget/Button;
    new-instance v5, Lcom/offsec/nethunter/KaliGpsServiceFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2}, Lcom/offsec/nethunter/KaliGpsServiceFragment$1$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 188
    return v3

    .line 189
    .end local v1    # "dialogView":Landroid/view/View;
    .end local v2    # "dialog":Landroidx/appcompat/app/AlertDialog;
    .end local v4    # "closeButton":Landroid/widget/Button;
    :cond_2
    const v1, 0x7f0a006a

    if-ne v0, v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;->this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f0d0053

    invoke-virtual {v1, v5, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 191
    .restart local v1    # "dialogView":Landroid/view/View;
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;->this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-virtual {v4}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 195
    .restart local v2    # "dialog":Landroidx/appcompat/app/AlertDialog;
    const v4, 0x7f0a015c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 196
    .restart local v4    # "closeButton":Landroid/widget/Button;
    new-instance v5, Lcom/offsec/nethunter/KaliGpsServiceFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2}, Lcom/offsec/nethunter/KaliGpsServiceFragment$1$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 199
    return v3

    .line 200
    .end local v1    # "dialogView":Landroid/view/View;
    .end local v2    # "dialog":Landroidx/appcompat/app/AlertDialog;
    .end local v4    # "closeButton":Landroid/widget/Button;
    :cond_3
    const v1, 0x7f0a0068

    if-eq v0, v1, :cond_5

    const v1, 0x7f0a0067

    if-eq v0, v1, :cond_5

    const v1, 0x7f0a0066

    if-eq v0, v1, :cond_5

    const v1, 0x7f0a0064

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 205
    :cond_4
    return v2

    .line 202
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 203
    return v3
.end method

.method public onPrepareMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 159
    const v0, 0x7f0a006e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 160
    .local v0, "wifiItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/offsec/nethunter/KaliGpsServiceFragment$1;->this$0:Lcom/offsec/nethunter/KaliGpsServiceFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/KaliGpsServiceFragment;->access$000(Lcom/offsec/nethunter/KaliGpsServiceFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const v1, 0x7f0800dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 164
    :cond_0
    const v1, 0x7f0800db

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 167
    :cond_1
    :goto_0
    return-void
.end method
