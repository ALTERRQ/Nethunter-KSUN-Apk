.class public final Landroidx/graphics/shapes/Cubic$Companion;
.super Ljava/lang/Object;
.source "Cubic.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Cubic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007J(\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/graphics/shapes/Cubic$Companion;",
        "",
        "()V",
        "circularArc",
        "Landroidx/graphics/shapes/Cubic;",
        "centerX",
        "",
        "centerY",
        "x0",
        "y0",
        "x1",
        "y1",
        "straightLine",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/graphics/shapes/Cubic$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final circularArc(FFFFFF)Landroidx/graphics/shapes/Cubic;
    .locals 23
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "x0"    # F
    .param p4, "y0"    # F
    .param p5, "x1"    # F
    .param p6, "y1"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 338
    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    sub-float v0, v8, p1

    sub-float v1, v9, p2

    invoke-static {v0, v1}, Landroidx/graphics/shapes/Utils;->directionVector(FF)J

    move-result-wide v12

    .line 339
    .local v12, "p0d":J
    sub-float v0, v10, p1

    sub-float v1, v11, p2

    invoke-static {v0, v1}, Landroidx/graphics/shapes/Utils;->directionVector(FF)J

    move-result-wide v14

    .line 340
    .local v14, "p1d":J
    invoke-static {v12, v13}, Landroidx/graphics/shapes/Utils;->rotate90-DnnuFBc(J)J

    move-result-wide v6

    .line 341
    .local v6, "rotatedP0":J
    invoke-static {v14, v15}, Landroidx/graphics/shapes/Utils;->rotate90-DnnuFBc(J)J

    move-result-wide v16

    .line 342
    .local v16, "rotatedP1":J
    sub-float v0, v10, p1

    sub-float v1, v11, p2

    invoke-static {v6, v7, v0, v1}, Landroidx/graphics/shapes/PointKt;->dotProduct-5P9i7ZU(JFF)F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v18, v0

    .line 343
    .local v18, "clockwise":Z
    invoke-static {v12, v13, v14, v15}, Landroidx/graphics/shapes/PointKt;->dotProduct-ybeJwSQ(JJ)F

    move-result v19

    .line 344
    .local v19, "cosa":F
    const v0, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v19, v0

    if-lez v0, :cond_1

    move-object/from16 v5, p0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroidx/graphics/shapes/Cubic$Companion;->straightLine(FFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v0

    return-object v0

    .line 346
    :cond_1
    move-object/from16 v5, p0

    sub-float v0, v8, p1

    sub-float v1, v9, p2

    invoke-static {v0, v1}, Landroidx/graphics/shapes/Utils;->distance(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 347
    const/4 v1, 0x2

    int-to-float v1, v1

    int-to-float v2, v2

    sub-float v3, v2, v19

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v3, v19, v19

    sub-float v3, v2, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v1, v3

    .line 346
    mul-float v0, v0, v1

    .line 347
    sub-float v2, v2, v19

    .line 346
    div-float/2addr v0, v2

    .line 348
    if-eqz v18, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    .line 346
    :goto_1
    mul-float v0, v0, v1

    .line 345
    move/from16 v20, v0

    .line 350
    .local v20, "k":F
    nop

    .line 351
    nop

    .line 352
    invoke-static {v6, v7}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    mul-float v0, v0, v20

    add-float v2, v8, v0

    .line 353
    invoke-static {v6, v7}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v0

    mul-float v0, v0, v20

    add-float v3, v9, v0

    .line 354
    invoke-static/range {v16 .. v17}, Landroidx/graphics/shapes/PointKt;->getX-DnnuFBc(J)F

    move-result v0

    mul-float v0, v0, v20

    sub-float v4, v10, v0

    .line 355
    invoke-static/range {v16 .. v17}, Landroidx/graphics/shapes/PointKt;->getY-DnnuFBc(J)F

    move-result v0

    mul-float v0, v0, v20

    sub-float v21, v11, v0

    .line 356
    nop

    .line 357
    nop

    .line 349
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v5, v21

    move-wide/from16 v21, v6

    .end local v6    # "rotatedP0":J
    .local v21, "rotatedP0":J
    move/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v7}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v0

    return-object v0
.end method

.method public final straightLine(FFFF)Landroidx/graphics/shapes/Cubic;
    .locals 9
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 310
    nop

    .line 311
    nop

    .line 312
    const v0, 0x3eaaaaab

    invoke-static {p1, p3, v0}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v3

    .line 313
    invoke-static {p2, p4, v0}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v4

    .line 314
    const v0, 0x3f2aaaab

    invoke-static {p1, p3, v0}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v5

    .line 315
    invoke-static {p2, p4, v0}, Landroidx/graphics/shapes/Utils;->interpolate(FFF)F

    move-result v6

    .line 316
    nop

    .line 317
    nop

    .line 309
    move v1, p1

    move v2, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v1 .. v8}, Landroidx/graphics/shapes/CubicKt;->Cubic(FFFFFFFF)Landroidx/graphics/shapes/Cubic;

    move-result-object v0

    return-object v0
.end method
