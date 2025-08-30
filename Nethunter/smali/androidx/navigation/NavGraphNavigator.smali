.class public Landroidx/navigation/NavGraphNavigator;
.super Landroidx/navigation/Navigator;
.source "NavGraphNavigator.kt"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "navigation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavGraphNavigator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/NavGraph;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraphNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphNavigator.kt\nandroidx/navigation/NavGraphNavigator\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 3 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n90#2:135\n106#2:156\n90#2:158\n27#3:136\n46#3:137\n32#3,4:138\n31#3,7:148\n126#4:142\n153#4,3:143\n37#5,2:146\n1#6:155\n1#6:157\n*S KotlinDebug\n*F\n+ 1 NavGraphNavigator.kt\nandroidx/navigation/NavGraphNavigator\n*L\n93#1:135\n94#1:156\n107#1:158\n94#1:136\n94#1:137\n94#1:138,4\n94#1:148,7\n94#1:142\n94#1:143,3\n94#1:146,2\n94#1:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u0000 \u00162\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\r\u001a\u00020\u0002H\u0016J*\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/navigation/NavGraphNavigator;",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/NavGraph;",
        "navigatorProvider",
        "Landroidx/navigation/NavigatorProvider;",
        "<init>",
        "(Landroidx/navigation/NavigatorProvider;)V",
        "backStack",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "Landroidx/navigation/NavBackStackEntry;",
        "getBackStack",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "createDestination",
        "navigate",
        "",
        "entries",
        "navOptions",
        "Landroidx/navigation/NavOptions;",
        "navigatorExtras",
        "Landroidx/navigation/Navigator$Extras;",
        "entry",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/navigation/NavGraphNavigator$Companion;

.field public static final NAME:Ljava/lang/String; = "navigation"


