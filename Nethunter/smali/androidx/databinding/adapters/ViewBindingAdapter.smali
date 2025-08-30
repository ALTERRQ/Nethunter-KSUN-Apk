.class public Landroidx/databinding/adapters/ViewBindingAdapter;
.super Ljava/lang/Object;
.source "ViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;,
        Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;
    }
.end annotation


# static fields
.field public static final FADING_EDGE_HORIZONTAL:I = 0x1

.field public static final FADING_EDGE_NONE:I = 0x0

.field public static final FADING_EDGE_VERTICAL:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static pixelsToDimensionPixelSize(F)I
    .locals 3
    .param p0, "pixels"    # F

    .line 222
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    .line 223
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 224
    return v0

    .line 225
    :cond_0
    const/4 v1, 0x0

    cmpl-float v2, p0, v1

    if-nez v2, :cond_1

    .line 226
    const/4 v1, 0x0

    return v1

    .line 227
    :cond_1
    cmpl-float v1, p0, v1

    if-lez v1, :cond_2

    .line 228
    const/4 v1, 0x1

    return v1

    .line 230
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 211
    nop

    .line 212
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 216
    return-void
.end method

.method public static setClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "clickable"    # Z

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 140
    return-void
.end method

.method public static setOnAttachStateChangeListener(Landroid/view/View;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "detach"    # Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;
    .param p2, "attach"    # Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;

    .line 168
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 169
    const/4 v0, 0x0

    .local v0, "newListener":Landroid/view/View$OnAttachStateChangeListener;
    goto :goto_0

    .line 171
    .end local v0    # "newListener":Landroid/view/View$OnAttachStateChangeListener;
    :cond_0
    new-instance v0, Landroidx/databinding/adapters/ViewBindingAdapter$1;

    invoke-direct {v0, p2, p1}, Landroidx/databinding/adapters/ViewBindingAdapter$1;-><init>(Landroidx/databinding/adapters/ViewBindingAdapter$OnViewAttachedToWindow;Landroidx/databinding/adapters/ViewBindingAdapter$OnViewDetachedFromWindow;)V

    .line 187
    .restart local v0    # "newListener":Landroid/view/View$OnAttachStateChangeListener;
    :goto_0
    sget v1, Landroidx/databinding/library/baseAdapters/R$id;->onAttachStateChangeListener:I

    invoke-static {p0, v0, v1}, Landroidx/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnAttachStateChangeListener;

    .line 189
    .local v1, "oldListener":Landroid/view/View$OnAttachStateChangeListener;
    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 192
    :cond_1
    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 195
    :cond_2
    return-void
.end method

.method public static setOnClick(Landroid/view/View;Landroid/view/View$OnClickListener;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "clickable"    # Z

    .line 145
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 147
    return-void
.end method

.method public static setOnLayoutChangeListener(Landroid/view/View;Landroid/view/View$OnLayoutChangeListener;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "oldValue"    # Landroid/view/View$OnLayoutChangeListener;
    .param p2, "newValue"    # Landroid/view/View$OnLayoutChangeListener;

    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 203
    :cond_0
    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p0, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 206
    :cond_1
    return-void
.end method

.method public static setOnLongClick(Landroid/view/View;Landroid/view/View$OnLongClickListener;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickListener"    # Landroid/view/View$OnLongClickListener;
    .param p2, "clickable"    # Z

    .line 159
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 160
    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 161
    return-void
.end method

.method public static setOnLongClickListener(Landroid/view/View;Landroid/view/View$OnLongClickListener;Z)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clickListener"    # Landroid/view/View$OnLongClickListener;
    .param p2, "clickable"    # Z

    .line 152
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    invoke-virtual {p0, p2}, Landroid/view/View;->setLongClickable(Z)V

    .line 154
    return-void
.end method

.method public static setPadding(Landroid/view/View;F)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paddingFloat"    # F

    .line 71
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result v0

    .line 72
    .local v0, "padding":I
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    return-void
.end method

.method public static setPaddingBottom(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paddingFloat"    # F

    .line 77
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result v0

    .line 78
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    return-void
.end method

.method public static setPaddingEnd(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paddingFloat"    # F

    .line 84
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result v0

    .line 85
    .local v0, "padding":I
    nop

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 86
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 92
    return-void
.end method

.method public static setPaddingLeft(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paddingFloat"    # F

    .line 96
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result v0

    .line 97
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 97
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    return-void
.end method

.method public static setPaddingRight(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paddingFloat"    # F

    .line 103
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result v0

    .line 104
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 104
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 106
    return-void
.end method

.method public static setPaddingStart(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paddingFloat"    # F

    .line 110
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result v0

    .line 111
    .local v0, "padding":I
    nop

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 112
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 118
    return-void
.end method

.method public static setPaddingTop(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paddingFloat"    # F

    .line 122
    invoke-static {p1}, Landroidx/databinding/adapters/ViewBindingAdapter;->pixelsToDimensionPixelSize(F)I

    move-result v0

    .line 123
    .local v0, "padding":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 123
    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 125
    return-void
.end method

.method public static setRequiresFadingEdge(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .line 129
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    .local v0, "vertical":Z
    :goto_0
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 131
    .local v1, "horizontal":Z
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 132
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 133
    return-void
.end method
