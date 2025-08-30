.class Lj$/sun/nio/cs/ISO_8859_1$Encoder;
.super Ljava/nio/charset/CharsetEncoder;
.source "ISO_8859_1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/ISO_8859_1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sgp:Lj$/sun/nio/cs/Surrogate$Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    const-class v0, Lj$/sun/nio/cs/ISO_8859_1;

    return-void
.end method

.method private constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 131
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 142
    new-instance v0, Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-direct {v0}, Lj$/sun/nio/cs/Surrogate$Parser;-><init>()V

    iput-object v0, p0, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Lj$/sun/nio/cs/ISO_8859_1$Encoder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/sun/nio/cs/ISO_8859_1$Encoder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 17
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 195
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v4

    .line 196
    .local v4, "sa":[C
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v5

    .line 197
    .local v5, "soff":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    add-int/2addr v0, v5

    .line 198
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    add-int/2addr v6, v5

    .line 199
    .local v6, "sl":I
    nop

    .line 200
    if-gt v0, v6, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v6

    .line 201
    .end local v0    # "sp":I
    .local v7, "sp":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 202
    .local v8, "da":[B
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    .line 203
    .local v9, "doff":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v9

    .line 204
    .local v0, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    add-int/2addr v10, v9

    .line 205
    .local v10, "dl":I
    nop

    .line 206
    if-gt v0, v10, :cond_1

    move v11, v0

    goto :goto_1

    :cond_1
    move v11, v10

    .line 207
    .end local v0    # "dp":I
    .local v11, "dp":I
    :goto_1
    sub-int v12, v10, v11

    .line 208
    .local v12, "dlen":I
    sub-int v13, v6, v7

    .line 209
    .local v13, "slen":I
    if-ge v12, v13, :cond_2

    move v0, v12

    goto :goto_2

    :cond_2
    move v0, v13

    :goto_2
    move v14, v0

    .line 211
    .local v14, "len":I
    :try_start_0
    invoke-static {v4, v7, v8, v11, v14}, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->encodeISOArray([CI[BII)I

    move-result v0

    .line 212
    .local v0, "ret":I
    add-int/2addr v7, v0

    .line 213
    add-int/2addr v11, v0

    .line 214
    if-eq v0, v14, :cond_4

    .line 215
    iget-object v15, v1, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    move/from16 v16, v0

    .end local v0    # "ret":I
    .local v16, "ret":I
    aget-char v0, v4, v7

    invoke-virtual {v15, v0, v4, v7, v6}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v0

    if-gez v0, :cond_3

    .line 216
    iget-object v0, v1, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v0}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 224
    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 216
    return-object v0

    .line 217
    :cond_3
    :try_start_1
    iget-object v0, v1, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v0}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 224
    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 217
    return-object v0

    .line 219
    .end local v16    # "ret":I
    .restart local v0    # "ret":I
    :cond_4
    move/from16 v16, v0

    .end local v0    # "ret":I
    .restart local v16    # "ret":I
    if-ge v14, v13, :cond_5

    .line 220
    :try_start_2
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 224
    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 220
    return-object v0

    .line 221
    :cond_5
    :try_start_3
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 224
    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 221
    return-object v0

    .line 223
    .end local v16    # "ret":I
    :catchall_0
    move-exception v0

    sub-int v15, v7, v5

    invoke-virtual {v2, v15}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/CharBuffer;

    .line 224
    sub-int v15, v11, v9

    invoke-virtual {v3, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    check-cast v15, Ljava/nio/ByteBuffer;

    .line 225
    throw v0
.end method

.method private encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 4
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 231
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 233
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 235
    .local v1, "c":C
    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    .line 236
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    sget-object v2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 237
    return-object v2

    .line 238
    :cond_0
    int-to-byte v2, v1

    :try_start_1
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 240
    goto :goto_0

    .line 242
    :cond_1
    iget-object v2, p0, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2, v1, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v2

    if-gez v2, :cond_2

    .line 243
    iget-object v2, p0, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 243
    return-object v2

    .line 244
    :cond_2
    :try_start_2
    iget-object v2, p0, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v2}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/CharBuffer;

    .line 244
    return-object v2

    .line 246
    .end local v1    # "c":C
    :cond_3
    :try_start_3
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 246
    return-object v1

    .line 248
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 249
    throw v1
.end method

.method private static encodeISOArray([CI[BII)I
    .locals 1
    .param p0, "sa"    # [C
    .param p1, "sp"    # I
    .param p2, "da"    # [B
    .param p3, "dp"    # I
    .param p4, "len"    # I

    .line 147
    if-gtz p4, :cond_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->encodeISOArrayCheck([CI[BII)V

    .line 151
    invoke-static {p0, p1, p2, p3, p4}, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->implEncodeISOArray([CI[BII)I

    move-result v0

    return v0
.end method

.method private static encodeISOArrayCheck([CI[BII)V
    .locals 3
    .param p0, "sa"    # [C
    .param p1, "sp"    # I
    .param p2, "da"    # [B
    .param p3, "dp"    # I
    .param p4, "len"    # I

    .line 170
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    if-ltz p1, :cond_3

    array-length v0, p0

    if-ge p1, v0, :cond_3

    .line 177
    if-ltz p3, :cond_2

    array-length v0, p2

    if-ge p3, v0, :cond_2

    .line 181
    add-int v0, p1, p4

    add-int/lit8 v0, v0, -0x1

    .line 182
    .local v0, "endIndexSP":I
    if-ltz v0, :cond_1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 186
    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x1

    .line 187
    .local v1, "endIndexDP":I
    if-ltz v1, :cond_0

    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 190
    return-void

    .line 188
    :cond_0
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    .line 183
    .end local v1    # "endIndexDP":I
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 178
    .end local v0    # "endIndexSP":I
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 174
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method private static implEncodeISOArray([CI[BII)I
    .locals 4
    .param p0, "sa"    # [C
    .param p1, "sp"    # I
    .param p2, "da"    # [B
    .param p3, "dp"    # I
    .param p4, "len"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 160
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "sp":I
    .local v1, "sp":I
    aget-char p1, p0, p1

    .line 161
    .local p1, "c":C
    const/16 v2, 0xff

    if-le p1, v2, :cond_0

    .line 162
    move p1, v1

    goto :goto_1

    .line 163
    :cond_0
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "dp":I
    .local v2, "dp":I
    int-to-byte v3, p1

    aput-byte v3, p2, p3

    .line 159
    .end local p1    # "c":C
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p3, v2

    goto :goto_0

    .line 165
    .end local v1    # "sp":I
    .end local v2    # "dp":I
    .local p1, "sp":I
    .restart local p3    # "dp":I
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public canEncode(C)Z
    .locals 1
    .param p1, "c"    # C

    .line 135
    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 258
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/ISO_8859_1$Encoder;->encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public isLegalReplacement([B)Z
    .locals 1
    .param p1, "repl"    # [B

    .line 139
    const/4 v0, 0x1

    return v0
.end method
