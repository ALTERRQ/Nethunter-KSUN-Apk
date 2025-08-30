.class public Lorg/joda/time/MutablePeriod;
.super Lorg/joda/time/base/BasePeriod;
.source "MutablePeriod.java"

# interfaces
.implements Lorg/joda/time/ReadWritablePeriod;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2fb0ba168501a285L


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 95
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 96
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 10

    .line 116
    const/4 v4, 0x0

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    .line 117
    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 10

    .line 133
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    .line 134
    return-void
.end method

.method public constructor <init>(IIIIIIIILorg/joda/time/PeriodType;)V
    .locals 0

    .line 152
    invoke-direct/range {p0 .. p9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    .line 153
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;-><init>(J)V

    .line 183
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7

    .line 255
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 256
    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .locals 7

    .line 278
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 279
    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/PeriodType;)V
    .locals 7

    .line 266
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 267
    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 0

    .line 290
    invoke-direct/range {p0 .. p6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 291
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 1

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 224
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/PeriodType;)V
    .locals 1

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 203
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 377
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 411
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;)V
    .locals 1

    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 394
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .locals 0

    .line 428
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 429
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/PeriodType;)V
    .locals 3

    .line 104
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .locals 1

    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    .line 361
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .locals 1

    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V

    .line 329
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V

    .line 340
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 1

    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .locals 0

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    .line 319
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .line 75
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/MutablePeriod;->parse(Ljava/lang/String;Lorg/joda/time/format/PeriodFormatter;)Lorg/joda/time/MutablePeriod;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/PeriodFormatter;)Lorg/joda/time/MutablePeriod;
    .locals 0

    .line 87
    invoke-virtual {p1, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/Period;->toMutablePeriod()Lorg/joda/time/MutablePeriod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(IIIIIIII)V
    .locals 10

    .line 662
    nop

    .line 663
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getYears()I

    move-result v0

    move v1, p1

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v2

    .line 664
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getMonths()I

    move-result v0

    move v1, p2

    invoke-static {v0, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v3

    .line 665
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getWeeks()I

    move-result v0

    move v1, p3

    invoke-static {v0, p3}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v4

    .line 666
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getDays()I

    move-result v0

    move v1, p4

    invoke-static {v0, p4}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v5

    .line 667
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getHours()I

    move-result v0

    move v1, p5

    invoke-static {v0, p5}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v6

    .line 668
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getMinutes()I

    move-result v0

    move/from16 v1, p6

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v7

    .line 669
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getSeconds()I

    move-result v0

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v8

    .line 670
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getMillis()I

    move-result v0

    move/from16 v1, p8

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v9

    .line 662
    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/joda/time/MutablePeriod;->setPeriod(IIIIIIII)V

    .line 672
    return-void
.end method

.method public add(J)V
    .locals 2

    .line 712
    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;)V

    invoke-virtual {p0, v0}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    .line 713
    return-void
.end method

.method public add(JLorg/joda/time/Chronology;)V
    .locals 2

    .line 728
    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    invoke-virtual {p0, v0}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    .line 729
    return-void
.end method

.method public add(Lorg/joda/time/DurationFieldType;I)V
    .locals 0

    .line 630
    invoke-super {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 631
    return-void
.end method

.method public add(Lorg/joda/time/ReadableDuration;)V
    .locals 3

    .line 695
    if-eqz p1, :cond_0

    .line 696
    new-instance v0, Lorg/joda/time/Period;

    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;)V

    invoke-virtual {p0, v0}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    .line 698
    :cond_0
    return-void
.end method

.method public add(Lorg/joda/time/ReadableInterval;)V
    .locals 1

    .line 682
    if-eqz p1, :cond_0

    .line 683
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadableInterval;->toPeriod(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    .line 685
    :cond_0
    return-void
.end method

.method public add(Lorg/joda/time/ReadablePeriod;)V
    .locals 0

    .line 642
    invoke-super {p0, p1}, Lorg/joda/time/base/BasePeriod;->addPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 643
    return-void
.end method

.method public addDays(I)V
    .locals 1

    .line 904
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 905
    return-void
.end method

.method public addHours(I)V
    .locals 1

    .line 926
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 927
    return-void
.end method

.method public addMillis(I)V
    .locals 1

    .line 992
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 993
    return-void
.end method

.method public addMinutes(I)V
    .locals 1

    .line 948
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 949
    return-void
.end method

.method public addMonths(I)V
    .locals 1

    .line 860
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 861
    return-void
.end method

.method public addSeconds(I)V
    .locals 1

    .line 970
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 971
    return-void
.end method

.method public addWeeks(I)V
    .locals 1

    .line 882
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 883
    return-void
.end method

.method public addYears(I)V
    .locals 1

    .line 838
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    .line 839
    return-void
.end method

.method public clear()V
    .locals 1

    .line 436
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-super {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    .line 437
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1014
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy()Lorg/joda/time/MutablePeriod;
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/MutablePeriod;

    return-object v0
.end method

.method public getDays()I
    .locals 2

    .line 779
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getHours()I
    .locals 2

    .line 789
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMillis()I
    .locals 2

    .line 816
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 2

    .line 798
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .locals 2

    .line 761
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 2

    .line 807
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getWeeks()I
    .locals 2

    .line 770
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getYears()I
    .locals 2

    .line 752
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public mergePeriod(Lorg/joda/time/ReadablePeriod;)V
    .locals 0

    .line 742
    invoke-super {p0, p1}, Lorg/joda/time/base/BasePeriod;->mergePeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 743
    return-void
.end method

.method public set(Lorg/joda/time/DurationFieldType;I)V
    .locals 0

    .line 461
    invoke-super {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 462
    return-void
.end method

.method public setDays(I)V
    .locals 1

    .line 893
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 894
    return-void
.end method

.method public setHours(I)V
    .locals 1

    .line 915
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 916
    return-void
.end method

.method public setMillis(I)V
    .locals 1

    .line 981
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 982
    return-void
.end method

.method public setMinutes(I)V
    .locals 1

    .line 937
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 938
    return-void
.end method

.method public setMonths(I)V
    .locals 1

    .line 849
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 850
    return-void
.end method

.method public setPeriod(IIIIIIII)V
    .locals 0

    .line 491
    invoke-super/range {p0 .. p8}, Lorg/joda/time/base/BasePeriod;->setPeriod(IIIIIIII)V

    .line 492
    return-void
.end method

.method public setPeriod(J)V
    .locals 1

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/MutablePeriod;->setPeriod(JLorg/joda/time/Chronology;)V

    .line 601
    return-void
.end method

.method public setPeriod(JJ)V
    .locals 6

    .line 540
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/MutablePeriod;->setPeriod(JJLorg/joda/time/Chronology;)V

    .line 541
    return-void
.end method

.method public setPeriod(JJLorg/joda/time/Chronology;)V
    .locals 6

    .line 552
    invoke-static {p5}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 553
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/MutablePeriod;->setValues([I)V

    .line 554
    return-void
.end method

.method public setPeriod(JLorg/joda/time/Chronology;)V
    .locals 0

    .line 615
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p3

    .line 616
    invoke-virtual {p3, p0, p1, p2}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/MutablePeriod;->setValues([I)V

    .line 617
    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadableDuration;)V
    .locals 1

    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MutablePeriod;->setPeriod(Lorg/joda/time/ReadableDuration;Lorg/joda/time/Chronology;)V

    .line 569
    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadableDuration;Lorg/joda/time/Chronology;)V
    .locals 2

    .line 584
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 585
    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/MutablePeriod;->setPeriod(JLorg/joda/time/Chronology;)V

    .line 586
    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .locals 6

    .line 521
    if-ne p1, p2, :cond_0

    .line 522
    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/MutablePeriod;->setPeriod(J)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    .line 525
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v3

    .line 526
    invoke-static {p1, p2}, Lorg/joda/time/DateTimeUtils;->getIntervalChronology(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v5

    .line 527
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/MutablePeriod;->setPeriod(JJLorg/joda/time/Chronology;)V

    .line 529
    :goto_0
    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadableInterval;)V
    .locals 7

    .line 502
    if-nez p1, :cond_0

    .line 503
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutablePeriod;->setPeriod(J)V

    goto :goto_0

    .line 505
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v6

    .line 506
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/MutablePeriod;->setPeriod(JJLorg/joda/time/Chronology;)V

    .line 508
    :goto_0
    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadablePeriod;)V
    .locals 0

    .line 472
    invoke-super {p0, p1}, Lorg/joda/time/base/BasePeriod;->setPeriod(Lorg/joda/time/ReadablePeriod;)V

    .line 473
    return-void
.end method

.method public setSeconds(I)V
    .locals 1

    .line 959
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 960
    return-void
.end method

.method public setValue(II)V
    .locals 0

    .line 448
    invoke-super {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setValue(II)V

    .line 449
    return-void
.end method

.method public setWeeks(I)V
    .locals 1

    .line 871
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 872
    return-void
.end method

.method public setYears(I)V
    .locals 1

    .line 827
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    .line 828
    return-void
.end method
