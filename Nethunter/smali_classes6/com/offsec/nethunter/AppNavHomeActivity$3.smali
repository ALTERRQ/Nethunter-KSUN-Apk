.class Lcom/offsec/nethunter/AppNavHomeActivity$3;
.super Ljava/lang/Object;
.source "AppNavHomeActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/AppNavHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AppNavHomeActivity;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/AppNavHomeActivity;

    .line 345
    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$3;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 350
    move-object v0, p2

    check-cast v0, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;

    .line 351
    .local v0, "binder":Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$3;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0}, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;->getService()Lcom/offsec/nethunter/gps/LocationUpdateService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$502(Lcom/offsec/nethunter/AppNavHomeActivity;Lcom/offsec/nethunter/gps/LocationUpdateService;)Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 352
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$3;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$602(Lcom/offsec/nethunter/AppNavHomeActivity;Z)Z

    .line 353
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$3;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$700(Lcom/offsec/nethunter/AppNavHomeActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$3;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$500(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/offsec/nethunter/gps/LocationUpdateService;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/AppNavHomeActivity$3;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {v2}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$800(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    .line 356
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .line 359
    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$3;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/offsec/nethunter/AppNavHomeActivity;->access$602(Lcom/offsec/nethunter/AppNavHomeActivity;Z)Z

    .line 360
    return-void
.end method
