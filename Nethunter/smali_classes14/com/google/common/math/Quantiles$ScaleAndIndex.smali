.class public final Lcom/google/common/math/Quantiles$ScaleAndIndex;
.super Ljava/lang/Object;
.source "Quantiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleAndIndex"
.end annotation


# instance fields
.field private final index:I

.field private final scale:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "scale"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scale",
            "index"
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p2, p1}, Lcom/google/common/math/Quantiles;->access$300(II)V

    .line 230
    iput p1, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    .line 231
    iput p2, p0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->index:I

    .line 232
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/common/math/Quantiles$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/common/math/Quantiles$1;

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/Quantiles$ScaleAndIndex;-><init>(II)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/util/Collection;)D
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)D"
        }
    .end annotation

    .line 243
    .local p1, "dataset":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-static {p1}, Lcom/google/common/primitives/Doubles;->toArray(Ljava/util/Collection;)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([D)D
    .locals 2
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([I)D
    .locals 2
    .param p1, "dataset"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .line 277
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$500([I)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs compute([J)D
    .locals 2
    .param p1, "dataset"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .line 266
    invoke-static {p1}, Lcom/google/common/math/Quantiles;->access$400([J)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/math/Quantiles$ScaleAndIndex;->computeInPlace([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public varargs computeInPlace([D)D
    .locals 18
    .param p1, "dataset"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataset"
        }
    .end annotation

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Cannot calculate quantiles of an empty dataset"

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 289
    invoke-static/range {p1 .. p1}, Lcom/google/common/math/Quantiles;->access$600([D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    return-wide v2

    .line 300
    :cond_1
    iget v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->index:I

    int-to-long v5, v2

    array-length v2, v1

    sub-int/2addr v2, v4

    int-to-long v7, v2

    mul-long v5, v5, v7

    .line 304
    .local v5, "numerator":J
    iget v2, v0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-long v7, v2

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static {v5, v6, v7, v8, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v7

    long-to-int v2, v7

    .line 305
    .local v2, "quotient":I
    int-to-long v7, v2

    iget v9, v0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-long v9, v9

    mul-long v7, v7, v9

    sub-long v7, v5, v7

    long-to-int v8, v7

    .line 306
    .local v8, "remainder":I
    array-length v7, v1

    sub-int/2addr v7, v4

    invoke-static {v2, v1, v3, v7}, Lcom/google/common/math/Quantiles;->access$700(I[DII)V

    .line 307
    if-nez v8, :cond_2

    .line 308
    aget-wide v3, v1, v2

    return-wide v3

    .line 310
    :cond_2
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    array-length v9, v1

    sub-int/2addr v9, v4

    invoke-static {v3, v1, v7, v9}, Lcom/google/common/math/Quantiles;->access$700(I[DII)V

    .line 311
    aget-wide v10, v1, v2

    add-int/lit8 v3, v2, 0x1

    aget-wide v12, v1, v3

    int-to-double v14, v8

    iget v3, v0, Lcom/google/common/math/Quantiles$ScaleAndIndex;->scale:I

    int-to-double v3, v3

    move-wide/from16 v16, v3

    invoke-static/range {v10 .. v17}, Lcom/google/common/math/Quantiles;->access$800(DDDD)D

    move-result-wide v3

    return-wide v3
.end method
