.class public Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsPagerAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;

    .line 221
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 222
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 248
    const/4 v0, 0x5

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 237
    new-instance v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;-><init>()V

    return-object v0

    .line 235
    :pswitch_0
    new-instance v0, Lcom/offsec/nethunter/BTFragment$CWFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BTFragment$CWFragment;-><init>()V

    return-object v0

    .line 233
    :pswitch_1
    new-instance v0, Lcom/offsec/nethunter/BTFragment$SpoofFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BTFragment$SpoofFragment;-><init>()V

    return-object v0

    .line 231
    :pswitch_2
    new-instance v0, Lcom/offsec/nethunter/BTFragment$ToolsFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BTFragment$ToolsFragment;-><init>()V

    return-object v0

    .line 229
    :pswitch_3
    new-instance v0, Lcom/offsec/nethunter/BTFragment$MainFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BTFragment$MainFragment;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 253
    packed-switch p1, :pswitch_data_0

    .line 265
    const-string v0, ""

    return-object v0

    .line 255
    :pswitch_0
    const-string v0, "Bad Bluetooth"

    return-object v0

    .line 257
    :pswitch_1
    const-string v0, "Carwhisperer"

    return-object v0

    .line 259
    :pswitch_2
    const-string v0, "Spoof"

    return-object v0

    .line 261
    :pswitch_3
    const-string v0, "Tools"

    return-object v0

    .line 263
    :pswitch_4
    const-string v0, "Main Page"

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

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method
