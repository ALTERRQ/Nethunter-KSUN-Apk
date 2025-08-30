.class Lorg/joda/time/chrono/BasicYearDateTimeField;
.super Lorg/joda/time/field/ImpreciseDateTimeField;
.source "BasicYearDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x59b3cbe617dfL


# instance fields
.field protected final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .locals 3

    .line 46
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerYear()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/field/ImpreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;J)V

    .line 47
    iput-object p1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 48
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 1

    .line 62
    if-nez p3, :cond_0

    .line 63
    return-wide p1

    .line 65
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result v0

    .line 66
    invoke-static {v0, p3}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result p3

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicYearDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .locals 0

    .line 72
    invoke-static {p3, p4}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicYearDateTimeField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public addWrapField(JI)J
    .locals 3

    .line 77
    if-nez p3, :cond_0

    .line 78
    return-wide p1

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 82
    iget-object v1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 83
    invoke-virtual {v1}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v1

    iget-object v2, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v2

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result p3

    .line 84
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/BasicYearDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public get(J)I
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 1

    .line 103
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p3, p4, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYearDifference(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getYearDifference(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLeapAmount(J)I
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    const/4 p1, 0x1

    return p1

    .line 124
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result p1

    return p1
.end method

.method public isLenient()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .locals 2

    .line 161
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->roundFloor(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public roundCeiling(J)J
    .locals 4

    .line 150
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result v0

    .line 151
    iget-object v1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v1

    .line 152
    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 154
    iget-object p1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide p1

    .line 156
    :cond_0
    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public set(JI)J
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 90
    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 91
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public setExtended(JI)J
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 97
    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 96
    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 98
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    return-wide p1
.end method
