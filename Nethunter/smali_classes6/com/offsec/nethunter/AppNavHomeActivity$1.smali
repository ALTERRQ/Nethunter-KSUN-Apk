.class Lcom/offsec/nethunter/AppNavHomeActivity$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "AppNavHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/AppNavHomeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AppNavHomeActivity;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/AppNavHomeActivity;
    .param p2, "enabled"    # Z

    .line 104
    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 7

    .line 107
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->isBackPressEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$000(Lcom/offsec/nethunter/AppNavHomeActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$000(Lcom/offsec/nethunter/AppNavHomeActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$000(Lcom/offsec/nethunter/AppNavHomeActivity;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$102(Lcom/offsec/nethunter/AppNavHomeActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$200(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 113
    .local v0, "menuNav":Landroid/view/Menu;
    const/4 v2, 0x0

    .line 114
    .local v2, "i":I
    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v3

    .line 115
    .local v3, "mSize":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 116
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v5}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$100(Lcom/offsec/nethunter/AppNavHomeActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 117
    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 118
    .local v4, "_current":Landroid/view/MenuItem;
    sget-object v5, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eq v5, v4, :cond_0

    .line 119
    sget-object v5, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 120
    sput-object v4, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    .line 122
    :cond_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 123
    move v2, v3

    .line 125
    .end local v4    # "_current":Landroid/view/MenuItem;
    :cond_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->restoreActionBar()V

    .line 129
    .end local v0    # "menuNav":Landroid/view/Menu;
    .end local v2    # "i":I
    .end local v3    # "mSize":I
    goto :goto_1

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$1;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->finish()V

    .line 134
    :cond_4
    :goto_1
    return-void
.end method
