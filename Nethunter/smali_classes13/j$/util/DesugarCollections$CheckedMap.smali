.class Lj$/util/DesugarCollections$CheckedMap;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Lj$/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4fb2bcdf0d186368L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 2406
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2407
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    .line 2408
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->keyType:Ljava/lang/Class;

    .line 2409
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->valueType:Ljava/lang/Class;

    .line 2410
    return-void
.end method

.method private badKeyMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 2396
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedMap;->keyType:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " key into map with key type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 2400
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    nop

    .line 2401
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedMap;->valueType:Ljava/lang/Class;

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

    .line 2400
    return-object v0
.end method

.method private typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;"
        }
    .end annotation

    .line 2387
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "func":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    new-instance v0, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;-><init>(Lj$/util/DesugarCollections$CheckedMap;Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method private typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2377
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    if-eqz p1, :cond_1

    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2378
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$CheckedMap;->badKeyMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2380
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2381
    :cond_2
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {p0, p2}, Lj$/util/DesugarCollections$CheckedMap;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2383
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2437
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2438
    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 2549
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p2}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->compute(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 2531
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    new-instance v1, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda2;-><init>(Lj$/util/DesugarCollections$CheckedMap;Ljava/util/function/Function;)V

    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 2544
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p2}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfPresent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 2421
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .line 2425
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2489
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2490
    new-instance v0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lj$/util/DesugarCollections$CheckedMap;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;-><init>(Ljava/util/Set;Ljava/lang/Class;)V

    iput-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->entrySet:Ljava/util/Set;

    .line 2492
    :cond_0
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2449
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 2498
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    .line 2499
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2429
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/Map$-CC;->$default$getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 2453
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 2417
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2441
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$computeIfAbsent$1$java-util-DesugarCollections$CheckedMap(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "mappingFunction"    # Ljava/util/function/Function;
    .param p2, "k"    # Ljava/lang/Object;

    .line 2535
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2536
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p2, v0}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2537
    return-object v0
.end method

.method synthetic lambda$merge$2$java-util-DesugarCollections$CheckedMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "remappingFunction"    # Ljava/util/function/BiFunction;
    .param p2, "v1"    # Ljava/lang/Object;
    .param p3, "v2"    # Ljava/lang/Object;

    .line 2560
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2561
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2562
    return-object v0
.end method

.method synthetic lambda$typeCheck$0$java-util-DesugarCollections$CheckedMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "func"    # Ljava/util/function/BiFunction;
    .param p2, "k"    # Ljava/lang/Object;
    .param p3, "v"    # Ljava/lang/Object;

    .line 2389
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2390
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p2, v0}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2391
    return-object v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 2555
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2556
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    new-instance v1, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3}, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda1;-><init>(Lj$/util/DesugarCollections$CheckedMap;Ljava/util/function/BiFunction;)V

    invoke-static {v0, p1, p2, v1}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2461
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2462
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2472
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 2473
    .local v0, "entries":[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2474
    .local v1, "checked":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 2475
    .local v4, "o":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    .line 2476
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2477
    .local v6, "k":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 2478
    .local v7, "v":Ljava/lang/Object;
    invoke-direct {p0, v6, v7}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2479
    new-instance v8, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v8, v6, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2474
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v6    # "k":Ljava/lang/Object;
    .end local v7    # "v":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2481
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2482
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v4, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_1

    .line 2484
    :cond_1
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2508
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2509
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2433
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2514
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lj$/util/Map$-EL;->remove(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2525
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2526
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1, p2}, Lj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 2519
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p3}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2520
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-static {v0, p1, p2, p3}, Lj$/util/Map$-EL;->replace(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 2503
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$CheckedMap;->typeCheck(Ljava/util/function/BiFunction;)Ljava/util/function/BiFunction;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    .line 2504
    return-void
.end method

.method public size()I
    .locals 1

    .line 2413
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2457
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2445
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap;, "Ljava/util/DesugarCollections$CheckedMap<TK;TV;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
