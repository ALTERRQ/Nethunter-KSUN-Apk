.class public final Lorg/joda/time/TimeOfDay;
.super Lorg/joda/time/base/BasePartial;
.source "TimeOfDay.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/TimeOfDay$Property;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

.field public static final HOUR_OF_DAY:I = 0x0

.field public static final MIDNIGHT:Lorg/joda/time/TimeOfDay;

.field public static final MILLIS_OF_SECOND:I = 0x3

.field public static final MINUTE_OF_HOUR:I = 0x1

.field public static final SECOND_OF_MINUTE:I = 0x2

.field private static final serialVersionUID:J = 0x326c43ac185ccd84L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/joda/time/DateTimeFieldType;

    .line 76
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 78
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 79
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Lorg/joda/time/TimeOfDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    .line 83
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, v2, v2, v2, v2}, Lorg/joda/time/TimeOfDay;-><init>(IIII)V

    sput-object v0, Lorg/joda/time/TimeOfDay;->MIDNIGHT:Lorg/joda/time/TimeOfDay;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lorg/joda/time/base/BasePartial;-><init>()V

    .line 202
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .line 319
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    .line 320
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    .line 350
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    .line 351
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6

    .line 383
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    .line 384
    return-void
.end method

.method public constructor <init>(IIIILorg/joda/time/Chronology;)V
    .locals 0

    .line 401
    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    invoke-direct {p0, p1, p5}, Lorg/joda/time/base/BasePartial;-><init>([ILorg/joda/time/Chronology;)V

    .line 402
    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/Chronology;)V
    .locals 6

    .line 366
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    .line 367
    return-void
.end method

.method public constructor <init>(IILorg/joda/time/Chronology;)V
    .locals 6

    .line 334
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/TimeOfDay;-><init>(IIIILorg/joda/time/Chronology;)V

    .line 335
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(J)V

    .line 245
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePartial;-><init>(JLorg/joda/time/Chronology;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 279
    const/4 v0, 0x0

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    .line 304
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->timeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePartial;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)V

    .line 305
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    .line 230
    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .line 216
    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/Chronology;)V

    .line 217
    return-void
.end method

.method constructor <init>(Lorg/joda/time/TimeOfDay;Lorg/joda/time/Chronology;)V
    .locals 0

    .line 421
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;Lorg/joda/time/Chronology;)V

    .line 422
    return-void
.end method

