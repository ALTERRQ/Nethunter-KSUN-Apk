.class public Lcom/offsec/nethunter/SQL/USBArsenalSQL;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "USBArsenalSQL.java"


# static fields
.field private static final COLUMNS_USBNETWORK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLUMNS_USBSWITCH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATABASE_NAME:Ljava/lang/String; = "USBArsenalFragment"

.field private static final TAG:Ljava/lang/String; = "USBArsenalSQLSQL"

.field private static final USBNETWORK_TABLE_NAME:Ljava/lang/String; = "USBNetwork"

.field private static final USBSWITCH_TABLE_NAME:Ljava/lang/String; = "USBSwitch"

.field private static instance:Lcom/offsec/nethunter/SQL/USBArsenalSQL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "USBArsenalFragment"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const-string v1, "target"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const-string v1, "functions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const-string v1, "idVendor"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const-string v1, "idProduct"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const-string v1, "product"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const-string v1, "serialnumber"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const-string v1, "attack_mode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const-string v1, "upstream_iface"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const-string v1, "usb_iface"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const-string v1, "ip_address_for_target"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const-string v1, "ip_gateway"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const-string v1, "ip_subnetmask"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->instance:Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->instance:Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    .line 34
    :cond_0
    sget-object v1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->instance:Lcom/offsec/nethunter/SQL/USBArsenalSQL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private ifTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 4
    .param p1, "tempDB"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, "tableExists":Z
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 360
    .local v1, "c":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 363
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v1    # "c":Landroid/database/Cursor;
    goto :goto_0

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "USBArsenalSQLSQL"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method private verifyDB(Ljava/lang/String;)Z
    .locals 13
    .param p1, "storedDBpath"    # Ljava/lang/String;

    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 315
    .local v0, "tempDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x1

    .line 316
    .local v10, "isDBValid":Z
    const-string v2, "USBSwitch"

    invoke-direct {p0, v0, v2}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->ifTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    const/4 v11, 0x1

    if-eqz v2, :cond_4

    .line 317
    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'USBSwitch\'"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 318
    .local v12, "c":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v11, :cond_3

    .line 319
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 320
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "USBSwitch"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 321
    .end local v12    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, "tempColumnNames":[Ljava/lang/String;
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 323
    array-length v4, v3

    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 324
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 325
    aget-object v5, v3, v4

    sget-object v6, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 326
    const/4 v10, 0x0

    .line 327
    goto :goto_1

    .line 324
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 330
    :cond_2
    const/4 v10, 0x0

    .line 331
    .end local v3    # "tempColumnNames":[Ljava/lang/String;
    :goto_2
    goto :goto_3

    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v12    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v10, 0x0

    .line 332
    .end local v12    # "c":Landroid/database/Cursor;
    :goto_3
    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    .line 333
    :goto_4
    if-eqz v10, :cond_a

    .line 334
    const-string v2, "USBNetwork"

    invoke-direct {p0, v0, v2}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->ifTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 335
    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'USBNetwork\'"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 336
    .local v1, "c":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v11, :cond_8

    .line 337
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "USBNetwork"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 339
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "tempColumnNames":[Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 341
    array-length v3, v2

    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 342
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_6

    .line 343
    aget-object v4, v2, v3

    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 344
    const/4 v10, 0x0

    .line 345
    goto :goto_6

    .line 342
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .end local v3    # "i":I
    :cond_6
    :goto_6
    goto :goto_7

    .line 348
    :cond_7
    const/4 v10, 0x0

    .line 349
    .end local v2    # "tempColumnNames":[Ljava/lang/String;
    :goto_7
    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    move v10, v2

    .line 350
    .end local v1    # "c":Landroid/database/Cursor;
    :goto_8
    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    .line 352
    :cond_a
    :goto_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 353
    return v10
.end method


# virtual methods
.method public backupData(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "storedDBpath"    # Ljava/lang/String;

    .line 253
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, "data":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 255
    .local v1, "sd":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.offsec.nethunter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/databases/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "currentDBPath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, "currentDB":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v4, "backupDB":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 261
    .local v7, "src":Ljava/nio/channels/FileChannel;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 262
    .local v6, "dst":Ljava/nio/channels/FileChannel;
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 263
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 264
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "data":Ljava/io/File;
    .end local v1    # "sd":Ljava/io/File;
    .end local v2    # "currentDBPath":Ljava/lang/String;
    .end local v3    # "currentDB":Ljava/io/File;
    .end local v4    # "backupDB":Ljava/io/File;
    .end local v6    # "dst":Ljava/nio/channels/FileChannel;
    .end local v7    # "src":Ljava/nio/channels/FileChannel;
    :cond_0
    nop

    .line 271
    const/4 v0, 0x0

    return-object v0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getUSBNetworkColumnData(I)Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;
    .locals 14
    .param p1, "attackModePosition"    # I

    .line 182
    new-instance v0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    invoke-direct {v0}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;-><init>()V

    .line 183
    .local v0, "usbArsenalUSBNetworkModel":Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 184
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM USBNetwork WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 185
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 187
    .local v4, "columnIndex1":I
    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 188
    .local v5, "columnIndex2":I
    sget-object v6, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 189
    .local v6, "columnIndex3":I
    sget-object v7, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 190
    .local v7, "columnIndex4":I
    sget-object v8, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 192
    .local v8, "columnIndex5":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_0
    move-object v10, v3

    .line 193
    .local v10, "columnValue1":Ljava/lang/String;
    :goto_0
    if-eq v5, v9, :cond_1

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v3

    .line 194
    .local v11, "columnValue2":Ljava/lang/String;
    :goto_1
    if-eq v6, v9, :cond_2

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_2
    move-object v12, v3

    .line 195
    .local v12, "columnValue3":Ljava/lang/String;
    :goto_2
    if-eq v7, v9, :cond_3

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_3
    move-object v13, v3

    .line 196
    .local v13, "columnValue4":Ljava/lang/String;
    :goto_3
    if-eq v8, v9, :cond_4

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "columnValue5":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v10}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setupstream_iface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v11}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setusb_iface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v12}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setip_address_for_target(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v13}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setip_gateway(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setip_subnetmask(Ljava/lang/String;)V

    .line 204
    .end local v3    # "columnValue5":Ljava/lang/String;
    .end local v4    # "columnIndex1":I
    .end local v5    # "columnIndex2":I
    .end local v6    # "columnIndex3":I
    .end local v7    # "columnIndex4":I
    .end local v8    # "columnIndex5":I
    .end local v10    # "columnValue1":Ljava/lang/String;
    .end local v11    # "columnValue2":Ljava/lang/String;
    .end local v12    # "columnValue3":Ljava/lang/String;
    .end local v13    # "columnValue4":Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 205
    return-object v0
.end method

.method public getUSBSwitchColumnData(Ljava/lang/String;Ljava/lang/String;)Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;
    .locals 16
    .param p1, "targetOSName"    # Ljava/lang/String;
    .param p2, "functionName"    # Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    invoke-direct {v0}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;-><init>()V

    .line 156
    .local v0, "usbArsenalUSBSwitchModel":Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 157
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM USBSwitch WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\';"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 158
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 159
    sget-object v6, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 160
    .local v6, "columnIndex2":I
    sget-object v7, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 161
    .local v7, "columnIndex3":I
    sget-object v8, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 162
    .local v8, "columnIndex4":I
    sget-object v9, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 163
    .local v9, "columnIndex5":I
    sget-object v10, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 165
    .local v10, "columnIndex6":I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    :cond_0
    move-object v12, v5

    .line 166
    .local v12, "columnValue2":Ljava/lang/String;
    :goto_0
    if-eq v7, v11, :cond_1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_1
    move-object v13, v5

    .line 167
    .local v13, "columnValue3":Ljava/lang/String;
    :goto_1
    if-eq v8, v11, :cond_2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_2
    move-object v14, v5

    .line 168
    .local v14, "columnValue4":Ljava/lang/String;
    :goto_2
    if-eq v9, v11, :cond_3

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :cond_3
    move-object v15, v5

    .line 169
    .local v15, "columnValue5":Ljava/lang/String;
    :goto_3
    if-eq v10, v11, :cond_4

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "columnValue6":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v12}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setidVendor(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, v13}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setidProduct(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v14}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setmanufacturer(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v15}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setproduct(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, v5}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setserialnumber(Ljava/lang/String;)V

    .line 177
    .end local v5    # "columnValue6":Ljava/lang/String;
    .end local v6    # "columnIndex2":I
    .end local v7    # "columnIndex3":I
    .end local v8    # "columnIndex4":I
    .end local v9    # "columnIndex5":I
    .end local v10    # "columnIndex6":I
    .end local v12    # "columnValue2":Ljava/lang/String;
    .end local v13    # "columnValue3":Ljava/lang/String;
    .end local v14    # "columnValue4":Ljava/lang/String;
    .end local v15    # "columnValue5":Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 178
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    move-object/from16 v0, p1

    const/16 v1, 0x2d

    new-array v1, v1, [[Ljava/lang/String;

    const-string v7, ""

    const-string v8, ""

    const-string v2, "Windows"

    const-string v3, "reset"

    const-string v4, "0x1234"

    const-string v5, "0x5678"

    const-string v6, ""

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v9, ""

    const-string v10, ""

    const-string v4, "Windows"

    const-string v5, "hid"

    const-string v6, "0x046d"

    const-string v7, "0xc316"

    const-string v8, ""

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v10, ""

    const-string v11, ""

    const-string v5, "Windows"

    const-string v6, "hid,adb"

    const-string v7, "0x046d"

    const-string v8, "0xc317"

    const-string v9, ""

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v11, ""

    const-string v12, ""

    const-string v6, "Windows"

    const-string v7, "mass_storage"

    const-string v8, "0x9051"

    const-string v9, "0x168a"

    const-string v10, ""

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v12, ""

    const-string v13, ""

    const-string v7, "Windows"

    const-string v8, "mass_storage,adb"

    const-string v9, "0x9051"

    const-string v10, "0x168b"

    const-string v11, ""

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v13, ""

    const-string v14, ""

    const-string v8, "Windows"

    const-string v9, "rndis"

    const-string v10, "0x0525"

    const-string v11, "0xa4a2"

    const-string v12, ""

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v14, ""

    const-string v15, ""

    const-string v9, "Windows"

    const-string v10, "rndis,adb"

    const-string v11, "0x0525"

    const-string v12, "0xa4a3"

    const-string v13, ""

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v15, ""

    const-string v16, ""

    const-string v10, "Windows"

    const-string v11, "hid,mass_storage"

    const-string v12, "0x046d"

    const-string v13, "0xc318"

    const-string v14, ""

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Windows"

    const-string v12, "hid,mass_storage,adb"

    const-string v13, "0x046d"

    const-string v14, "0xc319"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x8

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Windows"

    const-string v12, "rndis,hid"

    const-string v13, "0x0525"

    const-string v14, "0xa4a6"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x9

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Windows"

    const-string v12, "rndis,hid,adb"

    const-string v13, "0x0525"

    const-string v14, "0xa4a7"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xa

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Windows"

    const-string v12, "rndis,mass_storage"

    const-string v13, "0x0525"

    const-string v14, "0xa4a4"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xb

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Windows"

    const-string v12, "rndis,mass_storage,adb"

    const-string v13, "0x0525"

    const-string v14, "0xa4a5"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xc

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Windows"

    const-string v12, "rndis,hid,mass_storage"

    const-string v13, "0x0525"

    const-string v14, "0xa4a8"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xd

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Windows"

    const-string v12, "rndis,hid,mass_storage,adb"

    const-string v13, "0x0525"

    const-string v14, "0xa4a9"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xe

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "reset"

    const-string v13, "0x1234"

    const-string v14, "0x5678"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0xf

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "hid"

    const-string v13, "0x046d"

    const-string v14, "0xc316"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x10

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "hid,adb"

    const-string v13, "0x046d"

    const-string v14, "0xc317"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x11

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "mass_storage"

    const-string v13, "0x9051"

    const-string v14, "0x168a"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x12

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "mass_storage,adb"

    const-string v13, "0x9051"

    const-string v14, "0x168b"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x13

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "rndis"

    const-string v13, "0x0525"

    const-string v14, "0xa4a2"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x14

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "rndis,adb"

    const-string v13, "0x0525"

    const-string v14, "0xa4a3"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x15

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "hid,mass_storage"

    const-string v13, "0x046d"

    const-string v14, "0xc318"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x16

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "hid,mass_storage,adb"

    const-string v13, "0x046d"

    const-string v14, "0xc319"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x17

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "rndis,hid"

    const-string v13, "0x0525"

    const-string v14, "0xa4a6"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x18

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "rndis,hid,adb"

    const-string v13, "0x0525"

    const-string v14, "0xa4a7"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x19

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "rndis,mass_storage"

    const-string v13, "0x0525"

    const-string v14, "0xa4a4"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x1a

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "rndis,mass_storage,adb"

    const-string v13, "0x0525"

    const-string v14, "0xa4a5"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x1b

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "rndis,hid,mass_storage"

    const-string v13, "0x0525"

    const-string v14, "0xa4a8"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x1c

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Linux"

    const-string v12, "rndis,hid,mass_storage,adb"

    const-string v13, "0x0525"

    const-string v14, "0xa4a9"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x1d

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "reset"

    const-string v13, "0x1234"

    const-string v14, "0x5678"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x1e

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "hid"

    const-string v13, "0x05ac"

    const-string v14, "0x0201"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x1f

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "hid,adb"

    const-string v13, "0x05ac"

    const-string v14, "0x0201"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x20

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "mass_storage"

    const-string v13, "0x0930"

    const-string v14, "0x6545"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x21

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "mass_storage,adb"

    const-string v13, "0x0930"

    const-string v14, "0x6545"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x22

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "acm,ecm"

    const-string v13, "0x1d6b"

    const-string v14, "0x0105"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x23

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "acm,ecm,adb"

    const-string v13, "0x1d6b"

    const-string v14, "0x0105"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x24

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "hid,mass_storage"

    const-string v13, "0x05ac"

    const-string v14, "0x0201"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x25

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "hid,mass_storage,adb"

    const-string v13, "0x05ac"

    const-string v14, "0x0201"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x26

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "acm,ecm,hid"

    const-string v13, "0x05ac"

    const-string v14, "0x0201"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x27

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "acm,ecm,hid,adb"

    const-string v13, "0x05ac"

    const-string v14, "0x0201"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x28

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "acm,ecm,mass_storage"

    const-string v13, "0x1d6b"

    const-string v14, "0x0105"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x29

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "acm,ecm,mass_storage,adb"

    const-string v13, "0x1d6b"

    const-string v14, "0x0105"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x2a

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "acm,ecm,hid,mass_storage"

    const-string v13, "0x05ac"

    const-string v14, "0x0201"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x2b

    aput-object v2, v1, v10

    const-string v16, ""

    const-string v17, ""

    const-string v11, "Mac OS"

    const-string v12, "acm,ecm,hid,mass_storage,adb"

    const-string v13, "0x05ac"

    const-string v14, "0x0201"

    const-string v15, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x2c

    aput-object v2, v1, v10

    .line 104
    .local v1, "USBSwitchData":[[Ljava/lang/String;
    new-array v2, v4, [[Ljava/lang/String;

    const-string v14, "192.168.192.1"

    const-string v15, "255.255.255.0"

    const-string v10, "0"

    const-string v11, "wlan0"

    const-string v12, "rndis0"

    const-string v13, "192.168.192.100"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v3

    .line 107
    .local v2, "USBNetworkData":[[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CREATE TABLE USBSwitch ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " TEXT, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " TEXT)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 107
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CREATE TABLE USBNetwork ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " INTEGER, "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 111
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v10, "initialValues":Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    array-length v11, v1

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v14, v1, v12

    .line 118
    .local v14, "data":[Ljava/lang/String;
    sget-object v15, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aget-object v13, v14, v3

    invoke-virtual {v10, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v15, v14, v4

    invoke-virtual {v10, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v15, v14, v5

    invoke-virtual {v10, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v15, v14, v6

    invoke-virtual {v10, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v15, v14, v7

    invoke-virtual {v10, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v15, v14, v8

    invoke-virtual {v10, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v15, v14, v9

    invoke-virtual {v10, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v13, "USBSwitch"

    const/4 v15, 0x0

    invoke-virtual {v0, v13, v15, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 126
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 117
    .end local v14    # "data":[Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 128
    :cond_0
    array-length v9, v2

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_1

    aget-object v12, v2, v11

    .line 129
    .local v12, "data":[Ljava/lang/String;
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v14, v12, v3

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v14, v12, v4

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v14, v12, v5

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v14, v12, v6

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v14, v12, v7

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v13, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aget-object v14, v12, v8

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v13, "USBNetwork"

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 136
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 128
    .end local v12    # "data":[Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 140
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 152
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 144
    const-string v0, "DROP TABLE IF EXISTS USBSwitch"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v0, "DROP TABLE IF EXISTS USBNetwork"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 147
    return-void
.end method

.method public resetData()Z
    .locals 2

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 241
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DROP TABLE IF EXISTS USBSwitch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 242
    const-string v1, "DROP TABLE IF EXISTS USBNetwork"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 248
    const/4 v0, 0x1

    return v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const/4 v1, 0x0

    return v1
.end method

.method public restoreData(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "storedDBpath"    # Ljava/lang/String;

    .line 275
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const-string v0, "db file not found."

    return-object v0

    .line 279
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 280
    .local v0, "tempDB":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 281
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 282
    const-string v1, "db cannot be restored.\nReason: the db version of your backup db is newer than the current db version."

    return-object v1

    .line 284
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 286
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->verifyDB(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 287
    const-string v1, "Invalid DB format."

    return-object v1

    .line 291
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 292
    .local v2, "data":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 293
    .local v3, "sd":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.offsec.nethunter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/databases/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "currentDBPath":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 295
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v5, "currentDB":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v6, "backupDB":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 298
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 299
    .local v9, "src":Ljava/nio/channels/FileChannel;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 300
    .local v8, "dst":Ljava/nio/channels/FileChannel;
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v12

    const-wide/16 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 301
    invoke-virtual {v9}, Ljava/nio/channels/FileChannel;->close()V

    .line 302
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v2    # "data":Ljava/io/File;
    .end local v3    # "sd":Ljava/io/File;
    .end local v4    # "currentDBPath":Ljava/lang/String;
    .end local v5    # "currentDB":Ljava/io/File;
    .end local v6    # "backupDB":Ljava/io/File;
    .end local v8    # "dst":Ljava/nio/channels/FileChannel;
    .end local v9    # "src":Ljava/nio/channels/FileChannel;
    :cond_3
    nop

    .line 310
    return-object v1

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    const-string v2, "USBArsenalSQLSQL"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setUSBNetworkColumnData(ILcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;)Z
    .locals 8
    .param p1, "usbNetworkAttackModePosition"    # I
    .param p2, "usbArsenalUSBNetworkModel"    # Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    .line 223
    const-string v0, "\',"

    const-string v1, " = \'"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 224
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE USBNetwork SET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 225
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getupstream_iface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 226
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getusb_iface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 227
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_address_for_target()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 228
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_gateway()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 229
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_subnetmask()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' WHERE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    .line 230
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\';"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 235
    return v6

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    return v2
.end method

.method public setUSBSwitchColumnData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "targetColumnIndex"    # I
    .param p3, "targetOSName"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    .line 210
    const-string v0, " = \'"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 211
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE USBSwitch SET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    .line 213
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\';"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 218
    return v5

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    return v1
.end method
