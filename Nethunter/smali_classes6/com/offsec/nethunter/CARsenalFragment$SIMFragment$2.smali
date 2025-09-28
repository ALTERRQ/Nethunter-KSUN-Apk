.class Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->showFloatingWebView(Landroid/webkit/WebView;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isResizing:Z

.field private offsetX:F

.field private offsetY:F

.field private startDist:F

.field private startHeight:I

.field private startTouchX:F

.field private startTouchY:F

.field private startWidth:I

.field final synthetic this$0:Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;

.field final synthetic val$layoutParams:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3046
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3050
    const/4 p2, 0x0

    iput p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startDist:F

    .line 3051
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->isResizing:Z

    return-void
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3054
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 3055
    .local v1, "dx":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 3056
    .local v0, "dy":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 3061
    const/16 v0, 0xa

    .line 3063
    .local v0, "CLICK_THRESHOLD":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 3064
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3080
    :pswitch_1
    iput-boolean v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->isResizing:Z

    goto :goto_0

    .line 3066
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->distance(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startDist:F

    .line 3067
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startWidth:I

    .line 3068
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startHeight:I

    .line 3069
    iput-boolean v4, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->isResizing:Z

    .line 3070
    goto :goto_0

    .line 3072
    :pswitch_3
    iget-boolean v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->isResizing:Z

    if-eqz v1, :cond_0

    .line 3073
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->distance(Landroid/view/MotionEvent;)F

    move-result v1

    iget v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startDist:F

    div-float/2addr v1, v2

    .line 3074
    .local v1, "scale":F
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startWidth:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3075
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startHeight:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 3076
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$wm:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;

    invoke-static {v3}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->access$5600(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3077
    .end local v1    # "scale":F
    nop

    .line 3083
    :cond_0
    :goto_0
    return v4

    .line 3084
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 3085
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 3093
    :pswitch_4
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->offsetX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 3094
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->offsetY:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3095
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->access$5600(Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3096
    return v4

    .line 3098
    :pswitch_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startTouchX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 3099
    .local v1, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startTouchY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 3100
    .local v2, "dy":F
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v5, v1, v3

    if-gez v5, :cond_2

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 3101
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 3103
    :cond_2
    return v4

    .line 3087
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->offsetX:F

    .line 3088
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->offsetY:F

    .line 3089
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startTouchX:F

    .line 3090
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$2;->startTouchY:F

    .line 3091
    return v4

    .line 3106
    :cond_3
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
