.class public Lcom/offsec/nethunter/service/DummyAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "DummyAccessibilityService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "accessibilityEvent"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 10
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 14
    return-void
.end method
