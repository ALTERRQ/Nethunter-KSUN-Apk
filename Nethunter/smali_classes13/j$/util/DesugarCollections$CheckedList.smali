.class Lj$/util/DesugarCollections$CheckedList;
.super Lj$/util/DesugarCollections$CheckedCollection;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/List;
.implements Lj$/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$CheckedCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Lj$/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe7ce7692c45f7cL


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 2206
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Lj$/util/DesugarCollections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    .line 2207
    iput-object p1, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    .line 2208
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 2239
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Lj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2240
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 2243
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Lj$/util/DesugarCollections$CheckedList;->checkedCopyOf(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2211
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 2219
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 2215
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2227
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method synthetic lambda$replaceAll$0$java-util-DesugarCollections$CheckedList(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "operator"    # Ljava/util/function/UnaryOperator;
    .param p2, "e"    # Ljava/lang/Object;

    .line 2310
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    invoke-interface {p1, p2}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 2231
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2247
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj$/util/DesugarCollections$CheckedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2251
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 2252
    .local v0, "i":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    new-instance v1, Lj$/util/DesugarCollections$CheckedList$1;

    invoke-direct {v1, p0, v0}, Lj$/util/DesugarCollections$CheckedList$1;-><init>(Lj$/util/DesugarCollections$CheckedList;Ljava/util/ListIterator;)V

    return-object v1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 2223
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 2309
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    new-instance v1, Lj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;-><init>(Lj$/util/DesugarCollections$CheckedList;Ljava/util/function/UnaryOperator;)V

    invoke-static {v0, v1}, Lj$/util/List$-EL;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    .line 2311
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 2235
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-virtual {p0, p2}, Lj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2315
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-static {v0, p1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2316
    return-void
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 2297
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList;, "Ljava/util/DesugarCollections$CheckedList<TE;>;"
    new-instance v0, Lj$/util/DesugarCollections$CheckedList;

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lj$/util/DesugarCollections$CheckedList;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lj$/util/DesugarCollections$CheckedList;-><init>(Ljava/util/List;Ljava/lang/Class;)V

    return-object v0
.end method
