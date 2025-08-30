.class final Lcom/google/common/collect/TableCollectors;
.super Ljava/lang/Object;
.source "TableCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;,
        Lcom/google/common/collect/TableCollectors$MutableCell;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$toImmutableTable$0(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$Builder;Ljava/lang/Object;)V
    .locals 3
    .param p0, "rowFunction"    # Ljava/util/function/Function;
    .param p1, "columnFunction"    # Ljava/util/function/Function;
    .param p2, "valueFunction"    # Ljava/util/function/Function;
    .param p3, "builder"    # Lcom/google/common/collect/ImmutableTable$Builder;
    .param p4, "t"    # Ljava/lang/Object;

    .line 48
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Lcom/google/common/collect/ImmutableTable$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableTable$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableTable$1()Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;
    .locals 2

    .line 72
    new-instance v0, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;-><init>(Lcom/google/common/collect/TableCollectors$1;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$2(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;Ljava/lang/Object;)V
    .locals 3
    .param p0, "rowFunction"    # Ljava/util/function/Function;
    .param p1, "columnFunction"    # Ljava/util/function/Function;
    .param p2, "valueFunction"    # Ljava/util/function/Function;
    .param p3, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p4, "state"    # Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;
    .param p5, "input"    # Ljava/lang/Object;

    .line 74
    nop

    .line 75
    invoke-interface {p0, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    invoke-interface {p1, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    invoke-virtual {p4, v0, v1, v2, p3}, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method static synthetic lambda$toImmutableTable$3(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;)Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;
    .locals 1
    .param p0, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p1, "s1"    # Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;
    .param p2, "s2"    # Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    .line 79
    invoke-virtual {p1, p2, p0}, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;->combine(Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;Ljava/util/function/BinaryOperator;)Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toImmutableTable$4(Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;)Lcom/google/common/collect/ImmutableTable;
    .locals 1
    .param p0, "state"    # Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;

    .line 80
    invoke-virtual {p0}, Lcom/google/common/collect/TableCollectors$ImmutableTableCollectorState;->toTable()Lcom/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toTable$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "v1"    # Ljava/lang/Object;
    .param p1, "v2"    # Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conflicting values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$toTable$1(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Lcom/google/common/collect/Table;Ljava/lang/Object;)V
    .locals 3
    .param p0, "rowFunction"    # Ljava/util/function/Function;
    .param p1, "columnFunction"    # Ljava/util/function/Function;
    .param p2, "valueFunction"    # Ljava/util/function/Function;
    .param p3, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p4, "table"    # Lcom/google/common/collect/Table;
    .param p5, "input"    # Ljava/lang/Object;

    .line 124
    nop

    .line 126
    invoke-interface {p0, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    invoke-interface {p1, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    invoke-interface {p2, p5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 124
    invoke-static {p4, v0, v1, v2, p3}, Lcom/google/common/collect/TableCollectors;->mergeTables(Lcom/google/common/collect/Table;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    return-void
.end method

.method static synthetic lambda$toTable$2(Ljava/util/function/BinaryOperator;Lcom/google/common/collect/Table;Lcom/google/common/collect/Table;)Lcom/google/common/collect/Table;
    .locals 5
    .param p0, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p1, "table1"    # Lcom/google/common/collect/Table;
    .param p2, "table2"    # Lcom/google/common/collect/Table;

    .line 131
    invoke-interface {p2}, Lcom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Table$Cell;

    .line 132
    .local v1, "cell2":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    nop

    .line 133
    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 132
    invoke-static {p1, v2, v3, v4, p0}, Lcom/google/common/collect/TableCollectors;->mergeTables(Lcom/google/common/collect/Table;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    .line 134
    .end local v1    # "cell2":Lcom/google/common/collect/Table$Cell;, "Lcom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    goto :goto_0

    .line 135
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object p1
.end method

.method private static mergeTables(Lcom/google/common/collect/Table;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "table",
            "row",
            "column",
            "value",
            "mergeFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;TR;TC;TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)V"
        }
    .end annotation

    .line 212
    .local p0, "table":Lcom/google/common/collect/Table;, "Lcom/google/common/collect/Table<TR;TC;TV;>;"
    .local p1, "row":Ljava/lang/Object;, "TR;"
    .local p2, "column":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 215
    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 217
    :cond_0
    invoke-interface {p4, v0, p3}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 219
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_1
    invoke-interface {p0, p1, p2, v1}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-void
.end method

.method static toImmutableTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rowFunction",
            "columnFunction",
            "valueFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 42
    .local p0, "rowFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TR;>;"
    .local p1, "columnFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TC;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    const-string v0, "rowFunction"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "columnFunction"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "valueFunction"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda8;-><init>()V

    new-instance v1, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    new-instance v2, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda10;-><init>()V

    new-instance v3, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda1;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toImmutableTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rowFunction",
            "columnFunction",
            "valueFunction",
            "mergeFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lcom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 60
    .local p0, "rowFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TR;>;"
    .local p1, "columnFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TC;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p3, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    const-string v0, "rowFunction"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "columnFunction"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "valueFunction"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "mergeFunction"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v0, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance v2, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda6;

    invoke-direct {v2, p3}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v3, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda7;-><init>()V

    const/4 v4, 0x0

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rowFunction",
            "columnFunction",
            "valueFunction",
            "mergeFunction",
            "tableSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "I::",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;",
            "Ljava/util/function/Supplier<",
            "TI;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TI;>;"
        }
    .end annotation

    .line 116
    .local p0, "rowFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TR;>;"
    .local p1, "columnFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TC;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p3, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    .local p4, "tableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TI;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    new-instance v1, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BinaryOperator;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {p4, v0, v1, v2}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method static toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rowFunction",
            "columnFunction",
            "valueFunction",
            "tableSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "I::",
            "Lcom/google/common/collect/Table<",
            "TR;TC;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;",
            "Ljava/util/function/Function<",
            "-TT;+TC;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;",
            "Ljava/util/function/Supplier<",
            "TI;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TI;>;"
        }
    .end annotation

    .line 94
    .local p0, "rowFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TR;>;"
    .local p1, "columnFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TC;>;"
    .local p2, "valueFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    .local p3, "tableSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TI;>;"
    new-instance v0, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/collect/TableCollectors$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/common/collect/TableCollectors;->toTable(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method
