.class public Lcom/google/android/material/carousel/KeylineStateList;
.super Ljava/lang/Object;
.source "KeylineStateList.java"


# static fields
.field private static final NO_INDEX:I = -0x1


# instance fields
.field private final defaultState:Lcom/google/android/material/carousel/KeylineState;

.field private final endShiftRange:F

.field private final endStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final endStateStepsInterpolationPoints:[F

.field private final startShiftRange:F

.field private final startStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final startStateStepsInterpolationPoints:[F


# direct methods
.method private constructor <init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "defaultState"    # Lcom/google/android/material/carousel/KeylineState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/KeylineState;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p2, "startStateSteps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    .local p3, "endStateSteps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    .line 69
    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 70
    invoke-static {p3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 74
    nop

    .line 75
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    .line 77
    nop

    .line 78
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    .line 79
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    .line 83
    iget v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    .line 84
    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    .line 86
    iget v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    .line 87
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    .line 88
    return-void
.end method

.method private closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 3
    .param p2, "interpolation"    # F
    .param p3, "stateStepsInterpolationPoints"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    .line 280
    .local p1, "stateSteps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    nop

    .line 281
    invoke-static {p1, p2, p3}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object v0

    .line 287
    .local v0, "stateStepsRange":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 288
    const/4 v1, 0x2

    aget v1, v0, v1

    float-to-int v1, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    return-object v1

    .line 290
    :cond_0
    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-int v1, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    return-object v1
.end method

.method private static findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 3
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "mask"    # F

    .line 761
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    .line 762
    .local v0, "focalEndIndex":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 764
    return v1

    .line 762
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private static findFirstNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .locals 2
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;

    .line 783
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v1, :cond_0

    .line 785
    return v0

    .line 783
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 789
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 3
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "mask"    # F

    .line 772
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 773
    .local v0, "focalStartIndex":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 775
    return v1

    .line 773
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 779
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static findLastNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .locals 2
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;

    .line 793
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 794
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget-boolean v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-nez v1, :cond_0

    .line 795
    return v0

    .line 793
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 799
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineStateList;
    .locals 3
    .param p0, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p1, "state"    # Lcom/google/android/material/carousel/KeylineState;
    .param p2, "itemMargins"    # F
    .param p3, "leftOrTopPadding"    # F
    .param p4, "rightOrBottomPadding"    # F
    .param p5, "strategyType"    # Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    .line 98
    new-instance v0, Lcom/google/android/material/carousel/KeylineStateList;

    .line 100
    invoke-static {p0, p1, p2, p3, p5}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsStart(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;

    move-result-object v1

    .line 101
    invoke-static {p0, p1, p2, p4, p5}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/material/carousel/KeylineStateList;-><init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V

    .line 98
    return-object v0
.end method

.method private static getStateStepInterpolationPoints(FLjava/util/List;Z)[F
    .locals 8
    .param p0, "shiftRange"    # F
    .param p2, "isShiftingLeft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;Z)[F"
        }
    .end annotation

    .line 323
    .local p1, "stateSteps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 324
    .local v0, "numberOfSteps":I
    new-array v1, v0, [F

    .line 328
    .local v1, "stateStepsInterpolationPoints":[F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 329
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/KeylineState;

    .line 330
    .local v3, "prevState":Lcom/google/android/material/carousel/KeylineState;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    .line 333
    .local v4, "currState":Lcom/google/android/material/carousel/KeylineState;
    if-eqz p2, :cond_0

    .line 334
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v6

    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v6

    goto :goto_1

    .line 335
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v6

    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v6

    :goto_1
    nop

    .line 337
    .local v5, "distanceShifted":F
    div-float v6, v5, p0

    .line 338
    .local v6, "stepProgress":F
    nop

    .line 339
    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v2, -0x1

    aget v7, v1, v7

    add-float/2addr v7, v6

    :goto_2
    aput v7, v1, v2

    .line 328
    .end local v3    # "prevState":Lcom/google/android/material/carousel/KeylineState;
    .end local v4    # "currState":Lcom/google/android/material/carousel/KeylineState;
    .end local v5    # "distanceShifted":F
    .end local v6    # "stepProgress":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private static getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;
    .locals 24
    .param p0, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p1, "defaultState"    # Lcom/google/android/material/carousel/KeylineState;
    .param p2, "itemMargins"    # F
    .param p3, "rightOrBottomPaddingForKeylineShift"    # F
    .param p4, "strategyType"    # Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            "FF",
            "Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 610
    move-object/from16 v6, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 611
    .local v7, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-static/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineStateList;->findLastNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v15

    .line 614
    .local v15, "lastNonAnchorKeylineIndex":I
    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    :goto_0
    move v5, v0

    .line 619
    .local v5, "carouselSize":I
    invoke-static/range {p0 .. p1}, Lcom/google/android/material/carousel/KeylineStateList;->isLastFocalItemVisibleAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_6

    const/4 v0, -0x1

    if-ne v15, v0, :cond_1

    move v13, v5

    goto/16 :goto_4

    .line 635
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v17

    .line 636
    .local v17, "start":I
    move/from16 v18, v15

    .line 637
    .local v18, "end":I
    sub-int v4, v18, v17

    .line 638
    .local v4, "numberOfSteps":I
    nop

    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 640
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v19, v0, v1

    .line 642
    .local v19, "originalStart":F
    if-gtz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_2

    .line 646
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    .line 647
    .local v0, "cutoffs":F
    sub-float v1, v19, v0

    sub-float v1, v1, p3

    invoke-static {v6, v1, v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    return-object v7

    .line 652
    .end local v0    # "cutoffs":F
    :cond_2
    const/4 v0, 0x0

    .line 653
    .restart local v0    # "cutoffs":F
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 654
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    .line 655
    .local v2, "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    sub-int v1, v18, v3

    .line 656
    .local v1, "itemOrigIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v8, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float v20, v0, v8

    .line 660
    .end local v0    # "cutoffs":F
    .local v20, "cutoffs":F
    const/4 v0, 0x0

    .line 661
    .local v0, "dstIndex":I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 662
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v8, v8, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 663
    .local v8, "originalAdjacentMaskRight":F
    nop

    .line 664
    invoke-static {v2, v8}, Lcom/google/android/material/carousel/KeylineStateList;->findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v9

    add-int/lit8 v0, v9, 0x1

    move/from16 v21, v0

    goto :goto_2

    .line 661
    .end local v8    # "originalAdjacentMaskRight":F
    :cond_3
    move/from16 v21, v0

    .line 669
    .end local v0    # "dstIndex":I
    .local v21, "dstIndex":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v22, v0, 0x1

    .line 670
    .local v22, "newFirstFocalIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v23, v0, 0x1

    .line 671
    .local v23, "newLastFocalIndex":I
    sub-float v11, v19, v20

    .line 672
    move-object v8, v2

    move v9, v15

    move/from16 v10, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move v14, v5

    invoke-static/range {v8 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v8

    .line 681
    .local v8, "shifted":Lcom/google/android/material/carousel/KeylineState;
    add-int/lit8 v0, v4, -0x1

    if-ne v3, v0, :cond_4

    cmpl-float v0, p3, v16

    if-lez v0, :cond_4

    .line 682
    const/4 v9, 0x0

    move-object v0, v8

    move v10, v1

    .end local v1    # "itemOrigIndex":I
    .local v10, "itemOrigIndex":I
    move/from16 v1, p3

    move-object v11, v2

    .end local v2    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .local v11, "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    move v2, v5

    move v12, v3

    .end local v3    # "i":I
    .local v12, "i":I
    move v3, v9

    move v9, v4

    .end local v4    # "numberOfSteps":I
    .local v9, "numberOfSteps":I
    move/from16 v4, p2

    move v13, v5

    .end local v5    # "carouselSize":I
    .local v13, "carouselSize":I
    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v8

    goto :goto_3

    .line 681
    .end local v9    # "numberOfSteps":I
    .end local v10    # "itemOrigIndex":I
    .end local v11    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .end local v12    # "i":I
    .end local v13    # "carouselSize":I
    .restart local v1    # "itemOrigIndex":I
    .restart local v2    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .restart local v3    # "i":I
    .restart local v4    # "numberOfSteps":I
    .restart local v5    # "carouselSize":I
    :cond_4
    move v10, v1

    move-object v11, v2

    move v12, v3

    move v9, v4

    move v13, v5

    .line 690
    .end local v1    # "itemOrigIndex":I
    .end local v2    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .end local v3    # "i":I
    .end local v4    # "numberOfSteps":I
    .end local v5    # "carouselSize":I
    .restart local v9    # "numberOfSteps":I
    .restart local v10    # "itemOrigIndex":I
    .restart local v11    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .restart local v12    # "i":I
    .restart local v13    # "carouselSize":I
    :goto_3
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v8    # "shifted":Lcom/google/android/material/carousel/KeylineState;
    .end local v10    # "itemOrigIndex":I
    .end local v11    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .end local v21    # "dstIndex":I
    .end local v22    # "newFirstFocalIndex":I
    .end local v23    # "newLastFocalIndex":I
    add-int/lit8 v3, v12, 0x1

    move v4, v9

    move v5, v13

    move/from16 v0, v20

    .end local v12    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1

    .line 693
    .end local v3    # "i":I
    .end local v9    # "numberOfSteps":I
    .end local v13    # "carouselSize":I
    .end local v20    # "cutoffs":F
    .local v0, "cutoffs":F
    .restart local v4    # "numberOfSteps":I
    .restart local v5    # "carouselSize":I
    :cond_5
    return-object v7

    .line 619
    .end local v0    # "cutoffs":F
    .end local v4    # "numberOfSteps":I
    .end local v17    # "start":I
    .end local v18    # "end":I
    .end local v19    # "originalStart":F
    :cond_6
    move v13, v5

    .line 622
    .end local v5    # "carouselSize":I
    .restart local v13    # "carouselSize":I
    :goto_4
    cmpl-float v0, p3, v16

    if-lez v0, :cond_7

    .line 623
    nop

    .line 624
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move v2, v13

    move/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    .line 623
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_7
    return-object v7
.end method

.method private static getStateStepsRange(Ljava/util/List;F[F)[F
    .locals 11
    .param p1, "interpolation"    # F
    .param p2, "stateStepsInterpolationPoints"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)[F"
        }
    .end annotation

    .line 257
    .local p0, "stateSteps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 260
    .local v0, "numberOfSteps":I
    const/4 v1, 0x0

    aget v2, p2, v1

    .line 261
    .local v2, "lowerBounds":F
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v0, :cond_1

    .line 262
    aget v5, p2, v3

    .line 263
    .local v5, "upperBounds":F
    cmpg-float v6, p1, v5

    if-gtz v6, :cond_0

    .line 264
    add-int/lit8 v6, v3, -0x1

    .line 265
    .local v6, "fromIndex":I
    move v7, v3

    .line 266
    .local v7, "toIndex":I
    nop

    .line 267
    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v2, v5, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v8

    .line 268
    .local v8, "steppedProgress":F
    int-to-float v9, v6

    int-to-float v10, v7

    new-array v4, v4, [F

    aput v8, v4, v1

    const/4 v1, 0x1

    aput v9, v4, v1

    const/4 v1, 0x2

    aput v10, v4, v1

    return-object v4

    .line 270
    .end local v6    # "fromIndex":I
    .end local v7    # "toIndex":I
    .end local v8    # "steppedProgress":F
    :cond_0
    move v2, v5

    .line 261
    .end local v5    # "upperBounds":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v3    # "i":I
    :cond_1
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static getStateStepsStart(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;FFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Ljava/util/List;
    .locals 24
    .param p0, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p1, "defaultState"    # Lcom/google/android/material/carousel/KeylineState;
    .param p2, "itemMargins"    # F
    .param p3, "leftOrTopPaddingForKeylineShift"    # F
    .param p4, "strategyType"    # Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            "FF",
            "Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 503
    move-object/from16 v6, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 504
    .local v7, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-static/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstNonAnchorKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v15

    .line 507
    .local v15, "firstNonAnchorKeylineIndex":I
    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    :goto_0
    move v5, v0

    .line 512
    .local v5, "carouselSize":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineStateList;->isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_6

    const/4 v0, -0x1

    if-ne v15, v0, :cond_1

    move v13, v5

    goto/16 :goto_4

    .line 527
    :cond_1
    move/from16 v17, v15

    .line 528
    .local v17, "start":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v18

    .line 529
    .local v18, "end":I
    sub-int v4, v18, v17

    .line 530
    .local v4, "numberOfSteps":I
    nop

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    .line 532
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v19, v0, v1

    .line 534
    .local v19, "originalStart":F
    if-gtz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_2

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    .line 539
    .local v0, "cutoffs":F
    add-float v1, v19, v0

    add-float v1, v1, p3

    .line 540
    invoke-static {v6, v1, v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    .line 539
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    return-object v7

    .line 547
    .end local v0    # "cutoffs":F
    :cond_2
    const/4 v0, 0x0

    .line 548
    .restart local v0    # "cutoffs":F
    const/4 v1, 0x0

    move v3, v1

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_5

    .line 549
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    .line 550
    .local v2, "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    add-int v1, v17, v3

    .line 554
    .local v1, "itemOrigIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 555
    .local v8, "dstIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v9, v9, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    add-float v20, v0, v9

    .line 556
    .end local v0    # "cutoffs":F
    .local v20, "cutoffs":F
    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_3

    .line 557
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v9, v1, -0x1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    .line 558
    .local v0, "originalAdjacentMaskLeft":F
    nop

    .line 559
    invoke-static {v2, v0}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    move/from16 v21, v8

    goto :goto_2

    .line 556
    .end local v0    # "originalAdjacentMaskLeft":F
    :cond_3
    move/from16 v21, v8

    .line 563
    .end local v8    # "dstIndex":I
    .local v21, "dstIndex":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/lit8 v22, v0, -0x1

    .line 564
    .local v22, "newFirstFocalIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    sub-int/2addr v0, v3

    add-int/lit8 v23, v0, -0x1

    .line 566
    .local v23, "newLastFocalIndex":I
    add-float v11, v19, v20

    .line 567
    move-object v8, v2

    move v9, v15

    move/from16 v10, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move v14, v5

    invoke-static/range {v8 .. v14}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v8

    .line 577
    .local v8, "shifted":Lcom/google/android/material/carousel/KeylineState;
    add-int/lit8 v0, v4, -0x1

    if-ne v3, v0, :cond_4

    cmpl-float v0, p3, v16

    if-lez v0, :cond_4

    .line 578
    const/4 v9, 0x1

    move-object v0, v8

    move v10, v1

    .end local v1    # "itemOrigIndex":I
    .local v10, "itemOrigIndex":I
    move/from16 v1, p3

    move-object v11, v2

    .end local v2    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .local v11, "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    move v2, v5

    move v12, v3

    .end local v3    # "i":I
    .local v12, "i":I
    move v3, v9

    move v9, v4

    .end local v4    # "numberOfSteps":I
    .local v9, "numberOfSteps":I
    move/from16 v4, p2

    move v13, v5

    .end local v5    # "carouselSize":I
    .local v13, "carouselSize":I
    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v8

    goto :goto_3

    .line 577
    .end local v9    # "numberOfSteps":I
    .end local v10    # "itemOrigIndex":I
    .end local v11    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .end local v12    # "i":I
    .end local v13    # "carouselSize":I
    .restart local v1    # "itemOrigIndex":I
    .restart local v2    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .restart local v3    # "i":I
    .restart local v4    # "numberOfSteps":I
    .restart local v5    # "carouselSize":I
    :cond_4
    move v10, v1

    move-object v11, v2

    move v12, v3

    move v9, v4

    move v13, v5

    .line 586
    .end local v1    # "itemOrigIndex":I
    .end local v2    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .end local v3    # "i":I
    .end local v4    # "numberOfSteps":I
    .end local v5    # "carouselSize":I
    .restart local v9    # "numberOfSteps":I
    .restart local v10    # "itemOrigIndex":I
    .restart local v11    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .restart local v12    # "i":I
    .restart local v13    # "carouselSize":I
    :goto_3
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    .end local v8    # "shifted":Lcom/google/android/material/carousel/KeylineState;
    .end local v10    # "itemOrigIndex":I
    .end local v11    # "prevStepState":Lcom/google/android/material/carousel/KeylineState;
    .end local v21    # "dstIndex":I
    .end local v22    # "newFirstFocalIndex":I
    .end local v23    # "newLastFocalIndex":I
    add-int/lit8 v3, v12, 0x1

    move v4, v9

    move v5, v13

    move/from16 v0, v20

    .end local v12    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1

    .line 588
    .end local v3    # "i":I
    .end local v9    # "numberOfSteps":I
    .end local v13    # "carouselSize":I
    .end local v20    # "cutoffs":F
    .local v0, "cutoffs":F
    .restart local v4    # "numberOfSteps":I
    .restart local v5    # "carouselSize":I
    :cond_5
    return-object v7

    .line 512
    .end local v0    # "cutoffs":F
    .end local v4    # "numberOfSteps":I
    .end local v17    # "start":I
    .end local v18    # "end":I
    .end local v19    # "originalStart":F
    :cond_6
    move v13, v5

    .line 514
    .end local v5    # "carouselSize":I
    .restart local v13    # "carouselSize":I
    :goto_4
    cmpl-float v0, p3, v16

    if-lez v0, :cond_7

    .line 515
    nop

    .line 516
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    move v2, v13

    move/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    .line 515
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_7
    return-object v7
.end method

.method private static isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 3
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;

    .line 354
    nop

    .line 355
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 356
    .local v0, "firstFocalItemLeft":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 356
    :goto_0
    return v1
.end method

.method private static isLastFocalItemVisibleAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 4
    .param p0, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p1, "state"    # Lcom/google/android/material/carousel/KeylineState;

    .line 371
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    .line 372
    .local v0, "containerSize":I
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    .line 375
    :cond_0
    nop

    .line 376
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 377
    .local v1, "lastFocalItemRight":F
    int-to-float v2, v0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    .line 378
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastNonAnchorKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 377
    :goto_0
    return v2
.end method

.method private static lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 4
    .param p1, "interpolation"    # F
    .param p2, "stateStepsInterpolationPoints"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    .line 235
    .local p0, "stateSteps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    nop

    .line 236
    invoke-static {p0, p1, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object v0

    .line 237
    .local v0, "stateStepsRange":[F
    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-int v1, v1

    .line 238
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    const/4 v2, 0x2

    aget v2, v0, v2

    float-to-int v2, v2

    .line 239
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    const/4 v3, 0x0

    aget v3, v0, v3

    .line 237
    invoke-static {v1, v2, v3}, Lcom/google/android/material/carousel/KeylineState;->lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    return-object v1
.end method

.method private static moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;
    .locals 18
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "keylineSrcIndex"    # I
    .param p2, "keylineDstIndex"    # I
    .param p3, "startOffset"    # F
    .param p4, "newFirstFocalIndex"    # I
    .param p5, "newLastFocalIndex"    # I
    .param p6, "carouselSize"    # I

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 741
    .local v0, "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 742
    .local v2, "item":Lcom/google/android/material/carousel/KeylineState$Keyline;
    move/from16 v3, p2

    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 744
    new-instance v4, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v5

    move/from16 v11, p6

    invoke-direct {v4, v5, v11}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    .line 746
    .local v4, "builder":Lcom/google/android/material/carousel/KeylineState$Builder;
    const/4 v5, 0x0

    move/from16 v12, p3

    move v13, v5

    .end local p3    # "startOffset":F
    .local v12, "startOffset":F
    .local v13, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v13, v5, :cond_2

    .line 747
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 748
    .local v14, "k":Lcom/google/android/material/carousel/KeylineState$Keyline;
    iget v5, v14, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v15, v12, v5

    .line 750
    .local v15, "offset":F
    move/from16 v10, p4

    if-lt v13, v10, :cond_0

    move/from16 v9, p5

    if-gt v13, v9, :cond_1

    const/4 v5, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move/from16 v9, p5

    :cond_1
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 753
    .local v8, "isFocal":Z
    :goto_1
    iget v6, v14, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v7, v14, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-boolean v5, v14, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    move-object/from16 v16, v0

    .end local v0    # "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    .local v16, "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    iget v0, v14, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    move/from16 v17, v5

    move v5, v15

    move/from16 v9, v17

    move v10, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 754
    iget v0, v14, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr v12, v0

    .line 746
    .end local v8    # "isFocal":Z
    .end local v14    # "k":Lcom/google/android/material/carousel/KeylineState$Keyline;
    .end local v15    # "offset":F
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    .end local v16    # "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    .restart local v0    # "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    :cond_2
    move-object/from16 v16, v0

    .line 757
    .end local v0    # "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    .end local v13    # "j":I
    .restart local v16    # "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method private static shiftKeylineStateForPadding(Lcom/google/android/material/carousel/KeylineState;FIZFLcom/google/android/material/carousel/CarouselStrategy$StrategyType;)Lcom/google/android/material/carousel/KeylineState;
    .locals 2
    .param p0, "keylineState"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "padding"    # F
    .param p2, "carouselSize"    # I
    .param p3, "leftShift"    # Z
    .param p4, "childMargins"    # F
    .param p5, "strategyType"    # Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;

    .line 385
    sget-object v0, Lcom/google/android/material/carousel/KeylineStateList$1;->$SwitchMap$com$google$android$material$carousel$CarouselStrategy$StrategyType:[I

    invoke-virtual {p5}, Lcom/google/android/material/carousel/CarouselStrategy$StrategyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 390
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPaddingUncontained(Lcom/google/android/material/carousel/KeylineState;FIZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0

    .line 387
    :pswitch_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/material/carousel/KeylineStateList;->shiftKeylineStateForPaddingContained(Lcom/google/android/material/carousel/KeylineState;FIZF)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static shiftKeylineStateForPaddingContained(Lcom/google/android/material/carousel/KeylineState;FIZF)Lcom/google/android/material/carousel/KeylineState;
    .locals 23
    .param p0, "keylineState"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "padding"    # F
    .param p2, "carouselSize"    # I
    .param p3, "leftShift"    # Z
    .param p4, "childMargins"    # F

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    .local v0, "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    new-instance v1, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    move/from16 v8, p2

    invoke-direct {v1, v2, v8}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    .line 438
    .local v1, "builder":Lcom/google/android/material/carousel/KeylineState$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getNumberOfNonAnchorKeylines()I

    move-result v9

    .line 439
    .local v9, "numOfNonAnchorKeylines":I
    int-to-float v2, v9

    div-float v10, p1, v2

    .line 440
    .local v10, "toDecreaseBy":F
    const/4 v2, 0x0

    .line 442
    .local v2, "nextOffset":F
    if-eqz p3, :cond_0

    .line 443
    move/from16 v2, p1

    .line 445
    :cond_0
    const/4 v3, 0x0

    move v11, v2

    move v12, v3

    .end local v2    # "nextOffset":F
    .local v11, "nextOffset":F
    .local v12, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 446
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 447
    .local v13, "k":Lcom/google/android/material/carousel/KeylineState$Keyline;
    iget-boolean v2, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-eqz v2, :cond_1

    .line 448
    iget v2, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v3, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v4, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/4 v6, 0x1

    iget v7, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 455
    move/from16 v4, p4

    goto :goto_4

    .line 458
    :cond_1
    nop

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v2

    if-lt v12, v2, :cond_2

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v2

    if-gt v12, v2, :cond_2

    const/4 v2, 0x1

    const/16 v18, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/16 v18, 0x0

    .line 462
    .local v18, "isFocal":Z
    :goto_1
    iget v2, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    sub-float/2addr v2, v10

    .line 463
    .local v2, "maskedItemSize":F
    nop

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v3

    .line 464
    move/from16 v4, p4

    invoke-static {v2, v3, v4}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v3

    .line 466
    .local v3, "mask":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    add-float/2addr v5, v11

    .line 468
    .local v5, "locOffset":F
    iget v6, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    sub-float v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 470
    .local v6, "actualPaddingShift":F
    iget v7, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    .line 477
    const/4 v14, 0x0

    if-eqz p3, :cond_3

    move/from16 v21, v6

    goto :goto_2

    :cond_3
    const/16 v21, 0x0

    .line 478
    :goto_2
    if-eqz p3, :cond_4

    const/16 v22, 0x0

    goto :goto_3

    :cond_4
    move/from16 v22, v6

    .line 470
    :goto_3
    const/16 v19, 0x0

    move-object v14, v1

    move v15, v5

    move/from16 v16, v3

    move/from16 v17, v2

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZFFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 479
    add-float/2addr v11, v2

    .line 445
    .end local v2    # "maskedItemSize":F
    .end local v3    # "mask":F
    .end local v5    # "locOffset":F
    .end local v6    # "actualPaddingShift":F
    .end local v13    # "k":Lcom/google/android/material/carousel/KeylineState$Keyline;
    .end local v18    # "isFocal":Z
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_5
    move/from16 v4, p4

    .line 481
    .end local v12    # "j":I
    invoke-virtual {v1}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    return-object v2
.end method

.method private static shiftKeylineStateForPaddingUncontained(Lcom/google/android/material/carousel/KeylineState;FIZ)Lcom/google/android/material/carousel/KeylineState;
    .locals 23
    .param p0, "keylineState"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "padding"    # F
    .param p2, "carouselSize"    # I
    .param p3, "leftShift"    # Z

    .line 398
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 399
    .local v1, "tmpKeylines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState$Keyline;>;"
    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v3

    invoke-direct {v2, v3, v0}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(FI)V

    .line 401
    .local v2, "builder":Lcom/google/android/material/carousel/KeylineState$Builder;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz p3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v10

    :goto_0
    move v11, v3

    .line 402
    .local v11, "unchangingAnchorPosition":I
    const/4 v3, 0x0

    move v12, v3

    .local v12, "j":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_7

    .line 403
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/android/material/carousel/KeylineState$Keyline;

    .line 404
    .local v13, "k":Lcom/google/android/material/carousel/KeylineState$Keyline;
    iget-boolean v3, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    if-eqz v3, :cond_1

    if-ne v12, v11, :cond_1

    .line 405
    iget v3, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    iget v4, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v5, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/4 v7, 0x1

    iget v8, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->cutoff:F

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 406
    goto :goto_7

    .line 408
    :cond_1
    iget v3, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    if-eqz p3, :cond_2

    add-float v3, v3, p1

    goto :goto_2

    :cond_2
    sub-float v3, v3, p1

    .line 409
    .local v3, "newOffset":F
    :goto_2
    const/4 v4, 0x0

    if-eqz p3, :cond_3

    move/from16 v21, p1

    goto :goto_3

    :cond_3
    const/16 v21, 0x0

    .line 410
    .local v21, "leftOrTopPadding":F
    :goto_3
    if-eqz p3, :cond_4

    const/16 v22, 0x0

    goto :goto_4

    :cond_4
    move/from16 v22, p1

    .line 411
    .local v22, "rightOrBottomPadding":F
    :goto_4
    nop

    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v5

    if-lt v12, v5, :cond_5

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v5

    if-gt v12, v5, :cond_5

    const/16 v18, 0x1

    goto :goto_5

    :cond_5
    const/16 v18, 0x0

    .line 414
    .local v18, "isFocal":Z
    :goto_5
    iget v5, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v6, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    iget-boolean v7, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->isAnchor:Z

    .line 421
    const/high16 v8, 0x40000000    # 2.0f

    if-eqz p3, :cond_6

    .line 422
    iget v14, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    div-float/2addr v14, v8

    add-float/2addr v14, v3

    int-to-float v8, v0

    sub-float/2addr v14, v8

    invoke-static {v4, v14}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_6

    .line 423
    :cond_6
    iget v14, v13, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    div-float/2addr v14, v8

    sub-float v8, v3, v14

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 420
    :goto_6
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v20

    .line 414
    move-object v14, v2

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v19, v7

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZZFFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    .line 402
    .end local v3    # "newOffset":F
    .end local v13    # "k":Lcom/google/android/material/carousel/KeylineState$Keyline;
    .end local v18    # "isFocal":Z
    .end local v21    # "leftOrTopPadding":F
    .end local v22    # "rightOrBottomPadding":F
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 427
    .end local v12    # "j":I
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v3

    return-object v3
.end method

.method private static shiftKeylinesAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;FI)Lcom/google/android/material/carousel/KeylineState;
    .locals 7
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "startOffset"    # F
    .param p2, "carouselSize"    # I

    .line 708
    nop

    .line 713
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v4

    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v5

    .line 708
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFIII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getDefaultState()Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method getEndState()Lcom/google/android/material/carousel/KeylineState;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method getKeylineStateForPositionMap(IIIZ)Ljava/util/Map;
    .locals 16
    .param p1, "itemCount"    # I
    .param p2, "minHorizontalScroll"    # I
    .param p3, "maxHorizontalScroll"    # I
    .param p4, "isRTL"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    .line 804
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    .line 805
    .local v2, "itemSize":F
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 806
    .local v3, "keylineStates":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/android/material/carousel/KeylineState;>;"
    const/4 v4, 0x0

    .line 807
    .local v4, "endStepsIndex":I
    const/4 v5, 0x0

    .line 809
    .local v5, "startStepsIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x0

    const/4 v9, 0x1

    if-ge v6, v1, :cond_4

    .line 811
    if-eqz p4, :cond_0

    sub-int v10, v1, v6

    sub-int/2addr v10, v9

    goto :goto_1

    :cond_0
    move v10, v6

    .line 812
    .local v10, "position":I
    :goto_1
    int-to-float v11, v10

    mul-float v11, v11, v2

    if-eqz p4, :cond_1

    const/4 v8, -0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x1

    :goto_2
    int-to-float v8, v8

    mul-float v11, v11, v8

    .line 813
    .local v11, "itemPosition":F
    move/from16 v12, p3

    int-to-float v8, v12

    iget v13, v0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float/2addr v8, v13

    cmpl-float v8, v11, v8

    if-gtz v8, :cond_2

    iget-object v8, v0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 814
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int v8, v1, v8

    if-lt v6, v8, :cond_3

    .line 815
    :cond_2
    nop

    .line 816
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v13, v0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 817
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v9

    invoke-static {v4, v7, v14}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v7

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/carousel/KeylineState;

    .line 815
    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    add-int/lit8 v4, v4, 0x1

    .line 809
    .end local v10    # "position":I
    .end local v11    # "itemPosition":F
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move/from16 v12, p3

    .line 824
    .end local v6    # "i":I
    add-int/lit8 v6, v1, -0x1

    .restart local v6    # "i":I
    :goto_3
    if-ltz v6, :cond_9

    .line 826
    if-eqz p4, :cond_5

    sub-int v10, v1, v6

    sub-int/2addr v10, v9

    goto :goto_4

    :cond_5
    move v10, v6

    .line 827
    .restart local v10    # "position":I
    :goto_4
    int-to-float v11, v10

    mul-float v11, v11, v2

    if-eqz p4, :cond_6

    const/4 v13, -0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x1

    :goto_5
    int-to-float v13, v13

    mul-float v11, v11, v13

    .line 828
    .restart local v11    # "itemPosition":F
    move/from16 v13, p2

    int-to-float v14, v13

    iget v15, v0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v14, v15

    cmpg-float v14, v11, v14

    if-ltz v14, :cond_7

    iget-object v14, v0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_8

    .line 831
    :cond_7
    nop

    .line 832
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 833
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-static {v5, v7, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/carousel/KeylineState;

    .line 831
    invoke-interface {v3, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    add-int/lit8 v5, v5, 0x1

    .line 824
    .end local v10    # "position":I
    .end local v11    # "itemPosition":F
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_9
    move/from16 v13, p2

    .line 837
    .end local v6    # "i":I
    return-object v3
.end method

.method public getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 1
    .param p1, "scrollOffset"    # F
    .param p2, "minScrollOffset"    # F
    .param p3, "maxScrollOffset"    # F

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;
    .locals 8
    .param p1, "scrollOffset"    # F
    .param p2, "minScrollOffset"    # F
    .param p3, "maxScrollOffset"    # F
    .param p4, "roundToNearestStep"    # Z

    .line 168
    iget v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v0, p2

    .line 169
    .local v0, "startShiftOffset":F
    iget v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float v1, p3, v1

    .line 170
    .local v1, "endShiftOffset":F
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineStateList;->getStartState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->leftOrTopPaddingShift:F

    .line 171
    .local v2, "startPaddingShift":F
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineStateList;->getEndState()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->rightOrBottomPaddingShift:F

    .line 182
    .local v3, "endPaddingShift":F
    iget v4, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_0

    .line 183
    add-float/2addr v0, v2

    .line 186
    :cond_0
    iget v4, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    .line 187
    sub-float/2addr v1, v3

    .line 192
    :cond_1
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, p1, v0

    if-gez v6, :cond_2

    .line 193
    nop

    .line 194
    invoke-static {v5, v4, p2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v4

    .line 200
    .local v4, "interpolation":F
    iget-object v5, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    .line 201
    .local v5, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    iget-object v6, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    .local v6, "interpolationPoints":[F
    goto :goto_0

    .line 202
    .end local v4    # "interpolation":F
    .end local v5    # "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    .end local v6    # "interpolationPoints":[F
    :cond_2
    cmpl-float v6, p1, v1

    if-lez v6, :cond_4

    .line 203
    nop

    .line 204
    invoke-static {v4, v5, v1, p3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v4

    .line 210
    .restart local v4    # "interpolation":F
    iget-object v5, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    .line 211
    .restart local v5    # "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    iget-object v6, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    .line 216
    .restart local v6    # "interpolationPoints":[F
    :goto_0
    if-eqz p4, :cond_3

    .line 217
    invoke-direct {p0, v5, v4, v6}, Lcom/google/android/material/carousel/KeylineStateList;->closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v7

    return-object v7

    .line 219
    :cond_3
    invoke-static {v5, v4, v6}, Lcom/google/android/material/carousel/KeylineStateList;->lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v7

    return-object v7

    .line 213
    .end local v4    # "interpolation":F
    .end local v5    # "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/material/carousel/KeylineState;>;"
    .end local v6    # "interpolationPoints":[F
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object v4
.end method

.method getStartState()Lcom/google/android/material/carousel/KeylineState;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method
