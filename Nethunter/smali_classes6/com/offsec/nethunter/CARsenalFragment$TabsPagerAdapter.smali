.class public Lcom/offsec/nethunter/CARsenalFragment$TabsPagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsPagerAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 413
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 414
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .line 419
    packed-switch p1, :pswitch_data_0

    .line 431
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CARsenalFragment$CANMSFFragment;-><init>()V

    return-object v0

    .line 429
    :pswitch_0
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CARsenalFragment$CANICSIMFragment;-><init>()V

    return-object v0

    .line 427
    :pswitch_1
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;-><init>()V

    return-object v0

    .line 425
    :pswitch_2
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;-><init>()V

    return-object v0

    .line 423
    :pswitch_3
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CARsenalFragment$ToolsFragment;-><init>()V

    return-object v0

    .line 421
    :pswitch_4
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemCount()I
    .locals 1

    .line 437
    const/4 v0, 0x6

    return v0
.end method
