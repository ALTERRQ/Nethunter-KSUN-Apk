.class Lcom/offsec/nethunter/VNCFragment$1;
.super Ljava/lang/Object;
.source "VNCFragment.java"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/VNCFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/VNCFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/VNCFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/VNCFragment;

    .line 111
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$1;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onMenuItemSelected$0(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p0, "dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p1, "v"    # Landroid/view/View;

    .line 134
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 114
    const v0, 0x7f0f0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    return-void
.end method

.method public synthetic onMenuClosed(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onMenuClosed(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 120
    .local v0, "id":I
    const v1, 0x7f0a005e

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment$1;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-virtual {v1}, Lcom/offsec/nethunter/VNCFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 122
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 123
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 124
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0d0069

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, "dialogView":Landroid/view/View;
    const v4, 0x7f0a015d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 126
    .local v4, "descView":Landroid/widget/TextView;
    const v5, 0x7f130181

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 128
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v6, 0x7f14012e

    invoke-direct {v5, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 129
    invoke-virtual {v5, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v5

    .line 131
    .local v5, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v6

    .line 133
    .local v6, "dialog":Landroidx/appcompat/app/AlertDialog;
    const v7, 0x7f0a015c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 134
    .local v7, "closeButton":Landroid/widget/Button;
    new-instance v8, Lcom/offsec/nethunter/VNCFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/offsec/nethunter/VNCFragment$1$$ExternalSyntheticLambda0;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 138
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "dialogView":Landroid/view/View;
    .end local v4    # "descView":Landroid/widget/TextView;
    .end local v5    # "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v6    # "dialog":Landroidx/appcompat/app/AlertDialog;
    .end local v7    # "closeButton":Landroid/widget/Button;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 140
    .end local v1    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic onPrepareMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/MenuProvider$-CC;->$default$onPrepareMenu(Landroidx/core/view/MenuProvider;Landroid/view/Menu;)V

    return-void
.end method
