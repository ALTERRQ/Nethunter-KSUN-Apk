.class Lj$/sun/util/PreHashedMap$2$1;
.super Ljava/lang/Object;
.source "PreHashedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/sun/util/PreHashedMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lj$/sun/util/PreHashedMap$2;


# direct methods
.method constructor <init>(Lj$/sun/util/PreHashedMap$2;)V
    .locals 1
    .param p1, "this$1"    # Lj$/sun/util/PreHashedMap$2;

    .line 237
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1;, "Lsun/util/PreHashedMap$2$1;"
    iput-object p1, p0, Lj$/sun/util/PreHashedMap$2$1;->this$1:Lj$/sun/util/PreHashedMap$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$2$1;->this$1:Lj$/sun/util/PreHashedMap$2;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$2;->this$0:Lj$/sun/util/PreHashedMap;

    invoke-virtual {v0}, Lj$/sun/util/PreHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/util/PreHashedMap$2$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 241
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1;, "Lsun/util/PreHashedMap$2$1;"
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$2$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 237
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1;, "Lsun/util/PreHashedMap$2$1;"
    invoke-virtual {p0}, Lj$/sun/util/PreHashedMap$2$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1;, "Lsun/util/PreHashedMap$2$1;"
    new-instance v0, Lj$/sun/util/PreHashedMap$2$1$1;

    invoke-direct {v0, p0}, Lj$/sun/util/PreHashedMap$2$1$1;-><init>(Lj$/sun/util/PreHashedMap$2$1;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 279
    .local p0, "this":Lj$/sun/util/PreHashedMap$2$1;, "Lsun/util/PreHashedMap$2$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
