.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Landroid/widget/Spinner;

.field public final synthetic f$3:Landroid/content/SharedPreferences;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;ZLcom/offsec/nethunter/utils/ShellExecuter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$2:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$3:Landroid/content/SharedPreferences;

    iput-object p5, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$5:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    iput-boolean p7, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$6:Z

    iput-object p8, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$7:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$2:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$3:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$5:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    iget-boolean v6, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$6:Z

    iget-object v7, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$$ExternalSyntheticLambda2;->f$7:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-static/range {v0 .. v7}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->lambda$setupDeviceInterfaceSpinner$0(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/Spinner;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;ZLcom/offsec/nethunter/utils/ShellExecuter;)V

    return-void
.end method
