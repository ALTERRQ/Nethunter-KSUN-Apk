.class public Lcom/offsec/nethunter/models/NethunterModel;
.super Ljava/lang/Object;
.source "NethunterModel.java"


# instance fields
.field private command:Ljava/lang/String;

.field private delimiter:Ljava/lang/String;

.field private result:[Ljava/lang/String;

.field private runOnCreate:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->title:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->command:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->delimiter:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->runOnCreate:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->result:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "runOnCreate"    # Ljava/lang/String;
    .param p5, "result"    # [Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->title:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/offsec/nethunter/models/NethunterModel;->command:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/offsec/nethunter/models/NethunterModel;->delimiter:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/offsec/nethunter/models/NethunterModel;->runOnCreate:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/offsec/nethunter/models/NethunterModel;->result:[Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()[Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->result:[Ljava/lang/String;

    return-object v0
.end method

.method public getRunOnCreate()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->runOnCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/models/NethunterModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->command:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setResult([Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # [Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->result:[Ljava/lang/String;

    return-void
.end method

.method public setRunOnCreate(Ljava/lang/String;)V
    .locals 0
    .param p1, "runOnCreate"    # Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->runOnCreate:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/offsec/nethunter/models/NethunterModel;->title:Ljava/lang/String;

    return-void
.end method
