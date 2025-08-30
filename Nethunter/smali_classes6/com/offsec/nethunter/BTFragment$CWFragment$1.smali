.class Lcom/offsec/nethunter/BTFragment$CWFragment$1;
.super Ljava/lang/Object;
.source "BTFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/BTFragment$CWFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/BTFragment$CWFragment;

.field final synthetic val$ttsInput:Landroid/widget/EditText;

.field final synthetic val$ttsOptions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment$CWFragment;[Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/BTFragment$CWFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 886
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$1;->this$0:Lcom/offsec/nethunter/BTFragment$CWFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$1;->val$ttsOptions:[Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$1;->val$ttsInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    .line 889
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$1;->val$ttsOptions:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 890
    .local v0, "selected":Ljava/lang/String;
    const-string v1, "Custom TTS message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$1;->val$ttsInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 893
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$1;->val$ttsInput:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 895
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 899
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$CWFragment$1;->val$ttsInput:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 900
    return-void
.end method
