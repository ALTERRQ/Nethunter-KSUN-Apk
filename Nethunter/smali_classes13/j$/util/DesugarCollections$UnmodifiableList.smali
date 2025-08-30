.class Lj$/util/DesugarCollections$UnmodifiableList;
.super Lj$/util/DesugarCollections$UnmodifiableCollection;
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
    name = "UnmodifiableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$UnmodifiableCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Lj$/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3f0dace4a1371f0L


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    .line 347
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$UnmodifiableCollection;-><init>(Ljava/util/Collection;)V

    .line 348
    iput-object p1, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    .line 349
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 463
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 368
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 384
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 352
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    if-eq p1, p0, :cond_1

    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

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

    .line 360
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 356
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 376
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 380
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

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

    .line 398
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lj$/util/DesugarCollections$UnmodifiableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableList$1;

    invoke-direct {v0, p0, p1}, Lj$/util/DesugarCollections$UnmodifiableList$1;-><init>(Lj$/util/DesugarCollections$UnmodifiableList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)V"
        }
    .end annotation

    .line 389
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 364
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 394
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 449
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList;, "Ljava/util/DesugarCollections$UnmodifiableList<TE;>;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableList;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method
