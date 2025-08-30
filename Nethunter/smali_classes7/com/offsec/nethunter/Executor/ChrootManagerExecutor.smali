.class public Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;
.super Ljava/lang/Object;
.source "ChrootManagerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;
    }
.end annotation


# static fields
.field public static final BACKUP_CHROOT:I = 0x4

.field public static final CHECK_CHROOT:I = 0x0

.field public static final DOWNLOAD_CHROOT:I = 0x6

.field public static final FIND_CHROOT:I = 0x7

.field public static final INSTALL_CHROOT:I = 0x3

.field public static final ISSUE_BANNER:I = 0x8

.field public static final MOUNT_CHROOT:I = 0x1

.field public static final REMOVE_CHROOT:I = 0x5

.field public static final UNMOUNT_CHROOT:I = 0x2


# instance fields
.field private final ACTIONCODE:I

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

.field private final mainHandler:Landroid/os/Handler;

.field private resultCode:I

.field private final resultString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Ks4IBGfPrRGjTUdXfVza5G49N5w(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->onPostExecute()V

    return-void
.end method

.method public static synthetic $r8$lambda$LPa40-zxCdDll78CFIo9r9KYac0(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->onPreExecute()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "ACTIONCODE"    # Ljava/lang/Integer;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->mainHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultString:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->ACTIONCODE:I

    .line 44
    return-void
.end method

.method private onPostExecute()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    iget v1, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    iget-object v2, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultString:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;->onExecutorFinished(ILjava/util/ArrayList;)V

    .line 172
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    .line 173
    return-void
.end method

.method private onPreExecute()V
    .locals 1

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nethunter/ChrootManagerFragment;->isExecutorRunning:Z

    .line 55
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    invoke-interface {v0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;->onExecutorPrepare()V

    .line 58
    :cond_0
    return-void
.end method

.method private publishProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 163
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    invoke-interface {v0, p1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;->onExecutorProgressUpdate(I)V

    .line 166
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)V
    .locals 25
    .param p1, "objects"    # [Ljava/lang/Object;

    .line 61
    move-object/from16 v1, p0

    const-string v2, "echo \"[-] Error closing streams: "

    iget v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->ACTIONCODE:I

    const-string v3, " "

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "\""

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_17

    .line 63
    :pswitch_0
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v7

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    .line 64
    goto/16 :goto_17

    .line 85
    :pswitch_1
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultString:Ljava/util/ArrayList;

    new-instance v2, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v2}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/chrootmgr -c \"findchroot\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 86
    goto/16 :goto_17

    .line 89
    :pswitch_2
    :try_start_0
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "echo \"[!] The Download has been started...Please wait.\""

    aget-object v8, p1, v7

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v0, v3, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    .line 91
    const-string v0, "image-nethunter.kali.org"

    const-string v3, "kali.download"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 92
    .local v3, "servers":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 93
    .local v8, "success":Z
    const/4 v0, 0x0

    .line 95
    .local v0, "lastException":Ljava/lang/Exception;
    array-length v9, v3

    move-object v10, v0

    const/4 v11, 0x0

    .end local v0    # "lastException":Ljava/lang/Exception;
    .local v10, "lastException":Ljava/lang/Exception;
    :goto_0
    if-ge v11, v9, :cond_b

    aget-object v0, v3, v11

    move-object v12, v0

    .line 96
    .local v12, "server":Ljava/lang/String;
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "echo \"[!] Trying to download from: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget-object v14, p1, v7

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v0, v13, v14}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    .line 97
    const/4 v13, 0x0

    .line 98
    .local v13, "reader":Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 101
    .local v14, "writer":Ljava/io/BufferedOutputStream;
    :try_start_1
    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "imagePath":Ljava/lang/String;
    const-string v15, "minimal"

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v15, :cond_0

    :try_start_2
    const-string v15, "arm64"

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 103
    const-string v15, "/nethunter-images/current/rootfs/kali-nethunter-rootfs-minimal-arm64.tar.xz"
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v15

    goto :goto_1

    .line 141
    .end local v0    # "imagePath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move-object v3, v0

    goto/16 :goto_11

    .line 137
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move/from16 v23, v9

    goto/16 :goto_5

    .line 134
    :catch_1
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move/from16 v23, v9

    goto/16 :goto_8

    .line 131
    :catch_2
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move/from16 v23, v9

    goto/16 :goto_b

    .line 105
    .restart local v0    # "imagePath":Ljava/lang/String;
    :cond_0
    move-object v15, v0

    .end local v0    # "imagePath":Ljava/lang/String;
    .local v15, "imagePath":Ljava/lang/String;
    :goto_1
    :try_start_3
    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 106
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 107
    .local v5, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    move/from16 v17, v0

    .line 109
    .local v17, "lengthOfFile":I
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object/from16 v18, v0

    .line 110
    .local v18, "input":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    move-object/from16 v7, v18

    .end local v18    # "input":Ljava/io/InputStream;
    .local v7, "input":Ljava/io/InputStream;
    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v13, v0

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v18, v3

    .end local v3    # "servers":[Ljava/lang/String;
    .local v18, "servers":[Ljava/lang/String;
    const/16 v3, 0x1a

    if-lt v0, v3, :cond_1

    .line 112
    :try_start_4
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const/4 v4, 0x0

    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    .local v19, "url":Ljava/net/URL;
    .local v20, "connection":Ljava/net/HttpURLConnection;
    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v5, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v14, v0

    goto :goto_2

    .line 141
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v15    # "imagePath":Ljava/lang/String;
    .end local v17    # "lengthOfFile":I
    .end local v19    # "url":Ljava/net/URL;
    .end local v20    # "connection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v0

    move-object v3, v0

    move/from16 v21, v8

    goto/16 :goto_11

    .line 137
    :catch_3
    move-exception v0

    move/from16 v21, v8

    move/from16 v23, v9

    goto/16 :goto_5

    .line 134
    :catch_4
    move-exception v0

    move/from16 v21, v8

    move/from16 v23, v9

    goto/16 :goto_8

    .line 131
    :catch_5
    move-exception v0

    move/from16 v21, v8

    move/from16 v23, v9

    goto/16 :goto_b

    .line 111
    .restart local v4    # "url":Ljava/net/URL;
    .restart local v5    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "input":Ljava/io/InputStream;
    .restart local v15    # "imagePath":Ljava/lang/String;
    .restart local v17    # "lengthOfFile":I
    :cond_1
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 115
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "connection":Ljava/net/HttpURLConnection;
    .restart local v19    # "url":Ljava/net/URL;
    .restart local v20    # "connection":Ljava/net/HttpURLConnection;
    :goto_2
    const/16 v0, 0x400

    :try_start_5
    new-array v0, v0, [B

    move-object v3, v0

    .line 116
    .local v3, "data":[B
    const-wide/16 v4, 0x0

    .line 118
    .local v4, "bytes":J
    :goto_3
    invoke-virtual {v13, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move/from16 v21, v0

    move-object/from16 v22, v7

    .end local v7    # "input":Ljava/io/InputStream;
    .local v21, "count":I
    .local v22, "input":Ljava/io/InputStream;
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 119
    move/from16 v23, v9

    move/from16 v7, v21

    move/from16 v21, v8

    .end local v8    # "success":Z
    .local v7, "count":I
    .local v21, "success":Z
    int-to-long v8, v7

    add-long/2addr v4, v8

    .line 120
    long-to-float v0, v4

    move/from16 v8, v17

    .end local v17    # "lengthOfFile":I
    .local v8, "lengthOfFile":I
    int-to-float v9, v8

    div-float/2addr v0, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v0, v0, v9

    float-to-int v0, v0

    .line 121
    .local v0, "progress":I
    :try_start_6
    invoke-direct {v1, v0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->publishProgress(I)V

    .line 122
    if-eqz v14, :cond_2

    .line 123
    const/4 v9, 0x0

    invoke-virtual {v14, v3, v9, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 125
    .end local v0    # "progress":I
    :cond_2
    move/from16 v17, v8

    move/from16 v8, v21

    move-object/from16 v7, v22

    move/from16 v9, v23

    goto :goto_3

    .line 127
    .end local v7    # "count":I
    .local v8, "success":Z
    .restart local v17    # "lengthOfFile":I
    .local v21, "count":I
    :cond_3
    move/from16 v23, v9

    move/from16 v7, v21

    move/from16 v21, v8

    move/from16 v8, v17

    .end local v17    # "lengthOfFile":I
    .restart local v7    # "count":I
    .local v8, "lengthOfFile":I
    .local v21, "success":Z
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v9, "echo \"[+] Download completed. It\'s time to install from storage.\""

    const/16 v17, 0x0

    aget-object v24, p1, v17

    move-object/from16 v17, v3

    .end local v3    # "data":[B
    .local v17, "data":[B
    move-object/from16 v3, v24

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v9, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 128
    const/4 v3, 0x1

    .line 142
    .end local v21    # "success":Z
    .local v3, "success":Z
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    .line 143
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14

    .line 146
    :cond_4
    goto :goto_4

    .line 144
    :catch_6
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    iget-object v9, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aget-object v16, p1, v11

    move-object/from16 v11, v16

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v9, v2, v11}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_14

    .line 129
    nop

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "bytes":J
    .end local v7    # "count":I
    .end local v8    # "lengthOfFile":I
    .end local v12    # "server":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedInputStream;
    .end local v14    # "writer":Ljava/io/BufferedOutputStream;
    .end local v15    # "imagePath":Ljava/lang/String;
    .end local v17    # "data":[B
    .end local v19    # "url":Ljava/net/URL;
    .end local v20    # "connection":Ljava/net/HttpURLConnection;
    .end local v22    # "input":Ljava/io/InputStream;
    :goto_4
    move v8, v3

    goto/16 :goto_16

    .line 137
    .end local v3    # "success":Z
    .restart local v12    # "server":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedInputStream;
    .restart local v14    # "writer":Ljava/io/BufferedOutputStream;
    .restart local v21    # "success":Z
    :catch_7
    move-exception v0

    goto :goto_5

    .line 134
    :catch_8
    move-exception v0

    goto/16 :goto_8

    .line 131
    :catch_9
    move-exception v0

    goto/16 :goto_b

    .line 141
    .end local v21    # "success":Z
    .local v8, "success":Z
    :catchall_2
    move-exception v0

    move/from16 v21, v8

    move-object v3, v0

    .end local v8    # "success":Z
    .restart local v21    # "success":Z
    goto/16 :goto_11

    .line 137
    .end local v21    # "success":Z
    .restart local v8    # "success":Z
    :catch_a
    move-exception v0

    move/from16 v21, v8

    move/from16 v23, v9

    .end local v8    # "success":Z
    .restart local v21    # "success":Z
    goto :goto_5

    .line 134
    .end local v21    # "success":Z
    .restart local v8    # "success":Z
    :catch_b
    move-exception v0

    move/from16 v21, v8

    move/from16 v23, v9

    .end local v8    # "success":Z
    .restart local v21    # "success":Z
    goto/16 :goto_8

    .line 131
    .end local v21    # "success":Z
    .restart local v8    # "success":Z
    :catch_c
    move-exception v0

    move/from16 v21, v8

    move/from16 v23, v9

    .end local v8    # "success":Z
    .restart local v21    # "success":Z
    goto/16 :goto_b

    .line 141
    .end local v18    # "servers":[Ljava/lang/String;
    .end local v21    # "success":Z
    .local v3, "servers":[Ljava/lang/String;
    .restart local v8    # "success":Z
    :catchall_3
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move-object v3, v0

    .end local v3    # "servers":[Ljava/lang/String;
    .end local v8    # "success":Z
    .restart local v18    # "servers":[Ljava/lang/String;
    .restart local v21    # "success":Z
    goto/16 :goto_11

    .line 137
    .end local v18    # "servers":[Ljava/lang/String;
    .end local v21    # "success":Z
    .restart local v3    # "servers":[Ljava/lang/String;
    .restart local v8    # "success":Z
    :catch_d
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move/from16 v23, v9

    .line 138
    .end local v3    # "servers":[Ljava/lang/String;
    .end local v8    # "success":Z
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v18    # "servers":[Ljava/lang/String;
    .restart local v21    # "success":Z
    :goto_5
    :try_start_9
    iget-object v3, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo \"[-] Security Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v7, p1, v5

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v3, v4, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 139
    move-object v3, v0

    .line 142
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v10    # "lastException":Ljava/lang/Exception;
    .local v3, "lastException":Ljava/lang/Exception;
    if-eqz v13, :cond_5

    :try_start_a
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_6

    .line 144
    :catch_e
    move-exception v0

    goto :goto_7

    .line 143
    :cond_5
    :goto_6
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_14

    goto/16 :goto_f

    .line 145
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    :try_start_b
    iget-object v4, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v8, p1, v7

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v4, v5, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_14

    goto/16 :goto_e

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    .end local v18    # "servers":[Ljava/lang/String;
    .end local v21    # "success":Z
    .local v3, "servers":[Ljava/lang/String;
    .restart local v8    # "success":Z
    .restart local v10    # "lastException":Ljava/lang/Exception;
    :catch_f
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move/from16 v23, v9

    .line 135
    .end local v3    # "servers":[Ljava/lang/String;
    .end local v8    # "success":Z
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v18    # "servers":[Ljava/lang/String;
    .restart local v21    # "success":Z
    :goto_8
    :try_start_c
    iget-object v3, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo \"[-] I/O Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v7, p1, v5

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v3, v4, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 136
    move-object v3, v0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "lastException":Ljava/lang/Exception;
    .local v3, "lastException":Ljava/lang/Exception;
    if-eqz v13, :cond_6

    :try_start_d
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_9

    .line 144
    :catch_10
    move-exception v0

    goto :goto_a

    .line 143
    :cond_6
    :goto_9
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_f

    .line 145
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_a
    :try_start_e
    iget-object v4, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v8, p1, v7

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v4, v5, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_14

    goto :goto_e

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v18    # "servers":[Ljava/lang/String;
    .end local v21    # "success":Z
    .local v3, "servers":[Ljava/lang/String;
    .restart local v8    # "success":Z
    .restart local v10    # "lastException":Ljava/lang/Exception;
    :catch_11
    move-exception v0

    move-object/from16 v18, v3

    move/from16 v21, v8

    move/from16 v23, v9

    .line 132
    .end local v3    # "servers":[Ljava/lang/String;
    .end local v8    # "success":Z
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v18    # "servers":[Ljava/lang/String;
    .restart local v21    # "success":Z
    :goto_b
    :try_start_f
    iget-object v3, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo \"[-] Invalid URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v7, p1, v5

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v3, v4, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 133
    move-object v3, v0

    .line 142
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v10    # "lastException":Ljava/lang/Exception;
    .local v3, "lastException":Ljava/lang/Exception;
    if-eqz v13, :cond_7

    :try_start_10
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_c

    .line 144
    :catch_12
    move-exception v0

    goto :goto_d

    .line 143
    :cond_7
    :goto_c
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    goto :goto_f

    .line 145
    .local v0, "e":Ljava/io/IOException;
    :goto_d
    :try_start_11
    iget-object v4, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v8, p1, v7

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v4, v5, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_14

    .line 147
    :goto_e
    nop

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_10

    .line 146
    :cond_8
    :goto_f
    nop

    .line 95
    .end local v12    # "server":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedInputStream;
    .end local v14    # "writer":Ljava/io/BufferedOutputStream;
    :goto_10
    move-object v10, v3

    .end local v3    # "lastException":Ljava/lang/Exception;
    .restart local v10    # "lastException":Ljava/lang/Exception;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v18

    move/from16 v8, v21

    move/from16 v9, v23

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 141
    .restart local v12    # "server":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedInputStream;
    .restart local v14    # "writer":Ljava/io/BufferedOutputStream;
    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 142
    :goto_11
    if-eqz v13, :cond_9

    :try_start_12
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_12

    .line 144
    :catch_13
    move-exception v0

    goto :goto_13

    .line 143
    :cond_9
    :goto_12
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_14

    goto :goto_14

    .line 145
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_13
    :try_start_13
    iget-object v4, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v7, p1, v5

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v4, v2, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    goto :goto_15

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_14
    nop

    .line 147
    :goto_15
    nop

    .end local p1    # "objects":[Ljava/lang/Object;
    throw v3

    .line 95
    .end local v12    # "server":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedInputStream;
    .end local v14    # "writer":Ljava/io/BufferedOutputStream;
    .end local v18    # "servers":[Ljava/lang/String;
    .end local v21    # "success":Z
    .local v3, "servers":[Ljava/lang/String;
    .restart local v8    # "success":Z
    .restart local p1    # "objects":[Ljava/lang/Object;
    :cond_b
    move-object/from16 v18, v3

    move/from16 v21, v8

    .line 150
    .end local v3    # "servers":[Ljava/lang/String;
    .restart local v18    # "servers":[Ljava/lang/String;
    :goto_16
    if-nez v8, :cond_c

    .line 151
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo \"[-] Download failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p1, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    .line 152
    const/4 v2, 0x1

    iput v2, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    .line 157
    .end local v8    # "success":Z
    .end local v10    # "lastException":Ljava/lang/Exception;
    .end local v18    # "servers":[Ljava/lang/String;
    :cond_c
    goto/16 :goto_17

    .line 154
    :catch_14
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "echo \"[-] Unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2, v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    .line 156
    const/4 v2, 0x1

    iput v2, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    goto/16 :goto_17

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/chrootmgr -c \"remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    .line 80
    goto/16 :goto_17

    .line 82
    :pswitch_4
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/chrootmgr -c \"backup "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    .line 83
    goto/16 :goto_17

    .line 76
    :pswitch_5
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/chrootmgr -c \"restore "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    .line 77
    goto/16 :goto_17

    .line 73
    :pswitch_6
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/killkali"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    .line 74
    goto :goto_17

    .line 69
    :pswitch_7
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bootkali_init"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, p1, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    .line 70
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleep 1 && "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_INITD_SCRIPT_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    .line 71
    goto :goto_17

    .line 66
    :pswitch_8
    iget-object v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/chrootmgr -c \"status\" -p "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;Landroid/widget/TextView;)I

    move-result v0

    iput v0, v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->resultCode:I

    .line 67
    nop

    .line 160
    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs execute([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 51
    return-void
.end method

.method synthetic lambda$execute$0$com-offsec-nethunter-Executor-ChrootManagerExecutor([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->doInBackground([Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
.end method

.method public setListener(Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    .line 176
    iput-object p1, p0, Lcom/offsec/nethunter/Executor/ChrootManagerExecutor;->listener:Lcom/offsec/nethunter/Executor/ChrootManagerExecutor$ChrootManagerExecutorListener;

    .line 177
    return-void
.end method
