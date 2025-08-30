.class public Landroidx/databinding/adapters/CardViewBindingAdapter;
.super Ljava/lang/Object;
.source "CardViewBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContentPadding(Landroidx/cardview/widget/CardView;I)V
    .locals 0
    .param p0, "view"    # Landroidx/cardview/widget/CardView;
    .param p1, "padding"    # I

    .line 38
    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 39
    return-void
.end method

.method public static setContentPaddingBottom(Landroidx/cardview/widget/CardView;I)V
    .locals 3
    .param p0, "view"    # Landroidx/cardview/widget/CardView;
    .param p1, "bottom"    # I

    .line 67
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    .line 68
    .local v0, "left":I
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v1

    .line 69
    .local v1, "top":I
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v2

    .line 70
    .local v2, "right":I
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 71
    return-void
.end method

.method public static setContentPaddingLeft(Landroidx/cardview/widget/CardView;I)V
    .locals 3
    .param p0, "view"    # Landroidx/cardview/widget/CardView;
    .param p1, "left"    # I

    .line 43
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v0

    .line 44
    .local v0, "top":I
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v1

    .line 45
    .local v1, "right":I
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    .line 46
    .local v2, "bottom":I
    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 47
    return-void
.end method

.method public static setContentPaddingRight(Landroidx/cardview/widget/CardView;I)V
    .locals 3
    .param p0, "view"    # Landroidx/cardview/widget/CardView;
    .param p1, "right"    # I

    .line 59
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    .line 60
    .local v0, "left":I
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingTop()I

    move-result v1

    .line 61
    .local v1, "top":I
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    .line 62
    .local v2, "bottom":I
    invoke-virtual {p0, v0, v1, p1, v2}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 63
    return-void
.end method

.method public static setContentPaddingTop(Landroidx/cardview/widget/CardView;I)V
    .locals 3
    .param p0, "view"    # Landroidx/cardview/widget/CardView;
    .param p1, "top"    # I

    .line 51
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingLeft()I

    move-result v0

    .line 52
    .local v0, "left":I
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingRight()I

    move-result v1

    .line 53
    .local v1, "right":I
    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getContentPaddingBottom()I

    move-result v2

    .line 54
    .local v2, "bottom":I
    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 55
    return-void
.end method
