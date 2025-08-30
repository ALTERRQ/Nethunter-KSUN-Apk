.class Lcom/offsec/nethunter/AudioFragment$2;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/AudioFragment;->setUpSpinner(Landroid/widget/Spinner;Ljava/util/List;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AudioFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/AudioFragment;

    .line 345
    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 348
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/AudioFragment;->access$800(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 349
    .local v0, "headroomIndex":I
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/AudioFragment;->access$900(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 350
    .local v1, "latencyIndex":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {}, Lcom/offsec/nethunter/AudioFragment;->access$1000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 352
    .local v2, "headroomUsec":J
    invoke-static {}, Lcom/offsec/nethunter/AudioFragment;->access$1100()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 353
    .local v4, "latencyUsec":J
    iget-object v6, p0, Lcom/offsec/nethunter/AudioFragment$2;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v6}, Lcom/offsec/nethunter/AudioFragment;->access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->setBufferUsec(JJ)V

    .line 355
    .end local v2    # "headroomUsec":J
    .end local v4    # "latencyUsec":J
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 358
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
