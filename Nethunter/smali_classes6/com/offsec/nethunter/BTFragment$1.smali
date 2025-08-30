.class Lcom/offsec/nethunter/BTFragment$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/BTFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/BTFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/BTFragment;

    .line 88
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 91
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment;->access$000(Lcom/offsec/nethunter/BTFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 92
    return-void
.end method
