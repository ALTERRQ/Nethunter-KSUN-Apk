.class Lcom/offsec/nethunter/SETFragment$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SETFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SETFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SETFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SETFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/SETFragment;

    .line 67
    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 70
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/SETFragment;->access$000(Lcom/offsec/nethunter/SETFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 71
    return-void
.end method
