.class public final Landroidx/graphics/shapes/Morph;
.super Ljava/lang/Object;
.source "Morph.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/graphics/shapes/Morph$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMorph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph\n*L\n1#1,342:1\n173#1,10:343\n*S KotlinDebug\n*F\n+ 1 Morph.kt\nandroidx/graphics/shapes/Morph\n*L\n-1#1:343,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0010\u001a\u00020\u0011J\u001c\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013J2\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00190\u001dH\u0087\u0008\u00f8\u0001\u0000R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00080\u00078@X\u0081\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/graphics/shapes/Morph;",
        "",
        "start",
        "Landroidx/graphics/shapes/RoundedPolygon;",
        "end",
        "(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V",
        "_morphMatch",
        "",
        "Lkotlin/Pair;",
        "Landroidx/graphics/shapes/Cubic;",
        "morphMatch",
        "getMorphMatch$annotations",
        "()V",
        "getMorphMatch",
        "()Ljava/util/List;",
        "asCubics",
        "progress",
        "",
        "calculateBounds",
        "",
        "bounds",
        "approximate",
        "",
        "calculateMaxBounds",
        "forEachCubic",
        "",
        "mutableCubic",
        "Landroidx/graphics/shapes/MutableCubic;",
        "callback",
        "Lkotlin/Function1;",
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
.field public static final Companion:Landroidx/graphics/shapes/Morph$Companion;


# instance fields
.field private final _morphMatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/graphics/shapes/Cubic;",
            "Landroidx/graphics/shapes/Cubic;",
            ">;>;"
        }
    .end annotation
.end field

.field private final end:Landroidx/graphics/shapes/RoundedPolygon;

