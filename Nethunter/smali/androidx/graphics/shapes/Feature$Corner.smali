.class public final Landroidx/graphics/shapes/Feature$Corner;
.super Landroidx/graphics/shapes/Feature;
.source "Features.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/graphics/shapes/Feature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Corner"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007\u0012\n\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0015\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0015\u001a\u00020\u0016H\u0010\u00a2\u0006\u0002\u0008\u0017R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0008\u001a\u00060\u0006j\u0002`\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u000f\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/graphics/shapes/Feature$Corner;",
        "Landroidx/graphics/shapes/Feature;",
        "cubics",
        "",
        "Landroidx/graphics/shapes/Cubic;",
        "vertex",
        "Landroidx/collection/FloatFloatPair;",
        "Landroidx/graphics/shapes/Point;",
        "roundedCenter",
        "convex",
        "",
        "(Ljava/util/List;JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getConvex",
        "()Z",
        "getRoundedCenter-1ufDz9w",
        "()J",
        "J",
        "getVertex-1ufDz9w",
        "toString",
        "",
        "transformed",
        "f",
        "Landroidx/graphics/shapes/PointTransformer;",
        "transformed$graphics_shapes_release",
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


# instance fields
.field private final convex:Z

.field private final roundedCenter:J

.field private final vertex:J


# direct methods
.method private constructor <init>(Ljava/util/List;JJZ)V
    .locals 1
    .param p1, "cubics"    # Ljava/util/List;
    .param p2, "vertex"    # J
    .param p4, "roundedCenter"    # J
    .param p6, "convex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/graphics/shapes/Cubic;",
            ">;JJZ)V"
        }
    .end annotation

    const-string v0, "cubics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, p1}, Landroidx/graphics/shapes/Feature;-><init>(Ljava/util/List;)V

    .line 56
    iput-wide p2, p0, Landroidx/graphics/shapes/Feature$Corner;->vertex:J

    .line 57
    iput-wide p4, p0, Landroidx/graphics/shapes/Feature$Corner;->roundedCenter:J

    .line 58
    iput-boolean p6, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    .line 54
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    .line 54
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 54
    :cond_0
    move v7, p6

    :goto_0
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v8}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;JJZ)V

    return-void
.end method


# virtual methods
.method public final getConvex()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    return v0
.end method

.method public final getRoundedCenter-1ufDz9w()J
    .locals 2

    .line 57
    iget-wide v0, p0, Landroidx/graphics/shapes/Feature$Corner;->roundedCenter:J

    return-wide v0
.end method

.method public final getVertex-1ufDz9w()J
    .locals 2

    .line 56
    iget-wide v0, p0, Landroidx/graphics/shapes/Feature$Corner;->vertex:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Corner: vertex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/graphics/shapes/Feature$Corner;->vertex:J

    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/graphics/shapes/Feature$Corner;->roundedCenter:J

    invoke-static {v1, v2}, Landroidx/collection/FloatFloatPair;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", convex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformed$graphics_shapes_release(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Feature;
    .locals 13
    .param p1, "f"    # Landroidx/graphics/shapes/PointTransformer;

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    nop

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$transformed_u24lambda_u240":Ljava/util/List;
    const/4 v2, 0x0

    .line 65
    .local v2, "$i$a$-buildList-Feature$Corner$transformed$1":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Corner;->getCubics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 66
    invoke-virtual {p0}, Landroidx/graphics/shapes/Feature$Corner;->getCubics()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/graphics/shapes/Cubic;

    invoke-virtual {v5, p1}, Landroidx/graphics/shapes/Cubic;->transformed(Landroidx/graphics/shapes/PointTransformer;)Landroidx/graphics/shapes/Cubic;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "i":I
    :cond_0
    nop

    .line 62
    .end local v1    # "$this$transformed_u24lambda_u240":Ljava/util/List;
    .end local v2    # "$i$a$-buildList-Feature$Corner$transformed$1":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 69
    iget-wide v0, p0, Landroidx/graphics/shapes/Feature$Corner;->vertex:J

    invoke-static {v0, v1, p1}, Landroidx/graphics/shapes/PointKt;->transformed-so9K2fw(JLandroidx/graphics/shapes/PointTransformer;)J

    move-result-wide v7

    .line 70
    iget-wide v0, p0, Landroidx/graphics/shapes/Feature$Corner;->roundedCenter:J

    invoke-static {v0, v1, p1}, Landroidx/graphics/shapes/PointKt;->transformed-so9K2fw(JLandroidx/graphics/shapes/PointTransformer;)J

    move-result-wide v9

    .line 71
    iget-boolean v11, p0, Landroidx/graphics/shapes/Feature$Corner;->convex:Z

    .line 61
    new-instance v0, Landroidx/graphics/shapes/Feature$Corner;

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Landroidx/graphics/shapes/Feature$Corner;-><init>(Ljava/util/List;JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Landroidx/graphics/shapes/Feature;

    return-object v0
.end method
