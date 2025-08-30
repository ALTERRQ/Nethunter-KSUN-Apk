.class public Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "DuckHunterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/DuckHunterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabsPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/DuckHunterFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/DuckHunterFragment;Landroidx/fragment/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/DuckHunterFragment;
    .param p2, "fm"    # Landroidx/fragment/app/FragmentManager;

    .line 238
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    .line 239
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 240
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 262
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 3
    .param p1, "i"    # I

    .line 245
    packed-switch p1, :pswitch_data_0

    .line 251
    new-instance v0, Lcom/offsec/nethunter/DuckHunterConvertFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterFragment;->access$400(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterFragment;->access$500(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/DuckHunterConvertFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 249
    :pswitch_0
    new-instance v0, Lcom/offsec/nethunter/BtDuckyFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BtDuckyFragment;-><init>()V

    return-object v0

    .line 247
    :pswitch_1
    new-instance v0, Lcom/offsec/nethunter/DuckHunterPreviewFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/DuckHunterFragment;->access$400(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;->this$0:Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/DuckHunterFragment;->access$500(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/offsec/nethunter/DuckHunterPreviewFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .line 267
    packed-switch p1, :pswitch_data_0

    .line 273
    const-string v0, "Convert"

    return-object v0

    .line 271
    :pswitch_0
    const-string v0, "BT Ducky"

    return-object v0

    .line 269
    :pswitch_1
    const-string v0, "Preview"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method
