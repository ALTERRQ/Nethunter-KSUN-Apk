.class public Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;
.super Lj$/sun/nio/cs/DoubleByte$Encoder;
.source "DoubleByte.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/DoubleByte;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder_EBCDIC"
.end annotation


# static fields
.field static final DBCS:I = 0x1

.field static final SBCS:I = 0x0

.field static final SI:B = 0xft

.field static final SO:B = 0xet


# instance fields
.field protected currentState:I


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;[C[CZ)V
    .locals 9
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "c2b"    # [C
    .param p3, "c2bIndex"    # [C
    .param p4, "isASCIICompatible"    # Z

    .line 869
    const/4 v0, 0x1

    new-array v5, v0, [B

    const/4 v0, 0x0

    const/16 v1, 0x6f

    aput-byte v1, v5, v0

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40a00000    # 5.0f

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lj$/sun/nio/cs/DoubleByte$Encoder;-><init>(Ljava/nio/charset/Charset;FF[B[C[CZ)V

    .line 865
    iput v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 870
    return-void
.end method


# virtual methods
.method public encode([CII[B)I
    .locals 8
    .param p1, "src"    # [C
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 986
    .local v1, "sl":I
    :goto_0
    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v1, :cond_6

    .line 987
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "sp":I
    .local v5, "sp":I
    aget-char p2, p1, p2

    .line 988
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v6

    .line 990
    .local v6, "bb":I
    const v7, 0xfffd

    if-ne v6, v7, :cond_2

    .line 991
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v5, v1, :cond_0

    aget-char v2, p1, v5

    .line 992
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 993
    add-int/lit8 v5, v5, 0x1

    .line 995
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .local v2, "dp":I
    iget-object v7, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v7, v3

    aput-byte v3, p4, v0

    .line 996
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    array-length v0, v0

    if-le v0, v4, :cond_1

    .line 997
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    iget-object v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v3, v4

    aput-byte v3, p4, v2

    move p2, v5

    goto :goto_0

    .line 996
    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    :cond_1
    move v0, v2

    move p2, v5

    goto :goto_0

    .line 1000
    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    :cond_2
    const/16 v7, 0xff

    if-le v6, v7, :cond_4

    .line 1001
    iget v2, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v2, :cond_3

    .line 1002
    iput v4, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1003
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    const/16 v3, 0xe

    aput-byte v3, p4, v0

    move v0, v2

    .line 1005
    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    .line 1006
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    int-to-byte v3, v6

    aput-byte v3, p4, v2

    goto :goto_1

    .line 1008
    :cond_4
    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v7, v4, :cond_5

    .line 1009
    iput v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1010
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .local v3, "dp":I
    aput-byte v2, p4, v0

    move v0, v3

    .line 1012
    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    :cond_5
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    int-to-byte v3, v6

    aput-byte v3, p4, v0

    move v0, v2

    .line 1014
    .end local v2    # "dp":I
    .end local v6    # "bb":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_1
    move p2, v5

    goto :goto_0

    .line 1016
    .end local v5    # "sp":I
    .local p2, "sp":I
    :cond_6
    iget v5, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v5, v4, :cond_7

    .line 1017
    iput v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1018
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .restart local v3    # "dp":I
    aput-byte v2, p4, v0

    move v0, v3

    .line 1020
    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    :cond_7
    return v0
.end method

.method protected encodeArrayLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 11
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 887
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    .line 888
    .local v0, "sa":[C
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 889
    .local v1, "sp":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    add-int/2addr v2, v3

    .line 890
    .local v2, "sl":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 891
    .local v3, "da":[B
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 892
    .local v4, "dp":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 895
    .local v5, "dl":I
    :goto_0
    if-ge v1, v2, :cond_a

    .line 896
    :try_start_0
    aget-char v6, v0, v1

    .line 897
    .local v6, "c":C
    invoke-virtual {p0, v6}, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v7

    .line 898
    .local v7, "bb":I
    const v8, 0xfffd

    const/4 v9, 0x1

    if-ne v7, v8, :cond_2

    .line 899
    invoke-static {v6}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 900
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp()Lj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v8

    invoke-virtual {v8, v6, v0, v1, v2}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(C[CII)I

    move-result v8

    if-gez v8, :cond_0

    .line 901
    iget-object v8, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 933
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 901
    return-object v8

    .line 902
    :cond_0
    :try_start_1
    iget-object v8, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v8}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 933
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 902
    return-object v8

    .line 904
    :cond_1
    :try_start_2
    invoke-static {v9}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 933
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 904
    return-object v8

    .line 906
    :cond_2
    const/16 v8, 0xff

    if-le v7, v8, :cond_6

    .line 907
    :try_start_3
    iget v8, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v8, :cond_4

    .line 908
    sub-int v8, v5, v4

    if-ge v8, v9, :cond_3

    .line 909
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 933
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 909
    return-object v8

    .line 910
    :cond_3
    :try_start_4
    iput v9, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 911
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "dp":I
    .local v8, "dp":I
    const/16 v9, 0xe

    :try_start_5
    aput-byte v9, v3, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v4, v8

    .line 913
    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    :cond_4
    sub-int v8, v5, v4

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    .line 914
    :try_start_6
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 933
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 914
    return-object v8

    .line 915
    :cond_5
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "dp":I
    .restart local v8    # "dp":I
    shr-int/lit8 v9, v7, 0x8

    int-to-byte v9, v9

    :try_start_7
    aput-byte v9, v3, v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 916
    add-int/lit8 v4, v8, 0x1

    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    int-to-byte v9, v7

    :try_start_8
    aput-byte v9, v3, v8

    goto :goto_1

    .line 918
    :cond_6
    iget v8, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v8, v9, :cond_8

    .line 919
    sub-int v8, v5, v4

    if-ge v8, v9, :cond_7

    .line 920
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 933
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 920
    return-object v8

    .line 921
    :cond_7
    const/4 v8, 0x0

    :try_start_9
    iput v8, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 922
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "dp":I
    .restart local v8    # "dp":I
    const/16 v10, 0xf

    :try_start_a
    aput-byte v10, v3, v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v4, v8

    .line 924
    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    :cond_8
    sub-int v8, v5, v4

    if-ge v8, v9, :cond_9

    .line 925
    :try_start_b
    sget-object v8, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 933
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v1, v9

    invoke-virtual {p1, v9}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 925
    return-object v8

    .line 926
    :cond_9
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "dp":I
    .restart local v8    # "dp":I
    int-to-byte v9, v7

    :try_start_c
    aput-byte v9, v3, v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move v4, v8

    .line 929
    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    :goto_1
    nop

    .end local v6    # "c":C
    .end local v7    # "bb":I
    add-int/lit8 v1, v1, 0x1

    .line 930
    goto/16 :goto_0

    .line 933
    .end local v4    # "dp":I
    .restart local v8    # "dp":I
    :catchall_0
    move-exception v6

    move v4, v8

    goto :goto_2

    .line 931
    .end local v8    # "dp":I
    .restart local v4    # "dp":I
    :cond_a
    :try_start_d
    sget-object v6, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 933
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 931
    return-object v6

    .line 933
    :catchall_1
    move-exception v6

    :goto_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/CharBuffer;

    .line 934
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 935
    throw v6
.end method

.method protected encodeBufferLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 5
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 939
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    .line 941
    .local v0, "mark":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 942
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    .line 943
    .local v1, "c":C
    invoke-virtual {p0, v1}, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v2

    .line 944
    .local v2, "bb":I
    const v3, 0xfffd

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 945
    invoke-static {v1}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 946
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp()Lj$/sun/nio/cs/Surrogate$Parser;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lj$/sun/nio/cs/Surrogate$Parser;->parse(CLjava/nio/CharBuffer;)I

    move-result v3

    if-gez v3, :cond_0

    .line 947
    iget-object v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Lj$/sun/nio/cs/Surrogate$Parser;->error()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 947
    return-object v3

    .line 948
    :cond_0
    :try_start_1
    iget-object v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->sgp:Lj$/sun/nio/cs/Surrogate$Parser;

    invoke-virtual {v3}, Lj$/sun/nio/cs/Surrogate$Parser;->unmappableResult()Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 948
    return-object v3

    .line 950
    :cond_1
    :try_start_2
    invoke-static {v4}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 978
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 950
    return-object v3

    .line 952
    :cond_2
    const/16 v3, 0xff

    if-le v2, v3, :cond_6

    .line 953
    :try_start_3
    iget v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v3, :cond_4

    .line 954
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_3

    .line 955
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 978
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 955
    return-object v3

    .line 956
    :cond_3
    :try_start_4
    iput v4, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 957
    const/16 v3, 0xe

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 959
    :cond_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 960
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 978
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 960
    return-object v3

    .line 961
    :cond_5
    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    :try_start_5
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 962
    int-to-byte v3, v2

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 964
    :cond_6
    iget v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v3, v4, :cond_8

    .line 965
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_7

    .line 966
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 978
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 966
    return-object v3

    .line 967
    :cond_7
    const/4 v3, 0x0

    :try_start_6
    iput v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 968
    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 970
    :cond_8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v4, :cond_9

    .line 971
    sget-object v3, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 978
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/CharBuffer;

    .line 971
    return-object v3

    .line 972
    :cond_9
    int-to-byte v3, v2

    :try_start_7
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 974
    :goto_1
    nop

    .end local v1    # "c":C
    .end local v2    # "bb":I
    add-int/lit8 v0, v0, 0x1

    .line 975
    goto/16 :goto_0

    .line 976
    :cond_a
    sget-object v1, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 978
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 976
    return-object v1

    .line 978
    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 979
    throw v1
.end method

.method public encodeFromLatin1([BII[B)I
    .locals 9
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 1027
    .local v1, "sl":I
    :goto_0
    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v1, :cond_5

    .line 1028
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "sp":I
    .local v5, "sp":I
    aget-byte p2, p1, p2

    const/16 v6, 0xff

    and-int/2addr p2, v6

    int-to-char p2, p2

    .line 1029
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v7

    .line 1030
    .local v7, "bb":I
    const v8, 0xfffd

    if-ne v7, v8, :cond_1

    .line 1032
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .local v2, "dp":I
    iget-object v6, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v6, v3

    aput-byte v3, p4, v0

    .line 1033
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    array-length v0, v0

    if-le v0, v4, :cond_0

    .line 1034
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    iget-object v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v3, v4

    aput-byte v3, p4, v2

    move p2, v5

    goto :goto_0

    .line 1033
    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    :cond_0
    move v0, v2

    move p2, v5

    goto :goto_0

    .line 1037
    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    :cond_1
    if-le v7, v6, :cond_3

    .line 1038
    iget v2, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v2, :cond_2

    .line 1039
    iput v4, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1040
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    const/16 v3, 0xe

    aput-byte v3, p4, v0

    move v0, v2

    .line 1042
    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    .line 1043
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    int-to-byte v3, v7

    aput-byte v3, p4, v2

    goto :goto_1

    .line 1045
    :cond_3
    iget v6, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v6, v4, :cond_4

    .line 1046
    iput v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1047
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .local v3, "dp":I
    aput-byte v2, p4, v0

    move v0, v3

    .line 1049
    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    :cond_4
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    int-to-byte v3, v7

    aput-byte v3, p4, v0

    move v0, v2

    .line 1051
    .end local v2    # "dp":I
    .end local v7    # "bb":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_1
    move p2, v5

    goto :goto_0

    .line 1052
    .end local v5    # "sp":I
    .local p2, "sp":I
    :cond_5
    iget v5, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v5, v4, :cond_6

    .line 1053
    iput v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1054
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .restart local v3    # "dp":I
    aput-byte v2, p4, v0

    move v0, v3

    .line 1056
    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    :cond_6
    return v0
.end method

.method public encodeFromUTF16([BII[B)I
    .locals 8
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "len"    # I
    .param p4, "dst"    # [B

    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, "dp":I
    add-int v1, p2, p3

    .line 1063
    .local v1, "sl":I
    :goto_0
    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v1, :cond_6

    .line 1064
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "sp":I
    .local v5, "sp":I
    invoke-static {p1, p2}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result p2

    .line 1065
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->encodeChar(C)I

    move-result v6

    .line 1066
    .local v6, "bb":I
    const v7, 0xfffd

    if-ne v6, v7, :cond_2

    .line 1067
    invoke-static {p2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-ge v5, v1, :cond_0

    .line 1068
    invoke-static {p1, v5}, Lj$/sun/nio/cs/StringUTF16;->getChar([BI)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    add-int/lit8 v5, v5, 0x1

    .line 1071
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .local v2, "dp":I
    iget-object v7, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v7, v3

    aput-byte v3, p4, v0

    .line 1072
    iget-object v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    array-length v0, v0

    if-le v0, v4, :cond_1

    .line 1073
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    iget-object v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->repl:[B

    aget-byte v3, v3, v4

    aput-byte v3, p4, v2

    move p2, v5

    goto :goto_0

    .line 1072
    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    :cond_1
    move v0, v2

    move p2, v5

    goto :goto_0

    .line 1076
    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    :cond_2
    const/16 v7, 0xff

    if-le v6, v7, :cond_4

    .line 1077
    iget v2, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-nez v2, :cond_3

    .line 1078
    iput v4, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1079
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    const/16 v3, 0xe

    aput-byte v3, p4, v0

    move v0, v2

    .line 1081
    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    shr-int/lit8 v3, v6, 0x8

    int-to-byte v3, v3

    aput-byte v3, p4, v0

    .line 1082
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "dp":I
    .restart local v0    # "dp":I
    int-to-byte v3, v6

    aput-byte v3, p4, v2

    goto :goto_1

    .line 1084
    :cond_4
    iget v7, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v7, v4, :cond_5

    .line 1085
    iput v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1086
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .local v3, "dp":I
    aput-byte v2, p4, v0

    move v0, v3

    .line 1088
    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    :cond_5
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "dp":I
    .restart local v2    # "dp":I
    int-to-byte v3, v6

    aput-byte v3, p4, v0

    move v0, v2

    .line 1090
    .end local v2    # "dp":I
    .end local v6    # "bb":I
    .end local p2    # "c":C
    .restart local v0    # "dp":I
    :goto_1
    move p2, v5

    goto :goto_0

    .line 1091
    .end local v5    # "sp":I
    .local p2, "sp":I
    :cond_6
    iget v5, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    if-ne v5, v4, :cond_7

    .line 1092
    iput v3, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 1093
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "dp":I
    .restart local v3    # "dp":I
    aput-byte v2, p4, v0

    move v0, v3

    .line 1095
    .end local v3    # "dp":I
    .restart local v0    # "dp":I
    :cond_7
    return v0
.end method

.method protected implFlush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 2
    .param p1, "out"    # Ljava/nio/ByteBuffer;

    .line 877
    iget v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 878
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 879
    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0

    .line 880
    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 882
    :cond_1
    invoke-virtual {p0}, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->implReset()V

    .line 883
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method protected implReset()V
    .locals 1

    .line 873
    const/4 v0, 0x0

    iput v0, p0, Lj$/sun/nio/cs/DoubleByte$Encoder_EBCDIC;->currentState:I

    .line 874
    return-void
.end method
