.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "fromInstant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "instant",
        "Lkotlin/time/Instant;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .locals 38
    .param p1, "instant"    # Lkotlin/time/Instant;

    const-string v0, "instant"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getEpochSeconds()J

    move-result-wide v2

    .line 514
    .local v2, "localSecond":J
    const-wide/32 v4, 0x15180

    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-gez v0, :cond_0

    mul-long v8, v6, v4

    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    add-long/2addr v6, v10

    .line 515
    .local v6, "epochDays":J
    :cond_0
    rem-long v8, v2, v4

    xor-long v14, v8, v4

    neg-long v10, v8

    or-long/2addr v10, v8

    and-long/2addr v10, v14

    const/16 v0, 0x3f

    shr-long/2addr v10, v0

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    long-to-int v0, v8

    .line 516
    .local v0, "secsOfDay":I
    const/4 v4, 0x0

    .line 517
    .local v4, "year":I
    const/4 v5, 0x0

    .line 518
    .local v5, "month":I
    const/4 v8, 0x0

    .line 520
    .local v8, "day":I
    move-object/from16 v9, p0

    check-cast v9, Lkotlin/time/UnboundLocalDateTime$Companion;

    .local v9, "$this$fromInstant_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime$Companion;
    const/4 v10, 0x0

    .line 521
    .local v10, "$i$a$-run-UnboundLocalDateTime$Companion$fromInstant$1":I
    const v11, 0xafaa8

    int-to-long v14, v11

    add-long/2addr v14, v6

    .line 523
    .local v14, "zeroDay":J
    const/16 v11, 0x3c

    int-to-long v12, v11

    sub-long/2addr v14, v12

    .line 525
    const-wide/16 v11, 0x0

    .line 526
    .local v11, "adjust":J
    const-wide/16 v18, 0x0

    cmp-long v21, v14, v18

    if-gez v21, :cond_1

    .line 527
    const-wide/16 v21, 0x1

    add-long v23, v14, v21

    move-wide/from16 v26, v2

    const v13, 0x23ab1

    .end local v2    # "localSecond":J
    .local v26, "localSecond":J
    int-to-long v1, v13

    div-long v23, v23, v1

    move v13, v4

    .end local v4    # "year":I
    .local v13, "year":I
    sub-long v3, v23, v21

    .line 528
    .local v3, "adjustCycles":J
    move/from16 v21, v5

    move-wide/from16 v22, v6

    const/16 v5, 0x190

    .end local v5    # "month":I
    .end local v6    # "epochDays":J
    .local v21, "month":I
    .local v22, "epochDays":J
    int-to-long v6, v5

    mul-long v11, v3, v6

    .line 529
    neg-long v6, v3

    mul-long v6, v6, v1

    add-long/2addr v14, v6

    goto :goto_0

    .line 526
    .end local v3    # "adjustCycles":J
    .end local v13    # "year":I
    .end local v21    # "month":I
    .end local v22    # "epochDays":J
    .end local v26    # "localSecond":J
    .restart local v2    # "localSecond":J
    .restart local v4    # "year":I
    .restart local v5    # "month":I
    .restart local v6    # "epochDays":J
    :cond_1
    move-wide/from16 v26, v2

    move v13, v4

    move/from16 v21, v5

    move-wide/from16 v22, v6

    const/16 v5, 0x190

    .line 531
    .end local v2    # "localSecond":J
    .end local v4    # "year":I
    .end local v5    # "month":I
    .end local v6    # "epochDays":J
    .restart local v13    # "year":I
    .restart local v21    # "month":I
    .restart local v22    # "epochDays":J
    .restart local v26    # "localSecond":J
    :goto_0
    int-to-long v1, v5

    mul-long v3, v1, v14

    const/16 v5, 0x24f

    int-to-long v5, v5

    add-long/2addr v3, v5

    const v5, 0x23ab1

    int-to-long v5, v5

    div-long/2addr v3, v5

    .line 532
    .local v3, "yearEst":J
    const/16 v5, 0x16d

    int-to-long v5, v5

    mul-long v24, v5, v3

    const/4 v7, 0x4

    move/from16 v20, v8

    .end local v8    # "day":I
    .local v20, "day":I
    int-to-long v7, v7

    div-long v28, v3, v7

    add-long v24, v24, v28

    move-object/from16 v28, v9

    .end local v9    # "$this$fromInstant_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime$Companion;
    .local v28, "$this$fromInstant_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime$Companion;
    const/16 v9, 0x64

    move/from16 v29, v10

    .end local v10    # "$i$a$-run-UnboundLocalDateTime$Companion$fromInstant$1":I
    .local v29, "$i$a$-run-UnboundLocalDateTime$Companion$fromInstant$1":I
    int-to-long v9, v9

    div-long v30, v3, v9

    sub-long v24, v24, v30

    div-long v30, v3, v1

    add-long v24, v24, v30

    sub-long v24, v14, v24

    .line 533
    .local v24, "doyEst":J
    const-wide/16 v18, 0x0

    cmp-long v30, v24, v18

    if-gez v30, :cond_2

    .line 534
    const-wide/16 v16, -0x1

    add-long v3, v3, v16

    .line 535
    mul-long v5, v5, v3

    div-long v7, v3, v7

    add-long/2addr v5, v7

    div-long v7, v3, v9

    sub-long/2addr v5, v7

    div-long v1, v3, v1

    add-long/2addr v5, v1

    sub-long v24, v14, v5

    move-wide/from16 v1, v24

    goto :goto_1

    .line 533
    :cond_2
    move-wide/from16 v1, v24

    .line 537
    .end local v24    # "doyEst":J
    .local v1, "doyEst":J
    :goto_1
    add-long/2addr v3, v11

    .line 539
    long-to-int v5, v1

    .line 542
    .local v5, "marchDoy0":I
    mul-int/lit8 v6, v5, 0x5

    add-int/lit8 v6, v6, 0x2

    div-int/lit16 v6, v6, 0x99

    .line 543
    .local v6, "marchMonth0":I
    add-int/lit8 v7, v6, 0x2

    rem-int/lit8 v7, v7, 0xc

    add-int/lit8 v7, v7, 0x1

    .line 544
    .end local v21    # "month":I
    .local v7, "month":I
    mul-int/lit16 v8, v6, 0x132

    add-int/lit8 v8, v8, 0x5

    div-int/lit8 v8, v8, 0xa

    sub-int v8, v5, v8

    add-int/lit8 v8, v8, 0x1

    .line 545
    .end local v20    # "day":I
    .restart local v8    # "day":I
    div-int/lit8 v9, v6, 0xa

    int-to-long v9, v9

    add-long/2addr v9, v3

    long-to-int v10, v9

    .line 546
    .end local v13    # "year":I
    .local v10, "year":I
    nop

    .line 520
    .end local v1    # "doyEst":J
    .end local v3    # "yearEst":J
    .end local v5    # "marchDoy0":I
    .end local v6    # "marchMonth0":I
    .end local v11    # "adjust":J
    .end local v14    # "zeroDay":J
    .end local v28    # "$this$fromInstant_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime$Companion;
    .end local v29    # "$i$a$-run-UnboundLocalDateTime$Companion$fromInstant$1":I
    nop

    .line 547
    div-int/lit16 v1, v0, 0xe10

    .line 548
    .local v1, "hours":I
    mul-int/lit16 v2, v1, 0xe10

    sub-int v2, v0, v2

    .line 549
    .local v2, "secondWithoutHours":I
    div-int/lit8 v3, v2, 0x3c

    .line 550
    .local v3, "minutes":I
    mul-int/lit8 v4, v3, 0x3c

    sub-int v4, v2, v4

    .line 551
    .local v4, "second":I
    new-instance v5, Lkotlin/time/UnboundLocalDateTime;

    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    move-result v37

    move-object/from16 v30, v5

    move/from16 v31, v10

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v34, v1

    move/from16 v35, v3

    move/from16 v36, v4

    invoke-direct/range {v30 .. v37}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    return-object v5
.end method
