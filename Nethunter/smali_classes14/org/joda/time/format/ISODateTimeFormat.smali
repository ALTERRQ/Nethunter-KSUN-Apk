.class public Lorg/joda/time/format/ISODateTimeFormat;
.super Ljava/lang/Object;
.source "ISODateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/format/ISODateTimeFormat$Constants;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V
    .locals 0

    .line 476
    if-eqz p1, :cond_0

    .line 477
    const/16 p1, 0x2d

    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 479
    :cond_0
    return-void
.end method

.method public static basicDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 914
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2300()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 992
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2800()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1007
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2900()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicOrdinalDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1020
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicOrdinalDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1036
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3100()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicOrdinalDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1052
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3200()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicTTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 961
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2600()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicTTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 977
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2700()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 930
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2400()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 945
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2500()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicWeekDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1064
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3300()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicWeekDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1079
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3400()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static basicWeekDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1094
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3500()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static checkNotStrictISO(Ljava/util/Collection;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;Z)V"
        }
    .end annotation

    .line 463
    if-nez p1, :cond_0

    .line 466
    return-void

    .line 464
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid ISO8601 format for fields: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static date()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 709
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->yearMonthDay()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static dateByMonth(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 221
    nop

    .line 222
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x2d

    if-eqz v0, :cond_3

    .line 223
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 224
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 228
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 229
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 230
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 234
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 235
    goto :goto_1

    .line 238
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 240
    invoke-static {p1, p3}, Lorg/joda/time/format/ISODateTimeFormat;->checkNotStrictISO(Ljava/util/Collection;Z)V

    .line 241
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 242
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 243
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 246
    :cond_2
    goto :goto_1

    .line 250
    :cond_3
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 251
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 252
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 253
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMonthOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 254
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 256
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 257
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 260
    :cond_4
    goto :goto_1

    .line 262
    :cond_5
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 264
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 265
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 266
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 267
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfMonth(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 269
    :cond_6
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static dateByOrdinal(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 289
    nop

    .line 290
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x3

    if-eqz p3, :cond_1

    .line 291
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 292
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 295
    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 298
    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    .line 301
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 303
    const/16 p1, 0x2d

    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 304
    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfYear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 306
    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static dateByWeek(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 326
    nop

    .line 327
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x57

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 328
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$100()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 329
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 331
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 332
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 333
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 335
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 336
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 339
    :cond_0
    goto :goto_1

    .line 342
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    invoke-static {p1, p3}, Lorg/joda/time/format/ISODateTimeFormat;->checkNotStrictISO(Ljava/util/Collection;Z)V

    .line 345
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 346
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 347
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 348
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 351
    :cond_2
    goto :goto_1

    .line 355
    :cond_3
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 356
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 357
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 358
    invoke-virtual {p0, v1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendWeekOfWeekyear(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 359
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 361
    invoke-static {p0, p2}, Lorg/joda/time/format/ISODateTimeFormat;->appendSeparator(Lorg/joda/time/format/DateTimeFormatterBuilder;Z)V

    .line 362
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_0

    .line 365
    :cond_4
    goto :goto_1

    .line 367
    :cond_5
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 369
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 370
    invoke-virtual {p0, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 371
    invoke-virtual {p0, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 372
    invoke-virtual {p0, v4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendDayOfWeek(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 374
    :cond_6
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public static dateElementParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 541
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$400()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateHour()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1216
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4400()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateHourMinute()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1226
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4500()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateHourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1237
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4600()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateHourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1261
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4800()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateHourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1249
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4700()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 666
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$900()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 500
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$200()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 792
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1500()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 808
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1600()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 638
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$800()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static forFields(Ljava/util/Collection;ZZ)Lorg/joda/time/format/DateTimeFormatter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZ)",
            "Lorg/joda/time/format/DateTimeFormatter;"
        }
    .end annotation

    .line 158
    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 162
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 163
    nop

    .line 164
    new-instance v7, Lorg/joda/time/format/DateTimeFormatterBuilder;

    invoke-direct {v7}, Lorg/joda/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 166
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 167
    invoke-static {v7, v0, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByMonth(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v2

    move v5, v2

    goto/16 :goto_0

    .line 168
    :cond_0
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    invoke-static {v7, v0, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByOrdinal(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v2

    move v5, v2

    goto :goto_0

    .line 170
    :cond_1
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-static {v7, v0, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByWeek(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v2

    move v5, v2

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-static {v7, v0, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByMonth(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v2

    move v5, v2

    goto :goto_0

    .line 174
    :cond_3
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfWeek()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    invoke-static {v7, v0, p1, p2}, Lorg/joda/time/format/ISODateTimeFormat;->dateByWeek(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZ)Z

    move-result v2

    move v5, v2

    goto :goto_0

    .line 176
    :cond_4
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 178
    const/4 v5, 0x1

    goto :goto_0

    .line 179
    :cond_5
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 180
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$100()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/joda/time/format/DateTimeFormatterBuilder;->append(Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 181
    const/4 v5, 0x1

    goto :goto_0

    .line 179
    :cond_6
    const/4 v5, 0x0

    .line 183
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v2, v1, :cond_7

    const/4 v6, 0x1

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    .line 186
    :goto_1
    move-object v1, v7

    move-object v2, v0

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Lorg/joda/time/format/ISODateTimeFormat;->time(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZZZ)V

    .line 189
    invoke-virtual {v7}, Lorg/joda/time/format/DateTimeFormatterBuilder;->canBuildFormatter()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 196
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_2

    .line 197
    :catch_0
    move-exception p0

    .line 200
    :goto_2
    invoke-virtual {v7}, Lorg/joda/time/format/DateTimeFormatterBuilder;->toFormatter()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0

    .line 190
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No valid format for fields: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The fields must not be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hour()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1162
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3900()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static hourMinute()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1172
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static hourMinuteSecond()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1182
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4100()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static hourMinuteSecondFraction()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1206
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4300()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static hourMinuteSecondMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1194
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$4200()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static localDateOptionalTimeParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 695
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static localDateParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 522
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$300()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static localTimeParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 588
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$600()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ordinalDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 822
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1700()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ordinalDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 839
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1800()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ordinalDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 856
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1900()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static tTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 759
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1300()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static tTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 776
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1400()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static time()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 726
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1100()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static time(Lorg/joda/time/format/DateTimeFormatterBuilder;Ljava/util/Collection;ZZZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/joda/time/format/DateTimeFormatterBuilder;",
            "Ljava/util/Collection<",
            "Lorg/joda/time/DateTimeFieldType;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 398
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->hourOfDay()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 399
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->minuteOfHour()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 400
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->secondOfMinute()Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 401
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->millisOfSecond()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 402
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_4

    .line 406
    :cond_1
    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    goto :goto_0

    .line 407
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No valid ISO8601 format for fields because Date was reduced precision: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 409
    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    .line 410
    const/16 p4, 0x54

    invoke-virtual {p0, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 413
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_c

    :cond_5
    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    goto :goto_2

    .line 416
    :cond_6
    if-eqz p3, :cond_8

    if-nez p5, :cond_7

    goto :goto_1

    .line 417
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No valid ISO8601 format for fields because Time was truncated: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 419
    :cond_8
    :goto_1
    if-nez v0, :cond_b

    if-eqz v1, :cond_9

    if-nez v2, :cond_c

    :cond_9
    if-eqz v1, :cond_a

    if-eqz v3, :cond_c

    :cond_a
    if-eqz v2, :cond_b

    goto :goto_2

    .line 422
    :cond_b
    if-nez p3, :cond_18

    .line 427
    :cond_c
    :goto_2
    const/16 p1, 0x2d

    const/4 p3, 0x2

    if-eqz v0, :cond_d

    .line 428
    invoke-virtual {p0, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendHourOfDay(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_3

    .line 429
    :cond_d
    if-nez v1, :cond_e

    if-nez v2, :cond_e

    if-eqz v3, :cond_f

    .line 430
    :cond_e
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 432
    :cond_f
    :goto_3
    const/16 p4, 0x3a

    if-eqz p2, :cond_10

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    .line 433
    invoke-virtual {p0, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 435
    :cond_10
    if-eqz v1, :cond_11

    .line 436
    invoke-virtual {p0, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMinuteOfHour(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_4

    .line 437
    :cond_11
    if-nez v2, :cond_12

    if-eqz v3, :cond_13

    .line 438
    :cond_12
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 440
    :cond_13
    :goto_4
    if-eqz p2, :cond_14

    if-eqz v1, :cond_14

    if-eqz v2, :cond_14

    .line 441
    invoke-virtual {p0, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 443
    :cond_14
    if-eqz v2, :cond_15

    .line 444
    invoke-virtual {p0, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendSecondOfMinute(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    goto :goto_5

    .line 445
    :cond_15
    if-eqz v3, :cond_16

    .line 446
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 448
    :cond_16
    :goto_5
    if-eqz v3, :cond_17

    .line 449
    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 450
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendMillisOfSecond(I)Lorg/joda/time/format/DateTimeFormatterBuilder;

    .line 452
    :cond_17
    return-void

    .line 423
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No valid ISO8601 format for fields: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static timeElementParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 609
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$700()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static timeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 742
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$1200()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static timeParser()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 564
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$500()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static weekDate()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 869
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static weekDateTime()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 885
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2100()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static weekDateTimeNoMillis()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 901
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2200()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static weekyear()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1133
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$100()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static weekyearWeek()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1143
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3800()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static weekyearWeekDay()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1153
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$2000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static year()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1104
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$000()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static yearMonth()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1114
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3600()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static yearMonthDay()Lorg/joda/time/format/DateTimeFormatter;
    .locals 1

    .line 1124
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat$Constants;->access$3700()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
