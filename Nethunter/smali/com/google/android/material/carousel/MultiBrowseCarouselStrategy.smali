.class public final Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;
.super Lcom/google/android/material/carousel/CarouselStrategy;
.source "MultiBrowseCarouselStrategy.java"


# static fields
.field private static final MEDIUM_COUNTS:[I

.field private static final SMALL_COUNTS:[I


# instance fields
.field private keylineCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    .line 52
    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/carousel/CarouselStrategy;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    return-void
.end method


# virtual methods
.method ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z
    .locals 4
    .param p1, "arrangement"    # Lcom/google/android/material/carousel/Arrangement;
    .param p2, "carouselItemCount"    # I

    .line 174
    invoke-virtual {p1}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p2

    .line 175
    .local v0, "keylineSurplus":I
    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-gtz v2, :cond_0

    iget v2, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v2, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 178
    .local v2, "changed":Z
    :goto_0
    if-lez v0, :cond_4

    .line 179
    iget v3, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v3, :cond_2

    .line 180
    iget v3, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    sub-int/2addr v3, v1

    iput v3, p1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    goto :goto_1

    .line 181
    :cond_2
    iget v3, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-le v3, v1, :cond_3

    .line 183
    iget v3, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    sub-int/2addr v3, v1

    iput v3, p1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    .line 187
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_4
    return v2
.end method

.method public onFirstChildMeasuredWithMargins(Lcom/google/android/material/carousel/Carousel;Landroid/view/View;)Lcom/google/android/material/carousel/KeylineState;
    .locals 28
    .param p1, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p2, "child"    # Landroid/view/View;

    .line 62
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v1

    .line 63
    .local v1, "carouselSize":I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v1

    .line 67
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 68
    .local v2, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v3, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 69
    .local v3, "childMargins":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    .line 71
    .local v4, "measuredChildSize":F
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    iget v5, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v6, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    int-to-float v3, v5

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    .line 76
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallItemSizeMin()F

    move-result v5

    add-float/2addr v5, v3

    .line 77
    .local v5, "smallChildSizeMin":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->getSmallItemSizeMax()F

    move-result v6

    add-float/2addr v6, v3

    .line 78
    .local v6, "smallChildSizeMax":F
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 80
    .end local v6    # "smallChildSizeMax":F
    .local v15, "smallChildSizeMax":F
    add-float v6, v4, v3

    int-to-float v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 85
    .local v16, "targetLargeChildSize":F
    const/high16 v6, 0x40400000    # 3.0f

    div-float v6, v4, v6

    add-float/2addr v6, v3

    add-float v7, v5, v3

    add-float v8, v15, v3

    .line 86
    invoke-static {v6, v7, v8}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v17

    .line 90
    .local v17, "targetSmallChildSize":F
    add-float v6, v16, v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v19, v6, v18

    .line 97
    .local v19, "targetMediumChildSize":F
    sget-object v6, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->SMALL_COUNTS:[I

    .line 98
    .local v6, "smallCounts":[I
    int-to-float v7, v1

    mul-float v8, v5, v18

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 102
    const/4 v7, 0x0

    filled-new-array {v7}, [I

    move-result-object v7

    move-object v6, v7

    .line 105
    :cond_2
    sget-object v7, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->MEDIUM_COUNTS:[I

    .line 106
    .local v7, "mediumCounts":[I
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v8

    const/4 v14, 0x1

    if-ne v8, v14, :cond_3

    .line 107
    invoke-static {v6}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v6

    .line 108
    invoke-static {v7}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->doubleCounts([I)[I

    move-result-object v7

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    goto :goto_0

    .line 106
    :cond_3
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 113
    .end local v6    # "smallCounts":[I
    .end local v7    # "mediumCounts":[I
    .local v20, "smallCounts":[I
    .local v21, "mediumCounts":[I
    :goto_0
    int-to-float v6, v1

    .line 115
    invoke-static/range {v21 .. v21}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v19

    sub-float/2addr v6, v7

    .line 116
    invoke-static/range {v20 .. v20}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->maxValue([I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v15

    sub-float v22, v6, v7

    .line 117
    .local v22, "minAvailableLargeSpace":F
    div-float v6, v22, v16

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    double-to-int v13, v6

    .line 118
    .local v13, "largeCountMin":I
    int-to-float v6, v1

    div-float v6, v6, v16

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v12, v6

    .line 119
    .local v12, "largeCountMax":I
    sub-int v6, v12, v13

    add-int/2addr v6, v14

    new-array v11, v6, [I

    .line 120
    .local v11, "largeCounts":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v11

    if-ge v6, v7, :cond_4

    .line 121
    sub-int v7, v12, v6

    aput v7, v11, v6

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 124
    .end local v6    # "i":I
    :cond_4
    int-to-float v6, v1

    move/from16 v7, v17

    move v8, v5

    move v9, v15

    move-object/from16 v10, v20

    move-object/from16 v23, v11

    .end local v11    # "largeCounts":[I
    .local v23, "largeCounts":[I
    move/from16 v11, v19

    move/from16 v24, v12

    .end local v12    # "largeCountMax":I
    .local v24, "largeCountMax":I
    move-object/from16 v12, v21

    move/from16 v25, v13

    .end local v13    # "largeCountMin":I
    .local v25, "largeCountMin":I
    move/from16 v13, v16

    move-object/from16 v26, v2

    const/4 v2, 0x1

    .end local v2    # "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .local v26, "childLayoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    move-object/from16 v14, v23

    invoke-static/range {v6 .. v14}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v14

    .line 135
    .local v14, "arrangement":Lcom/google/android/material/carousel/Arrangement;
    invoke-virtual {v14}, Lcom/google/android/material/carousel/Arrangement;->getItemCount()I

    move-result v6

    iput v6, v0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    .line 137
    nop

    .line 138
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v6

    invoke-virtual {v0, v14, v6}, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->ensureArrangementFitsItemCount(Lcom/google/android/material/carousel/Arrangement;I)Z

    move-result v6

    .line 142
    .local v6, "refreshArrangement":Z
    iget v7, v14, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-nez v7, :cond_5

    iget v7, v14, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-nez v7, :cond_5

    int-to-float v7, v1

    mul-float v18, v18, v5

    cmpl-float v7, v7, v18

    if-lez v7, :cond_5

    .line 145
    iput v2, v14, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    .line 146
    const/4 v6, 0x1

    move v2, v6

    goto :goto_2

    .line 149
    :cond_5
    move v2, v6

    .end local v6    # "refreshArrangement":Z
    .local v2, "refreshArrangement":Z
    :goto_2
    if-eqz v2, :cond_6

    .line 152
    int-to-float v6, v1

    iget v7, v14, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    filled-new-array {v7}, [I

    move-result-object v10

    iget v7, v14, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    filled-new-array {v7}, [I

    move-result-object v12

    iget v7, v14, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    filled-new-array {v7}, [I

    move-result-object v18

    .line 153
    move/from16 v7, v17

    move v8, v5

    move v9, v15

    move/from16 v11, v19

    move/from16 v13, v16

    move-object/from16 v27, v14

    .end local v14    # "arrangement":Lcom/google/android/material/carousel/Arrangement;
    .local v27, "arrangement":Lcom/google/android/material/carousel/Arrangement;
    move-object/from16 v14, v18

    invoke-static/range {v6 .. v14}, Lcom/google/android/material/carousel/Arrangement;->findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;

    move-result-object v14

    .end local v27    # "arrangement":Lcom/google/android/material/carousel/Arrangement;
    .restart local v14    # "arrangement":Lcom/google/android/material/carousel/Arrangement;
    goto :goto_3

    .line 149
    :cond_6
    move-object/from16 v27, v14

    .line 165
    :goto_3
    nop

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 170
    invoke-interface/range {p1 .. p1}, Lcom/google/android/material/carousel/Carousel;->getCarouselAlignment()I

    move-result v7

    .line 165
    invoke-static {v6, v3, v1, v14, v7}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->createKeylineState(Landroid/content/Context;FILcom/google/android/material/carousel/Arrangement;I)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v6

    return-object v6
.end method

.method public shouldRefreshKeylineState(Lcom/google/android/material/carousel/Carousel;I)Z
    .locals 2
    .param p1, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p2, "oldItemCount"    # I

    .line 195
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge p2, v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-lt p2, v0, :cond_2

    .line 196
    invoke-interface {p1}, Lcom/google/android/material/carousel/Carousel;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/carousel/MultiBrowseCarouselStrategy;->keylineCount:I

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0
.end method
