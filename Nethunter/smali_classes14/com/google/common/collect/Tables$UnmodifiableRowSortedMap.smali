.class final Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;
.super Lcom/google/common/collect/Tables$UnmodifiableTable;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/RowSortedTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnmodifiableRowSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Tables$UnmodifiableTable<",
        "TR;TC;TV;>;",
        "Lcom/google/common/collect/RowSortedTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/RowSortedTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RowSortedTable<",
            "TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 641
    .local p0, "this":Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;, "Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    .local p1, "delegate":Lcom/google/common/collect/RowSortedTable;, "Lcom/google/common/collect/RowSortedTable<TR;+TC;+TV;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Tables$UnmodifiableTable;-><init>(Lcom/google/common/collect/Table;)V

    .line 642
    return-void
.end method


# virtual methods
.method protected delegate()Lcom/google/common/collect/RowSortedTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RowSortedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 646
    .local p0, "this":Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;, "Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate()Lcom/google/common/collect/Table;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/RowSortedTable;

    return-object v0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/collect/Table;
    .locals 1

    .line 636
    .local p0, "this":Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;, "Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/RowSortedTable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 636
    .local p0, "this":Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;, "Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/RowSortedTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .line 636
    .local p0, "this":Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;, "Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;, "Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/RowSortedTable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/RowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 636
    .local p0, "this":Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;, "Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 651
    .local p0, "this":Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;, "Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap<TR;TC;TV;>;"
    nop

    .line 652
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/RowSortedTable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/RowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/SortedMap;Lcom/google/common/base/Function;)Ljava/util/SortedMap;

    move-result-object v0

    .line 651
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
