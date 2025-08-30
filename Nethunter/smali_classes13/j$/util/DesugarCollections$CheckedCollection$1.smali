.class Lj$/util/DesugarCollections$CheckedCollection$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/DesugarCollections$CheckedCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lj$/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/DesugarCollections$CheckedCollection;

.field final synthetic val$it:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lj$/util/DesugarCollections$CheckedCollection;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/DesugarCollections$CheckedCollection;

    .line 1974
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection$1;, "Ljava/util/DesugarCollections$CheckedCollection$1;"
    iput-object p1, p0, Lj$/util/DesugarCollections$CheckedCollection$1;->this$0:Lj$/util/DesugarCollections$CheckedCollection;

    iput-object p2, p0, Lj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1988
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection$1;, "Ljava/util/DesugarCollections$CheckedCollection$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-static {v0, p1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 1989
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1976
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection$1;, "Ljava/util/DesugarCollections$CheckedCollection$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

    .line 1980
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection$1;, "Ljava/util/DesugarCollections$CheckedCollection$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1984
    .local p0, "this":Lj$/util/DesugarCollections$CheckedCollection$1;, "Ljava/util/DesugarCollections$CheckedCollection$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedCollection$1;->val$it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1985
    return-void
.end method
