.class Lcom/offsec/nethunter/CARsenalFragment$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CARsenalFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment;

    .line 130
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$1;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 133
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$1;->this$0:Lcom/offsec/nethunter/CARsenalFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/CARsenalFragment;->access$000(Lcom/offsec/nethunter/CARsenalFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 134
    return-void
.end method
