.class Lj$/util/Base64$DecInputStream;
.super Ljava/io/InputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecInputStream"
.end annotation


# instance fields
.field private final base64:[I

.field private bits:I

.field private closed:Z

.field private eof:Z

.field private final is:Ljava/io/InputStream;

.field private final isMIME:Z

.field private nextin:I

.field private nextout:I

.field private sbBuf:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;[IZ)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "base64"    # [I
    .param p3, "isMIME"    # Z

    .line 928
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 920
    const/4 v0, 0x0

    iput v0, p0, Lj$/util/Base64$DecInputStream;->bits:I

    .line 921
    const/16 v1, 0x12

    iput v1, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    .line 923
    const/4 v1, -0x8

    iput v1, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    .line 925
    iput-boolean v0, p0, Lj$/util/Base64$DecInputStream;->eof:Z

    .line 926
    iput-boolean v0, p0, Lj$/util/Base64$DecInputStream;->closed:Z

    .line 934
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lj$/util/Base64$DecInputStream;->sbBuf:[B

    .line 929
    iput-object p1, p0, Lj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 930
    iput-object p2, p0, Lj$/util/Base64$DecInputStream;->base64:[I

    .line 931
    iput-boolean p3, p0, Lj$/util/Base64$DecInputStream;->isMIME:Z

    .line 932
    return-void
.end method

.method private eof([BIII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "oldOff"    # I

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/Base64$DecInputStream;->eof:Z

    .line 945
    iget v1, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    .line 946
    iget v1, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    .line 950
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    iget v2, p0, Lj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 951
    iget p2, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    if-nez p2, :cond_1

    .line 952
    if-ne p3, v0, :cond_0

    .line 953
    iget p2, p0, Lj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 p2, p2, 0x8

    iput p2, p0, Lj$/util/Base64$DecInputStream;->bits:I

    .line 954
    const/4 p2, 0x0

    iput p2, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    goto :goto_0

    .line 956
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    iget v0, p0, Lj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_1

    .line 960
    .end local p2    # "off":I
    .restart local v1    # "off":I
    :cond_1
    :goto_0
    move p2, v1

    goto :goto_1

    .line 947
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 stream has one un-decoded dangling byte."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 960
    :cond_3
    :goto_1
    if-ne p2, p4, :cond_4

    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    sub-int v0, p2, p4

    :goto_2
    return v0
.end method

.method private padding([BIII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "oldOff"    # I

    .line 970
    iget v0, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_3

    iget v0, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget v0, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    .line 971
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_3

    .line 974
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    iget v1, p0, Lj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 975
    iget p2, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 976
    if-ne p3, v1, :cond_1

    .line 977
    iget p2, p0, Lj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 p2, p2, 0x8

    iput p2, p0, Lj$/util/Base64$DecInputStream;->bits:I

    .line 978
    const/4 p2, 0x0

    iput p2, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    goto :goto_0

    .line 980
    :cond_1
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "off":I
    .restart local p2    # "off":I
    iget v2, p0, Lj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, p2

    .line 983
    .end local p2    # "off":I
    .restart local v0    # "off":I
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lj$/util/Base64$DecInputStream;->eof:Z

    .line 984
    sub-int p2, v0, p4

    return p2

    .line 972
    .end local v0    # "off":I
    .restart local p2    # "off":I
    :cond_3
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal base64 ending sequence:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1046
    iget-boolean v0, p0, Lj$/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 1047
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1053
    iget-boolean v0, p0, Lj$/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/Base64$DecInputStream;->closed:Z

    .line 1055
    iget-object v0, p0, Lj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1057
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    .line 938
    iget-object v0, p0, Lj$/util/Base64$DecInputStream;->sbBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lj$/util/Base64$DecInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/util/Base64$DecInputStream;->sbBuf:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 989
    iget-boolean v0, p0, Lj$/util/Base64$DecInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 991
    iget-boolean v0, p0, Lj$/util/Base64$DecInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    if-gez v0, :cond_0

    .line 992
    return v1

    .line 993
    :cond_0
    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_b

    .line 995
    move v0, p2

    .line 996
    .local v0, "oldOff":I
    :goto_0
    iget v2, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    const/16 v3, 0x8

    if-ltz v2, :cond_2

    .line 997
    if-nez p3, :cond_1

    .line 998
    sub-int v1, p2, v0

    return v1

    .line 999
    :cond_1
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    iget v4, p0, Lj$/util/Base64$DecInputStream;->bits:I

    iget v5, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 1000
    add-int/lit8 p3, p3, -0x1

    .line 1001
    iget p2, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    sub-int/2addr p2, v3

    iput p2, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    move p2, v2

    goto :goto_0

    .line 1003
    .end local v2    # "off":I
    .restart local p2    # "off":I
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lj$/util/Base64$DecInputStream;->bits:I

    .line 1004
    :goto_1
    if-lez p3, :cond_a

    .line 1005
    iget-object v4, p0, Lj$/util/Base64$DecInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1006
    .local v4, "v":I
    if-ne v4, v1, :cond_3

    .line 1007
    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/Base64$DecInputStream;->eof([BIII)I

    move-result v1

    return v1

    .line 1009
    :cond_3
    iget-object v5, p0, Lj$/util/Base64$DecInputStream;->base64:[I

    aget v5, v5, v4

    move v4, v5

    const/16 v6, 0x10

    if-gez v5, :cond_6

    .line 1010
    const/4 v5, -0x2

    if-ne v4, v5, :cond_4

    .line 1011
    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/Base64$DecInputStream;->padding([BIII)I

    move-result v1

    return v1

    .line 1013
    :cond_4
    if-ne v4, v1, :cond_6

    .line 1014
    iget-boolean v5, p0, Lj$/util/Base64$DecInputStream;->isMIME:Z

    if-eqz v5, :cond_5

    goto :goto_1

    .line 1015
    :cond_5
    new-instance v1, Ljava/io/IOException;

    .line 1016
    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal base64 character "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1021
    :cond_6
    iget v5, p0, Lj$/util/Base64$DecInputStream;->bits:I

    iget v7, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    shl-int v7, v4, v7

    or-int/2addr v5, v7

    iput v5, p0, Lj$/util/Base64$DecInputStream;->bits:I

    .line 1022
    iget v5, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    if-nez v5, :cond_9

    .line 1023
    const/16 v5, 0x12

    iput v5, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    .line 1024
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .local v5, "off":I
    iget v7, p0, Lj$/util/Base64$DecInputStream;->bits:I

    shr-int/lit8 v6, v7, 0x10

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 1025
    const/4 p2, 0x1

    if-ne p3, p2, :cond_7

    .line 1026
    iput v3, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    .line 1027
    move p2, v5

    goto :goto_3

    .line 1029
    :cond_7
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "off":I
    .restart local p2    # "off":I
    iget v6, p0, Lj$/util/Base64$DecInputStream;->bits:I

    shr-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 1030
    const/4 v5, 0x2

    if-ne p3, v5, :cond_8

    .line 1031
    iput v2, p0, Lj$/util/Base64$DecInputStream;->nextout:I

    .line 1032
    goto :goto_3

    .line 1034
    :cond_8
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "off":I
    .restart local v5    # "off":I
    iget v6, p0, Lj$/util/Base64$DecInputStream;->bits:I

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    .line 1035
    add-int/lit8 p3, p3, -0x3

    .line 1036
    iput v2, p0, Lj$/util/Base64$DecInputStream;->bits:I

    move p2, v5

    goto :goto_2

    .line 1038
    .end local v5    # "off":I
    .restart local p2    # "off":I
    :cond_9
    iget v5, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    add-int/lit8 v5, v5, -0x6

    iput v5, p0, Lj$/util/Base64$DecInputStream;->nextin:I

    .line 1040
    .end local v4    # "v":I
    :goto_2
    goto/16 :goto_1

    .line 1041
    :cond_a
    :goto_3
    sub-int v1, p2, v0

    return v1

    .line 994
    .end local v0    # "oldOff":I
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 990
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
