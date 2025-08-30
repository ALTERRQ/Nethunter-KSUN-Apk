.class public Lcom/offsec/nethunter/HidFragment$TabsPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "HidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/HidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsPagerAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;

    .line 297
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 298
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 320
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .line 303
    packed-switch p1, :pswitch_data_0

    .line 309
    new-instance v0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;-><init>()V

    return-object v0

    .line 307
    :pswitch_0
    new-instance v0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;-><init>()V

    return-object v0

    .line 305
    :pswitch_1
    new-instance v0, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/HidFragment$PowerSploitFragment;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 325
    packed-switch p1, :pswitch_data_0

    .line 331
    const-string v0, "Powershell HTTP Payload"

    return-object v0

    .line 327
    :pswitch_0
    const-string v0, "Windows CMD"

    return-object v0

    .line 329
    :pswitch_1
    const-string v0, "PowerSploit"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 315
    const/4 v0, 0x0

    return-object v0
.end method
