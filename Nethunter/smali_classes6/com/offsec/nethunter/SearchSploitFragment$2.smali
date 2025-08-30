.class Lcom/offsec/nethunter/SearchSploitFragment$2;
.super Ljava/lang/Object;
.source "SearchSploitFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SearchSploitFragment;->main(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SearchSploitFragment;

.field final synthetic val$platformList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/SearchSploitFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment$2;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SearchSploitFragment$2;->val$platformList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "selectedItemView"    # Landroid/view/View;
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

    .line 230
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment$2;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment$2;->val$platformList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SearchSploitFragment;->access$202(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment$2;->this$0:Lcom/offsec/nethunter/SearchSploitFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/SearchSploitFragment;->access$100(Lcom/offsec/nethunter/SearchSploitFragment;)V

    .line 232
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

    .line 236
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
