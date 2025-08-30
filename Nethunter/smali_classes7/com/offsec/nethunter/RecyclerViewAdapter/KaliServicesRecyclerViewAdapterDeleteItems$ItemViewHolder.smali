.class Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KaliServicesRecyclerViewAdapterDeleteItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final runOnChrootStartCheckBox:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 47
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    const v0, 0x7f0a01fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;->runOnChrootStartCheckBox:Landroid/widget/CheckBox;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$1;

    .line 44
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;

    .line 44
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapterDeleteItems$ItemViewHolder;->runOnChrootStartCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method
