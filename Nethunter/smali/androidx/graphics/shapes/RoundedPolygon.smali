.class public final Landroidx/graphics/shapes/RoundedPolygon;
.super Ljava/lang/Object;
.source "RoundedPolygon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/RoundedPolygon$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,686:1\n108#2,4:687\n108#2,4:691\n108#2,4:695\n1#3:699\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n*L\n93#1:687,4\n96#1:691,4\n101#1:695,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B%\u0008\u0000\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u001c\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012J\u0013\u0010\u0017\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0006\u0010\u001b\u001a\u00020\u0000J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020 R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "",
        "features",
        "",
        "Landroidx/graphics/shapes/Feature;",
        "centerX",
        "",
        "centerY",
        "(Ljava/util/List;FF)V",
        "getCenterX",
        "()F",
        "getCenterY",
        "cubics",
        "Landroidx/graphics/shapes/Cubic;",
        "getCubics",
        "()Ljava/util/List;",
        "getFeatures$graphics_shapes_release",
        "calculateBounds",
        "",
        "bounds",
        "approximate",
        "",
        "calculateMaxBounds",
        "equals",
        "other",
        "hashCode",
        "",
        "normalized",
        "toString",
        "",
        "transformed",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "Companion",
        "graphics-shapes_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;


# instance fields
.field private final centerX:F

.field private final centerY:F

.field private final cubics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation
.end field

