.class public final Lorg/joda/time/Days;
.super Lorg/joda/time/base/BaseSingleFieldPeriod;
.source "Days.java"


# static fields
.field public static final FIVE:Lorg/joda/time/Days;

.field public static final FOUR:Lorg/joda/time/Days;

.field public static final MAX_VALUE:Lorg/joda/time/Days;

.field public static final MIN_VALUE:Lorg/joda/time/Days;

.field public static final ONE:Lorg/joda/time/Days;

.field private static final PARSER:Lorg/joda/time/format/PeriodFormatter;

.field public static final SEVEN:Lorg/joda/time/Days;

.field public static final SIX:Lorg/joda/time/Days;

.field public static final THREE:Lorg/joda/time/Days;

.field public static final TWO:Lorg/joda/time/Days;

.field public static final ZERO:Lorg/joda/time/Days;

.field private static final serialVersionUID:J = 0x136f3c648994181L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/joda/time/Days;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->ZERO:Lorg/joda/time/Days;

    .line 47
    new-instance v0, Lorg/joda/time/Days;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->ONE:Lorg/joda/time/Days;

    .line 49
    new-instance v0, Lorg/joda/time/Days;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->TWO:Lorg/joda/time/Days;

    .line 51
    new-instance v0, Lorg/joda/time/Days;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->THREE:Lorg/joda/time/Days;

    .line 53
    new-instance v0, Lorg/joda/time/Days;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->FOUR:Lorg/joda/time/Days;

    .line 55
    new-instance v0, Lorg/joda/time/Days;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->FIVE:Lorg/joda/time/Days;

    .line 57
    new-instance v0, Lorg/joda/time/Days;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->SIX:Lorg/joda/time/Days;

    .line 59
    new-instance v0, Lorg/joda/time/Days;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->SEVEN:Lorg/joda/time/Days;

    .line 61
    new-instance v0, Lorg/joda/time/Days;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->MAX_VALUE:Lorg/joda/time/Days;

    .line 63
    new-instance v0, Lorg/joda/time/Days;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lorg/joda/time/Days;-><init>(I)V

    sput-object v0, Lorg/joda/time/Days;->MIN_VALUE:Lorg/joda/time/Days;

    .line 66
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/PeriodType;->days()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/PeriodFormatter;->withParseType(Lorg/joda/time/PeriodType;)Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    sput-object v0, Lorg/joda/time/Days;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseSingleFieldPeriod;-><init>(I)V

    .line 217
    return-void
.end method

.method public static days(I)Lorg/joda/time/Days;
    .locals 1

    .line 80
    sparse-switch p0, :sswitch_data_0

    .line 102
    new-instance v0, Lorg/joda/time/Days;

    invoke-direct {v0, p0}, Lorg/joda/time/Days;-><init>(I)V

    return-object v0

    .line 98
    :sswitch_0
    sget-object p0, Lorg/joda/time/Days;->MAX_VALUE:Lorg/joda/time/Days;

    return-object p0

    .line 96
    :sswitch_1
    sget-object p0, Lorg/joda/time/Days;->SEVEN:Lorg/joda/time/Days;

    return-object p0

    .line 94
    :sswitch_2
    sget-object p0, Lorg/joda/time/Days;->SIX:Lorg/joda/time/Days;

    return-object p0

    .line 92
    :sswitch_3
    sget-object p0, Lorg/joda/time/Days;->FIVE:Lorg/joda/time/Days;

    return-object p0

    .line 90
    :sswitch_4
    sget-object p0, Lorg/joda/time/Days;->FOUR:Lorg/joda/time/Days;

    return-object p0

    .line 88
    :sswitch_5
    sget-object p0, Lorg/joda/time/Days;->THREE:Lorg/joda/time/Days;

    return-object p0

    .line 86
    :sswitch_6
    sget-object p0, Lorg/joda/time/Days;->TWO:Lorg/joda/time/Days;

    return-object p0

    .line 84
    :sswitch_7
    sget-object p0, Lorg/joda/time/Days;->ONE:Lorg/joda/time/Days;

    return-object p0

    .line 82
    :sswitch_8
    sget-object p0, Lorg/joda/time/Days;->ZERO:Lorg/joda/time/Days;

    return-object p0

    .line 100
    :sswitch_9
    sget-object p0, Lorg/joda/time/Days;->MIN_VALUE:Lorg/joda/time/Days;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_9
        0x0 -> :sswitch_8
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x3 -> :sswitch_5
        0x4 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0x7fffffff -> :sswitch_0
    .end sparse-switch
.end method

