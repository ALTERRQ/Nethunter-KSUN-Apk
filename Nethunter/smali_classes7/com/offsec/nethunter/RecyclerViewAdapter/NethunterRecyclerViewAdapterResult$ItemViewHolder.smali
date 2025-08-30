.class Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NethunterRecyclerViewAdapterResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final resultTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 59
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    const v0, 0x7f0a022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;->resultTextView:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$1;

    .line 56
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;

    .line 56
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult$ItemViewHolder;->resultTextView:Landroid/widget/TextView;

    return-object v0
.end method
