.class abstract Lcom/google/common/math/ToDoubleRounder;
.super Ljava/lang/Object;
.source "ToDoubleRounder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Number;",
        ":",
        "Ljava/lang/Comparable<",
        "TX;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    .local p0, "this":Lcom/google/common/math/ToDoubleRounder;, "Lcom/google/common/math/ToDoubleRounder<TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;TX;)TX;"
        }
    .end annotation
.end method

.method final roundToDouble(Ljava/lang/Number;Ljava/math/RoundingMode;)D
    .locals 20
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Ljava/math/RoundingMode;",
            ")D"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/math/ToDoubleRounder;, "Lcom/google/common/math/ToDoubleRounder<TX;>;"
    .local p1, "x":Ljava/lang/Number;, "TX;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "x"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v2, "mode"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->roundToDoubleArbitrarily(Ljava/lang/Number;)D

    move-result-wide v4

    .line 49
    .local v4, "roundArbitrarily":D
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v2, :cond_2

    .line 50
    sget-object v2, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    aget v2, v2, v10

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 67
    :pswitch_0
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be represented precisely as a double"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :pswitch_1
    return-wide v4

    .line 61
    :pswitch_2
    cmpl-double v2, v4, v8

    if-nez v2, :cond_0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-wide v8, -0x10000000000001L

    .line 61
    :goto_0
    return-wide v8

    .line 57
    :pswitch_3
    cmpl-double v2, v4, v8

    if-nez v2, :cond_1

    .line 58
    move-wide v6, v10

    goto :goto_1

    .line 59
    :cond_1
    nop

    .line 57
    :goto_1
    return-wide v6

    .line 55
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v2

    int-to-double v6, v2

    mul-double v6, v6, v10

    return-wide v6

    .line 70
    :cond_2
    :goto_2
    sget-object v2, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v2

    .line 71
    .local v2, "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    move-object v10, v1

    check-cast v10, Ljava/lang/Comparable;

    invoke-interface {v10, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v10

    .line 72
    .local v10, "cmpXToRoundArbitrarily":I
    sget-object v11, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const-string v12, "impossible"

    packed-switch v11, :pswitch_data_1

    .line 150
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 74
    :pswitch_5
    if-nez v10, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 75
    return-wide v4

    .line 91
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v6

    if-ltz v6, :cond_5

    .line 92
    if-gtz v10, :cond_4

    move-wide v6, v4

    goto :goto_4

    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v6

    :goto_4
    return-wide v6

    .line 94
    :cond_5
    if-ltz v10, :cond_6

    .line 95
    move-wide v6, v4

    goto :goto_5

    .line 96
    :cond_6
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v6

    .line 94
    :goto_5
    return-wide v6

    .line 81
    :pswitch_7
    if-gtz v10, :cond_7

    move-wide v6, v4

    goto :goto_6

    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v6

    :goto_6
    return-wide v6

    .line 77
    :pswitch_8
    if-ltz v10, :cond_8

    .line 78
    move-wide v6, v4

    goto :goto_7

    .line 79
    :cond_8
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v6

    .line 77
    :goto_7
    return-wide v6

    .line 107
    :pswitch_9
    if-ltz v10, :cond_a

    .line 108
    move-wide v6, v4

    .line 109
    .local v6, "roundFloorAsDouble":D
    move-object v11, v2

    .line 110
    .local v11, "roundFloor":Ljava/lang/Number;, "TX;"
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v13

    .line 111
    .local v13, "roundCeilingAsDouble":D
    cmpl-double v15, v13, v8

    if-nez v15, :cond_9

    .line 112
    return-wide v6

    .line 114
    :cond_9
    sget-object v8, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v0, v13, v14, v8}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v8

    move-object v9, v2

    .local v8, "roundCeiling":Ljava/lang/Number;, "TX;"
    goto :goto_8

    .line 116
    .end local v6    # "roundFloorAsDouble":D
    .end local v8    # "roundCeiling":Ljava/lang/Number;, "TX;"
    .end local v11    # "roundFloor":Ljava/lang/Number;, "TX;"
    .end local v13    # "roundCeilingAsDouble":D
    :cond_a
    move-wide v13, v4

    .line 117
    .restart local v13    # "roundCeilingAsDouble":D
    move-object v8, v2

    .line 118
    .restart local v8    # "roundCeiling":Ljava/lang/Number;, "TX;"
    move-object v9, v2

    .end local v2    # "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    .local v9, "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v2

    .line 119
    .local v2, "roundFloorAsDouble":D
    cmpl-double v11, v2, v6

    if-nez v11, :cond_b

    .line 120
    return-wide v13

    .line 122
    :cond_b
    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v2, v3, v6}, Lcom/google/common/math/ToDoubleRounder;->toX(DLjava/math/RoundingMode;)Ljava/lang/Number;

    move-result-object v11

    move-wide v6, v2

    .line 125
    .end local v2    # "roundFloorAsDouble":D
    .restart local v6    # "roundFloorAsDouble":D
    .restart local v11    # "roundFloor":Ljava/lang/Number;, "TX;"
    :goto_8
    invoke-virtual {v0, v1, v11}, Lcom/google/common/math/ToDoubleRounder;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    .line 126
    .local v2, "deltaToFloor":Ljava/lang/Number;, "TX;"
    invoke-virtual {v0, v8, v1}, Lcom/google/common/math/ToDoubleRounder;->minus(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    .line 127
    .local v3, "deltaToCeiling":Ljava/lang/Number;, "TX;"
    move-object v15, v2

    check-cast v15, Ljava/lang/Comparable;

    invoke-interface {v15, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v15

    .line 128
    .local v15, "diff":I
    if-gez v15, :cond_c

    .line 129
    return-wide v6

    .line 130
    :cond_c
    if-lez v15, :cond_d

    .line 131
    return-wide v13

    .line 134
    :cond_d
    sget-object v16, Lcom/google/common/math/ToDoubleRounder$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p2 .. p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_2

    .line 146
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v12}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 144
    :pswitch_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v12

    if-ltz v12, :cond_e

    move-wide/from16 v16, v13

    goto :goto_9

    :cond_e
    move-wide/from16 v16, v6

    :goto_9
    return-wide v16

    .line 142
    :pswitch_b
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v12

    if-ltz v12, :cond_f

    move-wide/from16 v16, v6

    goto :goto_a

    :cond_f
    move-wide/from16 v16, v13

    :goto_a
    return-wide v16

    .line 138
    :pswitch_c
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v16

    const-wide/16 v18, 0x1

    and-long v16, v16, v18

    const-wide/16 v18, 0x0

    cmp-long v12, v16, v18

    if-nez v12, :cond_10

    .line 139
    move-wide/from16 v16, v6

    goto :goto_b

    .line 140
    :cond_10
    move-wide/from16 v16, v13

    .line 138
    :goto_b
    return-wide v16

    .line 83
    .end local v3    # "deltaToCeiling":Ljava/lang/Number;, "TX;"
    .end local v6    # "roundFloorAsDouble":D
    .end local v8    # "roundCeiling":Ljava/lang/Number;, "TX;"
    .end local v9    # "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    .end local v11    # "roundFloor":Ljava/lang/Number;, "TX;"
    .end local v13    # "roundCeilingAsDouble":D
    .end local v15    # "diff":I
    .local v2, "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    :pswitch_d
    move-object v9, v2

    .end local v2    # "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    .restart local v9    # "roundArbitrarilyAsX":Ljava/lang/Number;, "TX;"
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/math/ToDoubleRounder;->sign(Ljava/lang/Number;)I

    move-result v0

    if-ltz v0, :cond_12

    .line 84
    if-ltz v10, :cond_11

    .line 85
    move-wide v2, v4

    goto :goto_c

    .line 86
    :cond_11
    invoke-static {v4, v5}, Lcom/google/common/math/DoubleUtils;->nextDown(D)D

    move-result-wide v2

    .line 84
    :goto_c
    return-wide v2

    .line 88
    :cond_12
    if-gtz v10, :cond_13

    move-wide v2, v4

    goto :goto_d

    :cond_13
    invoke-static {v4, v5}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v2

    :goto_d
    return-wide v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method abstract roundToDoubleArbitrarily(Ljava/lang/Number;)D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)D"
        }
    .end annotation
.end method

.method abstract sign(Ljava/lang/Number;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)I"
        }
    .end annotation
.end method

.method abstract toX(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "d",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/math/RoundingMode;",
            ")TX;"
        }
    .end annotation
.end method
