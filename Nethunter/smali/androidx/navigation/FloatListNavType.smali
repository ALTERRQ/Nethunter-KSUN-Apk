.class public final Landroidx/navigation/FloatListNavType;
.super Landroidx/navigation/CollectionNavType;
.source "NavType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/CollectionNavType<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavType.kt\nandroidx/navigation/FloatListNavType\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,883:1\n106#2:884\n90#2:885\n37#3,2:886\n37#3,2:888\n1557#4:890\n1628#4,3:891\n*S KotlinDebug\n*F\n+ 1 NavType.kt\nandroidx/navigation/FloatListNavType\n*L\n641#1:884\n648#1:885\n662#1:886,2\n663#1:888,2\n668#1:890\n668#1:891,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J,\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J%\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\n\u0010\u000c\u001a\u00060\rj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u0007H\u0096\u0002J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J(\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u0006\u0010\u0010\u001a\u00020\u00072\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J(\u0010\u0014\u001a\u00020\u00152\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u001e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00022\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/navigation/FloatListNavType;",
        "Landroidx/navigation/CollectionNavType;",
        "",
        "",
        "<init>",
        "()V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "put",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "key",
        "value",
        "get",
        "parseValue",
        "previousValue",
        "valueEquals",
        "",
        "other",
        "serializeAsValues",
        "emptyCollection",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 636
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/navigation/CollectionNavType;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic emptyCollection()Ljava/lang/Object;
    .locals 1

    .line 636
    invoke-virtual {p0}, Landroidx/navigation/FloatListNavType;->emptyCollection()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public emptyCollection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 670
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .line 636
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/FloatListNavType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    move-object v0, p1

    .local v0, "$this$read$iv":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 885
    .local v1, "$i$f$read":I
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .local v2, "$this$get_u24lambda_u241":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 649
    .local v3, "$i$a$-read-FloatListNavType$get$1":I
    invoke-static {v2, p2}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2, p2}, Landroidx/savedstate/SavedStateReader;->isNull-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, p2}, Landroidx/savedstate/SavedStateReader;->getFloatArray-impl(Landroid/os/Bundle;Ljava/lang/String;)[F

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->toList([F)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 885
    .end local v2    # "$this$get_u24lambda_u241":Landroid/os/Bundle;
    .end local v3    # "$i$a$-read-FloatListNavType$get$1":I
    :goto_1
    nop

    .line 648
    .end local v0    # "$this$read$iv":Landroid/os/Bundle;
    .end local v1    # "$i$f$read":I
    return-object v4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 638
    const-string v0, "List<Float>"

    return-object v0
.end method

.method public bridge synthetic parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 636
    invoke-virtual {p0, p1}, Landroidx/navigation/FloatListNavType;->parseValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "previousValue"    # Ljava/lang/Object;

    .line 636
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/FloatListNavType;->parseValue(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    sget-object v0, Landroidx/navigation/NavType;->FloatType:Landroidx/navigation/NavType;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavType;->parseValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseValue(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "previousValue"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    if-eqz p2, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Landroidx/navigation/FloatListNavType;->parseValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/navigation/FloatListNavType;->parseValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 636
    move-object v0, p3

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/FloatListNavType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public put(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    move-object v0, p1

    .local v0, "$this$write$iv":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 884
    .local v1, "$i$f$write":I
    invoke-static {v0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .local v2, "$this$put_u24lambda_u240":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 642
    .local v3, "$i$a$-write-FloatListNavType$put$1":I
    if-eqz p3, :cond_0

    move-object v4, p3

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v4

    invoke-static {v2, p2, v4}, Landroidx/savedstate/SavedStateWriter;->putFloatArray-impl(Landroid/os/Bundle;Ljava/lang/String;[F)V

    goto :goto_0

    :cond_0
    invoke-static {v2, p2}, Landroidx/savedstate/SavedStateWriter;->putNull-impl(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 643
    :goto_0
    nop

    .line 884
    .end local v2    # "$this$put_u24lambda_u240":Landroid/os/Bundle;
    .end local v3    # "$i$a$-write-FloatListNavType$put$1":I
    nop

    .line 644
    .end local v0    # "$this$write$iv":Landroid/os/Bundle;
    .end local v1    # "$i$f$write":I
    return-void
.end method

.method public bridge synthetic serializeAsValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 636
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroidx/navigation/FloatListNavType;->serializeAsValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public serializeAsValues(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "value"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 668
    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 890
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 891
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 892
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .local v7, "it":F
    const/4 v8, 0x0

    .line 668
    .local v8, "$i$a$-map-FloatListNavType$serializeAsValues$1":I
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    .line 892
    .end local v7    # "it":F
    .end local v8    # "$i$a$-map-FloatListNavType$serializeAsValues$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 893
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 890
    nop

    .line 668
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public bridge synthetic valueEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "other"    # Ljava/lang/Object;

    .line 636
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/FloatListNavType;->valueEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public valueEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .param p1, "value"    # Ljava/util/List;
    .param p2, "other"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    .line 662
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    .local v2, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 886
    .local v3, "$i$f$toTypedArray":I
    move-object v4, v2

    .line 887
    .local v4, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v0, [Ljava/lang/Float;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v2, [Ljava/lang/Float;

    goto :goto_0

    .line 662
    :cond_0
    move-object v2, v1

    :goto_0
    nop

    .line 663
    .local v2, "valueArray":[Ljava/lang/Float;
    if-eqz p2, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 888
    .restart local v3    # "$i$f$toTypedArray":I
    move-object v4, v1

    .line 889
    .restart local v4    # "thisCollection$iv":Ljava/util/Collection;
    new-array v0, v0, [Ljava/lang/Float;

    invoke-interface {v4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v3    # "$i$f$toTypedArray":I
    .end local v4    # "thisCollection$iv":Ljava/util/Collection;
    move-object v1, v0

    check-cast v1, [Ljava/lang/Float;

    .line 663
    :cond_1
    move-object v0, v1

    .line 664
    .local v0, "otherArray":[Ljava/lang/Float;
    invoke-static {v2, v0}, Lkotlin/collections/ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
