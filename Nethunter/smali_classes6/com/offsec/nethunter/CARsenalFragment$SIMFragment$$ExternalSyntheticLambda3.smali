.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/webkit/WebView;

.field public final synthetic f$1:Landroid/webkit/WebView;

.field public final synthetic f$2:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/webkit/WebView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;->f$0:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;->f$1:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;->f$2:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;->f$0:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;->f$1:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment$$ExternalSyntheticLambda3;->f$2:Landroid/webkit/WebView;

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$SIMFragment;->lambda$runICSIM$7(Landroid/webkit/WebView;Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    return-void
.end method
