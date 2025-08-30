.class Lcom/offsec/nethunter/gps/LocationUpdateService$1;
.super Ljava/lang/Object;
.source "LocationUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/gps/LocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/gps/LocationUpdateService;

    .line 334
    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 338
    const-wide/16 v0, 0x3e8

    :try_start_0
    iget-object v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v2}, Lcom/offsec/nethunter/gps/LocationUpdateService;->access$000(Lcom/offsec/nethunter/gps/LocationUpdateService;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-eqz v6, :cond_0

    .line 339
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 340
    iget-object v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v2}, Lcom/offsec/nethunter/gps/LocationUpdateService;->access$100(Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_0
    nop

    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v2}, Lcom/offsec/nethunter/gps/LocationUpdateService;->access$300(Lcom/offsec/nethunter/gps/LocationUpdateService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->access$200(Lcom/offsec/nethunter/gps/LocationUpdateService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    goto :goto_1

    .line 348
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "LocationUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimerTask Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 350
    :goto_1
    return-void

    .line 348
    :goto_2
    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->access$300(Lcom/offsec/nethunter/gps/LocationUpdateService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v4}, Lcom/offsec/nethunter/gps/LocationUpdateService;->access$200(Lcom/offsec/nethunter/gps/LocationUpdateService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    throw v2
.end method
