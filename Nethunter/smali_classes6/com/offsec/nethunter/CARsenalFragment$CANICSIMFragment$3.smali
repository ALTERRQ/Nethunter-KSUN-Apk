.class Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$3;
.super Landroid/widget/ArrayAdapter;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->getStringArrayAdapter()Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "objects"    # [Ljava/lang/String;

    .line 2504
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$3;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 2513
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2514
    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 2515
    .local v1, "tv":Landroid/widget/TextView;
    if-nez p1, :cond_0

    .line 2516
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 2518
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2520
    :goto_0
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 2508
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
