.class public abstract Lj$/sun/util/PreHashedMap;
.super Ljava/util/AbstractMap;
.source "PreHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final ht:[Ljava/lang/Object;

.field private final mask:I

.field private final rows:I

.field private final shift:I

.field private final size:I


# direct methods
.method static bridge synthetic -$$Nest$fgetht(Lj$/sun/util/PreHashedMap;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrows(Lj$/sun/util/PreHashedMap;)I
    .locals 0

    iget p0, p0, Lj$/sun/util/PreHashedMap;->rows:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lj$/sun/util/PreHashedMap;)I
    .locals 0

    iget p0, p0, Lj$/sun/util/PreHashedMap;->size:I

    return p0
.end method

.method protected constructor <init>(IIII)V
    .locals 1
    .param p1, "rows"    # I
    .param p2, "size"    # I
    .param p3, "shift"    # I
    .param p4, "mask"    # I

    .line 109
    .local p0, "this":Lj$/sun/util/PreHashedMap;, "Lsun/util/PreHashedMap<TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 110
    iput p1, p0, Lj$/sun/util/PreHashedMap;->rows:I

    .line 111
    iput p2, p0, Lj$/sun/util/PreHashedMap;->size:I

    .line 112
    iput p3, p0, Lj$/sun/util/PreHashedMap;->shift:I

    .line 113
    iput p4, p0, Lj$/sun/util/PreHashedMap;->mask:I

    .line 114
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lj$/sun/util/PreHashedMap;->init([Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method private toV(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lj$/sun/util/PreHashedMap;, "Lsun/util/PreHashedMap<TV;>;"
    return-object p1
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lj$/sun/util/PreHashedMap;, "Lsun/util/PreHashedMap<TV;>;"
    new-instance v0, Lj$/sun/util/PreHashedMap$2;

    invoke-direct {v0, p0}, Lj$/sun/util/PreHashedMap$2;-><init>(Lj$/sun/util/PreHashedMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lj$/sun/util/PreHashedMap;, "Lsun/util/PreHashedMap<TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lj$/sun/util/PreHashedMap;->shift:I

    shr-int/2addr v0, v1

    iget v1, p0, Lj$/sun/util/PreHashedMap;->mask:I

    and-int/2addr v0, v1

    .line 135
    .local v0, "h":I
    iget-object v1, p0, Lj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 136
    .local v1, "a":[Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 138
    :cond_0
    :goto_0
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-direct {p0, v2}, Lj$/sun/util/PreHashedMap;->toV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 140
    :cond_1
    array-length v3, v1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 141
    return-object v2

    .line 142
    :cond_2
    const/4 v3, 0x2

    aget-object v3, v1, v3

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    goto :goto_0
.end method

.method protected abstract init([Ljava/lang/Object;)V
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lj$/sun/util/PreHashedMap;, "Lsun/util/PreHashedMap<TV;>;"
    new-instance v0, Lj$/sun/util/PreHashedMap$1;

    invoke-direct {v0, p0}, Lj$/sun/util/PreHashedMap$1;-><init>(Lj$/sun/util/PreHashedMap;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    .local p0, "this":Lj$/sun/util/PreHashedMap;, "Lsun/util/PreHashedMap<TV;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lj$/sun/util/PreHashedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lj$/sun/util/PreHashedMap;, "Lsun/util/PreHashedMap<TV;>;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lj$/sun/util/PreHashedMap;->shift:I

    shr-int/2addr v0, v1

    iget v1, p0, Lj$/sun/util/PreHashedMap;->mask:I

    and-int/2addr v0, v1

    .line 152
    .local v0, "h":I
    iget-object v1, p0, Lj$/sun/util/PreHashedMap;->ht:[Ljava/lang/Object;

    aget-object v1, v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 153
    .local v1, "a":[Ljava/lang/Object;
    if-eqz v1, :cond_2

    .line 156
    :goto_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lj$/sun/util/PreHashedMap;->toV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 158
    .local v3, "ov":Ljava/lang/Object;, "TV;"
    aput-object p2, v1, v2

    .line 159
    return-object v3

    .line 161
    .end local v3    # "ov":Ljava/lang/Object;, "TV;"
    :cond_0
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    .line 163
    const/4 v2, 0x2

    aget-object v2, v1, v2

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
