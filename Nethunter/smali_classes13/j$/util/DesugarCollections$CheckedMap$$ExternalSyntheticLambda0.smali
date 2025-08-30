.class public final synthetic Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lj$/util/DesugarCollections$CheckedMap;

.field public final synthetic f$1:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lj$/util/DesugarCollections$CheckedMap;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;->f$0:Lj$/util/DesugarCollections$CheckedMap;

    iput-object p2, p0, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;->f$0:Lj$/util/DesugarCollections$CheckedMap;

    iget-object v1, p0, Lj$/util/DesugarCollections$CheckedMap$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/BiFunction;

    invoke-virtual {v0, v1, p1, p2}, Lj$/util/DesugarCollections$CheckedMap;->lambda$typeCheck$0$java-util-DesugarCollections$CheckedMap(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
