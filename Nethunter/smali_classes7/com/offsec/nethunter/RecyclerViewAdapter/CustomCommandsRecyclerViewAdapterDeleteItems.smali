.class public Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CustomCommandsRecyclerViewAdapterDeleteItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CustomCommandsRVA_Delete"


# instance fields
.field private final context:Landroid/content/Context;

.field private final customCommandsModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/CustomCommandsModel;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p2, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;->customCommandsModelList:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;->onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;I)V
    .locals 2
    .param p1, "itemViewHolder"    # Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;
    .param p2, "i"    # I

    .line 36
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;->access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;->customCommandsModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .line 30
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$ItemViewHolder;-><init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems$1;)V

    return-object v1
.end method
