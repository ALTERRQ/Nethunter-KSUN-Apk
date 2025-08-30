.class Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;
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
    name = "TwoDigitYear"
.end annotation


# instance fields
.field private final iLenientParse:Z

.field private final iPivot:I

.field private final iType:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .locals 0

    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1500
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    .line 1501
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iPivot:I

    .line 1502
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    .line 1503
    return-void
.end method

.method private getTwoDigitYear(JLorg/joda/time/Chronology;)I
    .locals 1

    .line 1626
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result p1

    .line 1627
    if-gez p1, :cond_0

    .line 1628
    neg-int p1, p1

    .line 1630
    :cond_0
    rem-int/lit8 p1, p1, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1631
    :catch_0
    move-exception p1

    .line 1632
    const/4 p1, -0x1

    return p1
.end method

.method private getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .line 1647
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    .line 1650
    if-gez p1, :cond_0

    .line 1651
    neg-int p1, p1

    .line 1653
    :cond_0
    rem-int/lit8 p1, p1, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1654
    :catch_0
    move-exception p1

    .line 1656
    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 1506
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .line 1609
    const/4 v0, 0x2

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 12

    .line 1510
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p3

    .line 1512
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    const/16 v2, 0x39

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x1

    if-nez v1, :cond_0

    .line 1513
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1514
    if-ge v0, v3, :cond_8

    .line 1515
    not-int p1, p3

    return p1

    .line 1518
    :cond_0
    nop

    .line 1519
    nop

    .line 1520
    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1521
    :goto_0
    if-ge v1, v0, :cond_6

    .line 1522
    add-int v9, p3, v1

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 1523
    if-nez v1, :cond_4

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_1

    const/16 v11, 0x2b

    if-ne v9, v11, :cond_4

    .line 1524
    :cond_1
    nop

    .line 1525
    if-ne v9, v10, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 1526
    :goto_1
    if-eqz v8, :cond_3

    .line 1527
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    goto :goto_0

    .line 1530
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 1531
    add-int/lit8 v0, v0, -0x1

    .line 1533
    const/4 v7, 0x1

    goto :goto_0

    .line 1535
    :cond_4
    if-lt v9, v5, :cond_6

    if-le v9, v2, :cond_5

    .line 1536
    goto :goto_2

    .line 1538
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 1539
    goto :goto_0

    .line 1541
    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 1542
    not-int p1, p3

    return p1

    .line 1545
    :cond_7
    if-nez v7, :cond_10

    if-eq v1, v3, :cond_8

    goto :goto_6

    .line 1576
    :cond_8
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1577
    if-lt v0, v5, :cond_f

    if-le v0, v2, :cond_9

    goto :goto_5

    .line 1580
    :cond_9
    sub-int/2addr v0, v5

    .line 1581
    add-int/lit8 v1, p3, 0x1

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    .line 1582
    if-lt p2, v5, :cond_e

    if-le p2, v2, :cond_a

    goto :goto_4

    .line 1585
    :cond_a
    shl-int/lit8 v1, v0, 0x3

    shl-int/2addr v0, v6

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    sub-int/2addr v1, v5

    .line 1587
    iget p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iPivot:I

    .line 1589
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getPivotYear()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1590
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getPivotYear()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1593
    :cond_b
    add-int/lit8 p2, p2, -0x32

    .line 1596
    const/16 v0, 0x64

    if-ltz p2, :cond_c

    .line 1597
    rem-int/lit8 v2, p2, 0x64

    goto :goto_3

    .line 1599
    :cond_c
    add-int/lit8 v2, p2, 0x1

    rem-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x63

    .line 1602
    :goto_3
    if-ge v1, v2, :cond_d

    const/16 v4, 0x64

    :cond_d
    add-int/2addr p2, v4

    sub-int/2addr p2, v2

    add-int/2addr v1, p2

    .line 1604
    iget-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, p2, v1}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    .line 1605
    add-int/2addr p3, v3

    return p3

    .line 1583
    :cond_e
    :goto_4
    not-int p1, p3

    return p1

    .line 1578
    :cond_f
    :goto_5
    not-int p1, p3

    return p1

    .line 1547
    :cond_10
    :goto_6
    const/16 v0, 0x9

    if-lt v1, v0, :cond_11

    .line 1550
    add-int/2addr v1, p3

    invoke-interface {p2, p3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_9

    .line 1552
    :cond_11
    nop

    .line 1553
    if-eqz v8, :cond_12

    .line 1554
    add-int/lit8 v0, p3, 0x1

    goto :goto_7

    .line 1553
    :cond_12
    move v0, p3

    .line 1557
    :goto_7
    add-int/lit8 v2, v0, 0x1

    :try_start_0
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v5

    .line 1560
    nop

    .line 1561
    add-int/2addr v1, p3

    .line 1562
    :goto_8
    if-ge v2, v1, :cond_13

    .line 1563
    shl-int/lit8 p3, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr p3, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/2addr p3, v2

    sub-int/2addr p3, v5

    move v2, v0

    move v0, p3

    goto :goto_8

    .line 1565
    :cond_13
    if-eqz v8, :cond_14

    .line 1566
    neg-int p2, v0

    goto :goto_9

    .line 1565
    :cond_14
    move p2, v0

    .line 1570
    :goto_9
    iget-object p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, p3, p2}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    .line 1571
    return v1

    .line 1558
    :catch_0
    move-exception p1

    .line 1559
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

    .line 1615
    invoke-direct {p0, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(JLorg/joda/time/Chronology;)I

    move-result p2

    .line 1616
    if-gez p2, :cond_0

    .line 1617
    const p2, 0xfffd

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1618
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1620
    :cond_0
    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 1622
    :goto_0
    return-void
.end method

.method public printTo(Ljava/lang/Appendable;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1637
    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I

    move-result p2

    .line 1638
    if-gez p2, :cond_0

    .line 1639
    const p2, 0xfffd

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 1640
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    .line 1642
    :cond_0
    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/Appendable;II)V

    .line 1644
    :goto_0
    return-void
.end method