.field private final start:Landroidx/graphics/shapes/RoundedPolygon;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/graphics/shapes/Morph$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/graphics/shapes/Morph$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/graphics/shapes/Morph;->Companion:Landroidx/graphics/shapes/Morph$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)V
    .locals 3
    .param p1, "start"    # Landroidx/graphics/shapes/RoundedPolygon;
    .param p2, "end"    # Landroidx/graphics/shapes/RoundedPolygon;

    const-string/jumbo v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/graphics/shapes/Morph;->start:Landroidx/graphics/shapes/RoundedPolygon;

    iput-object p2, p0, Landroidx/graphics/shapes/Morph;->end:Landroidx/graphics/shapes/RoundedPolygon;

    .line 49
    sget-object v0, Landroidx/graphics/shapes/Morph;->Companion:Landroidx/graphics/shapes/Morph$Companion;

    iget-object v1, p0, Landroidx/graphics/shapes/Morph;->start:Landroidx/graphics/shapes/RoundedPolygon;

    iget-object v2, p0, Landroidx/graphics/shapes/Morph;->end:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v0, v1, v2}, Landroidx/graphics/shapes/Morph$Companion;->match$graphics_shapes_release(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    .line 39
    return-void
.end method

.method public static synthetic calculateBounds$default(Landroidx/graphics/shapes/Morph;[FZILjava/lang/Object;)[F
    .locals 0

    .line 63
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 64
    const/4 p1, 0x4

    new-array p1, p1, [F

    .line 63
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 65
    const/4 p2, 0x1

    .line 63
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/graphics/shapes/Morph;->calculateBounds([FZ)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic calculateMaxBounds$default(Landroidx/graphics/shapes/Morph;[FILjava/lang/Object;)[F
    .locals 0

    .line 92
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    new-array p1, p1, [F

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/graphics/shapes/Morph;->calculateMaxBounds([F)[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic forEachCubic$default(Landroidx/graphics/shapes/Morph;FLandroidx/graphics/shapes/MutableCubic;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 3
    .param p0, "$this"    # Landroidx/graphics/shapes/Morph;
    .param p1, "progress"    # F
    .param p2, "mutableCubic"    # Landroidx/graphics/shapes/MutableCubic;
    .param p3, "callback"    # Lkotlin/jvm/functions/Function1;

    .line 173
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 175
    new-instance p4, Landroidx/graphics/shapes/MutableCubic;

    invoke-direct {p4}, Landroidx/graphics/shapes/MutableCubic;-><init>()V

    move-object p2, p4

    .line 173
    :cond_0
    const-string p4, "mutableCubic"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "callback"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 178
    .local p4, "$i$f$forEachCubic":I
    const/4 p5, 0x0

    .local p5, "i":I
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge p5, v0, :cond_1

    .line 179
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p2, v1, v2, p1}, Landroidx/graphics/shapes/MutableCubic;->interpolate(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;F)V

    .line 180
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 182
    .end local p5    # "i":I
    :cond_1
    return-void
.end method

.method public static synthetic getMorphMatch$annotations()V
    .locals 0

    return-void
.end method

.method public static final match$graphics_shapes_release(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            "Landroidx/graphics/shapes/RoundedPolygon;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/graphics/shapes/Cubic;",
            "Landroidx/graphics/shapes/Cubic;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/graphics/shapes/Morph;->Companion:Landroidx/graphics/shapes/Morph$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/graphics/shapes/Morph$Companion;->match$graphics_shapes_release(Landroidx/graphics/shapes/RoundedPolygon;Landroidx/graphics/shapes/RoundedPolygon;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final asCubics(F)Ljava/util/List;
    .locals 22
    .param p1, "progress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Landroidx/graphics/shapes/Cubic;",
            ">;"
        }
    .end annotation

    .line 119
    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$asCubics_u24lambda_u240":Ljava/util/List;
    const/4 v3, 0x0

    .line 123
    .local v3, "$i$a$-buildList-Morph$asCubics$1":I
    const/4 v4, 0x0

    .line 124
    .local v4, "firstCubic":Landroidx/graphics/shapes/Cubic;
    const/4 v5, 0x0

    .line 125
    .local v5, "lastCubic":Landroidx/graphics/shapes/Cubic;
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v7, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_3

    .line 127
    nop

    .line 128
    const/16 v8, 0x8

    new-array v9, v8, [F

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_0

    .line 130
    iget-object v11, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/Pair;

    invoke-virtual {v11}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v11}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v11

    aget v11, v11, v10

    .line 131
    iget-object v12, v0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/Pair;

    invoke-virtual {v12}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v12}, Landroidx/graphics/shapes/Cubic;->getPoints$graphics_shapes_release()[F

    move-result-object v12

    aget v12, v12, v10

    .line 132
    nop

    .line 129
    move/from16 v13, p1

    invoke-static {v11, v12, v13}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    .line 128
    goto :goto_1

    .line 127
    :cond_0
    move/from16 v13, p1

    new-instance v8, Landroidx/graphics/shapes/Cubic;

    invoke-direct {v8, v9}, Landroidx/graphics/shapes/Cubic;-><init>([F)V

    .line 126
    nop

    .line 136
    .local v8, "cubic":Landroidx/graphics/shapes/Cubic;
    if-nez v4, :cond_1

    move-object v4, v8

    .line 137
    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_2
    move-object v5, v8

    .line 125
    .end local v8    # "cubic":Landroidx/graphics/shapes/Cubic;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move/from16 v13, p1

    .line 140
    .end local v6    # "i":I
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 141
    nop

    .line 143
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v14

    .line 144
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v15

    .line 145
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getControl0X()F

    move-result v16

    .line 146
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getControl0Y()F

    move-result v17

    .line 147
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getControl1X()F

    move-result v18

    .line 148
    invoke-virtual {v5}, Landroidx/graphics/shapes/Cubic;->getControl1Y()F

    move-result v19

    .line 149
    invoke-virtual {v4}, Landroidx/graphics/shapes/Cubic;->getAnchor0X()F

    move-result v20

    .line 150
    invoke-virtual {v4}, Landroidx/graphics/shapes/Cubic;->getAnchor0Y()F

    move-result v21

    .line 142
    invoke-static/range {v14 .. v21}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v6

    .line 141
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_4
    nop

    .line 119
    .end local v2    # "$this$asCubics_u24lambda_u240":Ljava/util/List;
    .end local v3    # "$i$a$-buildList-Morph$asCubics$1":I
    .end local v4    # "firstCubic":Landroidx/graphics/shapes/Cubic;
    .end local v5    # "lastCubic":Landroidx/graphics/shapes/Cubic;
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final calculateBounds()[F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Landroidx/graphics/shapes/Morph;->calculateBounds$default(Landroidx/graphics/shapes/Morph;[FZILjava/lang/Object;)[F

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

    invoke-static {p0, p1, v2, v0, v1}, Landroidx/graphics/shapes/Morph;->calculateBounds$default(Landroidx/graphics/shapes/Morph;[FZILjava/lang/Object;)[F

    move-result-object v0

    return-object v0
.end method

.method public final calculateBounds([FZ)[F
    .locals 9
    .param p1, "bounds"    # [F
    .param p2, "approximate"    # Z

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Landroidx/graphics/shapes/Morph;->start:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v0, p1, p2}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds([FZ)[F

    .line 68
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 69
    .local v1, "minX":F
    const/4 v2, 0x1

    aget v3, p1, v2

    .line 70
    .local v3, "minY":F
    const/4 v4, 0x2

    aget v5, p1, v4

    .line 71
    .local v5, "maxX":F
    const/4 v6, 0x3

    aget v7, p1, v6

    .line 72
    .local v7, "maxY":F
    iget-object v8, p0, Landroidx/graphics/shapes/Morph;->end:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v8, p1, p2}, Landroidx/graphics/shapes/RoundedPolygon;->calculateBounds([FZ)[F

    .line 73
    aget v8, p1, v0

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, p1, v0

    .line 74
    aget v0, p1, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p1, v2

    .line 75
    aget v0, p1, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, v4

    .line 76
    aget v0, p1, v6

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, v6

    .line 77
    return-object p1
.end method

.method public final calculateMaxBounds([F)[F
    .locals 9
    .param p1, "bounds"    # [F

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroidx/graphics/shapes/Morph;->start:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v0, p1}, Landroidx/graphics/shapes/RoundedPolygon;->calculateMaxBounds([F)[F

    .line 94
    const/4 v0, 0x0

    aget v1, p1, v0

    .line 95
    .local v1, "minX":F
    const/4 v2, 0x1

    aget v3, p1, v2

    .line 96
    .local v3, "minY":F
    const/4 v4, 0x2

    aget v5, p1, v4

    .line 97
    .local v5, "maxX":F
    const/4 v6, 0x3

    aget v7, p1, v6

    .line 98
    .local v7, "maxY":F
    iget-object v8, p0, Landroidx/graphics/shapes/Morph;->end:Landroidx/graphics/shapes/RoundedPolygon;

    invoke-virtual {v8, p1}, Landroidx/graphics/shapes/RoundedPolygon;->calculateMaxBounds([F)[F

    .line 99
    aget v8, p1, v0

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, p1, v0

    .line 100
    aget v0, p1, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p1, v2

    .line 101
    aget v0, p1, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, v4

    .line 102
    aget v0, p1, v6

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p1, v6

    .line 103
    return-object p1
.end method

.method public final forEachCubic(FLandroidx/graphics/shapes/MutableCubic;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1, "progress"    # F
    .param p2, "mutableCubic"    # Landroidx/graphics/shapes/MutableCubic;
    .param p3, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/graphics/shapes/MutableCubic;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/shapes/MutableCubic;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mutableCubic"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    .local v0, "$i$f$forEachCubic":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 179
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p2, v3, v4, p1}, Landroidx/graphics/shapes/MutableCubic;->interpolate(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;F)V

    .line 180
    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final forEachCubic(FLkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "progress"    # F
    .param p2, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/graphics/shapes/MutableCubic;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 343
    .local v0, "$i$f$forEachCubic":I
    nop

    .line 345
    new-instance v1, Landroidx/graphics/shapes/MutableCubic;

    invoke-direct {v1}, Landroidx/graphics/shapes/MutableCubic;-><init>()V

    .line 343
    .local v1, "mutableCubic$iv":Landroidx/graphics/shapes/MutableCubic;
    const/4 v2, 0x0

    .line 348
    .local v2, "$i$f$forEachCubic":I
    const/4 v3, 0x0

    .local v3, "i$iv":I
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 349
    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {p0}, Landroidx/graphics/shapes/Morph;->getMorphMatch()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v1, v5, v6, p1}, Landroidx/graphics/shapes/MutableCubic;->interpolate(Landroidx/graphics/shapes/Cubic;Landroidx/graphics/shapes/Cubic;F)V

    .line 350
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    .end local v3    # "i$iv":I
    :cond_0
    nop

    .end local v1    # "mutableCubic$iv":Landroidx/graphics/shapes/MutableCubic;
    .end local v2    # "$i$f$forEachCubic":I
    return-void
.end method

.method public final getMorphMatch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Landroidx/graphics/shapes/Cubic;",
            "Landroidx/graphics/shapes/Cubic;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroidx/graphics/shapes/Morph;->_morphMatch:Ljava/util/List;

    return-object v0
.end method
