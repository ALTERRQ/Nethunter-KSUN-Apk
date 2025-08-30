.class Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->showFloatingWebView(Landroid/webkit/WebView;)V
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

.field private startWidth:I

.field final synthetic this$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

.field final synthetic val$layoutParams:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2444
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$wm:Landroid/view/WindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2447
    const/4 p2, 0x0

    iput p2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->startDist:F

    .line 2448
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->isResizing:Z

    return-void
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 2451
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 2452
    .local v1, "dx":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 2453
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
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 2458
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 2459
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2475
    :pswitch_1
    iput-boolean v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->isResizing:Z

    goto :goto_0

    .line 2461
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->startDist:F

    .line 2462
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->startWidth:I

    .line 2463
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->startHeight:I

    .line 2464
    iput-boolean v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->isResizing:Z

    .line 2465
    goto :goto_0

    .line 2467
    :pswitch_3
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->isResizing:Z

    if-eqz v0, :cond_0

    .line 2468
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    iget v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->startDist:F

    div-float/2addr v0, v1

    .line 2469
    .local v0, "scale":F
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->startWidth:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2470
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->startHeight:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2471
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->access$500(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2472
    .end local v0    # "scale":F
    nop

    .line 2478
    :cond_0
    :goto_0
    return v3

    .line 2479
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 2480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    .line 2486
    :pswitch_5
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->offsetX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2487
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->offsetY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2488
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->this$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->access$500(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2489
    return v3

    .line 2482
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->offsetX:F

    .line 2483
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->val$layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$2;->offsetY:F

    .line 2484
    return v3

    .line 2492
    :cond_2
    :goto_1
    return v2

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
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
