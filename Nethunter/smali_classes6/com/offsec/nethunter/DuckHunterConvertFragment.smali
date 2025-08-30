.class public Lcom/offsec/nethunter/DuckHunterConvertFragment;
.super Landroidx/fragment/app/Fragment;
.source "DuckHunterConvertFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PICKFILE_RESULT_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DuckHunterConvert"

.field private static final loadFilePath:Ljava/lang/String; = "/scripts/ducky/"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private final convertDuckyBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;

.field private final duckyInputFile:Ljava/lang/String;

.field private editsource:Landroid/widget/EditText;

.field private isReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "inFilePath"    # Ljava/lang/String;
    .param p2, "outFilePath"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 51
    new-instance v0, Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;-><init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->convertDuckyBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->duckyInputFile:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/DuckHunterConvertFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterConvertFragment;

    .line 42
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/DuckHunterConvertFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterConvertFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getPreset(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterConvertFragment;

    .line 42
    invoke-direct {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->write_ducky()V

    return-void
.end method

.method private getDuckyScriptFiles()[Ljava/lang/String;
    .locals 8

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
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

    .line 199
    .local v1, "script_folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 200
    .local v2, "filesInFolder":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 201
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 202
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    .line 203
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 207
    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 200
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method private getPreset(Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .line 174
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    const-string v0, "/duckyscripts/"

    .line 178
    .local v0, "filename_path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a018b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 180
    .local v1, "editsource":Landroid/widget/EditText;
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v3, "text":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 185
    .local v4, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    goto :goto_1

    .line 190
    :catch_0
    move-exception v4

    .line 191
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "DuckHunterConvert"

    const-string v6, "exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return-void
.end method

.method static synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 282
    return-void
.end method

.method private write_ducky()V
    .locals 4

    .line 212
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->duckyInputFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "myFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 214
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 215
    .local v1, "fOut":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 216
    .local v2, "myOutWriter":Ljava/io/OutputStreamWriter;
    iget-object v3, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->editsource:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 217
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 218
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "myFile":Ljava/io/File;
    .end local v1    # "fOut":Ljava/io/FileOutputStream;
    .end local v2    # "myOutWriter":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$0$com-offsec-nethunter-DuckHunterConvertFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "whichButton"    # I

    .line 253
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/scripts/ducky/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 256
    .local v1, "scriptFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a018b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 260
    .local v2, "source":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 262
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 263
    .local v4, "fOut":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 264
    .local v5, "myOutWriter":Ljava/io/OutputStreamWriter;
    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 265
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 266
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 267
    iget-object v6, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    const-string v7, "Script saved"

    invoke-static {v6, v7}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    .end local v2    # "source":Landroid/widget/EditText;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .end local v5    # "myOutWriter":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    const-string v3, "File already exists"

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    .end local v1    # "scriptFile":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 276
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    const-string v2, "Wrong name provided"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 149
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 150
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "FilePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a018b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 157
    .local v1, "editsource":Landroid/widget/EditText;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v2, "text":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 160
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 161
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v4, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    const-string v6, "Script loaded"

    invoke-static {v4, v6}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v2    # "text":Ljava/lang/StringBuilder;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    goto :goto_1

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    .end local v0    # "FilePath":Ljava/lang/String;
    .end local v1    # "editsource":Landroid/widget/EditText;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 226
    .local v0, "id":I
    const v1, 0x7f0a0182

    const-string v2, "/scripts/ducky/"

    if-ne v0, v1, :cond_1

    .line 228
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v1, "scriptsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v1    # "scriptsDir":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 235
    .local v2, "selectedUri":Landroid/net/Uri;
    const-string v3, "file/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "selectedUri":Landroid/net/Uri;
    goto :goto_2

    :cond_1
    const v1, 0x7f0a0183

    if-ne v0, v1, :cond_3

    .line 239
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v1, "scriptsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    .end local v1    # "scriptsDir":Ljava/io/File;
    :cond_2
    goto :goto_1

    .line 241
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->activity:Landroid/app/Activity;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 246
    .local v1, "alert":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v2, "Name"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 247
    const-string v2, "Please enter a name for your script."

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 249
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 250
    .local v2, "input":Landroid/widget/EditText;
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 252
    new-instance v3, Lcom/offsec/nethunter/DuckHunterConvertFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2}, Lcom/offsec/nethunter/DuckHunterConvertFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;Landroid/widget/EditText;)V

    const-string v4, "Ok"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 280
    new-instance v3, Lcom/offsec/nethunter/DuckHunterConvertFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/offsec/nethunter/DuckHunterConvertFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v4, "Cancel"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 283
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 284
    .end local v1    # "alert":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v2    # "input":Landroid/widget/EditText;
    goto :goto_2

    .line 285
    :cond_3
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    const-string v2, "Unknown click"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->activity:Landroid/app/Activity;

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    const v0, 0x7f0d004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a03e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "t2":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 71
    const v2, 0x7f0a018b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->editsource:Landroid/widget/EditText;

    .line 72
    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->editsource:Landroid/widget/EditText;

    new-instance v3, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment$1;-><init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    const v2, 0x7f0a0182

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 97
    .local v2, "b":Landroid/widget/Button;
    const v3, 0x7f0a0183

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 98
    .local v3, "b1":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-direct {p0}, Lcom/offsec/nethunter/DuckHunterConvertFragment;->getDuckyScriptFiles()[Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "duckyscript_file":[Ljava/lang/String;
    const v5, 0x7f0a0180

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 104
    .local v5, "duckyscriptSpinner":Landroid/widget/Spinner;
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->activity:Landroid/app/Activity;

    const v8, 0x1090008

    invoke-direct {v6, v7, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 105
    .local v6, "duckyscriptAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 106
    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 107
    new-instance v7, Lcom/offsec/nethunter/DuckHunterConvertFragment$2;

    invoke-direct {v7, p0, v5}, Lcom/offsec/nethunter/DuckHunterConvertFragment$2;-><init>(Lcom/offsec/nethunter/DuckHunterConvertFragment;Landroid/widget/Spinner;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 120
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 143
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->editsource:Landroid/widget/EditText;

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 134
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 135
    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->convertDuckyBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->isReceiverRegistered:Z

    .line 139
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 126
    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->isReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->convertDuckyBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterConvertFragment$ConvertDuckyBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.offsec.nethunter.WRITEDUCKY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterConvertFragment;->isReceiverRegistered:Z

    .line 130
    :cond_0
    return-void
.end method
