.class Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;
.super Ljava/lang/Object;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->iterator()Ljava/util/Iterator;
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
.field private final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;


# direct methods
.method constructor <init>(Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;)V
    .locals 1
    .param p1, "this$0"    # Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;

    .line 749
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    iput-object p1, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;->this$0:Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;->this$0:Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;

    iget-object v0, v0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;->i:Ljava/util/Iterator;

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

    .line 765
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;->i:Ljava/util/Iterator;

    invoke-static {p1}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet;->entryConsumer(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/Iterator$-EL;->forEachRemaining(Ljava/util/Iterator;Ljava/util/function/Consumer;)V

    .line 766
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 753
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    iget-object v0, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 749
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    invoke-virtual {p0}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;->next()Ljava/util/Map$Entry;

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

    .line 757
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 761
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;, "Ljava/util/DesugarCollections$UnmodifiableMap$UnmodifiableEntrySet$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
