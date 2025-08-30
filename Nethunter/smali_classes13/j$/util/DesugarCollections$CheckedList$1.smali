.class Lj$/util/DesugarCollections$CheckedList$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/DesugarCollections$CheckedList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lj$/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/DesugarCollections$CheckedList;

.field final synthetic val$i:Ljava/util/ListIterator;


# direct methods
.method constructor <init>(Lj$/util/DesugarCollections$CheckedList;Ljava/util/ListIterator;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/DesugarCollections$CheckedList;

    .line 2252
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    iput-object p1, p0, Lj$/util/DesugarCollections$CheckedList$1;->this$0:Lj$/util/DesugarCollections$CheckedList;

    iput-object p2, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 2286
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedList$1;->this$0:Lj$/util/DesugarCollections$CheckedList;

    invoke-virtual {v1, p1}, Lj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 2287
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2291
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-static {v0, p1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 2292
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 2254
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 2262
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2258
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 2270
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 2266
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 2274
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 2278
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 2279
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 2282
    .local p0, "this":Lj$/util/DesugarCollections$CheckedList$1;, "Ljava/util/DesugarCollections$CheckedList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedList$1;->val$i:Ljava/util/ListIterator;

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedList$1;->this$0:Lj$/util/DesugarCollections$CheckedList;

    invoke-virtual {v1, p1}, Lj$/util/DesugarCollections$CheckedList;->typeCheck(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 2283
    return-void
.end method
