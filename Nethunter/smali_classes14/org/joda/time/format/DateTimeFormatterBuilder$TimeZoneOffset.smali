.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/InternalPrinter;
.implements Lorg/joda/time/format/InternalParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeZoneOffset"
.end annotation


# instance fields
.field private final iMaxFields:I

.field private final iMinFields:I

.field private final iShowSeparators:Z

.field private final iZeroOffsetParseText:Ljava/lang/String;

.field private final iZeroOffsetPrintText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    .line 1974
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    .line 1975
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    .line 1976
    if-lez p4, :cond_1

    if-lt p5, p4, :cond_1

    .line 1979
    const/4 p1, 0x4

    if-le p4, p1, :cond_0

    .line 1980
    nop

    .line 1981
    const/4 p4, 0x4

    const/4 p5, 0x4

    .line 1983
    :cond_0
    iput p4, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    .line 1984
    iput p5, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    .line 1985
    return-void

    .line 1977
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private digitCount(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 2241
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2242
    const/4 v0, 0x0

    .line 2243
    :goto_0
    if-lez p3, :cond_1

    .line 2244
    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2245
    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    const/16 v2, 0x39

    if-le v1, v2, :cond_0

    .line 2246
    goto :goto_1

    .line 2248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2243
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 2250
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 2062
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 2

    .line 1988
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 1989
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v1, :cond_0

    .line 1990
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 1992
    :cond_0
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 1993
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1995
    :cond_1
    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 2066
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 2069
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    const/16 v2, 0x2b

    const/16 v3, 0x2d

    const/4 v4, 0x0

    .line 2082
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 2069
    if-eqz v1, :cond_2

    .line 2070
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2072
    if-lez v0, :cond_0

    .line 2073
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2074
    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_0

    .line 2075
    goto :goto_0

    .line 2078
    :cond_0
    invoke-virtual {p1, v5}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2079
    return p3

    .line 2081
    :cond_1
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-static {p2, p3, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->csStartsWithIgnoreCase(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2082
    invoke-virtual {p1, v5}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2083
    iget-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p3, p1

    return p3

    .line 2089
    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 2090
    not-int p1, p3

    return p1

    .line 2094
    :cond_3
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 2095
    if-ne v5, v3, :cond_4

    .line 2096
    const/4 v2, 0x1

    goto :goto_1

    .line 2097
    :cond_4
    if-ne v5, v2, :cond_1a

    .line 2098
    const/4 v2, 0x0

    .line 2103
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 2104
    add-int/2addr p3, v1

    .line 2118
    const/4 v3, 0x2

    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ge v5, v3, :cond_5

    .line 2120
    not-int p1, p3

    return p1

    .line 2125
    :cond_5
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 2126
    const/16 v6, 0x17

    if-le v5, v6, :cond_6

    .line 2127
    not-int p1, p3

    return p1

    .line 2129
    :cond_6
    const v6, 0x36ee80

    mul-int v5, v5, v6

    .line 2130
    add-int/lit8 v0, v0, -0x2

    .line 2131
    add-int/2addr p3, v3

    .line 2137
    if-gtz v0, :cond_7

    .line 2138
    goto/16 :goto_3

    .line 2142
    :cond_7
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2143
    const/16 v7, 0x3a

    const/16 v8, 0x30

    if-ne v6, v7, :cond_8

    .line 2144
    nop

    .line 2145
    add-int/lit8 v0, v0, -0x1

    .line 2146
    add-int/lit8 p3, p3, 0x1

    const/4 v4, 0x1

    goto :goto_2

    .line 2147
    :cond_8
    if-lt v6, v8, :cond_18

    const/16 v9, 0x39

    if-gt v6, v9, :cond_18

    .line 2148
    nop

    .line 2155
    :goto_2
    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 2156
    if-nez v6, :cond_9

    if-nez v4, :cond_9

    .line 2157
    goto/16 :goto_3

    .line 2158
    :cond_9
    if-ge v6, v3, :cond_a

    .line 2160
    not-int p1, p3

    return p1

    .line 2163
    :cond_a
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 2164
    const/16 v9, 0x3b

    if-le v6, v9, :cond_b

    .line 2165
    not-int p1, p3

    return p1

    .line 2167
    :cond_b
    const v10, 0xea60

    mul-int v6, v6, v10

    add-int/2addr v5, v6

    .line 2168
    add-int/lit8 v0, v0, -0x2

    .line 2169
    add-int/lit8 p3, p3, 0x2

    .line 2173
    if-gtz v0, :cond_c

    .line 2174
    goto/16 :goto_3

    .line 2177
    :cond_c
    if-eqz v4, :cond_e

    .line 2178
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_d

    .line 2179
    goto/16 :goto_3

    .line 2181
    :cond_d
    add-int/lit8 v0, v0, -0x1

    .line 2182
    add-int/lit8 p3, p3, 0x1

    .line 2185
    :cond_e
    invoke-direct {p0, p2, p3, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 2186
    if-nez v6, :cond_f

    if-nez v4, :cond_f

    .line 2187
    goto :goto_3

    .line 2188
    :cond_f
    if-ge v6, v3, :cond_10

    .line 2190
    not-int p1, p3

    return p1

    .line 2193
    :cond_10
    invoke-static {p2, p3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 2194
    if-le v6, v9, :cond_11

    .line 2195
    not-int p1, p3

    return p1

    .line 2197
    :cond_11
    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    .line 2198
    add-int/lit8 v0, v0, -0x2

    .line 2199
    add-int/lit8 p3, p3, 0x2

    .line 2203
    if-gtz v0, :cond_12

    .line 2204
    goto :goto_3

    .line 2207
    :cond_12
    if-eqz v4, :cond_14

    .line 2208
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_13

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v6, 0x2c

    if-eq v0, v6, :cond_13

    .line 2209
    goto :goto_3

    .line 2211
    :cond_13
    nop

    .line 2212
    add-int/lit8 p3, p3, 0x1

    .line 2215
    :cond_14
    const/4 v0, 0x3

    invoke-direct {p0, p2, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/CharSequence;II)I

    move-result v0

    .line 2216
    if-nez v0, :cond_15

    if-nez v4, :cond_15

    .line 2217
    goto :goto_3

    .line 2218
    :cond_15
    if-ge v0, v1, :cond_16

    .line 2220
    not-int p1, p3

    return p1

    .line 2223
    :cond_16
    add-int/lit8 v4, p3, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    sub-int/2addr p3, v8

    mul-int/lit8 p3, p3, 0x64

    add-int/2addr v5, p3

    .line 2224
    if-le v0, v1, :cond_17

    .line 2225
    add-int/lit8 p3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v8

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v5, v1

    .line 2226
    if-le v0, v3, :cond_18

    .line 2227
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    sub-int/2addr p2, v8

    add-int/2addr v5, p2

    move p3, v0

    goto :goto_3

    .line 2224
    :cond_17
    move p3, v4

    .line 2232
    :cond_18
    :goto_3
    if-eqz v2, :cond_19

    neg-int v5, v5

    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2233
    return p3

    .line 2100
    :cond_1a
    not-int p1, p3

    return p1
.end method

.method public printTo(Ljava/lang/Appendable;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2001
    if-nez p6, :cond_0

    .line 2002
    return-void

    .line 2004
    :cond_0
    if-nez p5, :cond_1

    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 2005
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2006
    return-void

    .line 2008
    :cond_1
    if-ltz p5, :cond_2

    .line 2009
    const/16 p2, 0x2b

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 2011
    :cond_2
    const/16 p2, 0x2d

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2012
    neg-int p5, p5

    .line 2015
    :goto_0
    const p2, 0x36ee80

    div-int p3, p5, p2

    .line 2016
    const/4 p4, 0x2

    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2017
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p7, 0x1

    if-ne p6, p7, :cond_3

    .line 2018
    return-void

    .line 2020
    :cond_3
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    .line 2021
    if-nez p5, :cond_4

    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p7, :cond_4

    .line 2022
    return-void

    .line 2025
    :cond_4
    const p2, 0xea60

    div-int p3, p5, p2

    .line 2026
    iget-boolean p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    const/16 p7, 0x3a

    if-eqz p6, :cond_5

    .line 2027
    invoke-interface {p1, p7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2029
    :cond_5
    invoke-static {p1, p3, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2030
    iget p6, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-ne p6, p4, :cond_6

    .line 2031
    return-void

    .line 2033
    :cond_6
    mul-int p3, p3, p2

    sub-int/2addr p5, p3

    .line 2034
    if-nez p5, :cond_7

    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p4, :cond_7

    .line 2035
    return-void

    .line 2038
    :cond_7
    div-int/lit16 p2, p5, 0x3e8

    .line 2039
    iget-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p3, :cond_8

    .line 2040
    invoke-interface {p1, p7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2042
    :cond_8
    invoke-static {p1, p2, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2043
    iget p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_9

    .line 2044
    return-void

    .line 2046
    :cond_9
    mul-int/lit16 p2, p2, 0x3e8

    sub-int/2addr p5, p2

    .line 2047
    if-nez p5, :cond_a

    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-gt p2, p4, :cond_a

    .line 2048
    return-void

    .line 2051
    :cond_a
    iget-boolean p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz p2, :cond_b

    .line 2052
    const/16 p2, 0x2e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 2054
    :cond_b
    invoke-static {p1, p5, p4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 2055
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2059
    return-void
.end method
