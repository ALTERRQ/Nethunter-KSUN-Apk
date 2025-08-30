.class public final Lorg/joda/time/Duration;
.super Lorg/joda/time/base/BaseDuration;
.source "Duration.java"

# interfaces
.implements Lorg/joda/time/ReadableDuration;
.implements Ljava/io/Serializable;


# static fields
.field public static final ZERO:Lorg/joda/time/Duration;

.field private static final serialVersionUID:J = 0x23f7a51ced6L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lorg/joda/time/Duration;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    sput-object v0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDuration;-><init>(J)V

    .line 180
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BaseDuration;-><init>(JJ)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 212
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDuration;-><init>(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDuration;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    .line 202
    return-void
.end method

.method public static millis(J)Lorg/joda/time/Duration;
    .locals 3

    .line 166
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 167
    sget-object p0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-object p0

    .line 169
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/Duration;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .line 62
    new-instance v0, Lorg/joda/time/Duration;

    invoke-direct {v0, p0}, Lorg/joda/time/Duration;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static standardDays(J)Lorg/joda/time/Duration;
    .locals 3

    .line 84
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 85
    sget-object p0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-object p0

    .line 87
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    const v1, 0x5265c00

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static standardHours(J)Lorg/joda/time/Duration;
    .locals 3

    .line 107
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 108
    sget-object p0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-object p0

    .line 110
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    const v1, 0x36ee80

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static standardMinutes(J)Lorg/joda/time/Duration;
    .locals 3

    .line 130
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 131
    sget-object p0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-object p0

    .line 133
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    const v1, 0xea60

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public static standardSeconds(J)Lorg/joda/time/Duration;
    .locals 3

    .line 152
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    .line 153
    sget-object p0, Lorg/joda/time/Duration;->ZERO:Lorg/joda/time/Duration;

    return-object p0

    .line 155
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    const/16 v1, 0x3e8

    invoke-static {p0, p1, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public abs()Lorg/joda/time/Duration;
    .locals 5

    .line 551
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 552
    invoke-virtual {p0}, Lorg/joda/time/Duration;->negated()Lorg/joda/time/Duration;

    move-result-object v0

    return-object v0

    .line 554
    :cond_0
    return-object p0
.end method

.method public dividedBy(J)Lorg/joda/time/Duration;
    .locals 3

    .line 505
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 506
    return-object p0

    .line 508
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeDivide(JJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public dividedBy(JLjava/math/RoundingMode;)Lorg/joda/time/Duration;
    .locals 3

    .line 523
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 524
    return-object p0

    .line 526
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, p3}, Lorg/joda/time/field/FieldUtils;->safeDivide(JJLjava/math/RoundingMode;)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public getStandardDays()J
    .locals 4

    .line 232
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandardHours()J
    .locals 4

    .line 250
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandardMinutes()J
    .locals 4

    .line 268
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandardSeconds()J
    .locals 4

    .line 285
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public minus(J)Lorg/joda/time/Duration;
    .locals 1

    .line 458
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Duration;
    .locals 2

    .line 471
    if-nez p1, :cond_0

    .line 472
    return-object p0

    .line 474
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    const/4 p1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public multipliedBy(J)Lorg/joda/time/Duration;
    .locals 3

    .line 488
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 489
    return-object p0

    .line 491
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method

.method public negated()Lorg/joda/time/Duration;
    .locals 5

    .line 536
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 539
    new-instance v0, Lorg/joda/time/Duration;

    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v1

    neg-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0

    .line 537
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Negation of this duration would overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public plus(J)Lorg/joda/time/Duration;
    .locals 1

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/Duration;
    .locals 2

    .line 442
    if-nez p1, :cond_0

    .line 443
    return-object p0

    .line 445
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object p1

    return-object p1
.end method

.method public toDuration()Lorg/joda/time/Duration;
    .locals 0

    .line 297
    return-object p0
.end method

.method public toStandardDays()Lorg/joda/time/Days;
    .locals 2

    .line 314
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getStandardDays()J

    move-result-wide v0

    .line 315
    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public toStandardHours()Lorg/joda/time/Hours;
    .locals 2

    .line 331
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getStandardHours()J

    move-result-wide v0

    .line 332
    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public toStandardMinutes()Lorg/joda/time/Minutes;
    .locals 2

    .line 348
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getStandardMinutes()J

    move-result-wide v0

    .line 349
    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public toStandardSeconds()Lorg/joda/time/Seconds;
    .locals 2

    .line 364
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getStandardSeconds()J

    move-result-wide v0

    .line 365
    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public withDurationAdded(JI)Lorg/joda/time/Duration;
    .locals 3

    .line 393
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/joda/time/field/FieldUtils;->safeMultiply(JI)J

    move-result-wide p1

    .line 397
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    .line 398
    new-instance p3, Lorg/joda/time/Duration;

    invoke-direct {p3, p1, p2}, Lorg/joda/time/Duration;-><init>(J)V

    return-object p3

    .line 394
    :cond_1
    :goto_0
    return-object p0
.end method

.method public withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/Duration;
    .locals 2

    .line 412
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 415
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/Duration;->withDurationAdded(JI)Lorg/joda/time/Duration;

    move-result-object p1

    return-object p1

    .line 413
    :cond_1
    :goto_0
    return-object p0
.end method

.method public withMillis(J)Lorg/joda/time/Duration;
    .locals 3

    .line 376
    invoke-virtual {p0}, Lorg/joda/time/Duration;->getMillis()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 377
    return-object p0

    .line 379
    :cond_0
    new-instance v0, Lorg/joda/time/Duration;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v0
.end method
