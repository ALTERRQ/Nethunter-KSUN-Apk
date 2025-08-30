.class Lj$/sun/nio/cs/EUC_JP$Decoder;
.super Ljava/nio/charset/CharsetDecoder;
.source "EUC_JP.java"

# interfaces
.implements Lj$/sun/nio/cs/DelegatableDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/EUC_JP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEC0201:Lj$/sun/nio/cs/SingleByte$Decoder;

.field static final DEC0208:Lj$/sun/nio/cs/DoubleByte$Decoder;

.field static final DEC0212:Lj$/sun/nio/cs/DoubleByte$Decoder;


# instance fields
.field private final dec0201:Lj$/sun/nio/cs/SingleByte$Decoder;

.field private final dec0208:Lj$/sun/nio/cs/DoubleByte$Decoder;

.field private final dec0212:Lj$/sun/nio/cs/DoubleByte$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lj$/sun/nio/cs/EUC_JP;

    .line 73
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0201;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0201;-><init>()V

    .line 74
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0201;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/SingleByte$Decoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP$Decoder;->DEC0201:Lj$/sun/nio/cs/SingleByte$Decoder;

    .line 76
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0208;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0208;-><init>()V

    .line 77
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0208;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP$Decoder;->DEC0208:Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 79
    new-instance v0, Lj$/sun/nio/cs/JIS_X_0212;

    invoke-direct {v0}, Lj$/sun/nio/cs/JIS_X_0212;-><init>()V

    .line 80
    invoke-virtual {v0}, Lj$/sun/nio/cs/JIS_X_0212;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    check-cast v0, Lj$/sun/nio/cs/DoubleByte$Decoder;

    sput-object v0, Lj$/sun/nio/cs/EUC_JP$Decoder;->DEC0212:Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 79
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 7
    .param p1, "cs"    # Ljava/nio/charset/Charset;

    .line 87
    sget-object v4, Lj$/sun/nio/cs/EUC_JP$Decoder;->DEC0201:Lj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v5, Lj$/sun/nio/cs/EUC_JP$Decoder;->DEC0208:Lj$/sun/nio/cs/DoubleByte$Decoder;

    sget-object v6, Lj$/sun/nio/cs/EUC_JP$Decoder;->DEC0212:Lj$/sun/nio/cs/DoubleByte$Decoder;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lj$/sun/nio/cs/EUC_JP$Decoder;-><init>(Ljava/nio/charset/Charset;FFLj$/sun/nio/cs/SingleByte$Decoder;Lj$/sun/nio/cs/DoubleByte$Decoder;Lj$/sun/nio/cs/DoubleByte$Decoder;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;FFLj$/sun/nio/cs/SingleByte$Decoder;Lj$/sun/nio/cs/DoubleByte$Decoder;Lj$/sun/nio/cs/DoubleByte$Decoder;)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "avgCpb"    # F
    .param p3, "maxCpb"    # F
    .param p4, "dec0201"    # Lj$/sun/nio/cs/SingleByte$Decoder;
    .param p5, "dec0208"    # Lj$/sun/nio/cs/DoubleByte$Decoder;
    .param p6, "dec0212"    # Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/charset/CharsetDecoder;-><init>(Ljava/nio/charset/Charset;FF)V

    .line 95
    iput-object p4, p0, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0201:Lj$/sun/nio/cs/SingleByte$Decoder;

    .line 96
    iput-object p5, p0, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0208:Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 97
    iput-object p6, p0, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Lj$/sun/nio/cs/DoubleByte$Decoder;

    .line 98
    return-void
.end method