.field private final features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Feature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/RoundedPolygon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/RoundedPolygon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/RoundedPolygon;->Companion:Landroidx/graphics/shapes/RoundedPolygon$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;FF)V
    .locals 24
    .param p1, "features"    # Ljava/util/List;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Feature;",
            ">;FF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "features"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    move/from16 v2, p2

    iput v2, v0, Landroidx/graphics/shapes/RoundedPolygon;->centerX:F

    move/from16 v3, p3

    iput v3, v0, Landroidx/graphics/shapes/RoundedPolygon;->centerY:F

    .line 35
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v4

    move-object v5, v4

    .local v5, "$this$cubics_u24lambda_u240":Ljava/util/List;
    const/4 v6, 0x0

    .line 39
    .local v6, "$i$a$-buildList-RoundedPolygon$cubics$1":I
    const/4 v7, 0x0

    .line 40
    .local v7, "firstCubic":Landroidx/graphics/shapes/Cubic;
    const/4 v8, 0x0

    .line 41
    .local v8, "lastCubic":Landroidx/graphics/shapes/Cubic;
    const/4 v9, 0x0

    .line 42
    .local v9, "firstFeatureSplitStart":Ljava/util/List;
    const/4 v10, 0x0

    .line 43
    .local v10, "firstFeatureSplitEnd":Ljava/util/List;
    iget-object v11, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-lez v11, :cond_0

    iget-object v11, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v11}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_0

    .line 44
    iget-object v11, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v11}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/Cubic;

    .line 45
    .local v11, "centerCubic":Landroidx/graphics/shapes/Cubic;
    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v11, v14}, Landroidx/graphics/shapes/Cubic;->split(F)Lkotlin/Pair;

    move-result-object v14

    invoke-virtual {v14}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/graphics/shapes/Cubic;

    .local v15, "start":Landroidx/graphics/shapes/Cubic;
    invoke-virtual {v14}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/graphics/shapes/Cubic;

    .line 46
    .local v14, "end":Landroidx/graphics/shapes/Cubic;
    const/4 v12, 0x2

    new-array v1, v12, [Landroidx/graphics/shapes/Cubic;

    iget-object v12, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v12}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v1, v13

    const/4 v12, 0x1

    aput-object v15, v1, v12

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 47
    const/4 v1, 0x2

    new-array v12, v1, [Landroidx/graphics/shapes/Cubic;

    aput-object v14, v12, v13

    iget-object v1, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v1}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v1

    const/4 v13, 0x2

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v13, 0x1

    aput-object v1, v12, v13

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 51
    .end local v11    # "centerCubic":Landroidx/graphics/shapes/Cubic;
    .end local v14    # "end":Landroidx/graphics/shapes/Cubic;
    .end local v15    # "start":Landroidx/graphics/shapes/Cubic;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v11, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-gt v1, v11, :cond_8

    .line 53
    :goto_0
    if-nez v1, :cond_1

    if-eqz v10, :cond_1

    move-object v12, v10

    goto :goto_1

    .line 54
    :cond_1
    iget-object v12, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v1, v12, :cond_3

    .line 55
    if-nez v9, :cond_2

    goto :goto_4

    :cond_2
    move-object v12, v9

    goto :goto_1

    .line 56
    :cond_3
    iget-object v12, v0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v12}, Landroidx/graphics/shapes/Feature;->getCubics()Ljava/util/List;

    move-result-object v12

    .line 53
    :goto_1
    nop

    .line 52
    nop

    .line 57
    .local v12, "featureCubics":Ljava/util/List;
    const/4 v13, 0x0

    .local v13, "j":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    :goto_2
    if-ge v13, v14, :cond_7

    .line 59
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/graphics/shapes/Cubic;

    .line 60
    .local v15, "cubic":Landroidx/graphics/shapes/Cubic;
    invoke-virtual {v15}, Landroidx/graphics/shapes/Cubic;->zeroLength$graphics_shapes_release()Z

    move-result v16

    if-nez v16, :cond_5

    .line 61
    if-eqz v8, :cond_4

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_4
    move-object v8, v15

    .line 63
    if-nez v7, :cond_6

    move-object v7, v15

    goto :goto_3

    .line 65
    :cond_5
    if-eqz v8, :cond_6

    .line 70
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v16

    const/16 v17, 0x6

    invoke-virtual {v15}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v18

    aput v18, v16, v17

    .line 71
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v16

    const/16 v17, 0x7

    invoke-virtual {v15}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v18

    aput v18, v16, v17

    .line 57
    .end local v15    # "cubic":Landroidx/graphics/shapes/Cubic;
    :cond_6
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 51
    .end local v12    # "featureCubics":Ljava/util/List;
    .end local v13    # "j":I
    :cond_7
    if-eq v1, v11, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "i":I
    :cond_8
    :goto_4
    if-eqz v8, :cond_9

    if-eqz v7, :cond_9

    .line 77
    nop

    .line 79
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v16

    .line 80
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v17

    .line 81
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v18

    .line 82
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v19

    .line 83
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v20

    .line 84
    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v21

    .line 85
    invoke-virtual {v7}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v22

    .line 86
    invoke-virtual {v7}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v23

    .line 78
    invoke-static/range {v16 .. v23}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v1

    .line 77
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_9
    nop

    .line 35
    .end local v5    # "$this$cubics_u24lambda_u240":Ljava/util/List;
    .end local v6    # "$i$a$-buildList-RoundedPolygon$cubics$1":I
    .end local v7    # "firstCubic":Landroidx/graphics/shapes/Cubic;
    .end local v8    # "lastCubic":Landroidx/graphics/shapes/Cubic;
    .end local v9    # "firstFeatureSplitStart":Ljava/util/List;
    .end local v10    # "firstFeatureSplitEnd":Ljava/util/List;
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    .line 91
    nop

    .line 92
    const/4 v1, 0x0

    .local v1, "prevCubic":Ljava/lang/Object;
    iget-object v4, v0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    iget-object v5, v0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 93
    const-string v4, "RoundedPolygon"

    .local v4, "tag$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 687
    .local v5, "$i$f$debugLog":I
    nop

    .line 690
    nop

    .line 94
    .end local v4    # "tag$iv":Ljava/lang/String;
    .end local v5    # "$i$f$debugLog":I
    const/4 v4, 0x0

    .local v4, "index":I
    iget-object v5, v0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_5
    if-ge v4, v5, :cond_b

    .line 95
    iget-object v6, v0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/Cubic;

    .line 96
    .local v6, "cubic":Landroidx/graphics/shapes/Cubic;
    const-string v7, "RoundedPolygon"

    .local v7, "tag$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 691
    .local v8, "$i$f$debugLog":I
    nop

    .line 694
    nop

    .line 97
    .end local v7    # "tag$iv":Ljava/lang/String;
    .end local v8    # "$i$f$debugLog":I
    nop

    .line 98
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v7

    move-object v8, v1

    check-cast v8, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v8}, Landroidx/graphics/shapes/Cubic;->getAnchor1X()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x38d1b717    # 1.0E-4f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_a

    .line 99
    invoke-virtual {v6}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v7

    move-object v9, v1

    check-cast v9, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v9}, Landroidx/graphics/shapes/Cubic;->getAnchor1Y()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_a

    .line 110
    move-object v1, v6

    .line 94
    .end local v6    # "cubic":Landroidx/graphics/shapes/Cubic;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 101
    .restart local v6    # "cubic":Landroidx/graphics/shapes/Cubic;
    :cond_a
    const-string v5, "RoundedPolygon"

    .local v5, "tag$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 695
    .local v7, "$i$f$debugLog":I
    nop

    .line 698
    nop

    .line 104
    .end local v5    # "tag$iv":Ljava/lang/String;
    .end local v7    # "$i$f$debugLog":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 105
    nop

    .line 104
    const-string v7, "RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    .end local v1    # "prevCubic":Ljava/lang/Object;
    .end local v4    # "index":I
    .end local v6    # "cubic":Landroidx/graphics/shapes/Cubic;
    :cond_b
    nop

    .line 33
    return-void
