.class Lcom/offsec/nethunter/SQLPersistence;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLPersistence.java"


# static fields
.field private static final CREATE_LAUNCHER_TABLE:Ljava/lang/String; = "CREATE TABLE LAUNCHERS (ID INTEGER PRIMARY KEY AUTOINCREMENT, BTN_LABEL TEXT, COMMAND TEXT )"

.field private static final DATABASE_NAME:Ljava/lang/String; = "KaliLaunchers"

.field private static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "KaliLaunchers"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public addApp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "btn_name"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .local v0, "id":J
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQLPersistence;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 44
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "BTN_LABEL"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "COMMAND"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v4, "LAUNCHERS"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 49
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 51
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-wide v0
.end method

.method public deleteApp(J)V
    .locals 4
    .param p1, "id"    # J

    .line 115
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQLPersistence;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    nop

    .line 119
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v2, "LAUNCHERS"

    const-string v3, "ID = ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 123
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method public getAllApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/LauncherApp;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 56
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/LauncherApp;>;"
    const-string v1, "SELECT  * FROM LAUNCHERS"

    .line 58
    .local v1, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQLPersistence;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 59
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 61
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    :cond_0
    new-instance v4, Lcom/offsec/nethunter/LauncherApp;

    invoke-direct {v4}, Lcom/offsec/nethunter/LauncherApp;-><init>()V

    .line 64
    .local v4, "app":Lcom/offsec/nethunter/LauncherApp;
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/offsec/nethunter/LauncherApp;->setId(J)V

    .line 65
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/LauncherApp;->setBtn_label(Ljava/lang/String;)V

    .line 66
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/offsec/nethunter/LauncherApp;->setCommand(Ljava/lang/String;)V

    .line 67
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 70
    .end local v4    # "app":Lcom/offsec/nethunter/LauncherApp;
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 71
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v0

    .line 59
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v4
.end method

.method public getApp(J)Lcom/offsec/nethunter/LauncherApp;
    .locals 13
    .param p1, "id"    # J

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "app":Lcom/offsec/nethunter/LauncherApp;
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQLPersistence;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 79
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/offsec/nethunter/LauncherApp;->COLUMNS:[Ljava/lang/String;

    .line 82
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    .line 79
    const-string v5, "LAUNCHERS"

    const-string v7, " id = ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v1

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 87
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    new-instance v3, Lcom/offsec/nethunter/LauncherApp;

    invoke-direct {v3}, Lcom/offsec/nethunter/LauncherApp;-><init>()V

    move-object v0, v3

    .line 89
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/offsec/nethunter/LauncherApp;->setId(J)V

    .line 90
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/LauncherApp;->setBtn_label(Ljava/lang/String;)V

    .line 91
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/offsec/nethunter/LauncherApp;->setCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 79
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v3

    .line 93
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 95
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_2
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    const-string v0, "CREATE TABLE LAUNCHERS (ID INTEGER PRIMARY KEY AUTOINCREMENT, BTN_LABEL TEXT, COMMAND TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 33
    const-string v0, "DROP TABLE IF EXISTS LAUNCHERS"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/SQLPersistence;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    return-void
.end method

.method public updateApp(Lcom/offsec/nethunter/LauncherApp;)V
    .locals 5
    .param p1, "app"    # Lcom/offsec/nethunter/LauncherApp;

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQLPersistence;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 102
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "BTN_LABEL"

    invoke-virtual {p1}, Lcom/offsec/nethunter/LauncherApp;->getBtn_label()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "COMMAND"

    invoke-virtual {p1}, Lcom/offsec/nethunter/LauncherApp;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    nop

    .line 108
    invoke-virtual {p1}, Lcom/offsec/nethunter/LauncherApp;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v3, "LAUNCHERS"

    const-string v4, "ID = ?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 112
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
