.class Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 2744
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2745
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    .line 2746
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    .line 2747
    return-void
.end method

.method private badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 2773
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    nop

    .line 2774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value into map with value type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2773
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 2780
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    if-ne p1, p0, :cond_0

    .line 2781
    const/4 v0, 0x1

    return v0

    .line 2783
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    .line 2784
    const/4 v0, 0x0

    return v0

    .line 2786
    :cond_1
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2750
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

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

    .line 2754
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 2758
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 2766
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2767
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2769
    :cond_1
    :goto_0
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2762
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
