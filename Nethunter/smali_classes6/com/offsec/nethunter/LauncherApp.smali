.class public Lcom/offsec/nethunter/LauncherApp;
.super Ljava/lang/Object;
.source "LauncherApp.java"


# static fields
.field static final BTN_LABEL:Ljava/lang/String; = "BTN_LABEL"

.field static final CMD:Ljava/lang/String; = "COMMAND"

.field static final COLUMNS:[Ljava/lang/String;

.field static final ID:Ljava/lang/String; = "ID"

.field static final TABLE:Ljava/lang/String; = "LAUNCHERS"


# instance fields
.field private btn_label:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private id:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const-string v0, "BTN_LABEL"

    const-string v1, "COMMAND"

    const-string v2, "ID"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/LauncherApp;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "btn_name"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lcom/offsec/nethunter/LauncherApp;->id:J

    .line 18
    iput-object p3, p0, Lcom/offsec/nethunter/LauncherApp;->btn_label:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/offsec/nethunter/LauncherApp;->command:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method getBtn_label()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/LauncherApp;->btn_label:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/offsec/nethunter/LauncherApp;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/offsec/nethunter/LauncherApp;->id:J

    return-wide v0
.end method

.method setBtn_label(Ljava/lang/String;)V
    .locals 0
    .param p1, "btn_label"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/offsec/nethunter/LauncherApp;->btn_label:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/offsec/nethunter/LauncherApp;->command:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 23
    iput-wide p1, p0, Lcom/offsec/nethunter/LauncherApp;->id:J

    .line 24
    return-void
.end method
