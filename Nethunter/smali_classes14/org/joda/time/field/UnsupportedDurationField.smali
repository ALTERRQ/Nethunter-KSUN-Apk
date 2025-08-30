.class public final Lorg/joda/time/field/UnsupportedDurationField;
.super Lorg/joda/time/DurationField;
.source "UnsupportedDurationField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static cCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/joda/time/DurationFieldType;",
            "Lorg/joda/time/field/UnsupportedDurationField;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x58aee92d77607f2dL


# instance fields
.field private final iType:Lorg/joda/time/DurationFieldType;


# direct methods
.method private constructor <init>(Lorg/joda/time/DurationFieldType;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/joda/time/DurationField;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;
    .locals 3

    const-class v0, Lorg/joda/time/field/UnsupportedDurationField;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    .line 51
    const/4 v1, 0x0

    goto :goto_0

    .line 53
    :cond_0
    sget-object v1, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/field/UnsupportedDurationField;

    .line 55
    :goto_0
    if-nez v1, :cond_1

    .line 56
    new-instance v1, Lorg/joda/time/field/UnsupportedDurationField;

    invoke-direct {v1, p0}, Lorg/joda/time/field/UnsupportedDurationField;-><init>(Lorg/joda/time/DurationFieldType;)V

    .line 57
    sget-object v2, Lorg/joda/time/field/UnsupportedDurationField;->cCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method private unsupported()Ljava/lang/UnsupportedOperationException;
    .locals 3

    .line 296
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 0

    .line 195
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public add(JJ)J
    .locals 0

    .line 205
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lorg/joda/time/DurationField;

    invoke-virtual {p0, p1}, Lorg/joda/time/field/UnsupportedDurationField;->compareTo(Lorg/joda/time/DurationField;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/joda/time/DurationField;)I
    .locals 0

    .line 244
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 256
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 257
    return v0

    .line 258
    :cond_0
    instance-of v1, p1, Lorg/joda/time/field/UnsupportedDurationField;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 259
    check-cast p1, Lorg/joda/time/field/UnsupportedDurationField;

    .line 260
    invoke-virtual {p1}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 261
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 263
    :cond_2
    invoke-virtual {p1}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 265
    :cond_3
    return v2
.end method

.method public getDifference(JJ)I
    .locals 0

    .line 215
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 0

    .line 225
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMillis(I)J
    .locals 0

    .line 155
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMillis(IJ)J
    .locals 0

    .line 175
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMillis(J)J
    .locals 0

    .line 165
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMillis(JJ)J
    .locals 0

    .line 185
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lorg/joda/time/DurationFieldType;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDurationField;->iType:Lorg/joda/time/DurationFieldType;

    return-object v0
.end method

.method public getUnitMillis()J
    .locals 2

    .line 235
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getValue(J)I
    .locals 0

    .line 115
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getValue(JJ)I
    .locals 0

    .line 135
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getValueAsLong(J)J
    .locals 0

    .line 125
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getValueAsLong(JJ)J
    .locals 0

    .line 145
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDurationField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 275
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPrecise()Z
    .locals 1

    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedDurationField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDurationField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
