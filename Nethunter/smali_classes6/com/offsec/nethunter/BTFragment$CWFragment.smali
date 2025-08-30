.class public Lcom/offsec/nethunter/BTFragment$CWFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CWFragment"
.end annotation


# static fields
.field private static final TTS_DIRECTORY:Ljava/lang/String;

.field private static final TTS_TEMP_FILE:Ljava/lang/String; = "/root/tts_output.wav"


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private selected_mode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/nh_files/CarWhisperer/TTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/BTFragment$CWFragment;->TTS_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 831
    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    .line 834
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$CWFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic access$202(Lcom/offsec/nethunter/BTFragment$CWFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$CWFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 831
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$CWFragment;->selected_mode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic lambda$onCreateView$5(Ljava/io/File;Landroid/media/AudioTrack;)V
    .locals 6
    .param p0, "cw_listenfile"    # Ljava/io/File;
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 1030
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, -0x1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-lt v0, v1, :cond_3

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1032
    .local v0, "s":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    .line 1033
    new-array v1, v3, [B

    .line 1035
    .local v1, "data":[B
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v5, v3

    .local v5, "n":I
    if-eq v3, v2, :cond_0

    .line 1036
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1037
    :try_start_2
    invoke-virtual {p1, v1, v4, v5}, Landroid/media/AudioTrack;->write([BII)I

    .line 1038
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "s":Ljava/io/InputStream;
    .end local p0    # "cw_listenfile":Ljava/io/File;
    .end local p1    # "audioTrack":Landroid/media/AudioTrack;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1040
    .end local v1    # "data":[B
    .end local v5    # "n":I
    .restart local v0    # "s":Ljava/io/InputStream;
    .restart local p0    # "cw_listenfile":Ljava/io/File;
    .restart local p1    # "audioTrack":Landroid/media/AudioTrack;
    :cond_0
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    .line 1031
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "cw_listenfile":Ljava/io/File;
    .end local p1    # "audioTrack":Landroid/media/AudioTrack;
    :cond_1
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1043
    .end local v0    # "s":Ljava/io/InputStream;
    .restart local p0    # "cw_listenfile":Ljava/io/File;
    .restart local p1    # "audioTrack":Landroid/media/AudioTrack;
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1043
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    .line 1044
    goto :goto_7

    .line 1043
    :goto_3
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    .line 1044
    throw v0

    .line 1046
    :cond_3
    :try_start_8
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 1047
    .local v0, "s":Ljava/io/InputStream;
    :try_start_9
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    .line 1048
    new-array v1, v3, [B

    .line 1050
    .restart local v1    # "data":[B
    :goto_4
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v5, v3

    .restart local v5    # "n":I
    if-eq v3, v2, :cond_4

    .line 1051
    monitor-enter p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1052
    :try_start_a
    invoke-virtual {p1, v1, v4, v5}, Landroid/media/AudioTrack;->write([BII)I

    .line 1053
    monitor-exit p1

    goto :goto_4

    :catchall_4
    move-exception v2

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .end local v0    # "s":Ljava/io/InputStream;
    .end local p0    # "cw_listenfile":Ljava/io/File;
    .end local p1    # "audioTrack":Landroid/media/AudioTrack;
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1055
    .end local v1    # "data":[B
    .end local v5    # "n":I
    .restart local v0    # "s":Ljava/io/InputStream;
    .restart local p0    # "cw_listenfile":Ljava/io/File;
    .restart local p1    # "audioTrack":Landroid/media/AudioTrack;
    :cond_4
    :try_start_c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_6

    .line 1046
    :catchall_5
    move-exception v1

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v2

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "cw_listenfile":Ljava/io/File;
    .end local p1    # "audioTrack":Landroid/media/AudioTrack;
    :goto_5
    throw v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 1058
    .end local v0    # "s":Ljava/io/InputStream;
    .restart local p0    # "cw_listenfile":Ljava/io/File;
    .restart local p1    # "audioTrack":Landroid/media/AudioTrack;
    :catchall_7
    move-exception v0

    goto :goto_8

    .line 1055
    :catch_1
    move-exception v0

    .line 1056
    .local v0, "e":Ljava/io/IOException;
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1058
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    .line 1059
    nop

    .line 1061
    :goto_7
    return-void

    .line 1058
    :goto_8
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V

    .line 1059
    throw v0
.end method

.method static synthetic lambda$onCreateView$7(Landroid/media/AudioTrack;Landroid/view/View;)V
    .locals 0
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "v"    # Landroid/view/View;

    .line 1065
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    .line 1066
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 1067
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-BTFragment$CWFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 3
    .param p1, "cw_address"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 904
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$CWFragment;->context:Landroid/content/Context;

    const-string v1, "selected_address"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/offsec/nethunter/BTFragment$PreferencesData;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "selected_address":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 906
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BTFragment$CWFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 935
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 936
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string v1, "Select audio file"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-virtual {p0, v1, v2}, Lcom/offsec/nethunter/BTFragment$CWFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 940
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BTFragment$CWFragment(Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 13
    .param p1, "ttsDropdown"    # Landroid/widget/Spinner;
    .param p2, "ttsInput"    # Landroid/widget/EditText;
    .param p3, "ttsVoiceSpinner"    # Landroid/widget/Spinner;
    .param p4, "ttsSpeedSpinner"    # Landroid/widget/Spinner;
    .param p5, "injectfilename"    # Landroid/widget/EditText;
    .param p6, "v"    # Landroid/view/View;

    .line 944
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 947
    .local v0, "selectedPhrase":Ljava/lang/String;
    const-string v1, "Custom message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 949
    .local v1, "finalInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Enter text to convert"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 951
    return-void

    .line 954
    .end local v1    # "finalInput":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 957
    .restart local v1    # "finalInput":Ljava/lang/String;
    :cond_1
    const-string v3, "Choose Message"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 958
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Please select a TTS Message"

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 959
    return-void

    .line 963
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 964
    .local v3, "selectedVoice":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 966
    .local v4, "selectedSpeed":Ljava/lang/String;
    const-string v5, "Voice model"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "Voice speed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v9, p0

    move-object/from16 v10, p5

    goto/16 :goto_0

    .line 971
    :cond_3
    const-string v2, "/root/tts_output.wav"

    .line 972
    .local v2, "outTmp":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd_HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 973
    .local v5, "timestamp":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/offsec/nethunter/BTFragment$CWFragment;->TTS_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/tts_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".wav"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 975
    .local v6, "outFinal":Ljava/lang/String;
    const-string v7, "\""

    const-string v8, "\\\""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 977
    .local v7, "escapedInput":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "espeak -v "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -s "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" -w "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " && cp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " && chmod 777 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " && sleep 1 && exit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 980
    .local v8, "ttsCmd":Ljava/lang/String;
    move-object v9, p0

    invoke-virtual {p0, v8}, Lcom/offsec/nethunter/BTFragment$CWFragment;->run_cmd(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS audio generated at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 982
    move-object/from16 v10, p5

    invoke-virtual {v10, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 983
    return-void

    .line 966
    .end local v2    # "outTmp":Ljava/lang/String;
    .end local v5    # "timestamp":Ljava/lang/String;
    .end local v6    # "outFinal":Ljava/lang/String;
    .end local v7    # "escapedInput":Ljava/lang/String;
    .end local v8    # "ttsCmd":Ljava/lang/String;
    :cond_4
    move-object v9, p0

    move-object/from16 v10, p5

    .line 967
    :goto_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Please select both voice model and speed"

    invoke-static {v5, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 968
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-BTFragment$CWFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 8
    .param p1, "cw_interface"    # Landroid/widget/EditText;
    .param p2, "cw_address"    # Landroid/widget/EditText;
    .param p3, "hci_channel"    # Landroid/widget/EditText;
    .param p4, "listenfilename"    # Landroid/widget/EditText;
    .param p5, "injectfilename"    # Landroid/widget/EditText;
    .param p6, "v"    # Landroid/view/View;

    .line 988
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "cw_iface":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, "cw_target":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 991
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 992
    .local v2, "cw_channel":Ljava/lang/String;
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, "cw_listenfile":Ljava/lang/String;
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 995
    .local v4, "cw_injectfile":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/BTFragment$CWFragment;->selected_mode:Ljava/lang/String;

    const-string v6, "Listen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, " "

    if-eqz v5, :cond_0

    .line 996
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "echo -ne \"\\033]0;Listening BT audio\\007\" && clear;echo \'Carwhisperer starting..\nReturn to NetHunter to kill, or to listen live!\'$\'\n\';carwhisperer "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " /root/carwhisperer/in.raw /sdcard/rec.raw "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " && echo \'Converting to wav to target directory..\';sox -t raw -r 8000 -e signed -b 16 /sdcard/rec.raw -r 8000 -b 16 /sdcard/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";echo Done! || echo \'No convert file!\';sleep 3 && exit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/BTFragment$CWFragment;->run_cmd(Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_0
    iget-object v5, p0, Lcom/offsec/nethunter/BTFragment$CWFragment;->selected_mode:Ljava/lang/String;

    const-string v7, "Inject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "echo -ne \"\\033]0;Injecting BT audio\\007\" && clear;echo \'Carwhisperer starting..\';length=$(($(soxi -D \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' | cut -d. -f1)+8));sox \'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\' -r 8000 -b 16 -c 1 tempi.raw && timeout $length carwhisperer "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " tempi.raw tempo.raw "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; rm tempi.raw && rm tempo.raw;echo \'\nInjection done, closing in 3 secs..\';sleep 3 && exit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/BTFragment$CWFragment;->run_cmd(Ljava/lang/String;)V

    .line 1002
    .end local v2    # "cw_channel":Ljava/lang/String;
    .end local v3    # "cw_listenfile":Ljava/lang/String;
    .end local v4    # "cw_injectfile":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 1003
    :cond_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "No target address!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1004
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-BTFragment$CWFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1009
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$CWFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bootkali custom_cmd pkill carwhisperer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Killed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1011
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-BTFragment$CWFragment(Landroid/widget/EditText;Landroid/media/AudioTrack;Landroid/view/View;)V
    .locals 7
    .param p1, "injectfilename"    # Landroid/widget/EditText;
    .param p2, "audioTrack"    # Landroid/media/AudioTrack;
    .param p3, "v"    # Landroid/view/View;

    .line 1018
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "selectedPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1021
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "cw_listenfile":Ljava/io/File;
    goto :goto_0

    .line 1023
    .end local v1    # "cw_listenfile":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/nh_files/CarWhisperer/rec.raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1026
    .restart local v1    # "cw_listenfile":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_1

    .line 1029
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1, p2}, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda7;-><init>(Ljava/io/File;Landroid/media/AudioTrack;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1027
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "File not found!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1063
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 840
    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    .line 841
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$CWFragment;->context:Landroid/content/Context;

    .line 842
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 37
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 847
    move-object/from16 v7, p0

    const v0, 0x7f0d0021

    const/4 v1, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual {v8, v0, v9, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 849
    .local v10, "rootView":Landroid/view/View;
    iget-object v0, v7, Lcom/offsec/nethunter/BTFragment$CWFragment;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 851
    .local v11, "sharedpreferences":Landroid/content/SharedPreferences;
    const v0, 0x7f0a0100

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 852
    .local v12, "CWdesc":Landroid/widget/TextView;
    const-string v0, "running_on_wearos"

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 853
    .local v13, "iswatch":Ljava/lang/Boolean;
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 858
    :cond_0
    const v0, 0x7f0a02a5

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/EditText;

    .line 861
    .local v14, "cw_interface":Landroid/widget/EditText;
    const v0, 0x7f0a02a2

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/EditText;

    .line 864
    .local v15, "cw_address":Landroid/widget/EditText;
    const v0, 0x7f0a04fc

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    .line 865
    .local v6, "ttsDropdown":Landroid/widget/Spinner;
    const v0, 0x7f0a04ff

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/Spinner;

    .line 866
    .local v16, "ttsVoiceSpinner":Landroid/widget/Spinner;
    const v0, 0x7f0a04fe

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/Spinner;

    .line 867
    .local v17, "ttsSpeedSpinner":Landroid/widget/Spinner;
    const v0, 0x7f0a04fb

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 868
    .local v5, "ttsInput":Landroid/widget/EditText;
    const v0, 0x7f0a0287

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    .line 871
    .local v4, "ttsGenerate":Landroid/widget/Button;
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 874
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/offsec/nethunter/BTFragment$CWFragment;->TTS_DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 877
    const v0, 0x7f0a043b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    .line 880
    .local v3, "SetTarget":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "ttsOptions":[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v18, v4

    .end local v4    # "ttsGenerate":Landroid/widget/Button;
    .local v18, "ttsGenerate":Landroid/widget/Button;
    const v4, 0x1090008

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object v4, v0

    .line 882
    .local v4, "ttsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 883
    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 886
    new-instance v0, Lcom/offsec/nethunter/BTFragment$CWFragment$1;

    invoke-direct {v0, v7, v2, v5}, Lcom/offsec/nethunter/BTFragment$CWFragment$1;-><init>(Lcom/offsec/nethunter/BTFragment$CWFragment;[Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 903
    new-instance v0, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v15}, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment$CWFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 909
    const v0, 0x7f0a02a4

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/EditText;

    .line 912
    .local v19, "hci_channel":Landroid/widget/EditText;
    const v0, 0x7f0a013d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Spinner;

    .line 913
    .local v1, "cwmode":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v20, v2

    .end local v2    # "ttsOptions":[Ljava/lang/String;
    .local v20, "ttsOptions":[Ljava/lang/String;
    const-string v2, "Listen"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    const-string v2, "Inject"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v2, Landroid/widget/ArrayAdapter;

    move-object/from16 v21, v3

    .end local v3    # "SetTarget":Landroid/widget/Button;
    .local v21, "SetTarget":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$CWFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v22, v4

    .end local v4    # "ttsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v22, "ttsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 917
    new-instance v2, Lcom/offsec/nethunter/BTFragment$CWFragment$2;

    invoke-direct {v2, v7}, Lcom/offsec/nethunter/BTFragment$CWFragment$2;-><init>(Lcom/offsec/nethunter/BTFragment$CWFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 928
    const v2, 0x7f0a02f7

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/EditText;

    .line 931
    .local v23, "listenfilename":Landroid/widget/EditText;
    const v2, 0x7f0a02ce

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/widget/EditText;

    .line 932
    .local v4, "injectfilename":Landroid/widget/EditText;
    const v2, 0x7f0a02cd

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/Button;

    .line 934
    .local v3, "injectfilebrowse":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v7}, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment$CWFragment;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 943
    new-instance v2, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda2;

    move-object/from16 v24, v0

    .end local v0    # "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v24, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    move-object/from16 v25, v1

    .end local v1    # "cwmode":Landroid/widget/Spinner;
    .local v25, "cwmode":Landroid/widget/Spinner;
    move-object/from16 v1, p0

    move-object v8, v2

    move-object v2, v6

    move-object/from16 v26, v3

    .end local v3    # "injectfilebrowse":Landroid/widget/Button;
    .local v26, "injectfilebrowse":Landroid/widget/Button;
    move-object v3, v5

    move-object/from16 v9, v18

    move-object/from16 v18, v22

    move-object/from16 v22, v4

    .end local v4    # "injectfilename":Landroid/widget/EditText;
    .local v9, "ttsGenerate":Landroid/widget/Button;
    .local v18, "ttsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v22, "injectfilename":Landroid/widget/EditText;
    move-object/from16 v4, v16

    move-object/from16 v27, v5

    .end local v5    # "ttsInput":Landroid/widget/EditText;
    .local v27, "ttsInput":Landroid/widget/EditText;
    move-object/from16 v5, v17

    move-object/from16 v28, v6

    .end local v6    # "ttsDropdown":Landroid/widget/Spinner;
    .local v28, "ttsDropdown":Landroid/widget/Spinner;
    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment$CWFragment;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    invoke-virtual {v9, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    const v0, 0x7f0a0480

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    .line 987
    .local v8, "StartCWButton":Landroid/widget/Button;
    new-instance v6, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v19

    move-object/from16 v5, v23

    move-object/from16 v29, v9

    move-object v9, v6

    .end local v9    # "ttsGenerate":Landroid/widget/Button;
    .local v29, "ttsGenerate":Landroid/widget/Button;
    move-object/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment$CWFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    const v0, 0x7f0a049e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1008
    .local v0, "StopCWButton":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, v7}, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/BTFragment$CWFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1014
    const v1, 0x7f0a03c6

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1015
    .local v1, "PlayAudioButton":Landroid/widget/ImageButton;
    const v2, 0x7f0a049d

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1016
    .local v2, "StopAudioButton":Landroid/widget/ImageButton;
    new-instance v3, Landroid/media/AudioTrack;

    const/16 v35, 0x4e20

    const/16 v36, 0x1

    const/16 v31, 0x3

    const/16 v32, 0x55f0

    const/16 v33, 0x4

    const/16 v34, 0x2

    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v36}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 1017
    .local v3, "audioTrack":Landroid/media/AudioTrack;
    new-instance v4, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda5;

    move-object/from16 v5, v22

    .end local v22    # "injectfilename":Landroid/widget/EditText;
    .local v5, "injectfilename":Landroid/widget/EditText;
    invoke-direct {v4, v7, v5, v3}, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/BTFragment$CWFragment;Landroid/widget/EditText;Landroid/media/AudioTrack;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1064
    new-instance v4, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda6;

    invoke-direct {v4, v3}, Lcom/offsec/nethunter/BTFragment$CWFragment$$ExternalSyntheticLambda6;-><init>(Landroid/media/AudioTrack;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    return-object v10
.end method
