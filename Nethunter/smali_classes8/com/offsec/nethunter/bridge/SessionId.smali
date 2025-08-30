.class public Lcom/offsec/nethunter/bridge/SessionId;
.super Ljava/lang/Object;
.source "SessionId.java"


# static fields
.field public static final CURRENT_SESSION:Lcom/offsec/nethunter/bridge/SessionId;

.field public static final NEW_SESSION:Lcom/offsec/nethunter/bridge/SessionId;


# instance fields
.field private final sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-string v0, "new"

    invoke-static {v0}, Lcom/offsec/nethunter/bridge/SessionId;->of(Ljava/lang/String;)Lcom/offsec/nethunter/bridge/SessionId;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/bridge/SessionId;->NEW_SESSION:Lcom/offsec/nethunter/bridge/SessionId;

    .line 16
    const-string v0, "current"

    invoke-static {v0}, Lcom/offsec/nethunter/bridge/SessionId;->of(Ljava/lang/String;)Lcom/offsec/nethunter/bridge/SessionId;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/bridge/SessionId;->CURRENT_SESSION:Lcom/offsec/nethunter/bridge/SessionId;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/offsec/nethunter/bridge/SessionId;->sessionId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/offsec/nethunter/bridge/SessionId;
    .locals 1
    .param p0, "sessionId"    # Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/offsec/nethunter/bridge/SessionId;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/bridge/SessionId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 36
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 37
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/offsec/nethunter/bridge/SessionId;

    .line 39
    .local v0, "sessionId1":Lcom/offsec/nethunter/bridge/SessionId;
    iget-object v1, p0, Lcom/offsec/nethunter/bridge/SessionId;->sessionId:Ljava/lang/String;

    iget-object v2, v0, Lcom/offsec/nethunter/bridge/SessionId;->sessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 37
    .end local v0    # "sessionId1":Lcom/offsec/nethunter/bridge/SessionId;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/offsec/nethunter/bridge/SessionId;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/offsec/nethunter/bridge/SessionId;->sessionId:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TerminalSession { id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/bridge/SessionId;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
