.class final Lj$/sun/nio/cs/StandardCharsets$Aliases;
.super Lj$/sun/util/PreHashedMap;
.source "StandardCharsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/StandardCharsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Aliases"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/sun/util/PreHashedMap<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MASK:I = 0x3ff

.field private static final ROWS:I = 0x400

.field private static final SHIFT:I = 0x0

.field private static final SIZE:I = 0x150


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 708
    const/4 v0, 0x0

    const/16 v1, 0x3ff

    const/16 v2, 0x400

    const/16 v3, 0x150

    invoke-direct {p0, v2, v3, v0, v1}, Lj$/sun/util/PreHashedMap;-><init>(IIII)V

    .line 709
    return-void
.end method

.method synthetic constructor <init>(Lj$/sun/nio/cs/StandardCharsets$Aliases-IA;)V
    .locals 0

    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets$Aliases;-><init>()V

    return-void
.end method


# virtual methods
.method protected init([Ljava/lang/Object;)V
    .locals 25
    .param p1, "ht"    # [Ljava/lang/Object;

    .line 712
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "csisolatin0"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "iso-8859-15"

    aput-object v4, v1, v3

    aput-object v1, p1, v3

    .line 713
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "x0208"

    aput-object v6, v5, v2

    const-string v6, "x-jis0208"

    aput-object v6, v5, v3

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, "csisolatin1"

    aput-object v8, v7, v2

    const-string v8, "iso-8859-1"

    aput-object v8, v7, v3

    aput-object v7, v5, v0

    aput-object v5, p1, v0

    .line 715
    new-array v5, v0, [Ljava/lang/Object;

    const-string v7, "csisolatin2"

    aput-object v7, v5, v2

    const-string v7, "iso-8859-2"

    aput-object v7, v5, v3

    aput-object v5, p1, v1

    .line 716
    new-array v5, v0, [Ljava/lang/Object;

    const-string v9, "csisolatin3"

    aput-object v9, v5, v2

    const-string v9, "iso-8859-3"

    aput-object v9, v5, v3

    const/4 v10, 0x4

    aput-object v5, p1, v10

    .line 717
    new-array v5, v0, [Ljava/lang/Object;

    const-string v10, "csisolatin4"

    aput-object v10, v5, v2

    const-string v10, "iso-8859-4"

    aput-object v10, v5, v3

    const/4 v11, 0x5

    aput-object v5, p1, v11

    .line 718
    new-array v5, v0, [Ljava/lang/Object;

    const-string v11, "csisolatin5"

    aput-object v11, v5, v2

    const-string v11, "iso-8859-9"

    aput-object v11, v5, v3

    const/4 v12, 0x6

    aput-object v5, p1, v12

    .line 719
    new-array v5, v0, [Ljava/lang/Object;

    const-string v12, "csisolatin9"

    aput-object v12, v5, v2

    aput-object v4, v5, v3

    const/16 v12, 0xa

    aput-object v5, p1, v12

    .line 720
    new-array v5, v0, [Ljava/lang/Object;

    const-string v12, "unicodelittle"

    aput-object v12, v5, v2

    const-string v12, "x-utf-16le-bom"

    aput-object v12, v5, v3

    const/16 v12, 0x13

    aput-object v5, p1, v12

    .line 721
    new-array v5, v0, [Ljava/lang/Object;

    const-string v12, "ksc5601-1987"

    aput-object v12, v5, v2

    const-string v12, "euc-kr"

    aput-object v12, v5, v3

    const/16 v13, 0x17

    aput-object v5, p1, v13

    .line 722
    new-array v5, v0, [Ljava/lang/Object;

    const-string v13, "iso646-us"

    aput-object v13, v5, v2

    const-string v13, "us-ascii"

    aput-object v13, v5, v3

    const/16 v14, 0x18

    aput-object v5, p1, v14

    .line 723
    new-array v5, v1, [Ljava/lang/Object;

    const-string v14, "jis_x0208-1983"

    aput-object v14, v5, v2

    aput-object v6, v5, v3

    new-array v14, v0, [Ljava/lang/Object;

    const-string v15, "iso_8859-7:1987"

    aput-object v15, v14, v2

    const-string v15, "iso-8859-7"

    aput-object v15, v14, v3

    aput-object v14, v5, v0

    const/16 v14, 0x19

    aput-object v5, p1, v14

    .line 725
    new-array v5, v0, [Ljava/lang/Object;

    const-string v14, "912"

    aput-object v14, v5, v2

    aput-object v7, v5, v3

    const/16 v14, 0x1a

    aput-object v5, p1, v14

    .line 726
    new-array v5, v1, [Ljava/lang/Object;

    const-string v14, "913"

    aput-object v14, v5, v2

    aput-object v9, v5, v3

    new-array v14, v0, [Ljava/lang/Object;

    const-string v16, "x0212"

    aput-object v16, v14, v2

    const-string v16, "jis_x0212-1990"

    aput-object v16, v14, v3

    aput-object v14, v5, v0

    const/16 v14, 0x1b

    aput-object v5, p1, v14

    .line 728
    new-array v5, v0, [Ljava/lang/Object;

    const-string v14, "914"

    aput-object v14, v5, v2

    aput-object v10, v5, v3

    const/16 v14, 0x1c

    aput-object v5, p1, v14

    .line 729
    new-array v5, v0, [Ljava/lang/Object;

    const-string v14, "915"

    aput-object v14, v5, v2

    const-string v14, "iso-8859-5"

    aput-object v14, v5, v3

    const/16 v16, 0x1d

    aput-object v5, p1, v16

    .line 730
    new-array v5, v0, [Ljava/lang/Object;

    const-string v16, "916"

    aput-object v16, v5, v2

    const-string v16, "iso-8859-8"

    aput-object v16, v5, v3

    const/16 v17, 0x1e

    aput-object v5, p1, v17

    .line 731
    new-array v5, v0, [Ljava/lang/Object;

    const-string v17, "latin10"

    aput-object v17, v5, v2

    const-string v17, "iso-8859-16"

    aput-object v17, v5, v3

    const/16 v18, 0x23

    aput-object v5, p1, v18

    .line 732
    new-array v5, v0, [Ljava/lang/Object;

    const-string v18, "ksc5601-1992"

    aput-object v18, v5, v2

    const-string v18, "x-johab"

    aput-object v18, v5, v3

    const/16 v18, 0x31

    aput-object v5, p1, v18

    .line 733
    new-array v5, v1, [Ljava/lang/Object;

    const-string v18, "ibm-1252"

    aput-object v18, v5, v2

    const-string v18, "windows-1252"

    aput-object v18, v5, v3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "920"

    aput-object v19, v1, v2

    aput-object v11, v1, v3

    aput-object v1, v5, v0

    const/16 v1, 0x37

    aput-object v5, p1, v1

    .line 735
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "923"

    aput-object v5, v1, v2

    aput-object v4, v1, v3

    const/16 v5, 0x3a

    aput-object v1, p1, v5

    .line 736
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const-string v1, "csisolatincyrillic"

    aput-object v1, v5, v2

    aput-object v14, v5, v3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "8859_1"

    aput-object v19, v1, v2

    aput-object v8, v1, v3

    aput-object v1, v5, v0

    const/16 v1, 0x56

    aput-object v5, p1, v1

    .line 738
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "8859_2"

    aput-object v5, v1, v2

    aput-object v7, v1, v3

    const/16 v5, 0x57

    aput-object v1, p1, v5

    .line 739
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "8859_3"

    aput-object v5, v1, v2

    aput-object v9, v1, v3

    const/16 v5, 0x58

    aput-object v1, p1, v5

    .line 740
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "8859_4"

    aput-object v5, v1, v2

    aput-object v10, v1, v3

    const/16 v5, 0x59

    aput-object v1, p1, v5

    .line 741
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const-string v1, "813"

    aput-object v1, v5, v2

    aput-object v15, v5, v3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "8859_5"

    aput-object v19, v1, v2

    aput-object v14, v1, v3

    aput-object v1, v5, v0

    const/16 v1, 0x5a

    aput-object v5, p1, v1

    .line 743
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "8859_6"

    aput-object v5, v1, v2

    const-string v5, "iso-8859-6"

    aput-object v5, v1, v3

    const/16 v19, 0x5b

    aput-object v1, p1, v19

    .line 744
    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "8859_7"

    aput-object v19, v1, v2

    aput-object v15, v1, v3

    const/16 v19, 0x5c

    aput-object v1, p1, v19

    .line 745
    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "8859_8"

    aput-object v19, v1, v2

    aput-object v16, v1, v3

    const/16 v19, 0x5d

    aput-object v1, p1, v19

    .line 746
    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "8859_9"

    aput-object v19, v1, v2

    aput-object v11, v1, v3

    const/16 v19, 0x5e

    aput-object v1, p1, v19

    .line 747
    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "iso_8859-1:1987"

    aput-object v19, v1, v2

    aput-object v8, v1, v3

    const/16 v19, 0x5f

    aput-object v1, p1, v19

    .line 748
    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "819"

    aput-object v19, v1, v2

    aput-object v8, v1, v3

    const/16 v19, 0x60

    aput-object v1, p1, v19

    .line 749
    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "5601"

    aput-object v19, v1, v2

    aput-object v12, v1, v3

    const/16 v19, 0x62

    aput-object v1, p1, v19

    .line 750
    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "unicode-1-1-utf-8"

    aput-object v19, v1, v2

    const-string v19, "utf-8"

    aput-object v19, v1, v3

    const/16 v19, 0x6a

    aput-object v1, p1, v19

    .line 751
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "ecma-114"

    aput-object v1, v0, v2

    aput-object v5, v0, v3

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v19, "x-utf-16le"

    aput-object v19, v3, v2

    const-string v19, "utf-16le"

    const/16 v20, 0x1

    aput-object v19, v3, v20

    aput-object v3, v0, v1

    const/16 v3, 0x79

    aput-object v0, p1, v3

    .line 753
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "ecma-118"

    aput-object v3, v0, v2

    aput-object v15, v0, v20

    const/16 v3, 0x7d

    aput-object v0, p1, v3

    .line 754
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "ks_c_5601-1987"

    aput-object v3, v0, v2

    aput-object v12, v0, v20

    const/16 v3, 0x7f

    aput-object v0, p1, v3

    .line 755
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "eucjis"

    aput-object v1, v0, v2

    const-string v1, "euc-jp"

    aput-object v1, v0, v20

    const/16 v3, 0x81

    aput-object v0, p1, v3

    .line 756
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "asmo-708"

    aput-object v0, v3, v2

    aput-object v5, v3, v20

    move-object/from16 v21, v12

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    const-string v19, "koi8_r"

    aput-object v19, v12, v2

    const-string v19, "koi8-r"

    aput-object v19, v12, v20

    aput-object v12, v3, v0

    const/16 v12, 0x86

    aput-object v3, p1, v12

    .line 758
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "euc-jp-linux"

    aput-object v12, v3, v2

    const-string v12, "x-euc-jp-linux"

    aput-object v12, v3, v20

    const/16 v12, 0x87

    aput-object v3, p1, v12

    .line 759
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "koi8_u"

    aput-object v12, v3, v2

    const-string v12, "koi8-u"

    aput-object v12, v3, v20

    const/16 v12, 0x89

    aput-object v3, p1, v12

    .line 760
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "cp912"

    aput-object v12, v3, v2

    aput-object v7, v3, v20

    const/16 v12, 0x8d

    aput-object v3, p1, v12

    .line 761
    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "cp913"

    aput-object v0, v3, v2

    aput-object v9, v3, v20

    const/16 v0, 0x8e

    aput-object v3, p1, v0

    .line 762
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "euc_tw"

    aput-object v0, v3, v2

    const-string v0, "x-euc-tw"

    aput-object v0, v3, v20

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    const-string v19, "cp914"

    aput-object v19, v12, v2

    aput-object v10, v12, v20

    aput-object v12, v3, v0

    const/16 v12, 0x8f

    aput-object v3, p1, v12

    .line 764
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "cp915"

    aput-object v12, v3, v2

    aput-object v14, v3, v20

    const/16 v12, 0x90

    aput-object v3, p1, v12

    .line 765
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "cp916"

    aput-object v12, v3, v2

    aput-object v16, v3, v20

    const/16 v12, 0x91

    aput-object v3, p1, v12

    .line 766
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "jis0201"

    aput-object v12, v3, v2

    const-string v12, "jis_x0201"

    aput-object v12, v3, v20

    const/16 v12, 0x97

    aput-object v3, p1, v12

    .line 767
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "jis0208"

    aput-object v12, v3, v2

    aput-object v6, v3, v20

    const/16 v12, 0x9e

    aput-object v3, p1, v12

    .line 768
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "x-eucjp"

    aput-object v12, v3, v2

    aput-object v1, v3, v20

    const/16 v12, 0xa4

    aput-object v3, p1, v12

    .line 769
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "cp920"

    aput-object v12, v3, v2

    aput-object v11, v3, v20

    const/16 v12, 0xaa

    aput-object v3, p1, v12

    .line 770
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "arabic"

    aput-object v12, v3, v2

    aput-object v5, v3, v20

    const/16 v12, 0xac

    aput-object v3, p1, v12

    .line 771
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "cp923"

    aput-object v12, v3, v2

    aput-object v4, v3, v20

    const/16 v12, 0xad

    aput-object v3, p1, v12

    .line 772
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "utf_32le_bom"

    aput-object v12, v3, v2

    const-string v12, "x-utf-32le-bom"

    aput-object v12, v3, v20

    const/16 v12, 0xb1

    aput-object v3, p1, v12

    .line 773
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "jis0212"

    aput-object v12, v3, v2

    const-string v12, "jis_x0212-1990"

    aput-object v12, v3, v20

    const/16 v12, 0xb7

    aput-object v3, p1, v12

    .line 774
    new-array v3, v0, [Ljava/lang/Object;

    const-string v12, "iso_8859-8:1988"

    aput-object v12, v3, v2

    aput-object v16, v3, v20

    const/16 v12, 0xb9

    aput-object v3, p1, v12

    .line 775
    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "utf_16be"

    aput-object v0, v3, v2

    const-string v0, "utf-16be"

    aput-object v0, v3, v20

    const/16 v0, 0xc0

    aput-object v3, p1, v0

    .line 776
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "cspc8codepage437"

    aput-object v0, v3, v2

    const-string v0, "ibm437"

    aput-object v0, v3, v20

    move-object/from16 v22, v0

    const/4 v12, 0x2

    new-array v0, v12, [Ljava/lang/Object;

    const-string v19, "ansi-1251"

    aput-object v19, v0, v2

    const-string v19, "windows-1251"

    aput-object v19, v0, v20

    aput-object v0, v3, v12

    const/16 v0, 0xc7

    aput-object v3, p1, v0

    .line 778
    new-array v0, v12, [Ljava/lang/Object;

    const-string v3, "cp813"

    aput-object v3, v0, v2

    aput-object v15, v0, v20

    const/16 v3, 0xcd

    aput-object v0, p1, v3

    .line 779
    new-array v0, v12, [Ljava/lang/Object;

    const-string v3, "cp936"

    aput-object v3, v0, v2

    const-string v3, "gbk"

    aput-object v3, v0, v20

    const/16 v3, 0xcf

    aput-object v0, p1, v3

    .line 780
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "850"

    aput-object v0, v3, v2

    const-string v0, "ibm850"

    aput-object v0, v3, v20

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    const-string v19, "cp819"

    aput-object v19, v12, v2

    aput-object v8, v12, v20

    aput-object v12, v3, v0

    const/16 v12, 0xd3

    aput-object v3, p1, v12

    .line 782
    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "852"

    aput-object v0, v3, v2

    const-string v0, "ibm852"

    aput-object v0, v3, v20

    const/16 v0, 0xd5

    aput-object v3, p1, v0

    .line 783
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "pck"

    aput-object v0, v3, v2

    const-string v0, "x-pck"

    aput-object v0, v3, v20

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    const-string v19, "855"

    aput-object v19, v12, v2

    const-string v19, "ibm855"

    aput-object v19, v12, v20

    aput-object v12, v3, v0

    const/16 v12, 0xd8

    aput-object v3, p1, v12

    .line 785
    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "cswindows31j"

    aput-object v0, v3, v2

    const-string v0, "windows-31j"

    aput-object v0, v3, v20

    const/16 v0, 0xd9

    aput-object v3, p1, v0

    .line 786
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const-string v0, "857"

    aput-object v0, v3, v2

    const-string v0, "ibm857"

    aput-object v0, v3, v20

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    const-string v19, "iso-ir-6"

    aput-object v19, v12, v2

    aput-object v13, v12, v20

    aput-object v12, v3, v0

    const/16 v12, 0xda

    aput-object v3, p1, v12

    .line 788
    const/4 v3, 0x3

    new-array v12, v3, [Ljava/lang/Object;

    const-string v3, "858"

    aput-object v3, v12, v2

    const-string v3, "ibm00858"

    aput-object v3, v12, v20

    move-object/from16 v23, v1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "737"

    aput-object v19, v1, v2

    const-string v19, "x-ibm737"

    aput-object v19, v1, v20

    aput-object v1, v12, v0

    const/16 v1, 0xdb

    aput-object v12, p1, v1

    .line 790
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "euc-tw"

    aput-object v12, v1, v2

    const-string v12, "x-euc-tw"

    aput-object v12, v1, v20

    const/16 v12, 0xdd

    aput-object v1, p1, v12

    .line 791
    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "csascii"

    aput-object v0, v1, v2

    aput-object v13, v1, v20

    const/16 v0, 0xe1

    aput-object v1, p1, v0

    .line 792
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "ms932"

    aput-object v0, v1, v2

    const-string v0, "windows-31j"

    aput-object v0, v1, v20

    const/4 v0, 0x2

    new-array v12, v0, [Ljava/lang/Object;

    const-string v19, "ibm1252"

    aput-object v19, v12, v2

    const-string v19, "windows-1252"

    aput-object v19, v12, v20

    aput-object v12, v1, v0

    const/16 v12, 0xf2

    aput-object v1, p1, v12

    .line 794
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "862"

    aput-object v12, v1, v2

    const-string v12, "ibm862"

    aput-object v12, v1, v20

    const/16 v12, 0xf4

    aput-object v1, p1, v12

    .line 795
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "866"

    aput-object v12, v1, v2

    const-string v12, "ibm866"

    aput-object v12, v1, v20

    const/16 v12, 0xf8

    aput-object v1, p1, v12

    .line 796
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "x-utf-32be"

    aput-object v12, v1, v2

    const-string v12, "utf-32be"

    aput-object v12, v1, v20

    const/16 v12, 0xfd

    aput-object v1, p1, v12

    .line 797
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso_8859-2:1987"

    aput-object v12, v1, v2

    aput-object v7, v1, v20

    const/16 v12, 0xfe

    aput-object v1, p1, v12

    .line 798
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "unicodebig"

    aput-object v12, v1, v2

    const-string v12, "utf-16"

    aput-object v12, v1, v20

    const/16 v12, 0x103

    aput-object v1, p1, v12

    .line 799
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso8859_15_fdis"

    aput-object v12, v1, v2

    aput-object v4, v1, v20

    const/16 v12, 0x10d

    aput-object v1, p1, v12

    .line 800
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "874"

    aput-object v12, v1, v2

    const-string v12, "x-ibm874"

    aput-object v12, v1, v20

    const/16 v12, 0x115

    aput-object v1, p1, v12

    .line 801
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "unicodelittleunmarked"

    aput-object v12, v1, v2

    const-string v12, "utf-16le"

    aput-object v12, v1, v20

    const/16 v12, 0x118

    aput-object v1, p1, v12

    .line 802
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ibm-1089"

    aput-object v12, v1, v2

    aput-object v5, v1, v20

    const/16 v12, 0x119

    aput-object v1, p1, v12

    .line 803
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso8859_1"

    aput-object v12, v1, v2

    aput-object v8, v1, v20

    const/16 v12, 0x11b

    aput-object v1, p1, v12

    .line 804
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso8859_2"

    aput-object v12, v1, v2

    aput-object v7, v1, v20

    const/16 v12, 0x11c

    aput-object v1, p1, v12

    .line 805
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/Object;

    const-string v1, "iso8859_3"

    aput-object v1, v12, v2

    aput-object v9, v12, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "csiso885915"

    aput-object v19, v1, v2

    aput-object v4, v1, v20

    aput-object v1, v12, v0

    const/16 v1, 0x11d

    aput-object v12, p1, v1

    .line 807
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/Object;

    const-string v1, "csiso885916"

    aput-object v1, v12, v2

    aput-object v17, v12, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "iso8859_4"

    aput-object v19, v1, v2

    aput-object v10, v1, v20

    aput-object v1, v12, v0

    const/16 v1, 0x11e

    aput-object v12, p1, v1

    .line 809
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso8859_5"

    aput-object v12, v1, v2

    aput-object v14, v1, v20

    const/16 v12, 0x11f

    aput-object v1, p1, v12

    .line 810
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso8859_6"

    aput-object v12, v1, v2

    aput-object v5, v1, v20

    const/16 v12, 0x120

    aput-object v1, p1, v12

    .line 811
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso8859_7"

    aput-object v12, v1, v2

    aput-object v15, v1, v20

    const/16 v12, 0x121

    aput-object v1, p1, v12

    .line 812
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso8859_8"

    aput-object v12, v1, v2

    aput-object v16, v1, v20

    const/16 v12, 0x122

    aput-object v1, p1, v12

    .line 813
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso8859_9"

    aput-object v12, v1, v2

    aput-object v11, v1, v20

    const/16 v12, 0x123

    aput-object v1, p1, v12

    .line 814
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ibm912"

    aput-object v12, v1, v2

    aput-object v7, v1, v20

    const/16 v12, 0x126

    aput-object v1, p1, v12

    .line 815
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ibm913"

    aput-object v12, v1, v2

    aput-object v9, v1, v20

    const/16 v12, 0x127

    aput-object v1, p1, v12

    .line 816
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ibm914"

    aput-object v12, v1, v2

    aput-object v10, v1, v20

    const/16 v12, 0x128

    aput-object v1, p1, v12

    .line 817
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ibm915"

    aput-object v12, v1, v2

    aput-object v14, v1, v20

    const/16 v12, 0x129

    aput-object v1, p1, v12

    .line 818
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ibm916"

    aput-object v12, v1, v2

    aput-object v16, v1, v20

    const/16 v12, 0x12a

    aput-object v1, p1, v12

    .line 819
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso_8859-13"

    aput-object v12, v1, v2

    const-string v12, "iso-8859-13"

    aput-object v12, v1, v20

    const/16 v12, 0x131

    aput-object v1, p1, v12

    .line 820
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso_8859-15"

    aput-object v12, v1, v2

    aput-object v4, v1, v20

    const/16 v12, 0x133

    aput-object v1, p1, v12

    .line 821
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "iso_8859-16"

    aput-object v12, v1, v2

    aput-object v17, v1, v20

    const/16 v12, 0x134

    aput-object v1, p1, v12

    .line 822
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/Object;

    const-string v1, "greek8"

    aput-object v1, v12, v2

    aput-object v15, v12, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "646"

    aput-object v19, v1, v2

    aput-object v13, v1, v20

    aput-object v1, v12, v0

    const/16 v1, 0x138

    aput-object v12, p1, v1

    .line 824
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ms_kanji"

    aput-object v12, v1, v2

    const-string v12, "shift_jis"

    aput-object v12, v1, v20

    const/16 v12, 0x13e

    aput-object v1, p1, v12

    .line 825
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ibm-912"

    aput-object v12, v1, v2

    aput-object v7, v1, v20

    const/16 v12, 0x141

    aput-object v1, p1, v12

    .line 826
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/Object;

    const-string v1, "ibm-913"

    aput-object v1, v12, v2

    aput-object v9, v12, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "csiso87jisx0208"

    aput-object v19, v1, v2

    aput-object v6, v1, v20

    aput-object v1, v12, v0

    const/16 v1, 0x142

    aput-object v12, p1, v1

    .line 828
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/Object;

    const-string v1, "ibm920"

    aput-object v1, v12, v2

    aput-object v11, v12, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "ibm-914"

    aput-object v19, v1, v2

    aput-object v10, v1, v20

    aput-object v1, v12, v0

    const/16 v1, 0x143

    aput-object v12, p1, v1

    .line 830
    new-array v1, v0, [Ljava/lang/Object;

    const-string v12, "ibm-915"

    aput-object v12, v1, v2

    aput-object v14, v1, v20

    const/16 v12, 0x144

    aput-object v1, p1, v12

    .line 831
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/Object;

    const-string v1, "ibm-916"

    aput-object v1, v12, v2

    aput-object v16, v12, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "l1"

    aput-object v19, v1, v2

    aput-object v8, v1, v20

    aput-object v1, v12, v0

    const/16 v1, 0x145

    aput-object v12, p1, v1

    .line 833
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/Object;

    const-string v18, "ibm923"

    aput-object v18, v12, v2

    aput-object v4, v12, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "l2"

    aput-object v19, v1, v2

    aput-object v7, v1, v20

    aput-object v1, v12, v0

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v18, "cp850"

    aput-object v18, v0, v2

    const-string v18, "ibm850"

    aput-object v18, v0, v20

    const/4 v2, 0x2

    aput-object v12, v0, v2

    const/16 v12, 0x146

    aput-object v0, p1, v12

    .line 836
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "l3"

    const/4 v12, 0x0

    aput-object v1, v0, v12

    aput-object v9, v0, v20

    new-array v1, v2, [Ljava/lang/Object;

    const-string v19, "cyrillic"

    aput-object v19, v1, v12

    aput-object v14, v1, v20

    aput-object v1, v0, v2

    const/16 v1, 0x147

    aput-object v0, p1, v1

    .line 838
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "cp852"

    aput-object v0, v1, v12

    const-string v0, "ibm852"

    aput-object v0, v1, v20

    new-array v0, v2, [Ljava/lang/Object;

    const-string v19, "l4"

    aput-object v19, v0, v12

    aput-object v10, v0, v20

    aput-object v0, v1, v2

    const/16 v0, 0x148

    aput-object v1, p1, v0

    .line 840
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "l5"

    aput-object v1, v0, v12

    aput-object v11, v0, v20

    const/16 v1, 0x149

    aput-object v0, p1, v1

    .line 841
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "cp855"

    aput-object v1, v0, v12

    const-string v1, "ibm855"

    aput-object v1, v0, v20

    const/16 v1, 0x14b

    aput-object v0, p1, v1

    .line 842
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "cp857"

    aput-object v0, v1, v12

    const-string v0, "ibm857"

    aput-object v0, v1, v20

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v19, "l9"

    aput-object v19, v2, v12

    aput-object v4, v2, v20

    aput-object v2, v1, v0

    const/16 v2, 0x14d

    aput-object v1, p1, v2

    .line 844
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v1, "cp858"

    aput-object v1, v2, v12

    aput-object v3, v2, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "cp737"

    aput-object v19, v1, v12

    const-string v19, "x-ibm737"

    aput-object v19, v1, v20

    aput-object v1, v2, v0

    const/16 v1, 0x14e

    aput-object v2, p1, v1

    .line 846
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "iso_8859_1"

    aput-object v2, v1, v12

    aput-object v8, v1, v20

    const/16 v2, 0x150

    aput-object v1, p1, v2

    .line 847
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "koi8"

    aput-object v2, v1, v12

    const-string v2, "koi8-r"

    aput-object v2, v1, v20

    const/16 v2, 0x153

    aput-object v1, p1, v2

    .line 848
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "775"

    aput-object v2, v1, v12

    const-string v2, "ibm775"

    aput-object v2, v1, v20

    const/16 v2, 0x155

    aput-object v1, p1, v2

    .line 849
    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "iso_8859-9:1989"

    aput-object v0, v1, v12

    aput-object v11, v1, v20

    const/16 v0, 0x159

    aput-object v1, p1, v0

    .line 850
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "euccn"

    aput-object v2, v1, v12

    const-string v2, "gb2312"

    aput-object v2, v1, v20

    move-object/from16 v24, v6

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v19, "ibm-920"

    aput-object v19, v6, v12

    aput-object v11, v6, v20

    aput-object v6, v1, v0

    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/Object;

    const-string v6, "eucjp-open"

    aput-object v6, v0, v12

    const-string v6, "x-eucjp-open"

    aput-object v6, v0, v20

    const/4 v6, 0x2

    aput-object v1, v0, v6

    const/16 v1, 0x15e

    aput-object v0, p1, v1

    .line 853
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "1089"

    aput-object v1, v0, v12

    aput-object v5, v0, v20

    const/16 v1, 0x160

    aput-object v0, p1, v1

    .line 854
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm-923"

    aput-object v1, v0, v12

    aput-object v4, v0, v20

    const/16 v1, 0x161

    aput-object v0, p1, v1

    .line 855
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm813"

    aput-object v1, v0, v12

    aput-object v15, v0, v20

    const/16 v1, 0x166

    aput-object v0, p1, v1

    .line 856
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "cp862"

    aput-object v1, v0, v12

    const-string v1, "ibm862"

    aput-object v1, v0, v20

    const/16 v1, 0x167

    aput-object v0, p1, v1

    .line 857
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "cp866"

    aput-object v1, v0, v12

    const-string v1, "ibm866"

    aput-object v1, v0, v20

    const/16 v1, 0x16b

    aput-object v0, p1, v1

    .line 858
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm819"

    aput-object v1, v0, v12

    aput-object v8, v0, v20

    const/16 v1, 0x16c

    aput-object v0, p1, v1

    .line 859
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ansi_x3.4-1968"

    aput-object v1, v0, v12

    aput-object v13, v0, v20

    const/16 v1, 0x17a

    aput-object v0, p1, v1

    .line 860
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm-813"

    aput-object v1, v0, v12

    aput-object v15, v0, v20

    const/16 v1, 0x181

    aput-object v0, p1, v1

    .line 861
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm-819"

    aput-object v1, v0, v12

    aput-object v8, v0, v20

    const/16 v1, 0x187

    aput-object v0, p1, v1

    .line 862
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "cp874"

    aput-object v1, v0, v12

    const-string v1, "x-ibm874"

    aput-object v1, v0, v20

    const/16 v1, 0x188

    aput-object v0, p1, v1

    .line 863
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "extended_unix_code_packed_format_for_japanese"

    aput-object v1, v0, v12

    aput-object v23, v0, v20

    const/16 v1, 0x189

    aput-object v0, p1, v1

    .line 864
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "iso-ir-100"

    aput-object v1, v0, v12

    aput-object v8, v0, v20

    const/16 v1, 0x195

    aput-object v0, p1, v1

    .line 865
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "iso-ir-101"

    aput-object v1, v0, v12

    aput-object v7, v0, v20

    const/16 v1, 0x196

    aput-object v0, p1, v1

    .line 866
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "437"

    aput-object v1, v0, v12

    aput-object v22, v0, v20

    const/16 v1, 0x198

    aput-object v0, p1, v1

    .line 867
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "iso-ir-226"

    aput-object v1, v0, v12

    aput-object v17, v0, v20

    const/16 v1, 0x19a

    aput-object v0, p1, v1

    .line 868
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "iso-ir-109"

    aput-object v0, v1, v12

    aput-object v9, v1, v20

    new-array v0, v6, [Ljava/lang/Object;

    const-string v19, "iso_8859-3:1988"

    aput-object v19, v0, v12

    aput-object v9, v0, v20

    aput-object v0, v1, v6

    const/16 v0, 0x19e

    aput-object v1, p1, v0

    .line 870
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "iso-8859-11"

    aput-object v1, v0, v12

    const-string v1, "x-iso-8859-11"

    aput-object v1, v0, v20

    const/16 v1, 0x1a1

    aput-object v0, p1, v1

    .line 871
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v4, v0, v12

    aput-object v4, v0, v20

    const/16 v1, 0x1a5

    aput-object v0, p1, v1

    .line 872
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "csiso159jisx02121990"

    aput-object v1, v0, v12

    const-string v1, "jis_x0212-1990"

    aput-object v1, v0, v20

    const/16 v1, 0x1a6

    aput-object v0, p1, v1

    .line 873
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "latin0"

    aput-object v1, v0, v12

    aput-object v4, v0, v20

    const/16 v1, 0x1ac

    aput-object v0, p1, v1

    .line 874
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "latin1"

    aput-object v1, v0, v12

    aput-object v8, v0, v20

    const/16 v1, 0x1ad

    aput-object v0, p1, v1

    .line 875
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "latin2"

    aput-object v1, v0, v12

    aput-object v7, v0, v20

    const/16 v1, 0x1ae

    aput-object v0, p1, v1

    .line 876
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "latin3"

    aput-object v1, v0, v12

    aput-object v9, v0, v20

    const/16 v1, 0x1af

    aput-object v0, p1, v1

    .line 877
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "latin4"

    aput-object v1, v0, v12

    aput-object v10, v0, v20

    const/16 v1, 0x1b0

    aput-object v0, p1, v1

    .line 878
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "latin5"

    aput-object v1, v0, v12

    aput-object v11, v0, v20

    const/16 v1, 0x1b1

    aput-object v0, p1, v1

    .line 879
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "iso-ir-110"

    aput-object v1, v0, v12

    aput-object v10, v0, v20

    const/16 v1, 0x1b4

    aput-object v0, p1, v1

    .line 880
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "latin9"

    aput-object v1, v0, v12

    aput-object v4, v0, v20

    const/16 v1, 0x1b5

    aput-object v0, p1, v1

    .line 881
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ansi_x3.4-1986"

    aput-object v1, v0, v12

    aput-object v13, v0, v20

    const/16 v1, 0x1b6

    aput-object v0, p1, v1

    .line 882
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "x-euc-cn"

    aput-object v1, v0, v12

    aput-object v2, v0, v20

    const/16 v1, 0x1ba

    aput-object v0, p1, v1

    .line 883
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "utf-32be-bom"

    aput-object v1, v0, v12

    const-string v1, "x-utf-32be-bom"

    aput-object v1, v0, v20

    const/16 v1, 0x1bb

    aput-object v0, p1, v1

    .line 884
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "sjis"

    aput-object v1, v0, v12

    const-string v1, "shift_jis"

    aput-object v1, v0, v20

    const/16 v1, 0x1c1

    aput-object v0, p1, v1

    .line 885
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "euc_jp_linux"

    aput-object v1, v0, v12

    const-string v1, "x-euc-jp-linux"

    aput-object v1, v0, v20

    const/16 v1, 0x1c7

    aput-object v0, p1, v1

    .line 886
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "cp775"

    aput-object v1, v0, v12

    const-string v1, "ibm775"

    aput-object v1, v0, v20

    const/16 v1, 0x1c8

    aput-object v0, p1, v1

    .line 887
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm1089"

    aput-object v1, v0, v12

    aput-object v5, v0, v20

    const/16 v1, 0x1d4

    aput-object v0, p1, v1

    .line 888
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "shift_jis"

    aput-object v1, v0, v12

    aput-object v1, v0, v20

    const/16 v1, 0x1d7

    aput-object v0, p1, v1

    .line 889
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "iso-ir-126"

    aput-object v1, v0, v12

    aput-object v15, v0, v20

    const/16 v1, 0x1d9

    aput-object v0, p1, v1

    .line 890
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "iso-ir-127"

    aput-object v1, v0, v12

    aput-object v5, v0, v20

    const/16 v1, 0x1da

    aput-object v0, p1, v1

    .line 891
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm850"

    aput-object v1, v0, v12

    aput-object v1, v0, v20

    const/16 v1, 0x1df

    aput-object v0, p1, v1

    .line 892
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm852"

    aput-object v1, v0, v12

    aput-object v1, v0, v20

    const/16 v1, 0x1e1

    aput-object v0, p1, v1

    .line 893
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm855"

    aput-object v1, v0, v12

    aput-object v1, v0, v20

    const/16 v1, 0x1e4

    aput-object v0, p1, v1

    .line 894
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm857"

    aput-object v1, v0, v12

    aput-object v1, v0, v20

    const/16 v1, 0x1e6

    aput-object v0, p1, v1

    .line 895
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "ibm858"

    aput-object v0, v1, v12

    aput-object v3, v1, v20

    new-array v0, v6, [Ljava/lang/Object;

    const-string v19, "ibm737"

    aput-object v19, v0, v12

    const-string v19, "x-ibm737"

    aput-object v19, v0, v20

    aput-object v0, v1, v6

    const/16 v0, 0x1e7

    aput-object v1, p1, v0

    .line 897
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "x-sjis"

    aput-object v0, v1, v12

    const-string v0, "shift_jis"

    aput-object v0, v1, v20

    new-array v0, v6, [Ljava/lang/Object;

    const-string v19, "utf_16le"

    aput-object v19, v0, v12

    const-string v19, "utf-16le"

    aput-object v19, v0, v20

    aput-object v0, v1, v6

    const/16 v0, 0x1f6

    aput-object v1, p1, v0

    .line 899
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "iso-ir-138"

    aput-object v0, v1, v12

    aput-object v16, v1, v20

    new-array v0, v6, [Ljava/lang/Object;

    const-string v19, "ibm-850"

    aput-object v19, v0, v12

    const-string v19, "ibm850"

    aput-object v19, v0, v20

    aput-object v0, v1, v6

    const/16 v0, 0x1fa

    aput-object v1, p1, v0

    .line 901
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm-852"

    aput-object v1, v0, v12

    const-string v1, "ibm852"

    aput-object v1, v0, v20

    const/16 v1, 0x1fc

    aput-object v0, p1, v1

    .line 902
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm-855"

    aput-object v1, v0, v12

    const-string v1, "ibm855"

    aput-object v1, v0, v20

    const/16 v1, 0x1ff

    aput-object v0, p1, v1

    .line 903
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm862"

    aput-object v1, v0, v12

    aput-object v1, v0, v20

    const/16 v1, 0x200

    aput-object v0, p1, v1

    .line 904
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "ibm-857"

    aput-object v1, v0, v12

    const-string v1, "ibm857"

    aput-object v1, v0, v20

    const/16 v1, 0x201

    aput-object v0, p1, v1

    .line 905
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "ibm-858"

    aput-object v0, v1, v12

    aput-object v3, v1, v20

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v19, "ibm-737"

    aput-object v19, v6, v12

    const-string v19, "x-ibm737"

    aput-object v19, v6, v20

    aput-object v6, v1, v0

    const/16 v6, 0x202

    aput-object v1, p1, v6

    .line 907
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm866"

    aput-object v6, v1, v12

    aput-object v6, v1, v20

    const/16 v6, 0x204

    aput-object v1, p1, v6

    .line 908
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "unicodebigunmarked"

    aput-object v6, v1, v12

    const-string v6, "utf-16be"

    aput-object v6, v1, v20

    const/16 v6, 0x208

    aput-object v1, p1, v6

    .line 909
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cp437"

    aput-object v6, v1, v12

    aput-object v22, v1, v20

    const/16 v6, 0x20b

    aput-object v1, p1, v6

    .line 910
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "utf16"

    aput-object v6, v1, v12

    const-string v6, "utf-16"

    aput-object v6, v1, v20

    const/16 v6, 0x20c

    aput-object v1, p1, v6

    .line 911
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "windows-932"

    aput-object v6, v1, v12

    const-string v6, "windows-31j"

    aput-object v6, v1, v20

    const/16 v6, 0x20e

    aput-object v1, p1, v6

    .line 912
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "windows-936"

    aput-object v6, v1, v12

    const-string v6, "gbk"

    aput-object v6, v1, v20

    const/16 v6, 0x212

    aput-object v1, p1, v6

    .line 913
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-ir-144"

    aput-object v6, v1, v12

    aput-object v14, v1, v20

    const/16 v6, 0x215

    aput-object v1, p1, v6

    .line 914
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-ir-148"

    aput-object v6, v1, v12

    aput-object v11, v1, v20

    const/16 v6, 0x219

    aput-object v1, p1, v6

    .line 915
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm-862"

    aput-object v6, v1, v12

    const-string v6, "ibm862"

    aput-object v6, v1, v20

    const/16 v6, 0x21b

    aput-object v1, p1, v6

    .line 916
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm-866"

    aput-object v6, v1, v12

    const-string v6, "ibm866"

    aput-object v6, v1, v20

    const/16 v6, 0x21f

    aput-object v1, p1, v6

    .line 917
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm874"

    aput-object v6, v1, v12

    const-string v6, "x-ibm874"

    aput-object v6, v1, v20

    const/16 v6, 0x221

    aput-object v1, p1, v6

    .line 918
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ksc_5601"

    aput-object v6, v1, v12

    aput-object v21, v1, v20

    const/16 v6, 0x226

    aput-object v1, p1, v6

    .line 919
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "big5hkscs"

    aput-object v6, v1, v12

    const-string v6, "big5-hkscs"

    aput-object v6, v1, v20

    const/16 v6, 0x22b

    aput-object v1, p1, v6

    .line 920
    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "x-utf-32le"

    aput-object v0, v1, v12

    const-string v0, "utf-32le"

    aput-object v0, v1, v20

    const/16 v0, 0x233

    aput-object v1, p1, v0

    .line 921
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "eucjp"

    aput-object v0, v1, v12

    aput-object v23, v1, v20

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v19, "iso-ir-159"

    aput-object v19, v6, v12

    const-string v19, "jis_x0212-1990"

    aput-object v19, v6, v20

    aput-object v6, v1, v0

    const/16 v6, 0x239

    aput-object v1, p1, v6

    .line 923
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm-874"

    aput-object v6, v1, v12

    const-string v6, "x-ibm874"

    aput-object v6, v1, v20

    const/16 v6, 0x23c

    aput-object v1, p1, v6

    .line 924
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso_8859-4:1988"

    aput-object v6, v1, v12

    aput-object v10, v1, v20

    const/16 v6, 0x23d

    aput-object v1, p1, v6

    .line 925
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "gb18030-2000"

    aput-object v6, v1, v12

    const-string v6, "gb18030"

    aput-object v6, v1, v20

    const/16 v6, 0x240

    aput-object v1, p1, v6

    .line 926
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "default"

    aput-object v6, v1, v12

    aput-object v13, v1, v20

    const/16 v6, 0x241

    aput-object v1, p1, v6

    .line 927
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "utf32"

    aput-object v6, v1, v12

    const-string v6, "utf-32"

    aput-object v6, v1, v20

    const/16 v6, 0x246

    aput-object v1, p1, v6

    .line 928
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "pc-multilingual-850+euro"

    aput-object v6, v1, v12

    aput-object v3, v1, v20

    const/16 v6, 0x247

    aput-object v1, p1, v6

    .line 929
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "elot_928"

    aput-object v6, v1, v12

    aput-object v15, v1, v20

    const/16 v6, 0x24c

    aput-object v1, p1, v6

    .line 930
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "csisolatinhebrew"

    aput-object v6, v1, v12

    aput-object v16, v1, v20

    const/16 v6, 0x24e

    aput-object v1, p1, v6

    .line 931
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cshalfwidthkatakana"

    aput-object v6, v1, v12

    const-string v6, "jis_x0201"

    aput-object v6, v1, v20

    const/16 v6, 0x24f

    aput-object v1, p1, v6

    .line 932
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "csisolatingreek"

    aput-object v6, v1, v12

    aput-object v15, v1, v20

    const/16 v6, 0x251

    aput-object v1, p1, v6

    .line 933
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "csibm857"

    aput-object v6, v1, v12

    const-string v6, "ibm857"

    aput-object v6, v1, v20

    const/16 v6, 0x256

    aput-object v1, p1, v6

    .line 934
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "euckr"

    aput-object v6, v1, v12

    aput-object v21, v1, v20

    const/16 v6, 0x25a

    aput-object v1, p1, v6

    .line 935
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm775"

    aput-object v6, v1, v12

    aput-object v6, v1, v20

    const/16 v6, 0x261

    aput-object v1, p1, v6

    .line 936
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cp1250"

    aput-object v6, v1, v12

    const-string v6, "windows-1250"

    aput-object v6, v1, v20

    const/16 v6, 0x269

    aput-object v1, p1, v6

    .line 937
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cp1251"

    aput-object v6, v1, v12

    const-string v6, "windows-1251"

    aput-object v6, v1, v20

    const/16 v6, 0x26a

    aput-object v1, p1, v6

    .line 938
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cp1252"

    aput-object v6, v1, v12

    const-string v6, "windows-1252"

    aput-object v6, v1, v20

    const/16 v6, 0x26b

    aput-object v1, p1, v6

    .line 939
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cp1253"

    aput-object v6, v1, v12

    const-string v6, "windows-1253"

    aput-object v6, v1, v20

    const/16 v6, 0x26c

    aput-object v1, p1, v6

    .line 940
    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "cp1254"

    aput-object v0, v1, v12

    const-string v0, "windows-1254"

    aput-object v0, v1, v20

    const/16 v0, 0x26d

    aput-object v1, p1, v0

    .line 941
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "csibm862"

    aput-object v0, v1, v12

    const-string v0, "ibm862"

    aput-object v0, v1, v20

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v19, "cp1257"

    aput-object v19, v6, v12

    const-string v19, "windows-1257"

    aput-object v19, v6, v20

    aput-object v6, v1, v0

    const/16 v6, 0x270

    aput-object v1, p1, v6

    .line 943
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "csibm866"

    aput-object v1, v6, v12

    const-string v1, "ibm866"

    aput-object v1, v6, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "cesu8"

    aput-object v19, v1, v12

    const-string v19, "cesu-8"

    aput-object v19, v1, v20

    aput-object v1, v6, v0

    const/16 v1, 0x274

    aput-object v6, p1, v1

    .line 945
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859_11"

    aput-object v6, v1, v12

    const-string v6, "x-iso-8859-11"

    aput-object v6, v1, v20

    const/16 v6, 0x276

    aput-object v1, p1, v6

    .line 946
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "euc_cn"

    aput-object v6, v1, v12

    aput-object v2, v1, v20

    const/16 v6, 0x277

    aput-object v1, p1, v6

    .line 947
    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "iso8859_13"

    aput-object v0, v1, v12

    const-string v0, "iso-8859-13"

    aput-object v0, v1, v20

    const/16 v0, 0x278

    aput-object v1, p1, v0

    .line 948
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "iso8859_15"

    aput-object v0, v1, v12

    aput-object v4, v1, v20

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v19, "utf_32be"

    aput-object v19, v6, v12

    const-string v19, "utf-32be"

    aput-object v19, v6, v20

    aput-object v6, v1, v0

    const/16 v6, 0x27a

    aput-object v1, p1, v6

    .line 950
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "iso8859_16"

    aput-object v1, v6, v12

    aput-object v17, v6, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "utf_32be_bom"

    aput-object v19, v1, v12

    const-string v19, "x-utf-32be-bom"

    aput-object v19, v1, v20

    aput-object v1, v6, v0

    const/16 v1, 0x27b

    aput-object v6, p1, v1

    .line 952
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm-775"

    aput-object v6, v1, v12

    const-string v6, "ibm775"

    aput-object v6, v1, v20

    const/16 v6, 0x27c

    aput-object v1, p1, v6

    .line 953
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cp00858"

    aput-object v6, v1, v12

    aput-object v3, v1, v20

    const/16 v6, 0x28e

    aput-object v1, p1, v6

    .line 954
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "x-euc-jp"

    aput-object v6, v1, v12

    aput-object v23, v1, v20

    const/16 v6, 0x295

    aput-object v1, p1, v6

    .line 955
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "8859_13"

    aput-object v6, v1, v12

    const-string v6, "iso-8859-13"

    aput-object v6, v1, v20

    const/16 v6, 0x29d

    aput-object v1, p1, v6

    .line 956
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "us"

    aput-object v6, v1, v12

    aput-object v13, v1, v20

    const/16 v6, 0x29e

    aput-object v1, p1, v6

    .line 957
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "8859_15"

    aput-object v6, v1, v12

    aput-object v4, v1, v20

    const/16 v6, 0x29f

    aput-object v1, p1, v6

    .line 958
    new-array v1, v0, [Ljava/lang/Object;

    aput-object v22, v1, v12

    aput-object v22, v1, v20

    const/16 v6, 0x2a4

    aput-object v1, p1, v6

    .line 959
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cp367"

    aput-object v6, v1, v12

    aput-object v13, v1, v20

    const/16 v6, 0x2a7

    aput-object v1, p1, v6

    .line 960
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cns11643"

    aput-object v6, v1, v12

    const-string v6, "x-euc-tw"

    aput-object v6, v1, v20

    const/16 v6, 0x2ad

    aput-object v1, p1, v6

    .line 961
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-10646-ucs-2"

    aput-object v6, v1, v12

    const-string v6, "utf-16be"

    aput-object v6, v1, v20

    const/16 v6, 0x2ae

    aput-object v1, p1, v6

    .line 962
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "big5_hkscs"

    aput-object v6, v1, v12

    const-string v6, "big5-hkscs"

    aput-object v6, v1, v20

    const/16 v6, 0x2b6

    aput-object v1, p1, v6

    .line 963
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "euc_jp_solaris"

    aput-object v6, v1, v12

    const-string v6, "x-eucjp-open"

    aput-object v6, v1, v20

    const/16 v6, 0x2be

    aput-object v1, p1, v6

    .line 964
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm-437"

    aput-object v6, v1, v12

    aput-object v22, v1, v20

    const/16 v6, 0x2bf

    aput-object v1, p1, v6

    .line 965
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "euc-cn"

    aput-object v6, v1, v12

    aput-object v2, v1, v20

    const/16 v6, 0x2c5

    aput-object v1, p1, v6

    .line 966
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-13"

    aput-object v6, v1, v12

    const-string v6, "iso-8859-13"

    aput-object v6, v1, v20

    const/16 v6, 0x2c6

    aput-object v1, p1, v6

    .line 967
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-15"

    aput-object v6, v1, v12

    aput-object v4, v1, v20

    const/16 v6, 0x2c8

    aput-object v1, p1, v6

    .line 968
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-ir-87"

    aput-object v6, v1, v12

    aput-object v24, v1, v20

    const/16 v6, 0x2db

    aput-object v1, p1, v6

    .line 969
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso_8859-5:1988"

    aput-object v6, v1, v12

    aput-object v14, v1, v20

    const/16 v6, 0x2dc

    aput-object v1, p1, v6

    .line 970
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "ksc5601"

    aput-object v1, v6, v12

    aput-object v21, v6, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "unicode"

    aput-object v19, v1, v12

    const-string v19, "utf-16"

    aput-object v19, v1, v20

    aput-object v1, v6, v0

    const/16 v1, 0x2dd

    aput-object v6, p1, v1

    .line 972
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "big5hk"

    aput-object v6, v1, v12

    const-string v6, "big5-hkscs"

    aput-object v6, v1, v20

    const/16 v6, 0x2f8

    aput-object v1, p1, v6

    .line 973
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "greek"

    aput-object v6, v1, v12

    aput-object v15, v1, v20

    const/16 v6, 0x300

    aput-object v1, p1, v6

    .line 974
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ms1361"

    aput-object v6, v1, v12

    const-string v6, "x-johab"

    aput-object v6, v1, v20

    const/16 v6, 0x303

    aput-object v1, p1, v6

    .line 975
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ascii7"

    aput-object v6, v1, v12

    aput-object v13, v1, v20

    const/16 v6, 0x306

    aput-object v1, p1, v6

    .line 976
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-1"

    aput-object v6, v1, v12

    aput-object v8, v1, v20

    const/16 v6, 0x30d

    aput-object v1, p1, v6

    .line 977
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-2"

    aput-object v6, v1, v12

    aput-object v7, v1, v20

    const/16 v6, 0x30e

    aput-object v1, p1, v6

    .line 978
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "iso8859-3"

    aput-object v1, v6, v12

    aput-object v9, v6, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "cskoi8r"

    aput-object v19, v1, v12

    const-string v19, "koi8-r"

    aput-object v19, v1, v20

    aput-object v1, v6, v0

    const/16 v1, 0x30f

    aput-object v6, p1, v1

    .line 980
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/Object;

    const-string v1, "jis_x0201"

    aput-object v1, v6, v12

    aput-object v1, v6, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v19, "iso8859-4"

    aput-object v19, v1, v12

    aput-object v10, v1, v20

    aput-object v1, v6, v0

    const/16 v1, 0x310

    aput-object v6, p1, v1

    .line 982
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-5"

    aput-object v6, v1, v12

    aput-object v14, v1, v20

    const/16 v6, 0x311

    aput-object v1, p1, v6

    .line 983
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-6"

    aput-object v6, v1, v12

    aput-object v5, v1, v20

    const/16 v6, 0x312

    aput-object v1, p1, v6

    .line 984
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-7"

    aput-object v6, v1, v12

    aput-object v15, v1, v20

    const/16 v6, 0x313

    aput-object v1, p1, v6

    .line 985
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-8"

    aput-object v6, v1, v12

    aput-object v16, v1, v20

    const/16 v6, 0x314

    aput-object v1, p1, v6

    .line 986
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso8859-9"

    aput-object v6, v1, v12

    aput-object v11, v1, v20

    const/16 v6, 0x315

    aput-object v1, p1, v6

    .line 987
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "johab"

    aput-object v6, v1, v12

    const-string v6, "x-johab"

    aput-object v6, v1, v20

    const/16 v6, 0x324

    aput-object v1, p1, v6

    .line 988
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ccsid00858"

    aput-object v6, v1, v12

    aput-object v3, v1, v20

    const/16 v3, 0x32d

    aput-object v1, p1, v3

    .line 989
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "cspc862latinhebrew"

    aput-object v3, v1, v12

    const-string v3, "ibm862"

    aput-object v3, v1, v20

    const/16 v3, 0x332

    aput-object v1, p1, v3

    .line 990
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "tis620.2533"

    aput-object v3, v1, v12

    const-string v3, "tis-620"

    aput-object v3, v1, v20

    const/16 v3, 0x33b

    aput-object v1, p1, v3

    .line 991
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "ibm367"

    aput-object v3, v1, v12

    aput-object v13, v1, v20

    const/16 v3, 0x340

    aput-object v1, p1, v3

    .line 992
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "iso_8859-1"

    aput-object v3, v1, v12

    aput-object v8, v1, v20

    const/16 v3, 0x342

    aput-object v1, p1, v3

    .line 993
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "iso_8859-2"

    aput-object v1, v3, v12

    aput-object v7, v3, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "x-utf-16be"

    aput-object v6, v1, v12

    const-string v6, "utf-16be"

    aput-object v6, v1, v20

    aput-object v1, v3, v0

    const/16 v1, 0x343

    aput-object v3, p1, v1

    .line 995
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "iso_8859-3"

    aput-object v1, v3, v12

    aput-object v9, v3, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "sun_eu_greek"

    aput-object v6, v1, v12

    aput-object v15, v1, v20

    aput-object v1, v3, v0

    const/16 v1, 0x344

    aput-object v3, p1, v1

    .line 997
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "iso_8859-16:2001"

    aput-object v1, v3, v12

    aput-object v17, v3, v20

    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso_8859-4"

    aput-object v6, v1, v12

    aput-object v10, v1, v20

    aput-object v1, v3, v0

    const/16 v1, 0x345

    aput-object v3, p1, v1

    .line 999
    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "iso_8859-5"

    aput-object v3, v1, v12

    aput-object v14, v1, v20

    const/16 v3, 0x346

    aput-object v1, p1, v3

    .line 1000
    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "iso_8859-6"

    aput-object v0, v1, v12

    aput-object v5, v1, v20

    const/16 v0, 0x347

    aput-object v1, p1, v0

    .line 1001
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "cspcp852"

    aput-object v3, v1, v12

    const-string v3, "ibm852"

    aput-object v3, v1, v20

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "iso_8859-7"

    aput-object v7, v6, v12

    aput-object v15, v6, v20

    aput-object v6, v1, v3

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "gb2312-80"

    aput-object v7, v6, v12

    aput-object v2, v6, v20

    aput-object v1, v6, v3

    const/16 v1, 0x348

    aput-object v6, p1, v1

    .line 1004
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ksc5601_1987"

    aput-object v6, v1, v12

    aput-object v21, v1, v20

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "shift-jis"

    aput-object v7, v6, v12

    const-string v7, "shift_jis"

    aput-object v7, v6, v20

    aput-object v6, v1, v3

    new-array v6, v0, [Ljava/lang/Object;

    const-string v0, "iso_8859-8"

    aput-object v0, v6, v12

    aput-object v16, v6, v20

    aput-object v1, v6, v3

    const/16 v0, 0x349

    aput-object v6, p1, v0

    .line 1007
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "iso_8859-9"

    aput-object v1, v0, v12

    aput-object v11, v0, v20

    const/16 v1, 0x34a

    aput-object v0, p1, v1

    .line 1008
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cspcp855"

    aput-object v1, v0, v12

    const-string v1, "ibm855"

    aput-object v1, v0, v20

    const/16 v1, 0x34b

    aput-object v0, p1, v1

    .line 1009
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cp1089"

    aput-object v1, v0, v12

    aput-object v5, v0, v20

    const/16 v1, 0x34d

    aput-object v0, p1, v1

    .line 1010
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "windows-437"

    aput-object v1, v0, v12

    aput-object v22, v0, v20

    const/16 v1, 0x34e

    aput-object v0, p1, v1

    .line 1011
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "ascii"

    aput-object v1, v0, v12

    aput-object v13, v0, v20

    const/16 v1, 0x351

    aput-object v0, p1, v1

    .line 1012
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "euc_jp"

    aput-object v1, v0, v12

    aput-object v23, v0, v20

    const/16 v1, 0x352

    aput-object v0, p1, v1

    .line 1013
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cscesu-8"

    aput-object v1, v0, v12

    const-string v1, "cesu-8"

    aput-object v1, v0, v20

    const/16 v1, 0x35f

    aput-object v0, p1, v1

    .line 1014
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "ksc5601_1992"

    aput-object v1, v0, v12

    const-string v1, "x-johab"

    aput-object v1, v0, v20

    const/16 v1, 0x363

    aput-object v0, p1, v1

    .line 1015
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "gb2312-1980"

    aput-object v1, v0, v12

    aput-object v2, v0, v20

    const/16 v1, 0x370

    aput-object v0, p1, v1

    .line 1016
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "utf8"

    aput-object v1, v0, v12

    const-string v1, "utf-8"

    aput-object v1, v0, v20

    const/16 v1, 0x371

    aput-object v0, p1, v1

    .line 1017
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "euc_kr"

    aput-object v1, v0, v12

    aput-object v21, v0, v20

    const/16 v1, 0x373

    aput-object v0, p1, v1

    .line 1018
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "euctw"

    aput-object v1, v0, v12

    const-string v1, "x-euc-tw"

    aput-object v1, v0, v20

    const/16 v1, 0x376

    aput-object v0, p1, v1

    .line 1019
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "iso_8859-6:1987"

    aput-object v1, v0, v12

    aput-object v5, v0, v20

    const/16 v1, 0x37a

    aput-object v0, p1, v1

    .line 1020
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "csisolatinarabic"

    aput-object v1, v0, v12

    aput-object v5, v0, v20

    const/16 v1, 0x37b

    aput-object v0, p1, v1

    .line 1021
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v12

    aput-object v2, v0, v20

    const/16 v1, 0x37d

    aput-object v0, p1, v1

    .line 1022
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "hebrew"

    aput-object v1, v0, v12

    aput-object v16, v0, v20

    const/16 v1, 0x37f

    aput-object v0, p1, v1

    .line 1023
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "iso_646.irv:1983"

    aput-object v1, v0, v12

    aput-object v13, v0, v20

    const/16 v1, 0x380

    aput-object v0, p1, v1

    .line 1024
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "l10"

    aput-object v1, v0, v12

    aput-object v17, v0, v20

    const/16 v1, 0x38b

    aput-object v0, p1, v1

    .line 1025
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cp5346"

    aput-object v1, v0, v12

    const-string v1, "windows-1250"

    aput-object v1, v0, v20

    const/16 v1, 0x38d

    aput-object v0, p1, v1

    .line 1026
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cp5347"

    aput-object v1, v0, v12

    const-string v1, "windows-1251"

    aput-object v1, v0, v20

    const/16 v1, 0x38e

    aput-object v0, p1, v1

    .line 1027
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cp5348"

    aput-object v1, v0, v12

    const-string v1, "windows-1252"

    aput-object v1, v0, v20

    const/16 v1, 0x38f

    aput-object v0, p1, v1

    .line 1028
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cp5349"

    aput-object v1, v0, v12

    const-string v1, "windows-1253"

    aput-object v1, v0, v20

    const/16 v1, 0x390

    aput-object v0, p1, v1

    .line 1029
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "tis620"

    aput-object v1, v0, v12

    const-string v1, "tis-620"

    aput-object v1, v0, v20

    const/16 v1, 0x396

    aput-object v0, p1, v1

    .line 1030
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "iso_646.irv:1991"

    aput-object v1, v0, v12

    aput-object v13, v0, v20

    const/16 v1, 0x39d

    aput-object v0, p1, v1

    .line 1031
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "big5_solaris"

    aput-object v1, v0, v12

    const-string v1, "x-big5-solaris"

    aput-object v1, v0, v20

    const/16 v1, 0x3a1

    aput-object v0, p1, v1

    .line 1032
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "csbig5"

    aput-object v1, v0, v12

    const-string v1, "big5"

    aput-object v1, v0, v20

    const/16 v1, 0x3a5

    aput-object v0, p1, v1

    .line 1033
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cp5350"

    aput-object v1, v0, v12

    const-string v1, "windows-1254"

    aput-object v1, v0, v20

    const/16 v1, 0x3a6

    aput-object v0, p1, v1

    .line 1034
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "big5-hkscs"

    aput-object v1, v0, v12

    aput-object v1, v0, v20

    const/16 v1, 0x3a8

    aput-object v0, p1, v1

    .line 1035
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "cp5353"

    aput-object v1, v0, v12

    const-string v1, "windows-1257"

    aput-object v1, v0, v20

    const/16 v1, 0x3a9

    aput-object v0, p1, v1

    .line 1036
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "latin-9"

    aput-object v0, v1, v12

    aput-object v4, v1, v20

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "utf_32le"

    aput-object v3, v2, v12

    const-string v3, "utf-32le"

    aput-object v3, v2, v20

    aput-object v2, v1, v0

    const/16 v2, 0x3b0

    aput-object v1, p1, v2

    .line 1038
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "jis_x0212-1990"

    aput-object v2, v1, v12

    aput-object v2, v1, v20

    const/16 v2, 0x3bc

    aput-object v1, p1, v2

    .line 1039
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "utf_16"

    aput-object v2, v1, v12

    const-string v2, "utf-16"

    aput-object v2, v1, v20

    const/16 v2, 0x3bd

    aput-object v1, p1, v2

    .line 1040
    new-array v1, v0, [Ljava/lang/Object;

    const-string v0, "csshiftjis"

    aput-object v0, v1, v12

    const-string v0, "shift_jis"

    aput-object v0, v1, v20

    const/16 v0, 0x3c2

    aput-object v1, p1, v0

    .line 1041
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cseucpkdfmtjapanese"

    aput-object v1, v0, v12

    aput-object v23, v0, v20

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "jis_c6226-1983"

    aput-object v3, v2, v12

    aput-object v24, v2, v20

    aput-object v2, v0, v1

    const/16 v2, 0x3d8

    aput-object v0, p1, v2

    .line 1043
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "cspc850multilingual"

    aput-object v2, v0, v12

    const-string v2, "ibm850"

    aput-object v2, v0, v20

    const/16 v2, 0x3e1

    aput-object v0, p1, v2

    .line 1044
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "cseuckr"

    aput-object v2, v0, v12

    aput-object v21, v0, v20

    const/16 v2, 0x3ea

    aput-object v0, p1, v2

    .line 1045
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "utf-32le-bom"

    aput-object v2, v0, v12

    const-string v2, "x-utf-32le-bom"

    aput-object v2, v0, v20

    const/16 v2, 0x3f1

    aput-object v0, p1, v2

    .line 1046
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "utf_32"

    aput-object v2, v0, v12

    const-string v2, "utf-32"

    aput-object v2, v0, v20

    const/16 v2, 0x3f7

    aput-object v0, p1, v2

    .line 1047
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "x0201"

    aput-object v1, v0, v12

    const-string v1, "jis_x0201"

    aput-object v1, v0, v20

    const/16 v1, 0x3fb

    aput-object v0, p1, v1

    .line 1048
    return-void
.end method
