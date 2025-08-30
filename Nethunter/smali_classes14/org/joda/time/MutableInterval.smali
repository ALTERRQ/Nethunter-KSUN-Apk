.class public Lorg/joda/time/MutableInterval;
.super Lorg/joda/time/base/BaseInterval;
.source "MutableInterval.java"

# interfaces
.implements Lorg/joda/time/ReadWritableInterval;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x530742c09b58b1b6L


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 80
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 81
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 6

    .line 91
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 92
    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 0

    .line 103
    invoke-direct/range {p0 .. p5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 0

    .line 206
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V

    .line 171
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/MutableInterval;
    .locals 1

    .line 72
    new-instance v0, Lorg/joda/time/MutableInterval;

    invoke-direct {v0, p0}, Lorg/joda/time/MutableInterval;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 410
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy()Lorg/joda/time/MutableInterval;
    .locals 1

    .line 399
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/MutableInterval;

    return-object v0
.end method

.method public setChronology(Lorg/joda/time/Chronology;)V
    .locals 6

    .line 264
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 265
    return-void
.end method

.method public setDurationAfterStart(J)V
    .locals 2

    .line 320
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    .line 321
    return-void
.end method

.method public setDurationAfterStart(Lorg/joda/time/ReadableDuration;)V
    .locals 4

    .line 343
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 344
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    .line 345
    return-void
.end method

.method public setDurationBeforeEnd(J)V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v0

    neg-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    .line 332
    return-void
.end method

.method public setDurationBeforeEnd(Lorg/joda/time/ReadableDuration;)V
    .locals 4

    .line 355
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 356
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v2

    neg-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    .line 357
    return-void
.end method

.method public setEnd(Lorg/joda/time/ReadableInstant;)V
    .locals 6

    .line 307
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v3

    .line 308
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 309
    return-void
.end method

.method public setEndMillis(J)V
    .locals 6

    .line 297
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    move-wide v3, p1

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 298
    return-void
.end method

.method public setInterval(JJ)V
    .locals 6

    .line 218
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 219
    return-void
.end method

.method public setInterval(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 6

    .line 246
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 247
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide p1

    .line 248
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/joda/time/MutableInterval;->setInterval(JJ)V

    .line 249
    goto :goto_0

    .line 250
    :cond_0
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    .line 251
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v3

    .line 252
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v5

    .line 253
    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 255
    :goto_0
    return-void
.end method

.method public setInterval(Lorg/joda/time/ReadableInterval;)V
    .locals 6

    .line 228
    if-eqz p1, :cond_0

    .line 231
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v1

    .line 232
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v3

    .line 233
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    .line 234
    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 235
    return-void

    .line 229
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Interval must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPeriodAfterStart(Lorg/joda/time/ReadablePeriod;)V
    .locals 4

    .line 369
    if-nez p1, :cond_0

    .line 370
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    .line 374
    :goto_0
    return-void
.end method

.method public setPeriodBeforeEnd(Lorg/joda/time/ReadablePeriod;)V
    .locals 4

    .line 385
    if-nez p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    .line 390
    :goto_0
    return-void
.end method

.method public setStart(Lorg/joda/time/ReadableInstant;)V
    .locals 6

    .line 285
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    .line 286
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 287
    return-void
.end method

.method public setStartMillis(J)V
    .locals 6

    .line 275
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    .line 276
    return-void
.end method
