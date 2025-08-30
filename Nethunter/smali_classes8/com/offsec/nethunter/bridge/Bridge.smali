.class public Lcom/offsec/nethunter/bridge/Bridge;
.super Ljava/lang/Object;
.source "Bridge.java"


# static fields
.field public static final ACTION_EXECUTE:Ljava/lang/String; = "neoterm.action.remote.execute"

.field public static final ACTION_SILENT_RUN:Ljava/lang/String; = "neoterm.action.remote.silent-run"

.field public static final EXTRA_COMMAND:Ljava/lang/String; = "neoterm.extra.remote.execute.command"

.field public static final EXTRA_EXECUTABLE:Ljava/lang/String; = "neoterm.extra.remote.execute.executable"

.field public static final EXTRA_FOREGROUND:Ljava/lang/String; = "neoterm.extra.remote.execute.foreground"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "neoterm.extra.remote.execute.session"

.field private static final NEOTERM_COMPONENT:Landroid/content/ComponentName;

.field private static final NEOTERM_PACKAGE:Ljava/lang/String; = "com.offsec.nhterm"

.field private static final NEOTERM_REMOTE_INTERFACE:Ljava/lang/String; = "com.offsec.nhterm.ui.term.NeoTermRemoteInterface"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.offsec.nhterm"

    const-string v2, "com.offsec.nhterm.ui.term.NeoTermRemoteInterface"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/offsec/nethunter/bridge/Bridge;->NEOTERM_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0
.end method

.method public static createExecuteIntent(Lcom/offsec/nethunter/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "sessionId"    # Lcom/offsec/nethunter/bridge/SessionId;
    .param p1, "executablePath"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Lcom/offsec/nethunter/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createExecuteIntent(Lcom/offsec/nethunter/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p0, "sessionId"    # Lcom/offsec/nethunter/bridge/SessionId;
    .param p1, "executablePath"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "foreground"    # Z

    .line 28
    const-string v0, "executablePath"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    const-string v0, "command"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    const-string v0, "session id"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "neoterm.action.remote.execute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/offsec/nethunter/bridge/Bridge;->NEOTERM_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 34
    const-string v1, "neoterm.extra.remote.execute.executable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "neoterm.extra.remote.execute.command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "neoterm.extra.remote.execute.session"

    invoke-virtual {p0}, Lcom/offsec/nethunter/bridge/SessionId;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "neoterm.extra.remote.execute.foreground"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    return-object v0
.end method

.method public static createExecuteIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .line 43
    invoke-static {p0}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "executablePath"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/offsec/nethunter/bridge/SessionId;->NEW_SESSION:Lcom/offsec/nethunter/bridge/SessionId;

    invoke-static {v0, p0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Lcom/offsec/nethunter/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createExecuteIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p0, "executablePath"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "foreground"    # Z

    .line 55
    sget-object v0, Lcom/offsec/nethunter/bridge/SessionId;->NEW_SESSION:Lcom/offsec/nethunter/bridge/SessionId;

    invoke-static {v0, p0, p1, p2}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Lcom/offsec/nethunter/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createExecuteNHIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/offsec/nethunter/bridge/SessionId;->NEW_SESSION:Lcom/offsec/nethunter/bridge/SessionId;

    const-string v1, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, v1, p0}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Lcom/offsec/nethunter/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createExecutePwnIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "command"    # Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/offsec/nethunter/bridge/SessionId;->NEW_SESSION:Lcom/offsec/nethunter/bridge/SessionId;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/data/data/com.offsec.nhterm/files/usr/bin/bash"

    invoke-static {v0, v2, v1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Lcom/offsec/nethunter/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createExecuteSuIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "command"    # Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/offsec/nethunter/bridge/SessionId;->NEW_SESSION:Lcom/offsec/nethunter/bridge/SessionId;

    const-string v1, "/data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-static {v0, v1, p0}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Lcom/offsec/nethunter/bridge/SessionId;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static parseResult(Landroid/content/Intent;)Lcom/offsec/nethunter/bridge/SessionId;
    .locals 2
    .param p0, "data"    # Landroid/content/Intent;

    .line 77
    const-string v0, "data"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v0, "neoterm.extra.remote.execute.session"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "handle":Ljava/lang/String;
    invoke-static {v0}, Lcom/offsec/nethunter/bridge/SessionId;->of(Ljava/lang/String;)Lcom/offsec/nethunter/bridge/SessionId;

    move-result-object v1

    return-object v1

    .line 83
    .end local v0    # "handle":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
