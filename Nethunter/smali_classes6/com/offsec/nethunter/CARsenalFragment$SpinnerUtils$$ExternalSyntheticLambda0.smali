.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/widget/Spinner;

.field public final synthetic f$4:Landroid/content/SharedPreferences;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;


# direct methods
.method public synthetic constructor <init>(ZLcom/offsec/nethunter/utils/ShellExecuter;Landroid/content/Context;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$3:Landroid/widget/Spinner;

    iput-object p5, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$4:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$6:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-boolean v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$3:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$4:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$5:Ljava/lang/String;

    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda0;->f$6:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    invoke-static/range {v0 .. v6}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->lambda$setupDeviceInterfaceSpinner$1(ZLcom/offsec/nethunter/utils/ShellExecuter;Landroid/content/Context;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    return-void
.end method
