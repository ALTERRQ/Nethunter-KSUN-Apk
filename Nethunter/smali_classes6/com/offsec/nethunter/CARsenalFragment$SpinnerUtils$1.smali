.class Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$1;
.super Landroid/widget/ArrayAdapter;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V
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


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .line 2885
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 2893
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2894
    .local v0, "view":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 2895
    .local v1, "tv":Landroid/widget/TextView;
    if-nez p1, :cond_0

    const v2, -0x777778

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2896
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 2888
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
