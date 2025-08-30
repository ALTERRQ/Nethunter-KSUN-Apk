.class Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NethunterRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final resultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final runButton:Landroid/widget/Button;

.field private final titleTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 188
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 189
    const v0, 0x7f0a022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0a022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->resultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 191
    const v0, 0x7f0a022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->runButton:Landroid/widget/Button;

    .line 193
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;

    .line 182
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    .line 182
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->titleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    .line 182
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->resultRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    .line 182
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->runButton:Landroid/widget/Button;

    return-object v0
.end method
