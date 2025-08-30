.class public Lcom/google/android/material/dialog/MaterialDialogs;
.super Ljava/lang/Object;
.source "MaterialDialogs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDialogBackgroundInsets(Landroid/content/Context;II)Landroid/graphics/Rect;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultStyleAttribute"    # I
    .param p2, "defaultStyleResource"    # I

    .line 57
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialAlertDialog:[I

    const/4 v0, 0x0

    new-array v5, v0, [I

    .line 58
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetStart:I

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_start:I

    .line 70
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 71
    .local v1, "backgroundInsetStart":I
    sget v2, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetTop:I

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_top:I

    .line 76
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 72
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 78
    .local v2, "backgroundInsetTop":I
    sget v3, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetEnd:I

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_end:I

    .line 83
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 79
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 84
    .local v3, "backgroundInsetEnd":I
    sget v4, Lcom/google/android/material/R$styleable;->MaterialAlertDialog_backgroundInsetBottom:I

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->mtrl_alert_dialog_background_inset_bottom:I

    .line 89
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 85
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 91
    .local v4, "backgroundInsetBottom":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    .line 95
    .local v5, "layoutDirection":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v1

    .line 98
    .local v7, "backgroundInsetLeft":I
    :goto_0
    if-ne v5, v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v3

    .line 100
    .local v6, "backgroundInsetRight":I
    :goto_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v7, v2, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v8
.end method

.method public static insetDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "backgroundInsets"    # Landroid/graphics/Rect;

    .line 46
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method
