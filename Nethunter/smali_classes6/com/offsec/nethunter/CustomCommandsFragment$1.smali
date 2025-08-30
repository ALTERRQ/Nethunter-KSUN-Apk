.class Lcom/offsec/nethunter/CustomCommandsFragment$1;
.super Ljava/lang/Object;
.source "CustomCommandsFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CustomCommandsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CustomCommandsFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CustomCommandsFragment;

    .line 128
    iput-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$1;->this$0:Lcom/offsec/nethunter/CustomCommandsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$1;->this$0:Lcom/offsec/nethunter/CustomCommandsFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/CustomCommandsFragment;->access$000(Lcom/offsec/nethunter/CustomCommandsFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment$1;->this$0:Lcom/offsec/nethunter/CustomCommandsFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/CustomCommandsFragment;->access$000(Lcom/offsec/nethunter/CustomCommandsFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 132
    const/4 v0, 0x0

    return v0
.end method