.method private decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 16
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 113
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 114
    .local v4, "sa":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v0, v5

    .line 115
    .local v0, "sp":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 116
    .local v5, "sl":I
    nop

    .line 117
    if-gt v0, v5, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    move v0, v6

    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v6

    .line 120
    .local v6, "da":[C
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    .line 121
    .local v7, "dp":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->limit()I

    move-result v9

    add-int/2addr v8, v9

    .line 122
    .local v8, "dl":I
    nop

    .line 123
    if-gt v7, v8, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    move v7, v9

    .line 125
    const/4 v9, 0x0

    .local v9, "b1":I
    const/4 v10, 0x0

    .line 126
    .local v10, "b2":I
    const/4 v11, 0x0

    .line 127
    .local v11, "inputSize":I
    const v12, 0xfffd

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v7

    move v7, v0

    .line 129
    .end local v0    # "sp":I
    .local v7, "sp":I
    .local v9, "dp":I
    .local v10, "b1":I
    .local v11, "b2":I
    .local v12, "inputSize":I
    .local v13, "outputChar":C
    :goto_2
    if-ge v7, v5, :cond_9

    .line 130
    :try_start_0
    aget-byte v0, v4, v7

    and-int/lit16 v10, v0, 0xff

    .line 131
    const/4 v12, 0x1

    .line 133
    and-int/lit16 v0, v10, 0x80

    if-nez v0, :cond_2

    .line 134
    int-to-char v0, v10

    move v13, v0

    .end local v13    # "outputChar":C
    .local v0, "outputChar":C
    goto/16 :goto_3

    .line 136
    .end local v0    # "outputChar":C
    .restart local v13    # "outputChar":C
    :cond_2
    const/16 v0, 0x8f

    if-ne v10, v0, :cond_5

    .line 137
    add-int/lit8 v0, v7, 0x3

    if-le v0, v5, :cond_3

    .line 138
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 138
    return-object v0

    .line 139
    :cond_3
    add-int/lit8 v0, v7, 0x1

    :try_start_1
    aget-byte v0, v4, v0

    and-int/lit16 v10, v0, 0xff

    .line 140
    add-int/lit8 v0, v7, 0x2

    aget-byte v0, v4, v0

    and-int/lit16 v11, v0, 0xff

    .line 141
    add-int/lit8 v12, v12, 0x2

    .line 142
    iget-object v0, v1, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Lj$/sun/nio/cs/DoubleByte$Decoder;

    if-nez v0, :cond_4

    .line 143
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 143
    return-object v0

    .line 144
    :cond_4
    :try_start_2
    iget-object v0, v1, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Lj$/sun/nio/cs/DoubleByte$Decoder;

    add-int/lit8 v14, v10, -0x80

    add-int/lit8 v15, v11, -0x80

    invoke-virtual {v0, v14, v15}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v0

    move v13, v0

    .end local v13    # "outputChar":C
    .restart local v0    # "outputChar":C
    goto :goto_3

    .line 146
    .end local v0    # "outputChar":C
    .restart local v13    # "outputChar":C
    :cond_5
    add-int/lit8 v0, v7, 0x2

    if-le v0, v5, :cond_6

    .line 147
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 147
    return-object v0

    .line 148
    :cond_6
    add-int/lit8 v0, v7, 0x1

    :try_start_3
    aget-byte v0, v4, v0

    and-int/lit16 v11, v0, 0xff

    .line 149
    add-int/lit8 v12, v12, 0x1

    .line 150
    invoke-virtual {v1, v10, v11}, Lj$/sun/nio/cs/EUC_JP$Decoder;->decodeDouble(II)C

    move-result v0

    move v13, v0

    .line 153
    :goto_3
    const v0, 0xfffd

    if-ne v13, v0, :cond_7

    .line 154
    invoke-static {v12}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 154
    return-object v0

    .line 156
    :cond_7
    add-int/lit8 v0, v9, 0x1

    if-le v0, v8, :cond_8

    .line 157
    :try_start_4
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 157
    return-object v0

    .line 158
    :cond_8
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "dp":I
    .local v14, "dp":I
    :try_start_5
    aput-char v13, v6, v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    add-int/2addr v7, v12

    move v9, v14

    goto/16 :goto_2

    .line 163
    :catchall_0
    move-exception v0

    move v9, v14

    goto :goto_4

    .line 161
    .end local v14    # "dp":I
    .restart local v9    # "dp":I
    :cond_9
    :try_start_6
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 161
    return-object v0

    .line 163
    :catchall_1
    move-exception v0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v7, v14

    invoke-virtual {v2, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v14

    sub-int v14, v9, v14

    invoke-virtual {v3, v14}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    check-cast v14, Ljava/nio/CharBuffer;

    .line 165
    throw v0
.end method

.method private decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 172
    .local v0, "mark":I
    const/4 v1, 0x0

    .local v1, "b1":I
    const/4 v2, 0x0

    .line 173
    .local v2, "b2":I
    const/4 v3, 0x0

    .line 174
    .local v3, "inputSize":I
    const v4, 0xfffd

    .line 177
    .local v4, "outputChar":C
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 179
    const/4 v3, 0x1

    .line 180
    and-int/lit16 v5, v1, 0x80

    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 181
    int-to-char v4, v1

    goto :goto_1

    .line 183
    :cond_0
    const/16 v5, 0x8f

    if-ne v1, v5, :cond_3

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v7, 0x2

    if-ge v5, v7, :cond_1

    .line 185
    sget-object v5, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 185
    return-object v5

    .line 186
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 187
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 188
    add-int/lit8 v3, v3, 0x2

    .line 189
    iget-object v5, p0, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Lj$/sun/nio/cs/DoubleByte$Decoder;

    if-nez v5, :cond_2

    .line 190
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 190
    return-object v5

    .line 191
    :cond_2
    :try_start_2
    iget-object v5, p0, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0212:Lj$/sun/nio/cs/DoubleByte$Decoder;

    add-int/lit8 v7, v1, -0x80

    add-int/lit8 v8, v2, -0x80

    invoke-virtual {v5, v7, v8}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v5

    move v4, v5

    goto :goto_1

    .line 193
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_4

    .line 194
    sget-object v5, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 194
    return-object v5

    .line 195
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    .line 196
    add-int/lit8 v3, v3, 0x1

    .line 197
    invoke-virtual {p0, v1, v2}, Lj$/sun/nio/cs/EUC_JP$Decoder;->decodeDouble(II)C

    move-result v5

    move v4, v5

    .line 200
    :goto_1
    const v5, 0xfffd

    if-ne v4, v5, :cond_5

    .line 201
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 201
    return-object v5

    .line 203
    :cond_5
    :try_start_4
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v5

    if-ge v5, v6, :cond_6

    .line 204
    sget-object v5, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 210
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 204
    return-object v5

    .line 205
    :cond_6
    :try_start_5
    invoke-virtual {p2, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 206
    add-int/2addr v0, v3

    goto/16 :goto_0

    .line 208
    :cond_7
    sget-object v5, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 208
    return-object v5

    .line 210
    :catchall_0
    move-exception v5

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 211
    throw v5
.end method


# virtual methods
.method protected decodeDouble(II)C
    .locals 3
    .param p1, "byte1"    # I
    .param p2, "byte2"    # I

    .line 102
    const/16 v0, 0x8e

    if-ne p1, v0, :cond_1

    .line 103
    const/16 v0, 0x80

    if-ge p2, v0, :cond_0

    .line 104
    const v0, 0xfffd

    return v0

    .line 105
    :cond_0
    iget-object v0, p0, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0201:Lj$/sun/nio/cs/SingleByte$Decoder;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Lj$/sun/nio/cs/SingleByte$Decoder;->decode(I)C

    move-result v0

    return v0

    .line 107
    :cond_1
    iget-object v0, p0, Lj$/sun/nio/cs/EUC_JP$Decoder;->dec0208:Lj$/sun/nio/cs/DoubleByte$Decoder;

    add-int/lit8 v1, p1, -0x80

    add-int/lit8 v2, p2, -0x80

    invoke-virtual {v0, v1, v2}, Lj$/sun/nio/cs/DoubleByte$Decoder;->decodeDouble(II)C

    move-result v0

    return v0
.end method

.method public decodeLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/CharBuffer;

    .line 216
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/EUC_JP$Decoder;->decodeArrayLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    invoke-direct {p0, p1, p2}, Lj$/sun/nio/cs/EUC_JP$Decoder;->decodeBufferLoop(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;
    .locals 1
    .param p1, "out"    # Ljava/nio/CharBuffer;

    .line 225
    invoke-super {p0, p1}, Ljava/nio/charset/CharsetDecoder;->implFlush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method

.method public implReset()V
    .locals 0

    .line 222
    invoke-super {p0}, Ljava/nio/charset/CharsetDecoder;->implReset()V

    .line 223
    return-void
.end method
