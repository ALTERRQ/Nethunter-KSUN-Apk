.class Lcom/offsec/nethunter/CustomCommandsFragment$2$2;
.super Ljava/lang/Object;
.source "CustomCommandsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CustomCommandsFragment$2;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/offsec/nethunter/CustomCommandsFragment$2;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CustomCommandsFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/offsec/nethunter/CustomCommandsFragment$2;

    .line 267
    iput-object p1, p0, Lcom/offsec/nethunter/CustomCommandsFragment$2$2;->this$1:Lcom/offsec/nethunter/CustomCommandsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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

    .line 270
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 v0, p3, 0x2

    sput v0, Lcom/offsec/nethunter/CustomCommandsFragment;->targetPositionId:I

    .line 271
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

    .line 274
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "CustomCommandsFragment"

    const-string v1, "onNothingSelected: Nothing selected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void
.end method