.method constructor <init>(Lorg/joda/time/TimeOfDay;[I)V
    .locals 0

    .line 411
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePartial;-><init>(Lorg/joda/time/base/BasePartial;[I)V

    .line 412
    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/TimeOfDay;
    .locals 5

    .line 115
    if-eqz p0, :cond_0

    .line 118
    new-instance v0, Lorg/joda/time/TimeOfDay;

    .line 119
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 120
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 121
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 122
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/joda/time/TimeOfDay;-><init>(IIII)V

    .line 118
    return-object v0

    .line 116
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The calendar must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/TimeOfDay;
    .locals 8

    .line 145
    if-eqz p0, :cond_0

    .line 148
    new-instance v0, Lorg/joda/time/TimeOfDay;

    .line 149
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 150
    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 151
    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result v3

    .line 152
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    long-to-int p0, v4

    add-int/lit16 p0, p0, 0x3e8

    rem-int/lit16 p0, p0, 0x3e8

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/joda/time/TimeOfDay;-><init>(IIII)V

    .line 148
    return-object v0

    .line 146
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The date must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromMillisOfDay(J)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 169
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/joda/time/TimeOfDay;->fromMillisOfDay(JLorg/joda/time/Chronology;)Lorg/joda/time/TimeOfDay;

    move-result-object p0

    return-object p0
.end method

.method public static fromMillisOfDay(JLorg/joda/time/Chronology;)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 185
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    .line 186
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p2

    .line 187
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1, p2}, Lorg/joda/time/TimeOfDay;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method


# virtual methods
.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 2

    .line 445
    packed-switch p1, :pswitch_data_0

    .line 455
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 453
    :pswitch_0
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    .line 451
    :pswitch_1
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    .line 449
    :pswitch_2
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    .line 447
    :pswitch_3
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 468
    sget-object v0, Lorg/joda/time/TimeOfDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 480
    sget-object v0, Lorg/joda/time/TimeOfDay;->FIELD_TYPES:[Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, [Lorg/joda/time/DateTimeFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    check-cast v0, [Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public getHourOfDay()I
    .locals 1

    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getMillisOfSecond()I
    .locals 1

    .line 889
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getMinuteOfHour()I
    .locals 1

    .line 871
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getSecondOfMinute()I
    .locals 1

    .line 880
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public hourOfDay()Lorg/joda/time/TimeOfDay$Property;
    .locals 2

    .line 972
    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public millisOfSecond()Lorg/joda/time/TimeOfDay$Property;
    .locals 2

    .line 999
    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 716
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/TimeOfDay;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minusHours(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 737
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minusMillis(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 797
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minusMinutes(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 757
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minusSeconds(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 777
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {p1}, Lorg/joda/time/field/FieldUtils;->safeNegate(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public minuteOfHour()Lorg/joda/time/TimeOfDay$Property;
    .locals 2

    .line 981
    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/TimeOfDay;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public plusHours(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 637
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public plusMillis(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 697
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public plusMinutes(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 657
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public plusSeconds(I)Lorg/joda/time/TimeOfDay;
    .locals 1

    .line 677
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/TimeOfDay;->withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/TimeOfDay$Property;
    .locals 1

    .line 810
    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public secondOfMinute()Lorg/joda/time/TimeOfDay$Property;
    .locals 2

    .line 990
    new-instance v0, Lorg/joda/time/TimeOfDay$Property;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lorg/joda/time/TimeOfDay$Property;-><init>(Lorg/joda/time/TimeOfDay;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 431
    const/4 v0, 0x4

    return v0
.end method

.method public toDateTimeToday()Lorg/joda/time/DateTime;
    .locals 1

    .line 834
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay;->toDateTimeToday(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeToday(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 3

    .line 849
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object p1

    .line 850
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 851
    invoke-virtual {p1, p0, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 852
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v0, v1, p1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v2
.end method

.method public toLocalTime()Lorg/joda/time/LocalTime;
    .locals 7

    .line 821
    new-instance v6, Lorg/joda/time/LocalTime;

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getHourOfDay()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getMinuteOfHour()I

    move-result v2

    .line 822
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getSecondOfMinute()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getMillisOfSecond()I

    move-result v4

    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/LocalTime;-><init>(IIIILorg/joda/time/Chronology;)V

    .line 821
    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1010
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->tTime()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withChronologyRetainFields(Lorg/joda/time/Chronology;)Lorg/joda/time/TimeOfDay;
    .locals 2

    .line 499
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object p1

    .line 501
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 502
    return-object p0

    .line 504
    :cond_0
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;Lorg/joda/time/Chronology;)V

    .line 505
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/joda/time/Chronology;->validate(Lorg/joda/time/ReadablePartial;[I)V

    .line 506
    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/TimeOfDay;
    .locals 2

    .line 529
    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    .line 530
    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 531
    return-object p0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 534
    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 535
    new-instance p2, Lorg/joda/time/TimeOfDay;

    invoke-direct {p2, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object p2
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/TimeOfDay;
    .locals 2

    .line 558
    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->indexOfSupported(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    .line 559
    if-nez p2, :cond_0

    .line 560
    return-object p0

    .line 562
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 563
    invoke-virtual {p0, p1}, Lorg/joda/time/TimeOfDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p2}, Lorg/joda/time/DateTimeField;->addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 564
    new-instance p2, Lorg/joda/time/TimeOfDay;

    invoke-direct {p2, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object p2
.end method

.method public withHourOfDay(I)Lorg/joda/time/TimeOfDay;
    .locals 3

    .line 906
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 907
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->hourOfDay()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 908
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public withMillisOfSecond(I)Lorg/joda/time/TimeOfDay;
    .locals 3

    .line 960
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 961
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->millisOfSecond()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 962
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public withMinuteOfHour(I)Lorg/joda/time/TimeOfDay;
    .locals 3

    .line 924
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 925
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->minuteOfHour()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 926
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/TimeOfDay;
    .locals 5

    .line 585
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 588
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 589
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 590
    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 591
    invoke-virtual {p0, v2}, Lorg/joda/time/TimeOfDay;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v2

    .line 592
    if-ltz v2, :cond_1

    .line 593
    invoke-virtual {p0, v2}, Lorg/joda/time/TimeOfDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    .line 594
    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v4

    .line 593
    invoke-virtual {v3, p0, v2, v0, v4}, Lorg/joda/time/DateTimeField;->addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 589
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 597
    :cond_2
    new-instance p1, Lorg/joda/time/TimeOfDay;

    invoke-direct {p1, p0, v0}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object p1

    .line 586
    :cond_3
    :goto_1
    return-object p0
.end method

.method public withSecondOfMinute(I)Lorg/joda/time/TimeOfDay;
    .locals 3

    .line 942
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 943
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->secondOfMinute()Lorg/joda/time/DateTimeField;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 944
    new-instance v0, Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method
