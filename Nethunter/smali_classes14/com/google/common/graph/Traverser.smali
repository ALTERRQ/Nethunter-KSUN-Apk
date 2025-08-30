.class public abstract Lcom/google/common/graph/Traverser;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Call forGraph or forTree, passing a lambda or a Graph with the desired edges (built with GraphBuilder)"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$Traversal;,
        Lcom/google/common/graph/Traverser$InsertionOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final successorFunction:Lcom/google/common/graph/SuccessorsFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/SuccessorsFunction<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/SuccessorsFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "successorFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/SuccessorsFunction<",
            "TN;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    .local p1, "successorFunction":Lcom/google/common/graph/SuccessorsFunction;, "Lcom/google/common/graph/SuccessorsFunction<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/SuccessorsFunction;

    iput-object v0, p0, Lcom/google/common/graph/Traverser;->successorFunction:Lcom/google/common/graph/SuccessorsFunction;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/SuccessorsFunction;Lcom/google/common/graph/Traverser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/graph/SuccessorsFunction;
    .param p2, "x1"    # Lcom/google/common/graph/Traverser$1;

    .line 67
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser;-><init>(Lcom/google/common/graph/SuccessorsFunction;)V

    return-void
.end method

.method public static forGraph(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "graph"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/SuccessorsFunction<",
            "TN;>;)",
            "Lcom/google/common/graph/Traverser<",
            "TN;>;"
        }
    .end annotation

    .line 99
    .local p0, "graph":Lcom/google/common/graph/SuccessorsFunction;, "Lcom/google/common/graph/SuccessorsFunction<TN;>;"
    new-instance v0, Lcom/google/common/graph/Traverser$1;

    invoke-direct {v0, p0, p0}, Lcom/google/common/graph/Traverser$1;-><init>(Lcom/google/common/graph/SuccessorsFunction;Lcom/google/common/graph/SuccessorsFunction;)V

    return-object v0
.end method

.method public static forTree(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/SuccessorsFunction<",
            "TN;>;)",
            "Lcom/google/common/graph/Traverser<",
            "TN;>;"
        }
    .end annotation

    .line 181
    .local p0, "tree":Lcom/google/common/graph/SuccessorsFunction;, "Lcom/google/common/graph/SuccessorsFunction<TN;>;"
    instance-of v0, p0, Lcom/google/common/graph/BaseGraph;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/BaseGraph;

    invoke-interface {v0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    const-string v1, "Undirected graphs can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 184
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Network;

    if-eqz v0, :cond_1

    .line 185
    move-object v0, p0

    check-cast v0, Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    const-string v1, "Undirected networks can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 187
    :cond_1
    new-instance v0, Lcom/google/common/graph/Traverser$2;

    invoke-direct {v0, p0, p0}, Lcom/google/common/graph/Traverser$2;-><init>(Lcom/google/common/graph/SuccessorsFunction;Lcom/google/common/graph/SuccessorsFunction;)V

    return-object v0
.end method

.method private validate(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "TN;>;"
        }
    .end annotation

    .line 349
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    .local p1, "startNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 350
    .local v0, "copy":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TN;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 351
    .local v2, "node":Ljava/lang/Object;, "TN;"
    iget-object v3, p0, Lcom/google/common/graph/Traverser;->successorFunction:Lcom/google/common/graph/SuccessorsFunction;

    invoke-interface {v3, v2}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 352
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 353
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final breadthFirst(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    .local p1, "startNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser;->validate(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 242
    .local v0, "validated":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TN;>;"
    new-instance v1, Lcom/google/common/graph/Traverser$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/Traverser$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/graph/Traverser;Lcom/google/common/collect/ImmutableSet;)V

    return-object v1
.end method

.method public final breadthFirst(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/graph/Traverser;->breadthFirst(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final depthFirstPostOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    .local p1, "startNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser;->validate(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 342
    .local v0, "validated":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TN;>;"
    new-instance v1, Lcom/google/common/graph/Traverser$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/Traverser$$ExternalSyntheticLambda2;-><init>(Lcom/google/common/graph/Traverser;Lcom/google/common/collect/ImmutableSet;)V

    return-object v1
.end method

.method public final depthFirstPostOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/graph/Traverser;->depthFirstPostOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public final depthFirstPreOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startNodes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 291
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    .local p1, "startNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser;->validate(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 292
    .local v0, "validated":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TN;>;"
    new-instance v1, Lcom/google/common/graph/Traverser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/Traverser$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/graph/Traverser;Lcom/google/common/collect/ImmutableSet;)V

    return-object v1
.end method

.method public final depthFirstPreOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/graph/Traverser;->depthFirstPreOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$breadthFirst$0$com-google-common-graph-Traverser(Lcom/google/common/collect/ImmutableSet;)Ljava/util/Iterator;
    .locals 2
    .param p1, "validated"    # Lcom/google/common/collect/ImmutableSet;

    .line 242
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser;->newTraversal()Lcom/google/common/graph/Traverser$Traversal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/Traverser$Traversal;->breadthFirst(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$depthFirstPostOrder$0$com-google-common-graph-Traverser(Lcom/google/common/collect/ImmutableSet;)Ljava/util/Iterator;
    .locals 2
    .param p1, "validated"    # Lcom/google/common/collect/ImmutableSet;

    .line 342
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser;->newTraversal()Lcom/google/common/graph/Traverser$Traversal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/Traverser$Traversal;->postOrder(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$depthFirstPreOrder$0$com-google-common-graph-Traverser(Lcom/google/common/collect/ImmutableSet;)Ljava/util/Iterator;
    .locals 2
    .param p1, "validated"    # Lcom/google/common/collect/ImmutableSet;

    .line 292
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser;->newTraversal()Lcom/google/common/graph/Traverser$Traversal;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/graph/Traverser$Traversal;->preOrder(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method abstract newTraversal()Lcom/google/common/graph/Traverser$Traversal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Traverser$Traversal<",
            "TN;>;"
        }
    .end annotation
.end method
