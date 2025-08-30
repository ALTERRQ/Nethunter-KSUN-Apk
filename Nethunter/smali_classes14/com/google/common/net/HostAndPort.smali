.class public final Lcom/google/common/net/HostAndPort;
.super Ljava/lang/Object;
.source "HostAndPort.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final NO_PORT:I = -0x1

.field private static final serialVersionUID:J


# instance fields
.field private final hasBracketlessColons:Z

.field private final host:Ljava/lang/String;

.field private final port:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "hasBracketlessColons"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "port",
            "hasBracketlessColons"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    .line 82
    iput p2, p0, Lcom/google/common/net/HostAndPort;->port:I

    .line 83
    iput-boolean p3, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    .line 84
    return-void
.end method

.method public static fromHost(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    .line 152
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 153
    .local v0, "parsedHost":Lcom/google/common/net/HostAndPort;
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 154
    return-object v0
.end method

.method public static fromParts(Ljava/lang/String;I)Lcom/google/common/net/HostAndPort;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "port"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v0

    const-string v1, "Port out of range: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 135
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;

    move-result-object v0

    .line 136
    .local v0, "parsedHost":Lcom/google/common/net/HostAndPort;
    invoke-virtual {v0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Host has a port: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance v1, Lcom/google/common/net/HostAndPort;

    iget-object v2, v0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/net/HostAndPort;
    .locals 8
    .param p0, "hostPortString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostPortString"
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "portString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 174
    .local v1, "hasBracketlessColons":Z
    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 175
    invoke-static {p0}, Lcom/google/common/net/HostAndPort;->getHostAndPortFromBracketedHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "hostAndPort":[Ljava/lang/String;
    aget-object v6, v2, v4

    .line 177
    .local v6, "host":Ljava/lang/String;
    aget-object v0, v2, v5

    .line 178
    .end local v2    # "hostAndPort":[Ljava/lang/String;
    goto :goto_1

    .line 179
    .end local v6    # "host":Ljava/lang/String;
    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 180
    .local v6, "colonPos":I
    if-ltz v6, :cond_1

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 182
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "host":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v2

    goto :goto_1

    .line 186
    .end local v2    # "host":Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 187
    .restart local v2    # "host":Ljava/lang/String;
    if-ltz v6, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    move v1, v7

    move-object v6, v2

    .line 192
    .end local v2    # "host":Ljava/lang/String;
    .local v6, "host":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "port":Ljava/lang/Integer;
    goto :goto_2

    .line 195
    .end local v2    # "port":Ljava/lang/Integer;
    :cond_3
    invoke-static {v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 196
    .restart local v2    # "port":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    const/4 v4, 0x1

    :cond_4
    const-string v3, "Unparseable port number: %s"

    invoke-static {v4, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v3

    const-string v4, "Port number out of range: %s"

    invoke-static {v3, v4, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 200
    :goto_2
    new-instance v3, Lcom/google/common/net/HostAndPort;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v6, v4, v1}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v3
.end method

.method private static getHostAndPortFromBracketedHost(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "hostPortString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostPortString"
        }
    .end annotation

    .line 211
    nop

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 211
    :goto_0
    const-string v2, "Bracketed host-port string must start with a bracket: %s"

    invoke-static {v1, v2, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 215
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 216
    .local v2, "colonIndex":I
    const/16 v4, 0x5d

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 217
    .local v4, "closeBracketIndex":I
    const/4 v5, -0x1

    if-le v2, v5, :cond_1

    if-le v4, v2, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "Invalid bracketed host/port: %s"

    invoke-static {v5, v6, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "host":Ljava/lang/String;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 224
    const-string v0, ""

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    :cond_2
    add-int/lit8 v6, v4, 0x1

    .line 227
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_3

    const/4 v0, 0x1

    .line 226
    :cond_3
    const-string v1, "Only a colon may follow a close bracket: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 230
    add-int/lit8 v0, v4, 0x2

    .local v0, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 231
    nop

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    .line 231
    const-string v3, "Port must be numeric: %s"

    invoke-static {v1, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 236
    .end local v0    # "i":I
    :cond_4
    add-int/lit8 v0, v4, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isValidPort(I)Z
    .locals 1
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "port"
        }
    .end annotation

    .line 312
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 279
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 280
    return v0

    .line 282
    :cond_0
    instance-of v1, p1, Lcom/google/common/net/HostAndPort;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 283
    move-object v1, p1

    check-cast v1, Lcom/google/common/net/HostAndPort;

    .line 284
    .local v1, "that":Lcom/google/common/net/HostAndPort;
    iget-object v3, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/google/common/net/HostAndPort;->port:I

    iget v4, v1, Lcom/google/common/net/HostAndPort;->port:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 286
    .end local v1    # "that":Lcom/google/common/net/HostAndPort;
    :cond_2
    return v2
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 113
    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    return v0
.end method

.method public getPortOrDefault(I)I
    .locals 1
    .param p1, "defaultPort"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultPort"
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public hasPort()Z
    .locals 1

    .line 101
    iget v0, p0, Lcom/google/common/net/HostAndPort;->port:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget v1, p0, Lcom/google/common/net/HostAndPort;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public requireBracketsForIPv6()Lcom/google/common/net/HostAndPort;
    .locals 3

    .line 273
    iget-boolean v0, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Possible bracketless IPv6 literal: %s"

    iget-object v2, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 274
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 300
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/common/net/HostAndPort;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withDefaultPort(I)Lcom/google/common/net/HostAndPort;
    .locals 3
    .param p1, "defaultPort"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultPort"
        }
    .end annotation

    .line 250
    invoke-static {p1}, Lcom/google/common/net/HostAndPort;->isValidPort(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/google/common/net/HostAndPort;->hasPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    return-object p0

    .line 254
    :cond_0
    new-instance v0, Lcom/google/common/net/HostAndPort;

    iget-object v1, p0, Lcom/google/common/net/HostAndPort;->host:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/common/net/HostAndPort;->hasBracketlessColons:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/net/HostAndPort;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method
