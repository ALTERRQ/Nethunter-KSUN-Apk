.class public Lcom/offsec/nethunter/BtDuckyFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BtDuckyFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PICK_FILE_REQUEST_CODE:I = 0x1

.field private static final SAVE_FILE_REQUEST_CODE:I = 0x2


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private editSource:Landroid/widget/EditText;

.field final tmpfilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/nh_files/.tmpbtdfile.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->tmpfilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/BtDuckyFragment;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/BtDuckyFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .line 36
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BtDuckyFragment;->readFileContent(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/BtDuckyFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/BtDuckyFragment;

    .line 36
    iget-object v0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    return-object v0
.end method

.method private getDuckyScriptFiles()[Ljava/lang/String;
    .locals 8

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/duckyscripts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "script_folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 96
    .local v2, "filesInFolder":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 97
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 98
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 99
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 103
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 96
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method static synthetic lambda$saveFile$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 155
    return-void
.end method

.method private openFile()V
    .locals 2

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/BtDuckyFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method

.method private readFileContent(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, "content":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 189
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 192
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 197
    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 202
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_1

    .line 197
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 201
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Error reading file"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private saveContentToFile(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 209
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 210
    .local v1, "outputStream":Ljava/io/OutputStream;
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 211
    .local v2, "writer":Ljava/io/BufferedWriter;
    iget-object v3, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 213
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 215
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "File saved"

    invoke-static {v3, v4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 220
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 213
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "uri":Landroid/net/Uri;
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 219
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Error saving file"

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-BtDuckyFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 64
    invoke-direct {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->openFile()V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BtDuckyFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/BtDuckyFragment;->saveFile(Z)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BtDuckyFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/view/View;)V
    .locals 4
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "v"    # Landroid/view/View;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bootkali custom_cmd bluetoothctl info | grep \'Connected: yes\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "statusCMD":Ljava/lang/String;
    const-string v1, "Connected: yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Start the server first"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/BtDuckyFragment;->saveFile(Z)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "python3 /root/badbt/ducky.py -d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/BtDuckyFragment;->tmpfilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/BtDuckyFragment;->run_cmd(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void
.end method

.method synthetic lambda$saveFile$3$com-offsec-nethunter-BtDuckyFragment(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "loadFilePath"    # Ljava/lang/String;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "whichButton"    # I

    .line 132
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".conf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "scriptFile":Ljava/io/File;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 140
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/offsec/nethunter/BtDuckyFragment;->saveContentToFile(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/offsec/nethunter/BtDuckyFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/BtDuckyFragment;->context:Landroid/content/Context;

    const-string v3, "File already exists"

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    .end local v1    # "scriptFile":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/BtDuckyFragment;->context:Landroid/content/Context;

    const-string v2, "Wrong name provided"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/offsec/nethunter/BTFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 167
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 168
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    if-eqz p3, :cond_0

    .line 178
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 179
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BtDuckyFragment;->saveContentToFile(Landroid/net/Uri;)V

    goto :goto_0

    .line 170
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_1
    if-eqz p3, :cond_0

    .line 171
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 172
    .local v0, "selectedFileUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BtDuckyFragment;->readFileContent(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "fileContent":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .end local v0    # "selectedFileUri":Landroid/net/Uri;
    .end local v1    # "fileContent":Ljava/lang/String;
    nop

    .line 184
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->activity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    const v0, 0x7f0d0022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a0182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 53
    .local v1, "loadButton":Landroid/widget/Button;
    const v2, 0x7f0a0183

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 54
    .local v2, "saveButton":Landroid/widget/Button;
    const v3, 0x7f0a0181

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 55
    .local v3, "injectButton":Landroid/widget/Button;
    const v4, 0x7f0a018b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    .line 56
    new-instance v4, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v4}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 58
    .local v4, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-direct {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getDuckyScriptFiles()[Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "duckyscript_file":[Ljava/lang/String;
    const v6, 0x7f0a0180

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 60
    .local v6, "duckyscriptSpinner":Landroid/widget/Spinner;
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const v9, 0x1090008

    invoke-direct {v7, v8, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 61
    .local v7, "duckyscriptAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 62
    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 64
    new-instance v8, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v8, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v8, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v4}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;Lcom/offsec/nethunter/utils/ShellExecuter;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v8, Lcom/offsec/nethunter/BtDuckyFragment$1;

    invoke-direct {v8, p0}, Lcom/offsec/nethunter/BtDuckyFragment$1;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;)V

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    return-object v0
.end method

.method public saveFile(Z)V
    .locals 6
    .param p1, "tmp"    # Z

    .line 113
    iget-object v0, p0, Lcom/offsec/nethunter/BtDuckyFragment;->editSource:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "content":Ljava/lang/String;
    const-string v1, "/scripts/ducky/"

    .line 117
    .local v1, "loadFilePath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .local v2, "scriptsDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v2    # "scriptsDir":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BtDuckyFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f14012e

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 124
    .local v2, "alert":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 125
    const-string v3, "Please enter a name for your script."

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 128
    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/offsec/nethunter/BtDuckyFragment;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 129
    .local v3, "input":Landroid/widget/EditText;
    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 131
    new-instance v4, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v3, v1}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BtDuckyFragment;Landroid/widget/EditText;Ljava/lang/String;)V

    const-string v5, "Ok"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 153
    new-instance v4, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/offsec/nethunter/BtDuckyFragment$$ExternalSyntheticLambda4;-><init>()V

    const-string v5, "Cancel"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 157
    if-eqz p1, :cond_1

    .line 158
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/offsec/nethunter/BtDuckyFragment;->tmpfilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/offsec/nethunter/BtDuckyFragment;->saveContentToFile(Landroid/net/Uri;)V

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 162
    :goto_1
    return-void
.end method