.method public static daysBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Days;
    .locals 1

    .line 118
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result p0

    .line 119
    invoke-static {p0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p0

    return-object p0
.end method

.method public static daysBetween(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;)Lorg/joda/time/Days;
    .locals 3

    .line 135
    instance-of v0, p0, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {p0}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    check-cast p1, Lorg/joda/time/LocalDate;

    .line 138
    invoke-virtual {p1}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    check-cast p0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide p0

    .line 137
    invoke-virtual {v0, v1, v2, p0, p1}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result p0

    .line 139
    invoke-static {p0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p0

    return-object p0

    .line 141
    :cond_0
    sget-object v0, Lorg/joda/time/Days;->ZERO:Lorg/joda/time/Days;

    invoke-static {p0, p1, v0}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePeriod;)I

    move-result p0

    .line 142
    invoke-static {p0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p0

    return-object p0
.end method

.method public static daysIn(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Days;
    .locals 2

    .line 155
    if-nez p0, :cond_0

    .line 156
    sget-object p0, Lorg/joda/time/Days;->ZERO:Lorg/joda/time/Days;

    return-object p0

    .line 158
    :cond_0
    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getStart()Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-interface {p0}, Lorg/joda/time/ReadableInterval;->getEnd()Lorg/joda/time/DateTime;

    move-result-object p0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->between(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/DurationFieldType;)I

    move-result p0

    .line 159
    invoke-static {p0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p0

    return-object p0
.end method

.method public static parseDays(Ljava/lang/String;)Lorg/joda/time/Days;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .line 200
    if-nez p0, :cond_0

    .line 201
    sget-object p0, Lorg/joda/time/Days;->ZERO:Lorg/joda/time/Days;

    return-object p0

    .line 203
    :cond_0
    sget-object v0, Lorg/joda/time/Days;->PARSER:Lorg/joda/time/format/PeriodFormatter;

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p0

    .line 204
    invoke-virtual {p0}, Lorg/joda/time/Period;->getDays()I

    move-result p0

    invoke-static {p0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p0

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public static standardDaysIn(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/Days;
    .locals 2

    .line 183
    const-wide/32 v0, 0x5265c00

    invoke-static {p0, v0, v1}, Lorg/joda/time/base/BaseSingleFieldPeriod;->standardPeriodIn(Lorg/joda/time/ReadablePeriod;J)I

    move-result p0

    .line 184
    invoke-static {p0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dividedBy(I)Lorg/joda/time/Days;
    .locals 1

    .line 436
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 437
    return-object p0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p1

    return-object p1
.end method

.method public getDays()I
    .locals 1

    .line 345
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    return v0
.end method

.method public getFieldType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .line 236
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    return-object v0
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .locals 1

    .line 246
    invoke-static {}, Lorg/joda/time/PeriodType;->days()Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public isGreaterThan(Lorg/joda/time/Days;)Z
    .locals 3

    .line 461
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 462
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 464
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Days;->getValue()I

    move-result p1

    if-le v2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isLessThan(Lorg/joda/time/Days;)Z
    .locals 3

    .line 474
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 475
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 477
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v2

    invoke-virtual {p1}, Lorg/joda/time/Days;->getValue()I

    move-result p1

    if-ge v2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public minus(I)Lorg/joda/time/Days;
    .locals 0

    .line 392
    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Days;->plus(I)Lorg/joda/time/Days;

    move-result-object p1

    return-object p1
.end method

.method public minus(Lorg/joda/time/Days;)Lorg/joda/time/Days;
    .locals 0

    .line 405
    if-nez p1, :cond_0

    .line 406
    return-object p0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Days;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Days;->minus(I)Lorg/joda/time/Days;

    move-result-object p1

    return-object p1
.end method

.method public multipliedBy(I)Lorg/joda/time/Days;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result p1

    invoke-static {p1}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p1

    return-object p1
.end method

.method public negated()Lorg/joda/time/Days;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object v0

    return-object v0
.end method

.method public plus(I)Lorg/joda/time/Days;
    .locals 1

    .line 359
    if-nez p1, :cond_0

    .line 360
    return-object p0

    .line 362
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result p1

    invoke-static {p1}, Lorg/joda/time/Days;->days(I)Lorg/joda/time/Days;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lorg/joda/time/Days;)Lorg/joda/time/Days;
    .locals 0

    .line 375
    if-nez p1, :cond_0

    .line 376
    return-object p0

    .line 378
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/Days;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/Days;->plus(I)Lorg/joda/time/Days;

    move-result-object p1

    return-object p1
.end method

.method public toStandardDuration()Lorg/joda/time/Duration;
    .locals 5

    .line 334
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    int-to-long v0, v0

    .line 335
    new-instance v2, Lorg/joda/time/Duration;

    const-wide/32 v3, 0x5265c00

    mul-long v0, v0, v3

    invoke-direct {v2, v0, v1}, Lorg/joda/time/Duration;-><init>(J)V

    return-object v2
.end method

.method public toStandardHours()Lorg/joda/time/Hours;
    .locals 2

    .line 280
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Hours;->hours(I)Lorg/joda/time/Hours;

    move-result-object v0

    return-object v0
.end method

.method public toStandardMinutes()Lorg/joda/time/Minutes;
    .locals 2

    .line 298
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    const/16 v1, 0x5a0

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Minutes;->minutes(I)Lorg/joda/time/Minutes;

    move-result-object v0

    return-object v0
.end method

.method public toStandardSeconds()Lorg/joda/time/Seconds;
    .locals 2

    .line 316
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    const v1, 0x15180

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v0

    invoke-static {v0}, Lorg/joda/time/Seconds;->seconds(I)Lorg/joda/time/Seconds;

    move-result-object v0

    return-object v0
.end method

.method public toStandardWeeks()Lorg/joda/time/Weeks;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Lorg/joda/time/Weeks;->weeks(I)Lorg/joda/time/Weeks;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/Days;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
