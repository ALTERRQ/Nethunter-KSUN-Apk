.class public final Lkotlin/time/Instant;
.super Ljava/lang/Object;
.source "Instant.kt"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Instant$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Instant.kt\nkotlin/time/InstantKt\n+ 4 Duration.kt\nkotlin/time/Duration\n*L\n1#1,864:1\n1#2:865\n803#3,14:866\n786#3,6:880\n803#3,14:886\n786#3,6:900\n786#3,6:907\n548#4:906\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant\n*L\n150#1:866,14\n153#1:880,6\n161#1:886,14\n164#1:900,6\n188#1:907,6\n184#1:906\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \'2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\'B\u0019\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u000e\u001a\u00020\u0005J\u0018\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0000H\u0086\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\u0008\u0010\u001d\u001a\u00020\u0007H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0002J\u0019\u0010!\u001a\u00020\"2\n\u0010#\u001a\u00060$j\u0002`%H\u0002\u00a2\u0006\u0002\u0010&R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006("
    }
    d2 = {
        "Lkotlin/time/Instant;",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "epochSeconds",
        "",
        "nanosecondsOfSecond",
        "",
        "<init>",
        "(JI)V",
        "getEpochSeconds",
        "()J",
        "getNanosecondsOfSecond",
        "()I",
        "toEpochMilliseconds",
        "plus",
        "duration",
        "Lkotlin/time/Duration;",
        "plus-LRDsOJo",
        "(J)Lkotlin/time/Instant;",
        "minus",
        "minus-LRDsOJo",
        "other",
        "minus-UwyO8pc",
        "(Lkotlin/time/Instant;)J",
        "compareTo",
        "equals",
        "",
        "",
        "hashCode",
        "toString",
        "",
        "writeReplace",
        "readObject",
        "",
        "input",
        "Ljava/io/ObjectInputStream;",
        "Lkotlin/internal/ReadObjectParameterType;",
        "(Ljava/io/ObjectInputStream;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lkotlin/time/Instant$Companion;

.field private static final MAX:Lkotlin/time/Instant;

.field private static final MIN:Lkotlin/time/Instant;


# instance fields
.field private final epochSeconds:J

.field private final nanosecondsOfSecond:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/time/Instant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Instant$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    .line 423
    new-instance v0, Lkotlin/time/Instant;

    const-wide v1, -0x701cefeb9bec00L

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/Instant;-><init>(JI)V

    sput-object v0, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 424
    new-instance v0, Lkotlin/time/Instant;

    const-wide v1, 0x701cd2fa9578ffL

    const v3, 0x3b9ac9ff

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/Instant;-><init>(JI)V

    sput-object v0, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 6
    .param p1, "epochSeconds"    # J
    .param p3, "nanosecondsOfSecond"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-wide p1, p0, Lkotlin/time/Instant;->epochSeconds:J

    .line 130
    iput p3, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    .line 133
    nop

    .line 134
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    const-wide v2, -0x701cefeb9bec00L

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-gtz v5, :cond_0

    const-wide v2, 0x701cd2fa957900L

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_1

    .line 135
    nop

    .line 107
    return-void

    .line 865
    :cond_1
    const/4 v0, 0x0

    .line 134
    .local v0, "$i$a$-require-Instant$1":I
    nop

    .end local v0    # "$i$a$-require-Instant$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Instant exceeds minimum or maximum instant"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getMAX$cp()Lkotlin/time/Instant;
    .locals 1

    .line 105
    sget-object v0, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    return-object v0
.end method

.method public static final synthetic access$getMIN$cp()Lkotlin/time/Instant;
    .locals 1

    .line 105
    sget-object v0, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/ObjectInputStream;

    .line 271
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization is supported via proxy only"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 269
    invoke-static {p0}, Lkotlin/time/InstantJvmKt;->serializedInstant(Lkotlin/time/Instant;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 105
    move-object v0, p1

    check-cast v0, Lkotlin/time/Instant;

    invoke-virtual {p0, v0}, Lkotlin/time/Instant;->compareTo(Lkotlin/time/Instant;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lkotlin/time/Instant;)I
    .locals 4
    .param p1, "other"    # Lkotlin/time/Instant;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    iget-wide v2, p1, Lkotlin/time/Instant;->epochSeconds:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v0

    .line 243
    .local v0, "s":I
    if-eqz v0, :cond_0

    .line 244
    return v0

    .line 246
    :cond_0
    iget v1, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    iget v2, p1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 250
    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lkotlin/time/Instant;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    move-object v2, p1

    check-cast v2, Lkotlin/time/Instant;

    iget-wide v2, v2, Lkotlin/time/Instant;->epochSeconds:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 251
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    move-object v1, p1

    check-cast v1, Lkotlin/time/Instant;

    iget v1, v1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getEpochSeconds()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    return-wide v0
.end method

.method public final getNanosecondsOfSecond()I
    .locals 1

    .line 130
    iget v0, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 254
    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    invoke-static {v0, v1}, Landroidx/collection/FloatFloatPair$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    iget v1, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v0, v1

    return v0
.end method

.method public final minus-LRDsOJo(J)Lkotlin/time/Instant;
    .locals 2
    .param p1, "duration"    # J

    .line 210
    invoke-static {p1, p2}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/Instant;->plus-LRDsOJo(J)Lkotlin/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public final minus-UwyO8pc(Lkotlin/time/Instant;)J
    .locals 4
    .param p1, "other"    # Lkotlin/time/Instant;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-wide v0, p0, Lkotlin/time/Instant;->epochSeconds:J

    iget-wide v2, p1, Lkotlin/time/Instant;->epochSeconds:J

    sub-long/2addr v0, v2

    sget-object v2, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    .line 230
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget v2, p0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    iget v3, p1, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    sub-int/2addr v2, v3

    sget-object v3, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v2, v3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v2

    .line 229
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v0

    .line 230
    return-wide v0
.end method

.method public final plus-LRDsOJo(J)Lkotlin/time/Instant;
    .locals 16
    .param p1, "duration"    # J

    .line 184
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 906
    .local v1, "$i$f$toComponents-impl":I
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v2

    .local v2, "secondsToAdd":J
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->getNanosecondsComponent-impl(J)I

    move-result v4

    .local v4, "nanosecondsToAdd":I
    const/4 v5, 0x0

    .line 185
    .local v5, "$i$a$-toComponents-impl-Instant$plus$1":I
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    if-nez v4, :cond_0

    .line 186
    return-object v0

    .line 188
    :cond_0
    iget-wide v8, v0, Lkotlin/time/Instant;->epochSeconds:J

    .local v8, "a$iv":J
    const/4 v10, 0x0

    .line 907
    .local v10, "$i$f$safeAddOrElse":I
    add-long v11, v8, v2

    .line 909
    .local v11, "sum$iv":J
    xor-long v13, v8, v11

    cmp-long v15, v13, v6

    if-gez v15, :cond_2

    xor-long v13, v8, v2

    cmp-long v15, v13, v6

    if-ltz v15, :cond_2

    .line 910
    const/4 v6, 0x0

    .line 189
    .local v6, "$i$a$-safeAddOrElse-Instant$plus$1$newEpochSeconds$1":I
    invoke-static/range {p1 .. p2}, Lkotlin/time/Duration;->isPositive-impl(J)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lkotlin/time/Instant;->MAX:Lkotlin/time/Instant;

    goto :goto_0

    :cond_1
    sget-object v7, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    :goto_0
    return-object v7

    .line 912
    .end local v6    # "$i$a$-safeAddOrElse-Instant$plus$1$newEpochSeconds$1":I
    :cond_2
    nop

    .line 188
    .end local v8    # "a$iv":J
    .end local v10    # "$i$f$safeAddOrElse":I
    .end local v11    # "sum$iv":J
    move-wide v6, v11

    .line 192
    .local v6, "newEpochSeconds":J
    iget v8, v0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    add-int/2addr v8, v4

    .line 193
    .local v8, "nanoAdjustment":I
    sget-object v9, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    invoke-virtual {v9, v6, v7, v8}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    move-result-object v9

    return-object v9
.end method

.method public final toEpochMilliseconds()J
    .locals 20

    .line 149
    move-object/from16 v0, p0

    iget-wide v1, v0, Lkotlin/time/Instant;->epochSeconds:J

    const v3, 0xf4240

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    const-wide/16 v10, 0x0

    cmp-long v12, v1, v10

    if-ltz v12, :cond_8

    .line 150
    iget-wide v1, v0, Lkotlin/time/Instant;->epochSeconds:J

    .local v1, "a$iv":J
    const-wide/16 v12, 0x3e8

    .local v12, "b$iv":J
    const/4 v14, 0x0

    .line 866
    .local v14, "$i$f$safeMultiplyOrElse":I
    const-wide v15, 0x7fffffffffffffffL

    cmp-long v17, v12, v6

    if-nez v17, :cond_0

    .line 867
    goto :goto_2

    .line 869
    :cond_0
    cmp-long v17, v1, v6

    if-nez v17, :cond_1

    .line 870
    move-wide v1, v12

    goto :goto_2

    .line 872
    :cond_1
    cmp-long v6, v1, v10

    if-eqz v6, :cond_6

    cmp-long v6, v12, v10

    if-nez v6, :cond_2

    goto :goto_1

    .line 875
    :cond_2
    mul-long v6, v1, v12

    .line 876
    .local v6, "total$iv":J
    div-long v17, v6, v12

    cmp-long v19, v17, v1

    if-nez v19, :cond_5

    cmp-long v17, v1, v8

    if-nez v17, :cond_3

    cmp-long v17, v12, v4

    if-eqz v17, :cond_5

    :cond_3
    cmp-long v17, v12, v8

    if-nez v17, :cond_4

    cmp-long v8, v1, v4

    if-nez v8, :cond_4

    goto :goto_0

    .line 879
    :cond_4
    move-wide v1, v6

    goto :goto_2

    .line 877
    :cond_5
    :goto_0
    const/4 v3, 0x0

    .line 151
    .local v3, "$i$a$-safeMultiplyOrElse-Instant$toEpochMilliseconds$millis$1":I
    return-wide v15

    .line 873
    .end local v3    # "$i$a$-safeMultiplyOrElse-Instant$toEpochMilliseconds$millis$1":I
    .end local v6    # "total$iv":J
    :cond_6
    :goto_1
    move-wide v1, v10

    .line 150
    .end local v1    # "a$iv":J
    .end local v12    # "b$iv":J
    .end local v14    # "$i$f$safeMultiplyOrElse":I
    :goto_2
    nop

    .line 153
    .local v1, "millis":J
    iget v4, v0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    div-int/2addr v4, v3

    int-to-long v3, v4

    .local v3, "b$iv":J
    const/4 v5, 0x0

    .line 880
    .local v5, "$i$f$safeAddOrElse":I
    add-long v6, v1, v3

    .line 882
    .local v6, "sum$iv":J
    xor-long v8, v1, v6

    cmp-long v12, v8, v10

    if-gez v12, :cond_7

    xor-long v8, v1, v3

    cmp-long v12, v8, v10

    if-ltz v12, :cond_7

    .line 883
    const/4 v8, 0x0

    .line 154
    .local v8, "$i$a$-safeAddOrElse-Instant$toEpochMilliseconds$1":I
    return-wide v15

    .line 885
    .end local v8    # "$i$a$-safeAddOrElse-Instant$toEpochMilliseconds$1":I
    :cond_7
    nop

    .line 153
    .end local v3    # "b$iv":J
    .end local v5    # "$i$f$safeAddOrElse":I
    .end local v6    # "sum$iv":J
    return-wide v6

    .line 161
    .end local v1    # "millis":J
    :cond_8
    iget-wide v1, v0, Lkotlin/time/Instant;->epochSeconds:J

    add-long/2addr v1, v6

    .local v1, "a$iv":J
    const-wide/16 v12, 0x3e8

    .restart local v12    # "b$iv":J
    const/4 v14, 0x0

    .line 886
    .restart local v14    # "$i$f$safeMultiplyOrElse":I
    cmp-long v15, v12, v6

    if-nez v15, :cond_9

    .line 887
    goto :goto_5

    .line 889
    :cond_9
    cmp-long v15, v1, v6

    if-nez v15, :cond_a

    .line 890
    move-wide v1, v12

    goto :goto_5

    .line 892
    :cond_a
    cmp-long v6, v1, v10

    if-eqz v6, :cond_f

    cmp-long v6, v12, v10

    if-nez v6, :cond_b

    goto :goto_4

    .line 895
    :cond_b
    mul-long v6, v1, v12

    .line 896
    .local v6, "total$iv":J
    div-long v15, v6, v12

    cmp-long v17, v15, v1

    if-nez v17, :cond_e

    cmp-long v15, v1, v8

    if-nez v15, :cond_c

    cmp-long v15, v12, v4

    if-eqz v15, :cond_e

    :cond_c
    cmp-long v15, v12, v8

    if-nez v15, :cond_d

    cmp-long v15, v1, v4

    if-nez v15, :cond_d

    goto :goto_3

    .line 899
    :cond_d
    move-wide v1, v6

    goto :goto_5

    .line 897
    :cond_e
    :goto_3
    const/4 v3, 0x0

    .line 162
    .local v3, "$i$a$-safeMultiplyOrElse-Instant$toEpochMilliseconds$millis$2":I
    return-wide v8

    .line 893
    .end local v3    # "$i$a$-safeMultiplyOrElse-Instant$toEpochMilliseconds$millis$2":I
    .end local v6    # "total$iv":J
    :cond_f
    :goto_4
    move-wide v1, v10

    .line 161
    .end local v1    # "a$iv":J
    .end local v12    # "b$iv":J
    .end local v14    # "$i$f$safeMultiplyOrElse":I
    :goto_5
    nop

    .line 164
    .local v1, "millis":J
    iget v4, v0, Lkotlin/time/Instant;->nanosecondsOfSecond:I

    div-int/2addr v4, v3

    add-int/lit16 v4, v4, -0x3e8

    int-to-long v3, v4

    .local v3, "b$iv":J
    const/4 v5, 0x0

    .line 900
    .restart local v5    # "$i$f$safeAddOrElse":I
    add-long v6, v1, v3

    .line 902
    .local v6, "sum$iv":J
    xor-long v12, v1, v6

    cmp-long v14, v12, v10

    if-gez v14, :cond_10

    xor-long v12, v1, v3

    cmp-long v14, v12, v10

    if-ltz v14, :cond_10

    .line 903
    const/4 v10, 0x0

    .line 165
    .local v10, "$i$a$-safeAddOrElse-Instant$toEpochMilliseconds$2":I
    return-wide v8

    .line 905
    .end local v10    # "$i$a$-safeAddOrElse-Instant$toEpochMilliseconds$2":I
    :cond_10
    nop

    .line 164
    .end local v3    # "b$iv":J
    .end local v5    # "$i$f$safeAddOrElse":I
    .end local v6    # "sum$iv":J
    return-wide v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 267
    invoke-static {p0}, Lkotlin/time/InstantKt;->access$formatIso(Lkotlin/time/Instant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