# instance fields
.field private final navigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method public static synthetic $r8$lambda$qwdvpzsMM6_VwMCUnwoFhwzqayo(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/navigation/NavGraphNavigator;->navigate$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavGraphNavigator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavGraphNavigator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavGraphNavigator;->Companion:Landroidx/navigation/NavGraphNavigator$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .locals 1
    .param p1, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    const-string v0, "navigatorProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    const-string v0, "navigation"

    invoke-direct {p0, v0}, Landroidx/navigation/Navigator;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Landroidx/navigation/NavGraphNavigator;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-void
.end method

.method private final navigate(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 19
    .param p1, "entry"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 69
    .local v0, "destination":Landroidx/navigation/NavGraph;
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v1, "args":Lkotlin/jvm/internal/Ref$ObjectRef;
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 70
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v2

    .line 71
    .local v2, "startId":I
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationRoute()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "startRoute":Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v2, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_d

    .line 76
    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {v0, v3, v5}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    move-result-object v6

    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavDestination;

    .line 76
    :goto_2
    nop

    .line 75
    nop

    .line 81
    .local v6, "startDestination":Landroidx/navigation/NavDestination;
    if-eqz v6, :cond_c

    .line 87
    if-eqz v3, :cond_a

    .line 91
    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getRoute()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 92
    invoke-virtual {v6, v3}, Landroidx/navigation/NavDestination;->matchRoute(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 93
    .local v7, "matchingArgs":Landroid/os/Bundle;
    :goto_3
    if-eqz v7, :cond_7

    move-object v8, v7

    .local v8, "$this$read$iv":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 135
    .local v9, "$i$f$read":I
    invoke-static {v8}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .local v10, "$this$navigate_u24lambda_u242":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 93
    .local v11, "$i$a$-read-NavGraphNavigator$navigate$3":I
    invoke-static {v10}, Landroidx/savedstate/SavedStateReader;->isEmpty-impl(Landroid/os/Bundle;)Z

    move-result v10

    .line 135
    .end local v10    # "$this$navigate_u24lambda_u242":Landroid/os/Bundle;
    .end local v11    # "$i$a$-read-NavGraphNavigator$navigate$3":I
    nop

    .line 93
    .end local v8    # "$this$read$iv":Landroid/os/Bundle;
    .end local v9    # "$i$f$read":I
    if-nez v10, :cond_7

    .line 94
    nop

    .line 136
    nop

    .line 137
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 136
    .local v8, "initialState$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 138
    .local v9, "$i$f$savedState":I
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 139
    new-array v5, v5, [Lkotlin/Pair;

    goto :goto_5

    .line 141
    :cond_4
    move-object v10, v8

    .local v10, "$this$map$iv$iv":Ljava/util/Map;
    const/4 v11, 0x0

    .line 142
    .local v11, "$i$f$map":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .local v12, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v13, v10

    .local v13, "$this$mapTo$iv$iv$iv":Ljava/util/Map;
    const/4 v14, 0x0

    .line 143
    .local v14, "$i$f$mapTo":I
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 144
    .local v16, "item$iv$iv$iv":Ljava/util/Map$Entry;
    const/16 v17, 0x0

    .local v17, "$i$a$-map-SavedStateKt__SavedState_androidKt$savedState$pairs$1$iv":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Ljava/lang/String;

    .local v4, "key$iv":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 141
    .local v5, "value$iv":Ljava/lang/Object;
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 144
    .end local v4    # "key$iv":Ljava/lang/String;
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-map-SavedStateKt__SavedState_androidKt$savedState$pairs$1$iv":I
    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_4

    .line 145
    .end local v16    # "item$iv$iv$iv":Ljava/util/Map$Entry;
    :cond_5
    nop

    .end local v12    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v13    # "$this$mapTo$iv$iv$iv":Ljava/util/Map;
    .end local v14    # "$i$f$mapTo":I
    move-object v4, v12

    check-cast v4, Ljava/util/List;

    .line 142
    nop

    .end local v10    # "$this$map$iv$iv":Ljava/util/Map;
    .end local v11    # "$i$f$map":I
    check-cast v4, Ljava/util/Collection;

    .line 141
    nop

    .local v4, "$this$toTypedArray$iv$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 146
    .local v5, "$i$f$toTypedArray":I
    move-object v10, v4

    .line 147
    .local v10, "thisCollection$iv$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    new-array v11, v11, [Lkotlin/Pair;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "$this$toTypedArray$iv$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v10    # "thisCollection$iv$iv":Ljava/util/Collection;
    move-object v5, v4

    check-cast v5, [Lkotlin/Pair;

    .line 138
    :goto_5
    nop

    .line 148
    move-object v4, v5

    .line 154
    .local v4, "pairs$iv":[Lkotlin/Pair;
    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lkotlin/Pair;

    invoke-static {v5}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v5

    move-object v10, v5

    .line 155
    .local v10, "$this$savedState_u24lambda_u241$iv":Landroid/os/Bundle;
    const/4 v11, 0x0

    .line 154
    .local v11, "$i$a$-apply-SavedStateKt__SavedState_androidKt$savedState$2$iv":I
    move-object v12, v10

    .local v12, "$this$write$iv$iv":Landroid/os/Bundle;
    const/4 v13, 0x0

    .line 156
    .local v13, "$i$f$write":I
    invoke-static {v12}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .local v14, "$this$navigate_u24lambda_u244":Landroid/os/Bundle;
    const/4 v15, 0x0

    .line 97
    .local v15, "$i$a$-savedState$default-NavGraphNavigator$navigate$4":I
    invoke-static {v14, v7}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 98
    move/from16 v16, v2

    .end local v2    # "startId":I
    .local v16, "startId":I
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_6

    .line 157
    .local v2, "it":Landroid/os/Bundle;
    const/16 v17, 0x0

    .line 98
    .local v17, "$i$a$-let-NavGraphNavigator$navigate$4$1":I
    invoke-static {v14, v2}, Landroidx/savedstate/SavedStateWriter;->putAll-impl(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 99
    .end local v2    # "it":Landroid/os/Bundle;
    .end local v17    # "$i$a$-let-NavGraphNavigator$navigate$4$1":I
    :cond_6
    nop

    .line 156
    .end local v12    # "$this$write$iv$iv":Landroid/os/Bundle;
    .end local v13    # "$i$f$write":I
    .end local v14    # "$this$navigate_u24lambda_u244":Landroid/os/Bundle;
    .end local v15    # "$i$a$-savedState$default-NavGraphNavigator$navigate$4":I
    nop

    .line 154
    nop

    .line 94
    .end local v4    # "pairs$iv":[Lkotlin/Pair;
    .end local v8    # "initialState$iv":Ljava/util/Map;
    .end local v9    # "$i$f$savedState":I
    .end local v10    # "$this$savedState_u24lambda_u241$iv":Landroid/os/Bundle;
    .end local v11    # "$i$a$-apply-SavedStateKt__SavedState_androidKt$savedState$2$iv":I
    iput-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_6

    .line 93
    .end local v16    # "startId":I
    .local v2, "startId":I
    :cond_7
    move/from16 v16, v2

    .end local v2    # "startId":I
    .restart local v16    # "startId":I
    goto :goto_6

    .line 91
    .end local v7    # "matchingArgs":Landroid/os/Bundle;
    .end local v16    # "startId":I
    .restart local v2    # "startId":I
    :cond_8
    move/from16 v16, v2

    .line 104
    .end local v2    # "startId":I
    .restart local v16    # "startId":I
    :goto_6
    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_b

    .line 106
    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    move-result-object v2

    new-instance v4, Landroidx/navigation/NavGraphNavigator$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Landroidx/navigation/NavGraphNavigator$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v2, v4}, Landroidx/navigation/NavArgumentKt;->missingRequiredArguments(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v2

    .line 105
    nop

    .line 109
    .local v2, "missingRequiredArgs":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    .line 110
    .local v4, "$i$a$-require-NavGraphNavigator$navigate$5":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot navigate to startDestination "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ". Missing required arguments ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    nop

    .line 110
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    nop

    .line 109
    .end local v4    # "$i$a$-require-NavGraphNavigator$navigate$5":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    .end local v16    # "startId":I
    .local v2, "startId":I
    :cond_a
    move/from16 v16, v2

    .line 117
    .end local v2    # "startId":I
    .restart local v16    # "startId":I
    :cond_b
    :goto_7
    move-object/from16 v2, p0

    iget-object v4, v2, Landroidx/navigation/NavGraphNavigator;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 118
    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v4

    .line 116
    nop

    .line 121
    .local v4, "navigator":Landroidx/navigation/Navigator;
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavGraphNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v5

    .line 122
    nop

    .line 125
    iget-object v7, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 121
    invoke-virtual {v5, v6, v7}, Landroidx/navigation/NavigatorState;->createBackStackEntry(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v5

    .line 120
    nop

    .line 127
    .local v5, "startDestinationEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual {v4, v7, v8, v9}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 128
    return-void

    .line 81
    .end local v4    # "navigator":Landroidx/navigation/Navigator;
    .end local v5    # "startDestinationEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v16    # "startId":I
    .restart local v2    # "startId":I
    :cond_c
    const/4 v4, 0x0

    .line 82
    .local v4, "$i$a$-requireNotNull-NavGraphNavigator$navigate$2":I
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "dest":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 84
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "navigation destination "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not a direct child of this NavGraph"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-direct {v7, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    .end local v4    # "$i$a$-requireNotNull-NavGraphNavigator$navigate$2":I
    .end local v5    # "dest":Ljava/lang/String;
    .end local v6    # "startDestination":Landroidx/navigation/NavDestination;
    :cond_d
    const/4 v4, 0x0

    .line 73
    .local v4, "$i$a$-check-NavGraphNavigator$navigate$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no start destination defined via app:startDestination for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    .end local v4    # "$i$a$-check-NavGraphNavigator$navigate$1":I
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static final navigate$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)Z
    .locals 5
    .param p0, "$args"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, "$this$read$iv":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 158
    .local v2, "$i$f$read":I
    invoke-static {v0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .local v3, "$this$navigate_u24lambda_u246_u24lambda_u245":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 107
    .local v4, "$i$a$-read-NavGraphNavigator$navigate$missingRequiredArgs$1$1":I
    invoke-static {v3, p1}, Landroidx/savedstate/SavedStateReader;->contains-impl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    .line 158
    .end local v3    # "$this$navigate_u24lambda_u246_u24lambda_u245":Landroid/os/Bundle;
    .end local v4    # "$i$a$-read-NavGraphNavigator$navigate$missingRequiredArgs$1$1":I
    nop

    .line 107
    .end local v0    # "$this$read$iv":Landroid/os/Bundle;
    .end local v2    # "$i$f$read":I
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 32
    invoke-virtual {p0}, Landroidx/navigation/NavGraphNavigator;->createDestination()Landroidx/navigation/NavGraph;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public createDestination()Landroidx/navigation/NavGraph;
    .locals 2

    .line 46
    new-instance v0, Landroidx/navigation/NavGraph;

    move-object v1, p0

    check-cast v1, Landroidx/navigation/Navigator;

    invoke-direct {v0, v1}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public final getBackStack()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroidx/navigation/NavGraphNavigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 2
    .param p1, "entries"    # Ljava/util/List;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 58
    .local v1, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-direct {p0, v1, p2, p3}, Landroidx/navigation/NavGraphNavigator;->navigate(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .end local v1    # "entry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
