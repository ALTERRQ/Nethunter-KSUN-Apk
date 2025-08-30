.class public abstract Lorg/joda/time/base/AbstractPartial;
.super Ljava/lang/Object;
.source "AbstractPartial.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/joda/time/ReadablePartial;",
        "Ljava/lang/Comparable<",
        "Lorg/joda/time/ReadablePartial;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .locals 6

    .line 313
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 314
    return v0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v2

    const-string v3, "ReadablePartial objects must have matching field types"

    if-ne v1, v2, :cond_6

    .line 319
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 320
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 319
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    .line 326
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 327
    const/4 p1, 0x1

    return p1

    .line 329
    :cond_3
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 330
    const/4 p1, -0x1

    return p1

    .line 325
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    :cond_5
    return v0

    .line 317
    :cond_6
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 256
    if-ne p0, p1, :cond_0

    .line 257
    const/4 p1, 0x1

    return p1

    .line 259
    :cond_0
    instance-of v0, p1, Lorg/joda/time/ReadablePartial;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 260
    return v1

    .line 262
    :cond_1
    check-cast p1, Lorg/joda/time/ReadablePartial;

    .line 263
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 264
    return v1

    .line 266
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    .line 267
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getValue(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 266
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_4
    :goto_1
    return v1

    .line 271
    :cond_5
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/joda/time/field/FieldUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result p1

    return p1
.end method

.method public getField(I)Lorg/joda/time/DateTimeField;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/base/AbstractPartial;->getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
.end method

.method public getFieldType(I)Lorg/joda/time/DateTimeFieldType;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/base/AbstractPartial;->getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object p1

    return-object p1
.end method

.method public getFieldTypes()[Lorg/joda/time/DateTimeFieldType;
    .locals 4

    .line 90
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    new-array v1, v0, [Lorg/joda/time/DateTimeFieldType;

    .line 91
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 92
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    aput-object v3, v1, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method

.method public getFields()[Lorg/joda/time/DateTimeField;
    .locals 4

    .line 116
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    new-array v1, v0, [Lorg/joda/time/DateTimeField;

    .line 117
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 118
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v3

    aput-object v3, v1, v2

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-object v1
.end method

.method public getValues()[I
    .locals 4

    .line 132
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 133
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 134
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v3

    aput v3, v1, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .line 282
    nop

    .line 283
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    const/16 v1, 0x9d

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 284
    mul-int/lit8 v1, v1, 0x17

    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getValue(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 285
    mul-int/lit8 v1, v1, 0x17

    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 288
    return v1
.end method

.method public indexOf(Lorg/joda/time/DateTimeFieldType;)I
    .locals 3

    .line 170
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 172
    return v1

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected indexOf(Lorg/joda/time/DurationFieldType;)I
    .locals 3

    .line 202
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPartial;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 203
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 204
    return v1

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected indexOfSupported(Lorg/joda/time/DateTimeFieldType;)I
    .locals 3

    .line 187
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->indexOf(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 188
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 191
    return v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected indexOfSupported(Lorg/joda/time/DurationFieldType;)I
    .locals 3

    .line 219
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    .line 220
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 223
    return v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' is not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAfter(Lorg/joda/time/ReadablePartial;)Z
    .locals 1

    .line 352
    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 353
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Partial cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isBefore(Lorg/joda/time/ReadablePartial;)Z
    .locals 1

    .line 374
    if-eqz p1, :cond_1

    .line 377
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 375
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Partial cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEqual(Lorg/joda/time/ReadablePartial;)Z
    .locals 1

    .line 396
    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 397
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Partial cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .locals 1

    .line 160
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPartial;->indexOf(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toDateTime(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/DateTime;
    .locals 3

    .line 240
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 241
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    .line 242
    invoke-virtual {v0, p0, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v1

    .line 243
    new-instance p1, Lorg/joda/time/DateTime;

    invoke-direct {p1, v1, v2, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object p1
.end method

.method public toString(Lorg/joda/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 0

    .line 411
    if-nez p1, :cond_0

    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 414
    :cond_0
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
