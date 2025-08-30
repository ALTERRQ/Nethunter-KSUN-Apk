.class public Lj$/time/TimeConversions;
.super Ljava/lang/Object;
.source "TimeConversions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/time/Duration;)Lj$/time/Duration;
    .locals 4

    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 p0, 0x0

    return-object p0

    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/Instant;)Lj$/time/Instant;
    .locals 4

    .line 152
    if-nez p0, :cond_0

    .line 153
    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_0
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/LocalDate;)Lj$/time/LocalDate;
    .locals 2

    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 p0, 0x0

    return-object p0

    .line 171
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, v1, p0}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/LocalDateTime;)Lj$/time/LocalDateTime;
    .locals 7

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    nop

    .line 45
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    .line 46
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v1

    .line 47
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    .line 48
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v3

    .line 49
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 50
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 51
    invoke-virtual {p0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v6

    .line 44
    invoke-static/range {v0 .. v6}, Lj$/time/LocalDateTime;->of(IIIIIII)Lj$/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/LocalTime;)Lj$/time/LocalTime;
    .locals 2

    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/LocalTime;->ofNanoOfDay(J)Lj$/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/MonthDay;)Lj$/time/MonthDay;
    .locals 1

    .line 138
    if-nez p0, :cond_0

    .line 139
    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_0
    invoke-virtual {p0}, Ljava/time/MonthDay;->getMonthValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/MonthDay;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, p0}, Lj$/time/MonthDay;->of(II)Lj$/time/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/Period;)Lj$/time/Period;
    .locals 2

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Ljava/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p0}, Ljava/time/Period;->getMonths()I

    move-result v1

    invoke-virtual {p0}, Ljava/time/Period;->getDays()I

    move-result p0

    invoke-static {v0, v1, p0}, Lj$/time/Period;->of(III)Lj$/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/ZoneId;)Lj$/time/ZoneId;
    .locals 0

    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_0
    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj$/time/ZoneId;->of(Ljava/lang/String;)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/ZoneOffset;)Lj$/time/ZoneOffset;
    .locals 0

    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 p0, 0x0

    return-object p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj$/time/ZoneOffset;->of(Ljava/lang/String;)Lj$/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/time/ZonedDateTime;)Lj$/time/ZonedDateTime;
    .locals 8

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    nop

    .line 102
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v0

    .line 103
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v1

    .line 104
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    .line 105
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v3

    .line 106
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v4

    .line 107
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v5

    .line 108
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getNano()I

    move-result v6

    .line 109
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object p0

    invoke-static {p0}, Lj$/time/TimeConversions;->convert(Ljava/time/ZoneId;)Lj$/time/ZoneId;

    move-result-object v7

    .line 101
    invoke-static/range {v0 .. v7}, Lj$/time/ZonedDateTime;->of(IIIIIIILj$/time/ZoneId;)Lj$/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/Duration;)Ljava/time/Duration;
    .locals 4

    .line 175
    if-nez p0, :cond_0

    .line 176
    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Duration;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/Instant;)Ljava/time/Instant;
    .locals 4

    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_0
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/LocalDate;)Ljava/time/LocalDate;
    .locals 2

    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lj$/time/LocalDate;->getYear()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/LocalDate;->getMonthValue()I

    move-result v1

    invoke-virtual {p0}, Lj$/time/LocalDate;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 7

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    nop

    .line 30
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getYear()I

    move-result v0

    .line 31
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getMonthValue()I

    move-result v1

    .line 32
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    .line 33
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getHour()I

    move-result v3

    .line 34
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getMinute()I

    move-result v4

    .line 35
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getSecond()I

    move-result v5

    .line 36
    invoke-virtual {p0}, Lj$/time/LocalDateTime;->getNano()I

    move-result v6

    .line 29
    invoke-static/range {v0 .. v6}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/LocalTime;)Ljava/time/LocalTime;
    .locals 2

    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lj$/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/MonthDay;)Ljava/time/MonthDay;
    .locals 1

    .line 131
    if-nez p0, :cond_0

    .line 132
    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lj$/time/MonthDay;->getMonthValue()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/MonthDay;->getDayOfMonth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/Period;)Ljava/time/Period;
    .locals 2

    .line 55
    if-nez p0, :cond_0

    .line 56
    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lj$/time/Period;->getYears()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/Period;->getMonths()I

    move-result v1

    invoke-virtual {p0}, Lj$/time/Period;->getDays()I

    move-result p0

    invoke-static {v0, v1, p0}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/ZoneId;)Ljava/time/ZoneId;
    .locals 0

    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 p0, 0x0

    return-object p0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lj$/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/ZoneOffset;)Ljava/time/ZoneOffset;
    .locals 0

    .line 12
    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lj$/time/ZoneOffset;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Lj$/time/ZonedDateTime;)Ljava/time/ZonedDateTime;
    .locals 8

    .line 83
    if-nez p0, :cond_0

    .line 84
    const/4 p0, 0x0

    return-object p0

    .line 86
    :cond_0
    nop

    .line 87
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getYear()I

    move-result v0

    .line 88
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getMonthValue()I

    move-result v1

    .line 89
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getDayOfMonth()I

    move-result v2

    .line 90
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getHour()I

    move-result v3

    .line 91
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getMinute()I

    move-result v4

    .line 92
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getSecond()I

    move-result v5

    .line 93
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getNano()I

    move-result v6

    .line 94
    invoke-virtual {p0}, Lj$/time/ZonedDateTime;->getZone()Lj$/time/ZoneId;

    move-result-object p0

    invoke-static {p0}, Lj$/time/TimeConversions;->convert(Lj$/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v7

    .line 86
    invoke-static/range {v0 .. v7}, Ljava/time/ZonedDateTime;->of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    return-object p0
.end method
