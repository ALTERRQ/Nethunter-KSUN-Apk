.class Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NethunterRecyclerViewAdapterDeleteItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final checkBox:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 48
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 49
    const v0, 0x7f0a0239

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems$1;

    .line 45
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems$ItemViewHolder;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems$ItemViewHolder;

    .line 45
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterDeleteItems$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method
