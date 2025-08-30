.class Lj$/util/DesugarCollections$UnmodifiableList$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/DesugarCollections$UnmodifiableList;->listIterator(I)Ljava/util/ListIterator;
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
.field private final i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lj$/util/DesugarCollections$UnmodifiableList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lj$/util/DesugarCollections$UnmodifiableList;I)V
    .locals 1
    .param p1, "this$0"    # Lj$/util/DesugarCollections$UnmodifiableList;

    .line 402
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    iput-object p1, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->this$0:Lj$/util/DesugarCollections$UnmodifiableList;

    iput p2, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iget-object p2, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->this$0:Lj$/util/DesugarCollections$UnmodifiableList;

    iget-object p2, p2, Lj$/util/DesugarCollections$UnmodifiableList;->list:Ljava/util/List;

    iget v0, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->val$index:I

    invoke-interface {p2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    iput-object p2, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 438
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 443
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-static {v0, p1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 444
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 406
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 414
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

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

    .line 410
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 422
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

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

    .line 418
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 426
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .line 430
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 434
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableList$1;, "Ljava/util/DesugarCollections$UnmodifiableList$1;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
