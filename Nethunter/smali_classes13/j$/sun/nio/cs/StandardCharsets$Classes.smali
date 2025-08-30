.class final Lj$/sun/nio/cs/StandardCharsets$Classes;
.super Lj$/sun/util/PreHashedMap;
.source "StandardCharsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/StandardCharsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Classes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/sun/util/PreHashedMap<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MASK:I = 0x3f

.field private static final ROWS:I = 0x40

.field private static final SHIFT:I = 0x0

.field private static final SIZE:I = 0x3f


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1062
    const/16 v0, 0x3f

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1, v0}, Lj$/sun/util/PreHashedMap;-><init>(IIII)V

    .line 1063
    return-void
.end method

.method synthetic constructor <init>(Lj$/sun/nio/cs/StandardCharsets$Classes-IA;)V
    .locals 0

    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets$Classes;-><init>()V

    return-void
.end method


# virtual methods
.method protected init([Ljava/lang/Object;)V
    .locals 7
    .param p1, "ht"    # [Ljava/lang/Object;

    .line 1066
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ibm862"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "IBM862"

    aput-object v4, v1, v2

    aput-object v1, p1, v3

    .line 1067
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "euc-kr"

    aput-object v4, v1, v3

    const-string v4, "EUC_KR"

    aput-object v4, v1, v2

    aput-object v1, p1, v2

    .line 1068
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "windows-31j"

    aput-object v4, v1, v3

    const-string v4, "MS932"

    aput-object v4, v1, v2

    aput-object v1, p1, v0

    .line 1069
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "x-pck"

    aput-object v4, v1, v3

    const-string v4, "PCK"

    aput-object v4, v1, v2

    const/4 v4, 0x3

    aput-object v1, p1, v4

    .line 1070
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "ibm866"

    aput-object v5, v1, v3

    const-string v5, "IBM866"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "utf-16le"

    aput-object v6, v5, v3

    const-string v6, "UTF_16LE"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/4 v5, 0x4

    aput-object v1, p1, v5

    .line 1072
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "tis-620"

    aput-object v5, v1, v3

    const-string v5, "TIS_620"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "utf-32"

    aput-object v6, v5, v3

    const-string v6, "UTF_32"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/4 v5, 0x5

    aput-object v1, p1, v5

    .line 1074
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "windows-1250"

    aput-object v5, v1, v3

    const-string v5, "MS1250"

    aput-object v5, v1, v2

    const/4 v5, 0x6

    aput-object v1, p1, v5

    .line 1075
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "windows-1251"

    aput-object v5, v1, v3

    const-string v5, "MS1251"

    aput-object v5, v1, v2

    const/4 v5, 0x7

    aput-object v1, p1, v5

    .line 1076
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "windows-1252"

    aput-object v5, v1, v3

    const-string v5, "MS1252"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "utf-32be"

    aput-object v6, v5, v3

    const-string v6, "UTF_32BE"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "x-big5-solaris"

    aput-object v6, v5, v3

    const-string v6, "Big5_Solaris"

    aput-object v6, v5, v2

    aput-object v1, v5, v0

    const/16 v1, 0x8

    aput-object v5, p1, v1

    .line 1079
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "x-jis0208"

    aput-object v5, v1, v3

    const-string v5, "JIS_X_0208"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "windows-1253"

    aput-object v6, v5, v3

    const-string v6, "MS1253"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x9

    aput-object v1, p1, v5

    .line 1081
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "windows-1254"

    aput-object v5, v1, v3

    const-string v5, "MS1254"

    aput-object v5, v1, v2

    const/16 v5, 0xa

    aput-object v1, p1, v5

    .line 1082
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "gb18030"

    aput-object v5, v1, v3

    const-string v5, "GB18030"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "utf-16"

    aput-object v6, v5, v3

    const-string v6, "UTF_16"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0xb

    aput-object v1, p1, v5

    .line 1084
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "x-iso-8859-11"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_11"

    aput-object v5, v1, v2

    const/16 v5, 0xc

    aput-object v1, p1, v5

    .line 1085
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "windows-1257"

    aput-object v5, v1, v3

    const-string v5, "MS1257"

    aput-object v5, v1, v2

    const/16 v5, 0xd

    aput-object v1, p1, v5

    .line 1086
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "utf-16be"

    aput-object v5, v1, v3

    const-string v5, "UTF_16BE"

    aput-object v5, v1, v2

    const/16 v5, 0xe

    aput-object v1, p1, v5

    .line 1087
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "x-johab"

    aput-object v5, v1, v3

    const-string v5, "Johab"

    aput-object v5, v1, v2

    const/16 v5, 0xf

    aput-object v1, p1, v5

    .line 1088
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "jis_x0201"

    aput-object v5, v1, v3

    const-string v5, "JIS_X_0201"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-1"

    aput-object v6, v5, v3

    const-string v6, "ISO_8859_1"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x10

    aput-object v1, p1, v5

    .line 1090
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "iso-8859-2"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_2"

    aput-object v5, v1, v2

    const/16 v5, 0x11

    aput-object v1, p1, v5

    .line 1091
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "x-euc-tw"

    aput-object v5, v1, v3

    const-string v5, "EUC_TW"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "utf-8"

    aput-object v6, v5, v3

    const-string v6, "UTF_8"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "iso-8859-3"

    aput-object v6, v5, v3

    const-string v6, "ISO_8859_3"

    aput-object v6, v5, v2

    aput-object v1, v5, v0

    const/16 v1, 0x12

    aput-object v5, p1, v1

    .line 1094
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "x-eucjp-open"

    aput-object v5, v1, v3

    const-string v5, "EUC_JP_Open"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-4"

    aput-object v6, v5, v3

    const-string v6, "ISO_8859_4"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x13

    aput-object v1, p1, v5

    .line 1096
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "iso-8859-5"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_5"

    aput-object v5, v1, v2

    const/16 v5, 0x14

    aput-object v1, p1, v5

    .line 1097
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "iso-8859-6"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_6"

    aput-object v5, v1, v2

    const/16 v5, 0x15

    aput-object v1, p1, v5

    .line 1098
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "x-ibm874"

    aput-object v5, v1, v3

    const-string v5, "IBM874"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-7"

    aput-object v6, v5, v3

    const-string v6, "ISO_8859_7"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x16

    aput-object v1, p1, v5

    .line 1100
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "iso-8859-8"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_8"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "shift_jis"

    aput-object v6, v5, v3

    const-string v6, "SJIS"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x17

    aput-object v1, p1, v5

    .line 1102
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "iso-8859-9"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_9"

    aput-object v5, v1, v2

    const/16 v5, 0x18

    aput-object v1, p1, v5

    .line 1103
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "x-ibm737"

    aput-object v5, v1, v3

    const-string v5, "IBM737"

    aput-object v5, v1, v2

    const/16 v5, 0x1c

    aput-object v1, p1, v5

    .line 1104
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "ibm850"

    aput-object v5, v1, v3

    const-string v5, "IBM850"

    aput-object v5, v1, v2

    const/16 v5, 0x1f

    aput-object v1, p1, v5

    .line 1105
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "euc-jp"

    aput-object v5, v1, v3

    const-string v5, "EUC_JP"

    aput-object v5, v1, v2

    const/16 v5, 0x20

    aput-object v1, p1, v5

    .line 1106
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "ibm852"

    aput-object v5, v1, v3

    const-string v5, "IBM852"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "ibm775"

    aput-object v6, v5, v3

    const-string v6, "IBM775"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x21

    aput-object v1, p1, v5

    .line 1108
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "us-ascii"

    aput-object v5, v1, v3

    const-string v5, "US_ASCII"

    aput-object v5, v1, v2

    const/16 v5, 0x22

    aput-object v1, p1, v5

    .line 1109
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "iso-8859-13"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_13"

    aput-object v5, v1, v2

    const/16 v5, 0x23

    aput-object v1, p1, v5

    .line 1110
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "ibm855"

    aput-object v5, v1, v3

    const-string v5, "IBM855"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "ibm437"

    aput-object v6, v5, v3

    const-string v6, "IBM437"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x24

    aput-object v1, p1, v5

    .line 1112
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "iso-8859-15"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_15"

    aput-object v5, v1, v2

    const/16 v5, 0x25

    aput-object v1, p1, v5

    .line 1113
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "iso-8859-16"

    aput-object v5, v1, v3

    const-string v5, "ISO_8859_16"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "x-utf-32le-bom"

    aput-object v6, v5, v3

    const-string v6, "UTF_32LE_BOM"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ibm857"

    aput-object v6, v5, v3

    const-string v6, "IBM857"

    aput-object v6, v5, v2

    aput-object v1, v5, v0

    const/16 v1, 0x26

    aput-object v5, p1, v1

    .line 1116
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "ibm00858"

    aput-object v5, v1, v3

    const-string v5, "IBM858"

    aput-object v5, v1, v2

    const/16 v5, 0x27

    aput-object v1, p1, v5

    .line 1117
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "big5-hkscs"

    aput-object v5, v1, v3

    const-string v5, "Big5_HKSCS"

    aput-object v5, v1, v2

    const/16 v5, 0x28

    aput-object v1, p1, v5

    .line 1118
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "x-utf-16le-bom"

    aput-object v5, v1, v3

    const-string v5, "UTF_16LE_BOM"

    aput-object v5, v1, v2

    const/16 v5, 0x2c

    aput-object v1, p1, v5

    .line 1119
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "cesu-8"

    aput-object v5, v1, v3

    const-string v5, "CESU_8"

    aput-object v5, v1, v2

    const/16 v5, 0x2f

    aput-object v1, p1, v5

    .line 1120
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "gbk"

    aput-object v5, v1, v3

    const-string v5, "GBK"

    aput-object v5, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "x-utf-32be-bom"

    aput-object v6, v5, v3

    const-string v6, "UTF_32BE_BOM"

    aput-object v6, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x30

    aput-object v1, p1, v5

    .line 1122
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "big5"

    aput-object v5, v1, v3

    const-string v5, "Big5"

    aput-object v5, v1, v2

    const/16 v5, 0x35

    aput-object v1, p1, v5

    .line 1123
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "koi8-r"

    aput-object v5, v1, v3

    const-string v5, "KOI8_R"

    aput-object v5, v1, v2

    const/16 v5, 0x38

    aput-object v1, p1, v5

    .line 1124
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "koi8-u"

    aput-object v5, v1, v3

    const-string v5, "KOI8_U"

    aput-object v5, v1, v2

    const/16 v5, 0x3b

    aput-object v1, p1, v5

    .line 1125
    new-array v1, v4, [Ljava/lang/Object;

    const-string v4, "x-euc-jp-linux"

    aput-object v4, v1, v3

    const-string v4, "EUC_JP_LINUX"

    aput-object v4, v1, v2

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "jis_x0212-1990"

    aput-object v5, v4, v3

    const-string v5, "JIS_X_0212"

    aput-object v5, v4, v2

    aput-object v4, v1, v0

    const/16 v4, 0x3c

    aput-object v1, p1, v4

    .line 1127
    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "gb2312"

    aput-object v4, v1, v3

    const-string v4, "EUC_CN"

    aput-object v4, v1, v2

    const/16 v4, 0x3d

    aput-object v1, p1, v4

    .line 1128
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "utf-32le"

    aput-object v1, v0, v3

    const-string v1, "UTF_32LE"

    aput-object v1, v0, v2

    const/16 v1, 0x3e

    aput-object v0, p1, v1

    .line 1129
    return-void
.end method
