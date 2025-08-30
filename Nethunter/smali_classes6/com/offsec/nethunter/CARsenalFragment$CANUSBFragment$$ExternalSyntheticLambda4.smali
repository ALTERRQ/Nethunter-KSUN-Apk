.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Spinner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda4;->f$0:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda4;->f$0:Landroid/widget/Spinner;

    invoke-static {v0, p1, p2}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->lambda$showCanUsbConfig$6(Landroid/widget/Spinner;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
