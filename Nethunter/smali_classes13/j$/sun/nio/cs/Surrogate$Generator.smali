.class public Lj$/sun/nio/cs/Surrogate$Generator;
.super Ljava/lang/Object;
.source "Surrogate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/Surrogate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Generator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private error:Ljava/nio/charset/CoderResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    const-class v0, Lj$/sun/nio/cs/Surrogate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 260
    return-void
.end method


# virtual methods
.method public error()Ljava/nio/charset/CoderResult;
    .locals 1

    .line 269
    nop

    .line 270
    iget-object v0, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method public generate(IILjava/nio/CharBuffer;)I
    .locals 5
    .param p1, "uc"    # I
    .param p2, "len"    # I
    .param p3, "dst"    # Ljava/nio/CharBuffer;

    .line 288
    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 289
    int-to-char v0, p1

    .line 290
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-static {p2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 292
    return v2

    .line 294
    :cond_0
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 295
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 296
    return v2

    .line 298
    :cond_1
    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 299
    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 300
    return v4

    .line 301
    .end local v0    # "c":C
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {p3}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    .line 303
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 304
    return v2

    .line 306
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 307
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 308
    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 309
    return v3

    .line 311
    :cond_4
    invoke-static {p2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 312
    return v2
.end method

.method public generate(II[CII)I
    .locals 5
    .param p1, "uc"    # I
    .param p2, "len"    # I
    .param p3, "da"    # [C
    .param p4, "dp"    # I
    .param p5, "dl"    # I

    .line 333
    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 334
    int-to-char v0, p1

    .line 335
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    invoke-static {p2}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 337
    return v2

    .line 339
    :cond_0
    sub-int v3, p5, p4

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 340
    sget-object v1, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 341
    return v2

    .line 343
    :cond_1
    aput-char v0, p3, p4

    .line 344
    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 345
    return v4

    .line 346
    .end local v0    # "c":C
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    sub-int v0, p5, p4

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    .line 348
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 349
    return v2

    .line 351
    :cond_3
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    aput-char v0, p3, p4

    .line 352
    add-int/lit8 v0, p4, 0x1

    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v2

    aput-char v2, p3, v0

    .line 353
    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 354
    return v3

    .line 356
    :cond_4
    invoke-static {p2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Generator;->error:Ljava/nio/charset/CoderResult;

    .line 357
    return v2
.end method
