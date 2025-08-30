.class Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lj$/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

.field final synthetic val$i:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    .line 2612
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;"
    iput-object p1, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->this$0:Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    iput-object p2, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2626
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    new-instance v1, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1$$ExternalSyntheticLambda0;-><init>(Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;Ljava/util/function/Consumer;)V

    invoke-static {v0, v1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 2627
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 2614
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$forEachRemaining$0$java-util-DesugarCollections$CheckedMap$CheckedEntrySet$1(Ljava/util/function/Consumer;Ljava/util/Map$Entry;)V
    .locals 1
    .param p1, "action"    # Ljava/util/function/Consumer;
    .param p2, "e"    # Ljava/util/Map$Entry;

    .line 2626
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->this$0:Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    invoke-static {v0}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->-$$Nest$fgetvalueType(Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p2, v0}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2612
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;"
    invoke-virtual {p0}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2622
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->this$0:Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;

    invoke-static {v1}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->-$$Nest$fgetvalueType(Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$CheckedEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 2618
    .local p0, "this":Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;, "Ljava/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2619
    return-void
.end method
