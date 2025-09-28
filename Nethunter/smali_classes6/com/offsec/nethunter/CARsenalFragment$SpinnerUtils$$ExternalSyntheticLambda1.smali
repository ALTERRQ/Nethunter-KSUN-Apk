.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/concurrent/ExecutorService;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;Lcom/offsec/nethunter/utils/ShellExecuter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$3:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda1;->f$3:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->lambda$setupDeviceInterfaceSpinner$2(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V

    return-void
.end method
