.class public Lcom/offsec/nethunter/SearchSploit;
.super Ljava/lang/Object;
.source "SearchSploit.java"


# static fields
.field static final AUTHOR:Ljava/lang/String; = "AUTHOR"

.field static final DATE:Ljava/lang/String; = "DATE"

.field static final DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field static final FILE:Ljava/lang/String; = "FILE"

.field static final ID:Ljava/lang/String; = "ID"

.field static final PLATFORM:Ljava/lang/String; = "PLATFORM"

.field static final PORT:Ljava/lang/String; = "PORT"

.field static final TABLE:Ljava/lang/String; = "SearchSploitTable"

.field static final TYPE:Ljava/lang/String; = "TYPE"


# instance fields
.field private author:Ljava/lang/String;

.field private date:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private id:J

.field private platform:Ljava/lang/String;

.field private port:Ljava/lang/Integer;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/String;
    .param p6, "author"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;
    .param p8, "platform"    # Ljava/lang/String;
    .param p9, "port"    # Ljava/lang/Integer;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/offsec/nethunter/SearchSploit;->id:J

    .line 28
    iput-object p3, p0, Lcom/offsec/nethunter/SearchSploit;->file:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/offsec/nethunter/SearchSploit;->description:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/offsec/nethunter/SearchSploit;->date:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/offsec/nethunter/SearchSploit;->author:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/offsec/nethunter/SearchSploit;->type:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/offsec/nethunter/SearchSploit;->platform:Ljava/lang/String;

    .line 34
    iput-object p9, p0, Lcom/offsec/nethunter/SearchSploit;->port:Ljava/lang/Integer;

    .line 35
    return-void
.end method


# virtual methods
.method getAuthor()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploit;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploit;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploit;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploit;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/offsec/nethunter/SearchSploit;->id:J

    return-wide v0
.end method

.method getPlatform()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploit;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploit;->port:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploit;->type:Ljava/lang/String;

    return-object v0
.end method

.method setAuthor(Ljava/lang/String;)V
    .locals 0
    .param p1, "author"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploit;->author:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploit;->date:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploit;->description:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploit;->file:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 38
    iput-wide p1, p0, Lcom/offsec/nethunter/SearchSploit;->id:J

    .line 39
    return-void
.end method

.method setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploit;->platform:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "port"    # Ljava/lang/Integer;

    .line 81
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploit;->port:Ljava/lang/Integer;

    .line 82
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploit;->type:Ljava/lang/String;

    .line 78
    return-void
.end method
