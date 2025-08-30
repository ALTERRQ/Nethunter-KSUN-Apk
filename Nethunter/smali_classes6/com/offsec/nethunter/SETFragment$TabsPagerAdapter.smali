.class public Lcom/offsec/nethunter/SETFragment$TabsPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SETFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/SETFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsPagerAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;

    .line 124
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "i"    # I

    .line 130
    new-instance v0, Lcom/offsec/nethunter/SETFragment$MainFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/SETFragment$MainFragment;-><init>()V

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 145
    const-string v0, "Email Template"

    return-object v0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 135
    const/4 v0, 0x0

    return-object v0
.end method
