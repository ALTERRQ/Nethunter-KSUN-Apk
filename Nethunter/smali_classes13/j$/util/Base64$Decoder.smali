.class public Lj$/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field static final RFC2045:Lj$/util/Base64$Decoder;

.field static final RFC4648:Lj$/util/Base64$Decoder;

.field static final RFC4648_URLSAFE:Lj$/util/Base64$Decoder;

.field private static final fromBase64:[I

.field private static final fromBase64URL:[I


# instance fields
.field private final isMIME:Z

.field private final isURL:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetfromBase64()[I
    .locals 1

    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 497
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lj$/util/Base64$Decoder;->fromBase64:[I

    .line 499
    sget-object v1, Lj$/util/Base64$Decoder;->fromBase64:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 500
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64()[C

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 501
    sget-object v3, Lj$/util/Base64$Decoder;->fromBase64:[I

    invoke-static {}, Lj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64()[C

    move-result-object v4

    aget-char v4, v4, v1

    aput v1, v3, v4

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    .end local v1    # "i":I
    :cond_0
    sget-object v1, Lj$/util/Base64$Decoder;->fromBase64:[I

    const/16 v3, 0x3d

    const/4 v4, -0x2

    aput v4, v1, v3

    .line 509
    new-array v0, v0, [I

    sput-object v0, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    .line 512
    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Lj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64URL()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 514
    sget-object v1, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    invoke-static {}, Lj$/util/Base64$Encoder;->-$$Nest$sfgettoBase64URL()[C

    move-result-object v2

    aget-char v2, v2, v0

    aput v0, v1, v2

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 515
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    aput v4, v0, v3

    .line 518
    new-instance v0, Lj$/util/Base64$Decoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lj$/util/Base64$Decoder;->RFC4648:Lj$/util/Base64$Decoder;

    .line 519
    new-instance v0, Lj$/util/Base64$Decoder;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lj$/util/Base64$Decoder;->RFC4648_URLSAFE:Lj$/util/Base64$Decoder;

    .line 520
    new-instance v0, Lj$/util/Base64$Decoder;

    invoke-direct {v0, v1, v2}, Lj$/util/Base64$Decoder;-><init>(ZZ)V

    sput-object v0, Lj$/util/Base64$Decoder;->RFC2045:Lj$/util/Base64$Decoder;

    return-void
.end method

.method private constructor <init>(ZZ)V
    .locals 0
    .param p1, "isURL"    # Z
    .param p2, "isMIME"    # Z

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    iput-boolean p1, p0, Lj$/util/Base64$Decoder;->isURL:Z

    .line 486
    iput-boolean p2, p0, Lj$/util/Base64$Decoder;->isMIME:Z

    .line 487
    return-void
.end method

.method private decode0([BII[B)I
    .locals 16
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I
    .param p4, "dst"    # [B

    .line 701
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-boolean v2, v0, Lj$/util/Base64$Decoder;->isURL:Z

    if-eqz v2, :cond_0

    sget-object v2, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_0

    :cond_0
    sget-object v2, Lj$/util/Base64$Decoder;->fromBase64:[I

    .line 702
    .local v2, "base64":[I
    :goto_0
    const/4 v3, 0x0

    .line 703
    .local v3, "dp":I
    const/4 v4, 0x0

    .line 704
    .local v4, "bits":I
    const/16 v5, 0x12

    move v6, v5

    move v5, v4

    move v4, v3

    move/from16 v3, p2

    .line 706
    .end local p2    # "sp":I
    .local v3, "sp":I
    .local v4, "dp":I
    .local v5, "bits":I
    .local v6, "shiftto":I
    :goto_1
    const/4 v7, 0x6

    if-ge v3, v1, :cond_b

    .line 707
    const/16 v8, 0x12

    if-ne v6, v8, :cond_3

    add-int/lit8 v9, v3, 0x4

    if-ge v9, v1, :cond_3

    .line 708
    sub-int v9, v1, v3

    and-int/lit8 v9, v9, -0x4

    add-int/2addr v9, v3

    .line 709
    .local v9, "sl0":I
    :goto_2
    if-ge v3, v9, :cond_2

    .line 710
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "sp":I
    .local v10, "sp":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v2, v3

    .line 711
    .local v3, "b1":I
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "sp":I
    .local v11, "sp":I
    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    .line 712
    .local v10, "b2":I
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "sp":I
    .local v12, "sp":I
    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    aget v11, v2, v11

    .line 713
    .local v11, "b3":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "sp":I
    .local v13, "sp":I
    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    aget v12, v2, v12

    .line 714
    .local v12, "b4":I
    or-int v14, v3, v10

    or-int/2addr v14, v11

    or-int/2addr v14, v12

    if-gez v14, :cond_1

    .line 715
    add-int/lit8 v13, v13, -0x4

    .line 716
    move v3, v13

    goto :goto_3

    .line 718
    :cond_1
    shl-int/lit8 v14, v3, 0x12

    shl-int/lit8 v15, v10, 0xc

    or-int/2addr v14, v15

    shl-int/lit8 v15, v11, 0x6

    or-int/2addr v14, v15

    or-int/2addr v14, v12

    .line 719
    .local v14, "bits0":I
    add-int/lit8 v15, v4, 0x1

    .end local v4    # "dp":I
    .local v15, "dp":I
    shr-int/lit8 v8, v14, 0x10

    int-to-byte v8, v8

    aput-byte v8, p4, v4

    .line 720
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v8, v14, 0x8

    int-to-byte v8, v8

    aput-byte v8, p4, v15

    .line 721
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "dp":I
    .local v8, "dp":I
    int-to-byte v15, v14

    aput-byte v15, p4, v4

    .line 722
    .end local v3    # "b1":I
    .end local v10    # "b2":I
    .end local v11    # "b3":I
    .end local v12    # "b4":I
    .end local v14    # "bits0":I
    move v4, v8

    move v3, v13

    const/16 v8, 0x12

    goto :goto_2

    .line 723
    .end local v8    # "dp":I
    .end local v13    # "sp":I
    .local v3, "sp":I
    .restart local v4    # "dp":I
    :cond_2
    :goto_3
    if-lt v3, v1, :cond_3

    .line 724
    goto/16 :goto_6

    .line 726
    .end local v9    # "sl0":I
    :cond_3
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "sp":I
    .local v8, "sp":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 727
    .local v3, "b":I
    aget v9, v2, v3

    move v3, v9

    if-gez v9, :cond_9

    .line 728
    const/4 v9, -0x2

    if-ne v3, v9, :cond_7

    .line 734
    if-ne v6, v7, :cond_5

    if-eq v8, v1, :cond_6

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "sp":I
    .local v9, "sp":I
    aget-byte v8, p1, v8

    const/16 v10, 0x3d

    if-ne v8, v10, :cond_4

    move v8, v9

    goto :goto_4

    :cond_4
    move v8, v9

    goto :goto_5

    .end local v9    # "sp":I
    .restart local v8    # "sp":I
    :cond_5
    :goto_4
    const/16 v9, 0x12

    if-eq v6, v9, :cond_6

    move v3, v8

    goto :goto_6

    .line 736
    :cond_6
    :goto_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 741
    :cond_7
    iget-boolean v7, v0, Lj$/util/Base64$Decoder;->isMIME:Z

    if-eqz v7, :cond_8

    .line 742
    move v3, v8

    goto/16 :goto_1

    .line 744
    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    add-int/lit8 v9, v8, -0x1

    aget-byte v9, p1, v9

    .line 746
    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Illegal base64 character "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 748
    :cond_9
    shl-int v7, v3, v6

    or-int/2addr v5, v7

    .line 749
    add-int/lit8 v6, v6, -0x6

    .line 750
    if-gez v6, :cond_a

    .line 751
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "dp":I
    .local v7, "dp":I
    shr-int/lit8 v9, v5, 0x10

    int-to-byte v9, v9

    aput-byte v9, p4, v4

    .line 752
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, p4, v7

    .line 753
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "dp":I
    .restart local v7    # "dp":I
    int-to-byte v9, v5

    aput-byte v9, p4, v4

    .line 754
    const/16 v4, 0x12

    .line 755
    .end local v6    # "shiftto":I
    .local v4, "shiftto":I
    const/4 v5, 0x0

    move v6, v4

    move v4, v7

    .line 757
    .end local v3    # "b":I
    .end local v7    # "dp":I
    .local v4, "dp":I
    .restart local v6    # "shiftto":I
    :cond_a
    move v3, v8

    goto/16 :goto_1

    .line 759
    .end local v8    # "sp":I
    .local v3, "sp":I
    :cond_b
    :goto_6
    if-ne v6, v7, :cond_c

    .line 760
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "dp":I
    .restart local v7    # "dp":I
    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    aput-byte v8, p4, v4

    move v4, v7

    goto :goto_7

    .line 761
    .end local v7    # "dp":I
    .restart local v4    # "dp":I
    :cond_c
    if-nez v6, :cond_d

    .line 762
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "dp":I
    .restart local v7    # "dp":I
    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    aput-byte v8, p4, v4

    .line 763
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "dp":I
    .restart local v4    # "dp":I
    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, p4, v7

    goto :goto_7

    .line 764
    :cond_d
    const/16 v7, 0xc

    if-eq v6, v7, :cond_11

    .line 771
    :goto_7
    if-ge v3, v1, :cond_10

    .line 772
    iget-boolean v7, v0, Lj$/util/Base64$Decoder;->isMIME:Z

    if-eqz v7, :cond_f

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "sp":I
    .local v7, "sp":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget v3, v2, v3

    if-gez v3, :cond_e

    .line 773
    move v3, v7

    goto :goto_7

    .line 772
    :cond_e
    move v3, v7

    .line 774
    .end local v7    # "sp":I
    .restart local v3    # "sp":I
    :cond_f
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input byte array has incorrect ending byte at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 777
    :cond_10
    return v4

    .line 766
    :cond_11
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Last unit does not have enough valid bits"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private outLength([BII)I
    .locals 8
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I

    .line 663
    iget-boolean v0, p0, Lj$/util/Base64$Decoder;->isURL:Z

    if-eqz v0, :cond_0

    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/Base64$Decoder;->fromBase64:[I

    .line 664
    .local v0, "base64":[I
    :goto_0
    const/4 v1, 0x0

    .line 665
    .local v1, "paddings":I
    sub-int v2, p3, p2

    .line 666
    .local v2, "len":I
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 667
    return v3

    .line 668
    :cond_1
    const/4 v4, -0x1

    const/4 v5, 0x2

    if-ge v2, v5, :cond_3

    .line 669
    iget-boolean v5, p0, Lj$/util/Base64$Decoder;->isMIME:Z

    if-eqz v5, :cond_2

    aget v5, v0, v3

    if-ne v5, v4, :cond_2

    .line 670
    return v3

    .line 671
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 674
    :cond_3
    iget-boolean v3, p0, Lj$/util/Base64$Decoder;->isMIME:Z

    const/16 v5, 0x3d

    if-eqz v3, :cond_7

    .line 677
    const/4 v3, 0x0

    .line 678
    .local v3, "n":I
    :goto_1
    if-ge p2, p3, :cond_6

    .line 679
    add-int/lit8 v6, p2, 0x1

    .end local p2    # "sp":I
    .local v6, "sp":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 680
    .local p2, "b":I
    if-ne p2, v5, :cond_4

    .line 681
    sub-int v4, p3, v6

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v2, v4

    .line 682
    move p2, v6

    goto :goto_2

    .line 684
    :cond_4
    aget v7, v0, p2

    move p2, v7

    if-ne v7, v4, :cond_5

    .line 685
    add-int/lit8 v3, v3, 0x1

    .line 686
    .end local p2    # "b":I
    :cond_5
    move p2, v6

    goto :goto_1

    .line 687
    .end local v6    # "sp":I
    .local p2, "sp":I
    :cond_6
    :goto_2
    sub-int/2addr v2, v3

    .line 688
    .end local v3    # "n":I
    goto :goto_3

    .line 689
    :cond_7
    add-int/lit8 v3, p3, -0x1

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_8

    .line 690
    add-int/lit8 v1, v1, 0x1

    .line 691
    add-int/lit8 v3, p3, -0x2

    aget-byte v3, p1, v3

    if-ne v3, v5, :cond_8

    .line 692
    add-int/lit8 v1, v1, 0x1

    .line 695
    :cond_8
    :goto_3
    if-nez v1, :cond_9

    and-int/lit8 v3, v2, 0x3

    if-eqz v3, :cond_9

    .line 696
    and-int/lit8 v3, v2, 0x3

    rsub-int/lit8 v1, v3, 0x4

    .line 697
    :cond_9
    add-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v1

    return v3
.end method


# virtual methods
.method public decode([B[B)I
    .locals 3
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .line 590
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lj$/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    .line 591
    .local v0, "len":I
    array-length v2, p2

    if-lt v2, v0, :cond_0

    .line 594
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, p2}, Lj$/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    return v1

    .line 592
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output byte array is too small for decoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 619
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 623
    .local v0, "pos0":I
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 625
    .local v1, "src":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 626
    .local v2, "sp":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    .line 627
    .local v3, "sl":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 629
    .end local v1    # "src":[B
    .end local v2    # "sp":I
    .end local v3    # "sl":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 630
    .restart local v1    # "src":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 631
    const/4 v2, 0x0

    .line 632
    .restart local v2    # "sp":I
    array-length v3, v1

    .line 634
    .restart local v3    # "sl":I
    :goto_0
    invoke-direct {p0, v1, v2, v3}, Lj$/util/Base64$Decoder;->outLength([BII)I

    move-result v4

    new-array v4, v4, [B

    .line 635
    .local v4, "dst":[B
    invoke-direct {p0, v1, v2, v3, v4}, Lj$/util/Base64$Decoder;->decode0([BII[B)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 636
    .end local v1    # "src":[B
    .end local v2    # "sp":I
    .end local v3    # "sl":I
    .end local v4    # "dst":[B
    :catch_0
    move-exception v1

    .line 637
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 638
    throw v1
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .line 561
    sget-object v0, Lj$/sun/nio/cs/ISO_8859_1;->INSTANCE:Lj$/sun/nio/cs/ISO_8859_1;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lj$/util/Base64$Decoder;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 3
    .param p1, "src"    # [B

    .line 537
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lj$/util/Base64$Decoder;->outLength([BII)I

    move-result v0

    new-array v0, v0, [B

    .line 538
    .local v0, "dst":[B
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, v0}, Lj$/util/Base64$Decoder;->decode0([BII[B)I

    move-result v1

    .line 539
    .local v1, "ret":I
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 540
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 542
    :cond_0
    return-object v0
.end method

.method public wrap(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;

    .line 658
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    new-instance v0, Lj$/util/Base64$DecInputStream;

    iget-boolean v1, p0, Lj$/util/Base64$Decoder;->isURL:Z

    if-eqz v1, :cond_0

    sget-object v1, Lj$/util/Base64$Decoder;->fromBase64URL:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lj$/util/Base64$Decoder;->fromBase64:[I

    :goto_0
    iget-boolean v2, p0, Lj$/util/Base64$Decoder;->isMIME:Z

    invoke-direct {v0, p1, v1, v2}, Lj$/util/Base64$DecInputStream;-><init>(Ljava/io/InputStream;[IZ)V

    return-object v0
.end method
