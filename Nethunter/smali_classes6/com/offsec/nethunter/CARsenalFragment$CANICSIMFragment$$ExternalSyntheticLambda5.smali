.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

.field public final synthetic f$1:Landroid/view/WindowManager;

.field public final synthetic f$2:Landroid/view/ViewGroup;

.field public final synthetic f$3:Landroid/webkit/WebView;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/webkit/WebView;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$1:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$2:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$3:Landroid/webkit/WebView;

    iput p5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$4:I

    iput-object p6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$5:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$1:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$2:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$3:Landroid/webkit/WebView;

    iget v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$4:I

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment$$ExternalSyntheticLambda5;->f$5:Landroid/view/ViewGroup$LayoutParams;

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;->lambda$showFloatingWebView$5$com-offsec-nethunter-CARsenalFragment$CANICSIMFragment(Landroid/view/WindowManager;Landroid/view/ViewGroup;Landroid/webkit/WebView;ILandroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    return-void
.end method
