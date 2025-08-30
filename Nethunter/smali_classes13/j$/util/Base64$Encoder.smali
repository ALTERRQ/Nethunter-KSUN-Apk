.class public Lj$/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final MIMELINEMAX:I = 0x4c

.field static final RFC2045:Lj$/util/Base64$Encoder;

.field static final RFC4648:Lj$/util/Base64$Encoder;

.field static final RFC4648_URLSAFE:Lj$/util/Base64$Encoder;

.field private static final toBase64:[C

.field private static final toBase64URL:[C


# instance fields
.field private final doPadding:Z

.field private final isURL:Z

.field private final linemax:I

.field private final newline:[B


# direct methods
.method static bridge synthetic -$$Nest$sfgettoBase64()[C
    .locals 1

    sget-object v0, Lj$/util/Base64$Encoder;->toBase64:[C

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgettoBase64URL()[C
    .locals 1

    sget-object v0, Lj$/util/Base64$Encoder;->toBase64URL:[C

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 215
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lj$/util/Base64$Encoder;->toBase64:[C

    .line 228
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lj$/util/Base64$Encoder;->toBase64URL:[C

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lj$/util/Base64$Encoder;->CRLF:[B

    .line 239
    new-instance v0, Lj$/util/Base64$Encoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Lj$/util/Base64$Encoder;->RFC4648:Lj$/util/Base64$Encoder;

    .line 240
    new-instance v0, Lj$/util/Base64$Encoder;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v4, v1, v2, v4}, Lj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Lj$/util/Base64$Encoder;->RFC4648_URLSAFE:Lj$/util/Base64$Encoder;

    .line 241
    new-instance v0, Lj$/util/Base64$Encoder;

    const/4 v1, 0x0

    sget-object v2, Lj$/util/Base64$Encoder;->CRLF:[B

    const/16 v3, 0x4c

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Lj$/util/Base64$Encoder;->RFC2045:Lj$/util/Base64$Encoder;

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Z[BIZ)V
    .locals 0
    .param p1, "isURL"    # Z
    .param p2, "newline"    # [B
    .param p3, "linemax"    # I
    .param p4, "doPadding"    # Z

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-boolean p1, p0, Lj$/util/Base64$Encoder;->isURL:Z

    .line 205
    iput-object p2, p0, Lj$/util/Base64$Encoder;->newline:[B

    .line 206
    iput p3, p0, Lj$/util/Base64$Encoder;->linemax:I

    .line 207
    iput-boolean p4, p0, Lj$/util/Base64$Encoder;->doPadding:Z

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Z[BIZLj$/util/Base64$Encoder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method private encode0([BII[B)I
    .locals 15
    .param p1, "src"    # [B
    .param p2, "off"    # I
    .param p3, "end"    # I
    .param p4, "dst"    # [B

    .line 412
    move-object v7, p0

    move/from16 v8, p3

    iget-boolean v0, v7, Lj$/util/Base64$Encoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj$/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/Base64$Encoder;->toBase64:[C

    :goto_0
    move-object v9, v0

    .line 413
    .local v9, "base64":[C
    move/from16 v0, p2

    .line 414
    .local v0, "sp":I
    sub-int v1, v8, p2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x3

    .line 415
    .local v1, "slen":I
    add-int v10, p2, v1

    .line 416
    .local v10, "sl":I
    iget v2, v7, Lj$/util/Base64$Encoder;->linemax:I

    if-lez v2, :cond_1

    iget v2, v7, Lj$/util/Base64$Encoder;->linemax:I

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_1

    .line 417
    iget v2, v7, Lj$/util/Base64$Encoder;->linemax:I

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v1, v2, 0x3

    move v11, v1

    goto :goto_1

    .line 418
    :cond_1
    move v11, v1

    .end local v1    # "slen":I
    .local v11, "slen":I
    :goto_1
    const/4 v1, 0x0

    move v12, v0

    move v13, v1

    .line 419
    .end local v0    # "sp":I
    .local v12, "sp":I
    .local v13, "dp":I
    :goto_2
    if-ge v12, v10, :cond_3

    .line 420
    add-int v0, v12, v11

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 421
    .local v14, "sl0":I
    iget-boolean v6, v7, Lj$/util/Base64$Encoder;->isURL:Z

    move-object v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v14

    move-object/from16 v4, p4

    move v5, v13

    invoke-direct/range {v0 .. v6}, Lj$/util/Base64$Encoder;->encodeBlock([BII[BIZ)V

    .line 422
    sub-int v0, v14, v12

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 423
    .local v0, "dlen":I
    add-int/2addr v13, v0

    .line 424
    move v12, v14

    .line 425
    iget v1, v7, Lj$/util/Base64$Encoder;->linemax:I

    if-ne v0, v1, :cond_2

    if-ge v12, v8, :cond_2

    .line 426
    iget-object v1, v7, Lj$/util/Base64$Encoder;->newline:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_2

    aget-byte v4, v1, v3

    .line 427
    .local v4, "b":B
    add-int/lit8 v5, v13, 0x1

    .end local v13    # "dp":I
    .local v5, "dp":I
    aput-byte v4, p4, v13

    .line 426
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    move v13, v5

    goto :goto_3

    .line 430
    .end local v0    # "dlen":I
    .end local v5    # "dp":I
    .end local v14    # "sl0":I
    .restart local v13    # "dp":I
    :cond_2
    goto :goto_2

    .line 431
    :cond_3
    if-ge v12, v8, :cond_6

    .line 432
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "sp":I
    .local v0, "sp":I
    aget-byte v1, p1, v12

    and-int/lit16 v1, v1, 0xff

    .line 433
    .local v1, "b0":I
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "dp":I
    .local v2, "dp":I
    shr-int/lit8 v3, v1, 0x2

    aget-char v3, v9, v3

    int-to-byte v3, v3

    aput-byte v3, p4, v13

    .line 434
    const/16 v3, 0x3d

    if-ne v0, v8, :cond_5

    .line 435
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "dp":I
    .restart local v13    # "dp":I
    shl-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-char v4, v9, v4

    int-to-byte v4, v4

    aput-byte v4, p4, v2

    .line 436
    iget-boolean v2, v7, Lj$/util/Base64$Encoder;->doPadding:Z

    if-eqz v2, :cond_4

    .line 437
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "dp":I
    .restart local v2    # "dp":I
    aput-byte v3, p4, v13

    .line 438
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "dp":I
    .restart local v13    # "dp":I
    aput-byte v3, p4, v2

    move v12, v0

    goto :goto_4

    .line 436
    :cond_4
    move v12, v0

    goto :goto_4

    .line 441
    .end local v13    # "dp":I
    .restart local v2    # "dp":I
    :cond_5
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "sp":I
    .restart local v12    # "sp":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 442
    .local v0, "b1":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "dp":I
    .local v4, "dp":I
    shl-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0x3f

    shr-int/lit8 v6, v0, 0x4

    or-int/2addr v5, v6

    aget-char v5, v9, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 443
    add-int/lit8 v13, v4, 0x1

    .end local v4    # "dp":I
    .restart local v13    # "dp":I
    shl-int/lit8 v2, v0, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-char v2, v9, v2

    int-to-byte v2, v2

    aput-byte v2, p4, v4

    .line 444
    iget-boolean v2, v7, Lj$/util/Base64$Encoder;->doPadding:Z

    if-eqz v2, :cond_6

    .line 445
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "dp":I
    .restart local v2    # "dp":I
    aput-byte v3, p4, v13

    move v13, v2

    .line 449
    .end local v0    # "b1":I
    .end local v1    # "b0":I
    .end local v2    # "dp":I
    .restart local v13    # "dp":I
    :cond_6
    :goto_4
    return v13
.end method

.method private encodeBlock([BII[BIZ)V
    .locals 6
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I
    .param p4, "dst"    # [B
    .param p5, "dp"    # I
    .param p6, "isURL"    # Z

    .line 399
    if-eqz p6, :cond_0

    sget-object v0, Lj$/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/Base64$Encoder;->toBase64:[C

    .line 400
    .local v0, "base64":[C
    :goto_0
    move v1, p2

    .local v1, "sp0":I
    move v2, p5

    .local v2, "dp0":I
    :goto_1
    if-ge v1, p3, :cond_1

    .line 401
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "sp0":I
    .local v3, "sp0":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sp0":I
    .local v4, "sp0":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "sp0":I
    .restart local v3    # "sp0":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 404
    .local v1, "bits":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "dp0":I
    .local v4, "dp0":I
    ushr-int/lit8 v5, v1, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 405
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "dp0":I
    .restart local v2    # "dp0":I
    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 406
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "dp0":I
    .restart local v4    # "dp0":I
    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 407
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "dp0":I
    .restart local v2    # "dp0":I
    and-int/lit8 v5, v1, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 408
    .end local v1    # "bits":I
    move v1, v3

    goto :goto_1

    .line 409
    .end local v2    # "dp0":I
    .end local v3    # "sp0":I
    :cond_1
    return-void
.end method

.method private final outLength(I)I
    .locals 4
    .param p1, "srclen"    # I

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "len":I
    iget-boolean v1, p0, Lj$/util/Base64$Encoder;->doPadding:Z

    if-eqz v1, :cond_0

    .line 246
    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .end local v0    # "len":I
    .local v1, "len":I
    goto :goto_1

    .line 248
    .end local v1    # "len":I
    .restart local v0    # "len":I
    :cond_0
    rem-int/lit8 v1, p1, 0x3

    .line 249
    .local v1, "n":I
    div-int/lit8 v2, p1, 0x3

    mul-int/lit8 v2, v2, 0x4

    if-nez v1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_0
    add-int v0, v2, v3

    move v1, v0

    .line 251
    .end local v0    # "len":I
    .local v1, "len":I
    :goto_1
    iget v0, p0, Lj$/util/Base64$Encoder;->linemax:I

    if-lez v0, :cond_2

    .line 252
    add-int/lit8 v0, v1, -0x1

    iget v2, p0, Lj$/util/Base64$Encoder;->linemax:I

    div-int/2addr v0, v2

    iget-object v2, p0, Lj$/util/Base64$Encoder;->newline:[B

    array-length v2, v2

    mul-int v0, v0, v2

    add-int/2addr v1, v0

    .line 253
    :cond_2
    return v1
.end method


# virtual methods
.method public encode([B[B)I
    .locals 3
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .line 295
    array-length v0, p1

    invoke-direct {p0, v0}, Lj$/util/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 296
    .local v0, "len":I
    array-length v1, p2

    if-lt v1, v0, :cond_0

    .line 299
    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, p2}, Lj$/util/Base64$Encoder;->encode0([BII[B)I

    move-result v1

    return v1

    .line 297
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output byte array is too small for encoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 340
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lj$/util/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 341
    .local v0, "len":I
    new-array v1, v0, [B

    .line 342
    .local v1, "dst":[B
    const/4 v2, 0x0

    .line 343
    .local v2, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 345
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 344
    invoke-direct {p0, v3, v4, v5, v1}, Lj$/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 348
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 351
    .local v3, "src":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 352
    const/4 v4, 0x0

    array-length v5, v3

    invoke-direct {p0, v3, v4, v5, v1}, Lj$/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 354
    .end local v3    # "src":[B
    :goto_0
    array-length v3, v1

    if-eq v2, v3, :cond_1

    .line 355
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 356
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    return-object v3
.end method

.method public encode([B)[B
    .locals 4
    .param p1, "src"    # [B

    .line 267
    array-length v0, p1

    invoke-direct {p0, v0}, Lj$/util/Base64$Encoder;->outLength(I)I

    move-result v0

    .line 268
    .local v0, "len":I
    new-array v1, v0, [B

    .line 269
    .local v1, "dst":[B
    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {p0, p1, v2, v3, v1}, Lj$/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 270
    .local v2, "ret":I
    array-length v3, v1

    if-eq v2, v3, :cond_0

    .line 271
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    .line 272
    :cond_0
    return-object v1
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 4
    .param p1, "src"    # [B

    .line 321
    invoke-virtual {p0, p1}, Lj$/util/Base64$Encoder;->encode([B)[B

    move-result-object v0

    .line 322
    .local v0, "encoded":[B
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v0, v2, v2, v3}, Ljava/lang/String;-><init>([BIII)V

    return-object v1
.end method

.method public withoutPadding()Lj$/util/Base64$Encoder;
    .locals 5

    .line 392
    iget-boolean v0, p0, Lj$/util/Base64$Encoder;->doPadding:Z

    if-nez v0, :cond_0

    .line 393
    return-object p0

    .line 394
    :cond_0
    new-instance v0, Lj$/util/Base64$Encoder;

    iget-boolean v1, p0, Lj$/util/Base64$Encoder;->isURL:Z

    iget-object v2, p0, Lj$/util/Base64$Encoder;->newline:[B

    iget v3, p0, Lj$/util/Base64$Encoder;->linemax:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-object v0
.end method

.method public wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 374
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v6, Lj$/util/Base64$EncOutputStream;

    iget-boolean v0, p0, Lj$/util/Base64$Encoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj$/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/Base64$Encoder;->toBase64:[C

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lj$/util/Base64$Encoder;->newline:[B

    iget v4, p0, Lj$/util/Base64$Encoder;->linemax:I

    iget-boolean v5, p0, Lj$/util/Base64$Encoder;->doPadding:Z

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lj$/util/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    return-object v6
.end method
