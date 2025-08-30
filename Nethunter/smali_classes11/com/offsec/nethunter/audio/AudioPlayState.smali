.class public final enum Lcom/offsec/nethunter/audio/AudioPlayState;
.super Ljava/lang/Enum;
.source "AudioPlayState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/offsec/nethunter/audio/AudioPlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/offsec/nethunter/audio/AudioPlayState;

.field public static final enum BUFFERING:Lcom/offsec/nethunter/audio/AudioPlayState;

.field public static final enum STARTED:Lcom/offsec/nethunter/audio/AudioPlayState;

.field public static final enum STARTING:Lcom/offsec/nethunter/audio/AudioPlayState;

.field public static final enum STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

.field public static final enum STOPPING:Lcom/offsec/nethunter/audio/AudioPlayState;


# instance fields
.field private final isActive:Z


# direct methods
.method private static synthetic $values()[Lcom/offsec/nethunter/audio/AudioPlayState;
    .locals 3

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/offsec/nethunter/audio/AudioPlayState;

    sget-object v1, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/offsec/nethunter/audio/AudioPlayState;->STARTING:Lcom/offsec/nethunter/audio/AudioPlayState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/offsec/nethunter/audio/AudioPlayState;->BUFFERING:Lcom/offsec/nethunter/audio/AudioPlayState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/offsec/nethunter/audio/AudioPlayState;->STARTED:Lcom/offsec/nethunter/audio/AudioPlayState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPING:Lcom/offsec/nethunter/audio/AudioPlayState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/offsec/nethunter/audio/AudioPlayState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/offsec/nethunter/audio/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPED:Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 5
    new-instance v0, Lcom/offsec/nethunter/audio/AudioPlayState;

    const-string v1, "STARTING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/offsec/nethunter/audio/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STARTING:Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 6
    new-instance v0, Lcom/offsec/nethunter/audio/AudioPlayState;

    const-string v1, "BUFFERING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/offsec/nethunter/audio/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->BUFFERING:Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 7
    new-instance v0, Lcom/offsec/nethunter/audio/AudioPlayState;

    const-string v1, "STARTED"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/offsec/nethunter/audio/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STARTED:Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 8
    new-instance v0, Lcom/offsec/nethunter/audio/AudioPlayState;

    const-string v1, "STOPPING"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/offsec/nethunter/audio/AudioPlayState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->STOPPING:Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 3
    invoke-static {}, Lcom/offsec/nethunter/audio/AudioPlayState;->$values()[Lcom/offsec/nethunter/audio/AudioPlayState;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->$VALUES:[Lcom/offsec/nethunter/audio/AudioPlayState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-boolean p3, p0, Lcom/offsec/nethunter/audio/AudioPlayState;->isActive:Z

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/offsec/nethunter/audio/AudioPlayState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/audio/AudioPlayState;

    return-object v0
.end method

.method public static values()[Lcom/offsec/nethunter/audio/AudioPlayState;
    .locals 1

    .line 3
    sget-object v0, Lcom/offsec/nethunter/audio/AudioPlayState;->$VALUES:[Lcom/offsec/nethunter/audio/AudioPlayState;

    invoke-virtual {v0}, [Lcom/offsec/nethunter/audio/AudioPlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/offsec/nethunter/audio/AudioPlayState;

    return-object v0
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/offsec/nethunter/audio/AudioPlayState;->isActive:Z

    return v0
.end method
