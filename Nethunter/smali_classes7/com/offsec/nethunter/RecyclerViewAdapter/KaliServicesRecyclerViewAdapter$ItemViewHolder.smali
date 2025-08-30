.class Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "KaliServicesRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private final nametextView:Landroid/widget/TextView;

.field private final runOnChrootStartCheckbox:Landroid/widget/CheckBox;

.field private final statustextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;


# direct methods
.method private constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/view/View;)V
    .locals 4
    .param p1, "this$0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
    .param p2, "view"    # Landroid/view/View;

    .line 237
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->this$0:Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    .line 238
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 239
    const v0, 0x7f0a01ff

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->nametextView:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0a01fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->runOnChrootStartCheckbox:Landroid/widget/CheckBox;

    .line 242
    const v0, 0x7f0a0200

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 243
    const v0, 0x7f0a01fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->statustextView:Landroid/widget/TextView;

    .line 245
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->access$500(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 246
    .local v0, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v1, "running_on_wearos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 247
    .local v1, "iswatch":Z
    if-eqz v1, :cond_0

    .line 248
    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->runOnChrootStartCheckbox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 250
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    .line 230
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->nametextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    .line 230
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->runOnChrootStartCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    .line 230
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    .line 230
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->statustextView:Landroid/widget/TextView;

    return-object v0
.end method
