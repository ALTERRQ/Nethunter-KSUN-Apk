.class abstract Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;
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
    accessFlags = 0x408
    name = "NumberFormatter"
.end annotation


# instance fields
.field protected final iFieldType:Lorg/joda/time/DateTimeFieldType;

.field protected final iMaxParsedDigits:I

.field protected final iSigned:Z


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .locals 0

    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 1303
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    .line 1304
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iSigned:Z

    .line 1305
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .line 1308
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .locals 16

    .line 1312
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    iget v3, v1, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iMaxParsedDigits:I

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1314
    nop

    .line 1315
    nop

    .line 1316
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1317
    :goto_0
    const/16 v8, 0x30

    if-ge v5, v3, :cond_7

    .line 1318
    add-int v9, v2, v5

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 1319
    const/16 v11, 0x39

    if-nez v5, :cond_5

    const/16 v12, 0x2b

    const/16 v13, 0x2d

    if-eq v10, v13, :cond_0

    if-ne v10, v12, :cond_5

    :cond_0
    iget-boolean v14, v1, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iSigned:Z

    if-eqz v14, :cond_5

    .line 1320
    const/4 v6, 0x1

    if-ne v10, v13, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 1321
    :goto_1
    if-ne v10, v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 1324
    :goto_2
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v3, :cond_4

    add-int/lit8 v9, v9, 0x1

    .line 1325
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-lt v9, v8, :cond_4

    if-le v9, v11, :cond_3

    .line 1326
    goto :goto_3

    .line 1328
    :cond_3
    nop

    .line 1331
    add-int/lit8 v3, v3, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1332
    move v5, v10

    move v15, v7

    move v7, v6

    move v6, v15

    goto :goto_0

    .line 1340
    :cond_4
    :goto_3
    move v15, v7

    move v7, v6

    move v6, v15

    goto :goto_4

    .line 1334
    :cond_5
    if-lt v10, v8, :cond_7

    if-le v10, v11, :cond_6

    .line 1335
    goto :goto_4

    .line 1337
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 1338
    goto :goto_0

    .line 1340
    :cond_7
    :goto_4
    if-nez v5, :cond_8

    .line 1341
    not-int v0, v2

    return v0

    .line 1345
    :cond_8
    const/16 v3, 0x9

    if-lt v5, v3, :cond_a

    .line 1348
    if-eqz v7, :cond_9

    .line 1349
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v2, v5

    invoke-interface {v0, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    .line 1351
    :cond_9
    add-int v3, v2, v5

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v3

    goto :goto_8

    .line 1355
    :cond_a
    nop

    .line 1356
    if-nez v6, :cond_c

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    move v3, v2

    goto :goto_6

    .line 1357
    :cond_c
    :goto_5
    add-int/lit8 v3, v2, 0x1

    .line 1360
    :goto_6
    add-int/lit8 v4, v3, 0x1

    :try_start_0
    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v3, v8

    .line 1363
    nop

    .line 1364
    add-int/2addr v2, v5

    .line 1365
    :goto_7
    if-ge v4, v2, :cond_d

    .line 1366
    shl-int/lit8 v5, v3, 0x3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v5, v3

    add-int/lit8 v3, v4, 0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/2addr v5, v4

    add-int/lit8 v4, v5, -0x30

    move v15, v4

    move v4, v3

    move v3, v15

    goto :goto_7

    .line 1368
    :cond_d
    if-eqz v6, :cond_e

    .line 1369
    neg-int v0, v3

    goto :goto_8

    .line 1368
    :cond_e
    move v0, v3

    .line 1373
    :goto_8
    iget-object v3, v1, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    .line 1374
    return v2

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    not-int v0, v2

    return v0
.end method
