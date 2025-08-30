.class Lcom/offsec/nethunter/MPCFragment$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MPCFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/MPCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/MPCFragment;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/MPCFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/MPCFragment;

    .line 252
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment$6;->this$0:Lcom/offsec/nethunter/MPCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/MPCFragment$6;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;

    .line 255
    iget-object v0, p0, Lcom/offsec/nethunter/MPCFragment$6;->this$0:Lcom/offsec/nethunter/MPCFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/MPCFragment;->access$500(Lcom/offsec/nethunter/MPCFragment;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 256
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    iget-object v1, p0, Lcom/offsec/nethunter/MPCFragment$6;->this$0:Lcom/offsec/nethunter/MPCFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/MPCFragment;->access$500(Lcom/offsec/nethunter/MPCFragment;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 258
    .local v1, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 259
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 260
    .local v3, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 261
    .local v4, "address":Ljava/net/InetAddress;
    instance-of v5, v4, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    .line 262
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "ip":Ljava/lang/String;
    iget-object v6, p0, Lcom/offsec/nethunter/MPCFragment$6;->val$rootView:Landroid/view/View;

    const v7, 0x7f0a0339

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 265
    .local v6, "ipaddress":Landroid/widget/EditText;
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    .end local v3    # "linkAddress":Landroid/net/LinkAddress;
    .end local v4    # "address":Ljava/net/InetAddress;
    .end local v5    # "ip":Ljava/lang/String;
    .end local v6    # "ipaddress":Landroid/widget/EditText;
    :cond_0
    goto :goto_0

    .line 269
    :cond_1
    return-void
.end method
