.class public Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppNavHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/AppNavHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NethunterReceiver"
.end annotation


# static fields
.field public static final BACKPRESSED:Ljava/lang/String; = "com.offsec.nethunter.BACKPRESSED"

.field public static final CHECKCHROOT:Ljava/lang/String; = "com.offsec.nethunter.CHECKCHROOT"

.field public static final CHECKCOMPAT:Ljava/lang/String; = "com.offsec.nethunter.CHECKCOMPAT"


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AppNavHomeActivity;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 687
    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 694
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 695
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "com.offsec.nethunter.CHECKCOMPAT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "com.offsec.nethunter.CHECKCHROOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "com.offsec.nethunter.BACKPRESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 711
    :pswitch_0
    :try_start_0
    const-string v0, "ENABLEFRAGMENT"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f0a010e

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$200(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$200(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 715
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    .line 716
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a036b

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->lastSelectedMenuItem:Landroid/view/MenuItem;

    .line 717
    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0a012b

    if-eq v0, v2, :cond_2

    .line 718
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 719
    .local v0, "fragmentManager":Landroidx/fragment/app/FragmentManager;
    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v1}, Lcom/offsec/nethunter/NetHunterFragment;->newInstance(I)Lcom/offsec/nethunter/NetHunterFragment;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$900(Lcom/offsec/nethunter/AppNavHomeActivity;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v0    # "fragmentManager":Landroidx/fragment/app/FragmentManager;
    :cond_2
    :goto_2
    goto :goto_3

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppNavHomeActivity"

    if-eqz v1, :cond_3

    .line 724
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 726
    :cond_3
    const-string v1, "e.getMessage is Null."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 702
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const-string v0, "isEnable"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->isBackPressEnabled:Ljava/lang/Boolean;

    .line 703
    sget-object v0, Lcom/offsec/nethunter/AppNavHomeActivity;->isBackPressEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 704
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->restoreActionBar()V

    goto :goto_3

    .line 706
    :cond_4
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->blockActionBar()V

    .line 708
    goto :goto_3

    .line 697
    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$NethunterReceiver;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 698
    const-string v1, "message"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 697
    const-string v2, "NetHunter app cannot be run properly"

    invoke-virtual {v0, v2, v1, v3}, Lcom/offsec/nethunter/AppNavHomeActivity;->showWarningDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 700
    nop

    .line 732
    :cond_5
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x17a00af5 -> :sswitch_2
        -0xd27de81 -> :sswitch_1
        -0xcc77dc6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
