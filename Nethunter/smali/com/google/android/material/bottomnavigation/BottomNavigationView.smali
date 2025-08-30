.class public Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.super Lcom/google/android/material/navigation/NavigationBarView;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;,
        Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final MAX_ITEM_COUNT:I = 0x6


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 98
    sget v0, Lcom/google/android/material/R$attr;->bottomNavigationStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 103
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_BottomNavigationView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 114
    sget-object v2, Lcom/google/android/material/R$styleable;->BottomNavigationView:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    .line 115
    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 118
    .local v0, "attributes":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Lcom/google/android/material/R$styleable;->BottomNavigationView_itemHorizontalTranslationEnabled:I

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemHorizontalTranslationEnabled(Z)V

    .line 122
    sget v1, Lcom/google/android/material/R$styleable;->BottomNavigationView_android_minHeight:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget v1, Lcom/google/android/material/R$styleable;->BottomNavigationView_android_minHeight:I

    .line 124
    invoke-virtual {v0, v1, v6}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 123
    invoke-virtual {p0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setMinimumHeight(I)V

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->applyWindowInsets()V

    .line 130
    return-void
.end method

.method private applyWindowInsets()V
    .locals 1

    .line 141
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView$1;-><init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView;)V

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    .line 163
    return-void
.end method

.method private makeMinHeightSpec(I)I
    .locals 3
    .param p1, "measureSpec"    # I

    .line 179
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 180
    .local v0, "minHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 183
    nop

    .line 184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 183
    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 187
    :cond_0
    return p1
.end method


# virtual methods
.method protected createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 226
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-direct {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getMaxItemCount()I
    .locals 1

    .line 218
    const/4 v0, 0x6

    return v0
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 167
    invoke-direct {p0, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->makeMinHeightSpec(I)I

    move-result v0

    .line 168
    .local v0, "minHeightSpec":I
    invoke-super {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationBarView;->onMeasure(II)V

    .line 169
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_0

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMeasuredWidth()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMeasuredHeight()I

    move-result v2

    .line 174
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 172
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 170
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setMeasuredDimension(II)V

    .line 176
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 135
    invoke-super {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 3
    .param p1, "itemHorizontalTranslationEnabled"    # Z

    .line 198
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 199
    .local v0, "menuView":Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->isItemHorizontalTranslationEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->setItemHorizontalTranslationEnabled(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getPresenter()Lcom/google/android/material/navigation/NavigationBarPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateMenuView(Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemReselectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemReselectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;)V

    .line 258
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    .line 243
    return-void
.end method
