.class Lj$/util/Base64$EncOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncOutputStream"
.end annotation


# instance fields
.field private b0:I

.field private b1:I

.field private b2:I

.field private final base64:[C

.field private buf:[B

.field private closed:Z

.field private final doPadding:Z

.field private leftover:I

.field private final linemax:I

.field private linepos:I

.field private final newline:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[C[BIZ)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "base64"    # [C
    .param p3, "newline"    # [B
    .param p4, "linemax"    # I
    .param p5, "doPadding"    # Z

    .line 799
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 786
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    .line 788
    iput-boolean v0, p0, Lj$/util/Base64$EncOutputStream;->closed:Z

    .line 794
    iput v0, p0, Lj$/util/Base64$EncOutputStream;->linepos:I

    .line 800
    iput-object p2, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    .line 801
    iput-object p3, p0, Lj$/util/Base64$EncOutputStream;->newline:[B

    .line 802
    iput p4, p0, Lj$/util/Base64$EncOutputStream;->linemax:I

    .line 803
    iput-boolean p5, p0, Lj$/util/Base64$EncOutputStream;->doPadding:Z

    .line 804
    if-gtz p4, :cond_0

    const/16 v0, 0x1fbc

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    new-array v0, v0, [B

    iput-object v0, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    .line 805
    return-void
.end method

.method private checkNewline()V
    .locals 2

    .line 815
    iget v0, p0, Lj$/util/Base64$EncOutputStream;->linepos:I

    iget v1, p0, Lj$/util/Base64$EncOutputStream;->linemax:I

    if-ne v0, v1, :cond_0

    .line 816
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lj$/util/Base64$EncOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/Base64$EncOutputStream;->linepos:I

    .line 819
    :cond_0
    return-void
.end method

.method private writeb4(CCCC)V
    .locals 4
    .param p1, "b1"    # C
    .param p2, "b2"    # C
    .param p3, "b3"    # C
    .param p4, "b4"    # C

    .line 822
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 823
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x1

    int-to-byte v3, p2

    aput-byte v3, v0, v1

    .line 824
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x2

    int-to-byte v3, p3

    aput-byte v3, v0, v1

    .line 825
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v1, 0x3

    int-to-byte v3, p4

    aput-byte v3, v0, v1

    .line 826
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 827
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 887
    iget-boolean v0, p0, Lj$/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_2

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/Base64$EncOutputStream;->closed:Z

    .line 889
    iget v1, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-ne v1, v0, :cond_0

    .line 890
    invoke-direct {p0}, Lj$/util/Base64$EncOutputStream;->checkNewline()V

    .line 891
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lj$/util/Base64$EncOutputStream;->b0:I

    shr-int/lit8 v3, v4, 0x2

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 892
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Lj$/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 893
    iget-boolean v0, p0, Lj$/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 895
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 897
    :cond_0
    iget v0, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v3, :cond_1

    .line 898
    invoke-direct {p0}, Lj$/util/Base64$EncOutputStream;->checkNewline()V

    .line 899
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lj$/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v4, v3

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 900
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lj$/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Lj$/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 901
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lj$/util/Base64$EncOutputStream;->b1:I

    shl-int/lit8 v3, v4, 0x2

    and-int/lit8 v3, v3, 0x3f

    aget-char v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 902
    iget-boolean v0, p0, Lj$/util/Base64$EncOutputStream;->doPadding:Z

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 906
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    .line 907
    iget-object v0, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 909
    :cond_2
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I

    .line 809
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 810
    .local v1, "buf":[B
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 811
    invoke-virtual {p0, v1, v3, v0}, Lj$/util/Base64$EncOutputStream;->write([BII)V

    .line 812
    return-void
.end method

.method public write([BII)V
    .locals 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 831
    iget-boolean v0, p0, Lj$/util/Base64$EncOutputStream;->closed:Z

    if-nez v0, :cond_a

    .line 833
    if-ltz p2, :cond_9

    if-ltz p3, :cond_9

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_9

    .line 835
    if-nez p3, :cond_0

    .line 836
    return-void

    .line 837
    :cond_0
    iget v0, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 838
    iget v0, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    if-ne v0, v2, :cond_2

    .line 839
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lj$/util/Base64$EncOutputStream;->b1:I

    .line 840
    add-int/lit8 p3, p3, -0x1

    .line 841
    if-nez p3, :cond_1

    .line 842
    iget p2, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    add-int/2addr p2, v2

    iput p2, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    .line 843
    return-void

    .line 841
    :cond_1
    move p2, v0

    .line 846
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .restart local v0    # "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lj$/util/Base64$EncOutputStream;->b2:I

    .line 847
    add-int/lit8 p3, p3, -0x1

    .line 848
    invoke-direct {p0}, Lj$/util/Base64$EncOutputStream;->checkNewline()V

    .line 849
    iget-object p2, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v3, p0, Lj$/util/Base64$EncOutputStream;->b0:I

    shr-int/2addr v3, v1

    aget-char p2, p2, v3

    iget-object v3, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v4, p0, Lj$/util/Base64$EncOutputStream;->b0:I

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    iget v5, p0, Lj$/util/Base64$EncOutputStream;->b1:I

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-char v3, v3, v4

    iget-object v4, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v5, p0, Lj$/util/Base64$EncOutputStream;->b1:I

    shl-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x3f

    iget v6, p0, Lj$/util/Base64$EncOutputStream;->b2:I

    shr-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    aget-char v4, v4, v5

    iget-object v5, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    iget v6, p0, Lj$/util/Base64$EncOutputStream;->b2:I

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    invoke-direct {p0, p2, v3, v4, v5}, Lj$/util/Base64$EncOutputStream;->writeb4(CCCC)V

    .line 853
    iget p2, p0, Lj$/util/Base64$EncOutputStream;->linepos:I

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lj$/util/Base64$EncOutputStream;->linepos:I

    move p2, v0

    .line 855
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_3
    div-int/lit8 v0, p3, 0x3

    .line 856
    .local v0, "nBits24":I
    mul-int/lit8 v3, v0, 0x3

    sub-int v3, p3, v3

    iput v3, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    .line 858
    :goto_0
    if-lez v0, :cond_6

    .line 859
    invoke-direct {p0}, Lj$/util/Base64$EncOutputStream;->checkNewline()V

    .line 860
    iget v3, p0, Lj$/util/Base64$EncOutputStream;->linemax:I

    if-gtz v3, :cond_4

    iget-object v3, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    array-length v3, v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    array-length v3, v3

    iget v4, p0, Lj$/util/Base64$EncOutputStream;->linepos:I

    sub-int/2addr v3, v4

    .line 861
    .local v3, "dl":I
    :goto_1
    div-int/lit8 v4, v3, 0x4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, p2

    .line 862
    .local v4, "sl":I
    const/4 v5, 0x0

    .line 863
    .local v5, "dp":I
    move v6, p2

    .local v6, "sp":I
    :goto_2
    if-ge v6, v4, :cond_5

    .line 864
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "sp":I
    .local v7, "sp":I
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "sp":I
    .local v8, "sp":I
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "sp":I
    .restart local v7    # "sp":I
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v6, v8

    .line 867
    .local v6, "bits":I
    iget-object v8, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "dp":I
    .local v9, "dp":I
    iget-object v10, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    .line 868
    iget-object v5, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .local v8, "dp":I
    iget-object v10, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 869
    iget-object v5, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dp":I
    .restart local v9    # "dp":I
    iget-object v10, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    ushr-int/lit8 v11, v6, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v8

    .line 870
    iget-object v5, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "dp":I
    .restart local v8    # "dp":I
    iget-object v10, p0, Lj$/util/Base64$EncOutputStream;->base64:[C

    and-int/lit8 v11, v6, 0x3f

    aget-char v10, v10, v11

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 871
    .end local v6    # "bits":I
    move v6, v7

    move v5, v8

    goto :goto_2

    .line 872
    .end local v7    # "sp":I
    .end local v8    # "dp":I
    .restart local v5    # "dp":I
    :cond_5
    iget-object v6, p0, Lj$/util/Base64$EncOutputStream;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Lj$/util/Base64$EncOutputStream;->buf:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 873
    move p2, v4

    .line 874
    iget v6, p0, Lj$/util/Base64$EncOutputStream;->linepos:I

    add-int/2addr v6, v5

    iput v6, p0, Lj$/util/Base64$EncOutputStream;->linepos:I

    .line 875
    div-int/lit8 v6, v5, 0x4

    sub-int/2addr v0, v6

    .line 876
    .end local v3    # "dl":I
    .end local v4    # "sl":I
    .end local v5    # "dp":I
    goto/16 :goto_0

    .line 877
    :cond_6
    iget v3, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    if-ne v3, v2, :cond_7

    .line 878
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lj$/util/Base64$EncOutputStream;->b0:I

    move p2, v1

    goto :goto_3

    .line 879
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_7
    iget v2, p0, Lj$/util/Base64$EncOutputStream;->leftover:I

    if-ne v2, v1, :cond_8

    .line 880
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lj$/util/Base64$EncOutputStream;->b0:I

    .line 881
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lj$/util/Base64$EncOutputStream;->b1:I

    .line 883
    :cond_8
    :goto_3
    return-void

    .line 834
    .end local v0    # "nBits24":I
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 832
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
