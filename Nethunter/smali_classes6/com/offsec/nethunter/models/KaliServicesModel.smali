.class public Lcom/offsec/nethunter/models/KaliServicesModel;
.super Ljava/lang/Object;
.source "KaliServicesModel.java"


# instance fields
.field private CommandforCheckServiceStatus:Ljava/lang/String;

.field private CommandforStartService:Ljava/lang/String;

.field private CommandforStopService:Ljava/lang/String;

.field private RunOnChrootStart:Ljava/lang/String;

.field private ServiceName:Ljava/lang/String;

.field private Status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "ServiceName"    # Ljava/lang/String;
    .param p2, "CommandforStartService"    # Ljava/lang/String;
    .param p3, "CommandforStopService"    # Ljava/lang/String;
    .param p4, "CommandforCheckServiceStatus"    # Ljava/lang/String;
    .param p5, "RunOnChrootStart"    # Ljava/lang/String;
    .param p6, "Status"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->ServiceName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStartService:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStopService:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforCheckServiceStatus:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->RunOnChrootStart:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->Status:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCommandforCheckServiceStatus()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforCheckServiceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandforStartService()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStartService:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandforStopService()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStopService:Ljava/lang/String;

    return-object v0
.end method

.method public getRunOnChrootStart()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->RunOnChrootStart:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->ServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public setCommandforCheckServiceStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "CommandforCheckServiceStatus"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforCheckServiceStatus:Ljava/lang/String;

    return-void
.end method

.method public setCommandforStartService(Ljava/lang/String;)V
    .locals 0
    .param p1, "CommandforStartService"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStartService:Ljava/lang/String;

    return-void
.end method

.method public setCommandforStopService(Ljava/lang/String;)V
    .locals 0
    .param p1, "CommandforStopService"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->CommandforStopService:Ljava/lang/String;

    return-void
.end method

.method public setRunOnChrootStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "RunOnChrootStart"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->RunOnChrootStart:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "ServiceName"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->ServiceName:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "Status"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/offsec/nethunter/models/KaliServicesModel;->Status:Ljava/lang/String;

    return-void
.end method