.end method

.method public static synthetic calculateBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FZILjava/lang/Object;)[F
    .locals 0

    .line 199
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 200
    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 199
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 201
    const/4 p2, 0x1

    .line 199
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds([FZ)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic calculateMaxBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FILjava/lang/Object;)[F
    .locals 0

    .line 169
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/RoundedPolygon;->calculateMaxBounds([F)[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final calculateBounds()[F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FZILjava/lang/Object;)[F

    move-result-object v0

    return-object v0
.end method

.method public final calculateBounds([F)[F
    .locals 3

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FZILjava/lang/Object;)[F

    move-result-object v0

    return-object v0
.end method

.method public final calculateBounds([FZ)[F
    .locals 12
    .param p1, "bounds"    # [F
    .param p2, "approximate"    # Z

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 204
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 205
    .local v0, "minX":F
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 206
    .local v1, "minY":F
    const/4 v4, 0x1

    .line 207
    .local v4, "maxX":F
    const/4 v5, 0x1

    .line 208
    .local v5, "maxY":F
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    const/4 v8, 0x3

    const/4 v9, 0x2

    if-ge v6, v7, :cond_1

    .line 209
    iget-object v10, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/graphics/shapes/Cubic;

    .line 210
    .local v10, "cubic":Landroidx/graphics/shapes/Cubic;
    invoke-virtual {v10, p1, p2}, Landroidx/graphics/shapes/Cubic;->calculateBounds$graphics_shapes_release([FZ)V

    .line 211
    aget v11, p1, v2

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 212
    aget v11, p1, v3

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 213
    aget v9, p1, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 214
    aget v8, p1, v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 208
    .end local v10    # "cubic":Landroidx/graphics/shapes/Cubic;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 216
    .end local v6    # "i":I
    :cond_1
    aput v0, p1, v2

    .line 217
    aput v1, p1, v3

    .line 218
    aput v4, p1, v9

    .line 219
    aput v5, p1, v8

    .line 220
    return-object p1

    .line 699
    .end local v0    # "minX":F
    .end local v1    # "minY":F
    .end local v4    # "maxX":F
    .end local v5    # "maxY":F
    :cond_2
    const/4 v0, 0x0

    .line 203
    .local v0, "$i$a$-require-RoundedPolygon$calculateBounds$1":I
    nop

    .end local v0    # "$i$a$-require-RoundedPolygon$calculateBounds$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required bounds size of 4"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final calculateMaxBounds([F)[F
    .locals 12
    .param p1, "bounds"    # [F

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "maxDistSquared":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_1

    .line 173
    iget-object v5, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/Cubic;

    .line 174
    .local v5, "cubic":Landroidx/graphics/shapes/Cubic;
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v6

    iget v7, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerX:F

    sub-float/2addr v6, v7

    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v7

    iget v8, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerY:F

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Landroidx/graphics/shapes/Utils;->distanceSquared(FF)F

    move-result v6

    .line 175
    .local v6, "anchorDistance":F
    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v5, v7}, Landroidx/graphics/shapes/Cubic;->pointOnCurve-OOQOV4g$graphics_shapes_release(F)J

    move-result-wide v7

    .line 176
    .local v7, "middlePoint":J
    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v9

    iget v10, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerX:F

    sub-float/2addr v9, v10

    invoke-static {v7, v8}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v10

    iget v11, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerY:F

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Landroidx/graphics/shapes/Utils;->distanceSquared(FF)F

    move-result v9

    .line 177
    .local v9, "middleDistance":F
    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v0, v10}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 172
    .end local v5    # "cubic":Landroidx/graphics/shapes/Cubic;
    .end local v6    # "anchorDistance":F
    .end local v7    # "middlePoint":J
    .end local v9    # "middleDistance":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    .end local v1    # "i":I
    :cond_1
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 180
    .local v1, "distance":F
    iget v4, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerX:F

    sub-float/2addr v4, v1

    aput v4, p1, v2

    .line 181
    iget v2, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerY:F

    sub-float/2addr v2, v1

    aput v2, p1, v3

    .line 182
    iget v2, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerX:F

    add-float/2addr v2, v1

    const/4 v3, 0x2

    aput v2, p1, v3

    .line 183
    iget v2, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerY:F

    add-float/2addr v2, v1

    const/4 v3, 0x3

    aput v2, p1, v3

    .line 184
    return-object p1

    .line 699
    .end local v0    # "maxDistSquared":F
    .end local v1    # "distance":F
    :cond_2
    const/4 v0, 0x0

    .line 170
    .local v0, "$i$a$-require-RoundedPolygon$calculateMaxBounds$1":I
    nop

    .end local v0    # "$i$a$-require-RoundedPolygon$calculateMaxBounds$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required bounds size of 4"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 226
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 227
    :cond_0
    instance-of v0, p1, Landroidx/graphics/shapes/RoundedPolygon;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 229
    :cond_1
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Landroidx/graphics/shapes/RoundedPolygon;

    iget-object v1, v1, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getCenterX()F
    .locals 1

    .line 33
    iget v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerX:F

    return v0
.end method

.method public final getCenterY()F
    .locals 1

    .line 33
    iget v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerY:F

    return v0
.end method

.method public final getCubics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    return-object v0
.end method

.method public final getFeatures$graphics_shapes_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Feature;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 233
    iget-object v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final normalized()Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2, v0}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds$default(Landroidx/graphics/shapes/RoundedPolygon;[FZILjava/lang/Object;)[F

    move-result-object v0

    .line 140
    .local v0, "bounds":[F
    const/4 v3, 0x2

    aget v4, v0, v3

    aget v5, v0, v1

    sub-float/2addr v4, v5

    .line 141
    .local v4, "width":F
    aget v2, v0, v2

    const/4 v5, 0x1

    aget v6, v0, v5

    sub-float/2addr v2, v6

    .line 142
    .local v2, "height":F
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 144
    .local v6, "side":F
    sub-float v7, v6, v4

    int-to-float v3, v3

    div-float/2addr v7, v3

    aget v1, v0, v1

    sub-float/2addr v7, v1

    .line 145
    .local v7, "offsetX":F
    sub-float v1, v6, v2

    div-float/2addr v1, v3

    aget v3, v0, v5

    sub-float/2addr v1, v3

    .line 146
    .local v1, "offsetY":F
    new-instance v3, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;

    invoke-direct {v3, v7, v6, v1}, Landroidx/graphics/shapes/RoundedPolygon$normalized$1;-><init>(FFF)V

    check-cast v3, Landroidx/graphics/shapes/PointTransformer;

    invoke-virtual {p0, v3}, Landroidx/graphics/shapes/RoundedPolygon;->transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/RoundedPolygon;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[RoundedPolygon. Cubics = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->cubics:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    nop

    .line 150
    const-string v1, " || Features = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    iget-object v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    nop

    .line 150
    const-string v1, " || Center = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerX:F

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    nop

    .line 150
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    iget v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerY:F

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    nop

    .line 150
    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    return-object v0
.end method

.method public final transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/RoundedPolygon;
    .locals 8
    .param p1, "f"    # Landroidx/graphics/shapes/PointTransformer;

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget v0, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerX:F

    iget v1, p0, Landroidx/graphics/shapes/RoundedPolygon;->centerY:F

    invoke-static {v0, v1}, Landroidx/collection/FloatFloatPair;->constructor-impl(FF)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroidx/graphics/shapes/PointKt;->transformed-so9K2fw(JLandroidx/graphics/shapes/PointTransformer;)J

    move-result-wide v0

    .line 123
    .local v0, "center":J
    nop

    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$transformed_u24lambda_u244":Ljava/util/List;
    const/4 v4, 0x0

    .line 125
    .local v4, "$i$a$-buildList-RoundedPolygon$transformed$1":I
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v6, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 126
    iget-object v7, p0, Landroidx/graphics/shapes/RoundedPolygon;->features:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/graphics/shapes/Feature;

    invoke-virtual {v7, p1}, Landroidx/graphics/shapes/Feature;->transformed$graphics_shapes_release(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    .end local v5    # "i":I
    :cond_0
    nop

    .line 124
    .end local v3    # "$this$transformed_u24lambda_u244":Ljava/util/List;
    .end local v4    # "$i$a$-buildList-RoundedPolygon$transformed$1":I
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 129
    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v3

    .line 130
    invoke-static {v0, v1}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v4

    .line 123
    new-instance v5, Landroidx/graphics/shapes/RoundedPolygon;

    invoke-direct {v5, v2, v3, v4}, Landroidx/graphics/shapes/RoundedPolygon;-><init>(Ljava/util/List;FF)V

    return-object v5
.end method
