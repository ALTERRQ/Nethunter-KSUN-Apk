.class final Lj$/sun/nio/cs/StandardCharsets$Cache;
.super Lj$/sun/util/PreHashedMap;
.source "StandardCharsets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/StandardCharsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/sun/util/PreHashedMap<",
        "Ljava/nio/charset/Charset;",
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

    .line 1143
    const/16 v0, 0x3f

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {p0, v2, v0, v1, v0}, Lj$/sun/util/PreHashedMap;-><init>(IIII)V

    .line 1144
    return-void
.end method

.method synthetic constructor <init>(Lj$/sun/nio/cs/StandardCharsets$Cache-IA;)V
    .locals 0

    invoke-direct {p0}, Lj$/sun/nio/cs/StandardCharsets$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected init([Ljava/lang/Object;)V
    .locals 8
    .param p1, "ht"    # [Ljava/lang/Object;

    .line 1147
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ibm862"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v2

    aput-object v1, p1, v3

    .line 1148
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "euc-kr"

    aput-object v5, v1, v3

    aput-object v4, v1, v2

    aput-object v1, p1, v2

    .line 1149
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "windows-31j"

    aput-object v5, v1, v3

    aput-object v4, v1, v2

    aput-object v1, p1, v0

    .line 1150
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "x-pck"

    aput-object v5, v1, v3

    aput-object v4, v1, v2

    const/4 v5, 0x3

    aput-object v1, p1, v5

    .line 1151
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "ibm866"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "utf-16le"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/4 v6, 0x4

    aput-object v1, p1, v6

    .line 1153
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "tis-620"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "utf-32"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/4 v6, 0x5

    aput-object v1, p1, v6

    .line 1155
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "windows-1250"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/4 v6, 0x6

    aput-object v1, p1, v6

    .line 1156
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "windows-1251"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/4 v6, 0x7

    aput-object v1, p1, v6

    .line 1157
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "windows-1252"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "utf-32be"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "x-big5-solaris"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v1, v6, v0

    const/16 v1, 0x8

    aput-object v6, p1, v1

    .line 1160
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "x-jis0208"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "windows-1253"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0x9

    aput-object v1, p1, v6

    .line 1162
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "windows-1254"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0xa

    aput-object v1, p1, v6

    .line 1163
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "gb18030"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "utf-16"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0xb

    aput-object v1, p1, v6

    .line 1165
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "x-iso-8859-11"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0xc

    aput-object v1, p1, v6

    .line 1166
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "windows-1257"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0xd

    aput-object v1, p1, v6

    .line 1167
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "utf-16be"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0xe

    aput-object v1, p1, v6

    .line 1168
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "x-johab"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0xf

    aput-object v1, p1, v6

    .line 1169
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "jis_x0201"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "iso-8859-1"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0x10

    aput-object v1, p1, v6

    .line 1171
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-2"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x11

    aput-object v1, p1, v6

    .line 1172
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "x-euc-tw"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "utf-8"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "iso-8859-3"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v1, v6, v0

    const/16 v1, 0x12

    aput-object v6, p1, v1

    .line 1175
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "x-eucjp-open"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "iso-8859-4"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0x13

    aput-object v1, p1, v6

    .line 1177
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-5"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x14

    aput-object v1, p1, v6

    .line 1178
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-6"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x15

    aput-object v1, p1, v6

    .line 1179
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "x-ibm874"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "iso-8859-7"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0x16

    aput-object v1, p1, v6

    .line 1181
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "iso-8859-8"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "shift_jis"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0x17

    aput-object v1, p1, v6

    .line 1183
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-9"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x18

    aput-object v1, p1, v6

    .line 1184
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "x-ibm737"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x1c

    aput-object v1, p1, v6

    .line 1185
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm850"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x1f

    aput-object v1, p1, v6

    .line 1186
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "euc-jp"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x20

    aput-object v1, p1, v6

    .line 1187
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "ibm852"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "ibm775"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0x21

    aput-object v1, p1, v6

    .line 1189
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "us-ascii"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x22

    aput-object v1, p1, v6

    .line 1190
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-13"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x23

    aput-object v1, p1, v6

    .line 1191
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "ibm855"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "ibm437"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0x24

    aput-object v1, p1, v6

    .line 1193
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "iso-8859-15"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x25

    aput-object v1, p1, v6

    .line 1194
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "iso-8859-16"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "x-utf-32le-bom"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "ibm857"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v1, v6, v0

    const/16 v1, 0x26

    aput-object v6, p1, v1

    .line 1197
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "ibm00858"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x27

    aput-object v1, p1, v6

    .line 1198
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "big5-hkscs"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x28

    aput-object v1, p1, v6

    .line 1199
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "x-utf-16le-bom"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x2c

    aput-object v1, p1, v6

    .line 1200
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "cesu-8"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x2f

    aput-object v1, p1, v6

    .line 1201
    new-array v1, v5, [Ljava/lang/Object;

    const-string v6, "gbk"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    new-array v6, v0, [Ljava/lang/Object;

    const-string v7, "x-utf-32be-bom"

    aput-object v7, v6, v3

    aput-object v4, v6, v2

    aput-object v6, v1, v0

    const/16 v6, 0x30

    aput-object v1, p1, v6

    .line 1203
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "big5"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x35

    aput-object v1, p1, v6

    .line 1204
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "koi8-r"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x38

    aput-object v1, p1, v6

    .line 1205
    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "koi8-u"

    aput-object v6, v1, v3

    aput-object v4, v1, v2

    const/16 v6, 0x3b

    aput-object v1, p1, v6

    .line 1206
    new-array v1, v5, [Ljava/lang/Object;

    const-string v5, "x-euc-jp-linux"

    aput-object v5, v1, v3

    aput-object v4, v1, v2

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "jis_x0212-1990"

    aput-object v6, v5, v3

    aput-object v4, v5, v2

    aput-object v5, v1, v0

    const/16 v5, 0x3c

    aput-object v1, p1, v5

    .line 1208
    new-array v1, v0, [Ljava/lang/Object;

    const-string v5, "gb2312"

    aput-object v5, v1, v3

    aput-object v4, v1, v2

    const/16 v5, 0x3d

    aput-object v1, p1, v5

    .line 1209
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "utf-32le"

    aput-object v1, v0, v3

    aput-object v4, v0, v2

    const/16 v1, 0x3e

    aput-object v0, p1, v1

    .line 1210
    return-void
.end method
