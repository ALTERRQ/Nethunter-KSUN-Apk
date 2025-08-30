.class Lj$/sun/util/PreHashedMap$2$1$1;
.super Ljava/lang/Object;
.source "PreHashedMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/sun/util/PreHashedMap$2$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# instance fields
.field k:Ljava/lang/String;

.field final synthetic this$2:Lj$/sun/util/PreHashedMap$2$1;


# direct methods
.method constructor <init>(Lj$/sun/util/PreHashedMap$2$1;)V
    .locals 1
    .param p1, "this$2"    # Lj$/sun/util/PreHashedMap$2$1;

    .line 245
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1$1;, "Lsun/util/PreHashedMap$2$1$1;"
    iput-object p1, p0, Lj$/sun/util/PreHashedMap$2$1$1;->this$2:Lj$/sun/util/PreHashedMap$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$2$1$1;->this$2:Lj$/sun/util/PreHashedMap$2$1;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$2$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .line 257
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1$1;, "Lsun/util/PreHashedMap$2$1$1;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 258
    return v0

    .line 259
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 260
    return v2

    .line 261
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 262
    .local v1, "that":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lj$/sun/util/PreHashedMap$2$1$1;->getKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 263
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lj$/sun/util/PreHashedMap$2$1$1;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    :goto_0
    invoke-virtual {p0}, Lj$/sun/util/PreHashedMap$2$1$1;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 269
    :cond_3
    invoke-virtual {p0}, Lj$/sun/util/PreHashedMap$2$1$1;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 270
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 262
    :goto_2
    return v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 245
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1$1;, "Lsun/util/PreHashedMap$2$1$1;"
    invoke-virtual {p0}, Lj$/sun/util/PreHashedMap$2$1$1;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 247
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1$1;, "Lsun/util/PreHashedMap$2$1$1;"
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1$1;, "Lsun/util/PreHashedMap$2$1$1;"
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$2$1$1;->this$2:Lj$/sun/util/PreHashedMap$2$1;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$2$1;->this$1:Lj$/sun/util/PreHashedMap$2;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$2;->this$0:Lj$/sun/util/PreHashedMap;

    iget-object v1, p0, Lj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/sun/util/PreHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 250
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1$1;, "Lsun/util/PreHashedMap$2$1$1;"
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$2$1$1;->this$2:Lj$/sun/util/PreHashedMap$2$1;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$2$1;->this$1:Lj$/sun/util/PreHashedMap$2;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$2;->this$0:Lj$/sun/util/PreHashedMap;

    iget-object v1, p0, Lj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj$/sun/util/PreHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, "v":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lj$/sun/util/PreHashedMap$2$1$1;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 252
    if-nez v0, :cond_0

    .line 253
    const/4 v2, 0x0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 251
    return v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1$1;, "Lsun/util/PreHashedMap$2$1$1;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
