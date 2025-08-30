.class public Landroidx/databinding/adapters/SwitchBindingAdapter;
.super Ljava/lang/Object;
.source "SwitchBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSwitchTextAppearance(Landroid/widget/Switch;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/Switch;
    .param p1, "value"    # I

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 40
    return-void
.end method
