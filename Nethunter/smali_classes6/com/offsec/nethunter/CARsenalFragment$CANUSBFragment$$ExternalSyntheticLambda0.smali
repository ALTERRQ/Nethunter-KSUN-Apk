.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Landroidx/appcompat/widget/SwitchCompat;

.field public final synthetic f$2:Landroid/widget/EditText;

.field public final synthetic f$3:Landroid/widget/EditText;

.field public final synthetic f$4:Landroid/widget/EditText;

.field public final synthetic f$5:Landroid/widget/EditText;

.field public final synthetic f$6:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$1:Landroidx/appcompat/widget/SwitchCompat;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$4:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$5:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$6:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$1:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$3:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$4:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$5:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;->f$6:Landroid/widget/Spinner;

    move-object v7, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->lambda$showCanUsbConfig$2(Landroid/content/SharedPreferences;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V

    return-void
.end method
