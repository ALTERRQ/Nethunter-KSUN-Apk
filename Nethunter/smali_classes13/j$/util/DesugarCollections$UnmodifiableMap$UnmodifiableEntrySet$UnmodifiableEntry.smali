.class Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 847
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    .line 849
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 868
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 869
    return v0

    .line 871
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 872
    return v2

    .line 874
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 875
    .local v1, "t":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lj$/util/DesugarCollections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lj$/util/DesugarCollections;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 852
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 856
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 864
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 860
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 879
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;->e:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
