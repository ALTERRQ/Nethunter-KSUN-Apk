.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/concurrent/ExecutorService;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->lambda$setupDeviceInterfaceSpinner$2(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
