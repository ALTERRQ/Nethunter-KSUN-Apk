.class public Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;,
        Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$ScrollState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_ENTER_ANIMATION_DURATION_MS:I = 0xe1

.field private static final DEFAULT_EXIT_ANIMATION_DURATION_MS:I = 0xaf

.field private static final ENTER_ANIM_DURATION_ATTR:I

.field private static final ENTER_EXIT_ANIM_EASING_ATTR:I

.field private static final EXIT_ANIM_DURATION_ATTR:I

.field public static final STATE_SCROLLED_DOWN:I = 0x1

.field public static final STATE_SCROLLED_UP:I = 0x2


# instance fields
.field private accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private additionalHiddenOffsetY:I

.field private currentAnimator:Landroid/view/ViewPropertyAnimator;

.field private currentState:I

.field private disableOnTouchExploration:Z

.field private enterAnimDuration:I

.field private enterAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private exitAnimDuration:I

.field private exitAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private height:I

.field private final onScrollStateChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    sput v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_ANIM_DURATION_ATTR:I

    .line 85
    sget v0, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    sput v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->EXIT_ANIM_DURATION_ATTR:I

    .line 86
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    sput v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_EXIT_ANIM_EASING_ATTR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 120
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    .line 116
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 117
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 123
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 104
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    .line 116
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 117
    iput v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 61
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    .param p1, "x1"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 61
    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 61
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .line 61
    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p2, "targetY"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 314
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    nop

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p2

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 318
    invoke-virtual {v0, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$2;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    .line 327
    return-void
.end method

.method private disableIfTouchExplorationEnabled(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    if-nez v0, :cond_1

    .line 157
    new-instance v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 163
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->touchExplorationListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 164
    new-instance v0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;-><init>(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 179
    :cond_1
    return-void
.end method

.method private updateCurrentState(Landroid/view/View;I)V
    .locals 3
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 307
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;

    .line 308
    .local v1, "listener":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;
    iget v2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;->onStateChanged(Landroid/view/View;I)V

    .line 309
    .end local v1    # "listener":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;
    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;

    .line 335
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public clearOnScrollStateChangedListeners()V
    .locals 1

    .line 349
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 350
    return-void
.end method

.method public disableOnTouchExploration(Z)V
    .locals 0
    .param p1, "disableOnTouchExploration"    # Z

    .line 354
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iput-boolean p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    .line 355
    return-void
.end method

.method public isDisabledOnTouchExploration()Z
    .locals 1

    .line 359
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget-boolean v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    return v0
.end method

.method public isScrolledDown()Z
    .locals 2

    .line 263
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isScrolledUp()Z
    .locals 2

    .line 226
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$disableIfTouchExplorationEnabled$0$com-google-android-material-behavior-HideBottomViewOnScrollBehavior(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .line 159
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->isScrolledDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4
    .param p1, "parent"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    nop

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 131
    .local v0, "paramsCompat":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 132
    nop

    .line 134
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_ANIM_DURATION_ATTR:I

    .line 133
    const/16 v3, 0xe1

    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->enterAnimDuration:I

    .line 135
    nop

    .line 137
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->EXIT_ANIM_DURATION_ATTR:I

    .line 136
    const/16 v3, 0xaf

    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->exitAnimDuration:I

    .line 138
    nop

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_EXIT_ANIM_EASING_ATTR:I

    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 139
    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->enterAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 143
    nop

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->ENTER_EXIT_ANIM_EASING_ATTR:I

    sget-object v3, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 144
    invoke-static {v1, v2, v3}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->exitAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 148
    invoke-direct {p0, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableIfTouchExplorationEnabled(Landroid/view/View;)V

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .param p9, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    if-lez p5, :cond_0

    .line 218
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;)V

    goto :goto_0

    .line 219
    :cond_0
    if-gez p5, :cond_1

    .line 220
    invoke-virtual {p0, p2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;)V

    .line 222
    :cond_1
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeOnScrollStateChangedListener(Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior$OnScrollStateChangedListener;

    .line 344
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->onScrollStateChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public setAdditionalHiddenOffsetY(Landroid/view/View;I)V
    .locals 2
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    iput p2, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 190
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    iget v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 193
    :cond_0
    return-void
.end method

.method public slideDown(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 271
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Landroid/view/View;Z)V

    .line 272
    return-void
.end method

.method public slideDown(Landroid/view/View;Z)V
    .locals 8
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 281
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->isScrolledDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    return-void

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->disableOnTouchExploration:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 288
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 296
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->updateCurrentState(Landroid/view/View;I)V

    .line 297
    iget v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    iget v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    add-int/2addr v0, v1

    .line 298
    .local v0, "targetTranslationY":I
    if-eqz p2, :cond_3

    .line 299
    iget v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->exitAnimDuration:I

    int-to-long v5, v1

    iget-object v7, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->exitAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 301
    :cond_3
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 303
    :goto_0
    return-void
.end method

.method public slideUp(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Landroid/view/View;Z)V

    .line 235
    return-void
.end method

.method public slideUp(Landroid/view/View;Z)V
    .locals 7
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .line 244
    .local p0, "this":Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->isScrolledUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 252
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->updateCurrentState(Landroid/view/View;I)V

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "targetTranslationY":I
    if-eqz p2, :cond_2

    .line 255
    iget v1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->enterAnimDuration:I

    int-to-long v4, v1

    iget-object v6, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->enterAnimInterpolator:Landroid/animation/TimeInterpolator;

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Landroid/view/View;IJLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 257
    :cond_2
    int-to-float v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 259
    :goto_0
    return-void
.end method
