.class public final synthetic Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/AppNavHomeActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    iput-boolean p2, p0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda5;->f$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    iget-boolean v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda5;->f$1:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/offsec/nethunter/AppNavHomeActivity;->lambda$showWarningDialog$6$com-offsec-nethunter-AppNavHomeActivity(ZLandroid/content/DialogInterface;I)V

    return-void
.end method
