.class public Lcom/offsec/nethunter/AudioFragment;
.super Landroidx/fragment/app/Fragment;
.source "AudioFragment.java"


# static fields
.field public static final DEFAULT_INDEX_BUFFER_HEADROOM:I = 0x4

.field public static final DEFAULT_INDEX_TARGET_LATENCY:I = 0x6

.field public static final TAG:Ljava/lang/String; = "AudioFragment"

.field private static final VALUES_BUFFER_HEADROOM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUES_TARGET_LATENCY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private autoStartCheckBox:Landroid/widget/CheckBox;

.field private boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

.field private bufferHeadroomSpinner:Landroid/widget/Spinner;

.field private error:Ljava/lang/Throwable;

.field private errorText:Landroid/widget/TextView;

.field private fullScrollView:Landroid/widget/ScrollView;

.field private isServiceBound:Z

.field private itemId:I

.field private final mConnection:Landroid/content/ServiceConnection;

.field private playButton:Landroid/widget/Button;

.field private portInput:Landroid/widget/EditText;

.field private serverInput:Landroid/widget/EditText;

.field private targetLatencySpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 46
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v1, 0x3d09

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x7a12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/32 v3, 0xf424

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v4, 0x1e848

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/32 v5, 0x3d090

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/32 v6, 0x7a120

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-wide/32 v7, 0xf4240

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/32 v8, 0x1e8480

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v9, 0x9

    new-array v10, v9, [Ljava/lang/Long;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v12, 0x1

    aput-object v1, v10, v12

    const/4 v13, 0x2

    aput-object v2, v10, v13

    const/4 v14, 0x3

    aput-object v3, v10, v14

    const/4 v15, 0x4

    aput-object v4, v10, v15

    const/16 v16, 0x5

    aput-object v5, v10, v16

    const/16 v17, 0x6

    aput-object v6, v10, v17

    const/16 v18, 0x7

    aput-object v7, v10, v18

    const/16 v19, 0x8

    aput-object v8, v10, v19

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    sput-object v10, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    .line 47
    const-wide/32 v20, 0x4c4b40

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/32 v20, 0x989680

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-wide/16 v21, -0x1

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/Long;

    aput-object v0, v9, v11

    aput-object v1, v9, v12

    aput-object v2, v9, v13

    aput-object v3, v9, v14

    aput-object v4, v9, v15

    aput-object v5, v9, v16

    aput-object v6, v9, v17

    aput-object v7, v9, v18

    aput-object v8, v9, v19

    const/16 v0, 0x9

    aput-object v10, v9, v0

    const/16 v0, 0xa

    aput-object v20, v9, v0

    const/16 v0, 0xb

    aput-object v21, v9, v0

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 124
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    .line 62
    new-instance v0, Lcom/offsec/nethunter/AudioFragment$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AudioFragment$1;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->mConnection:Landroid/content/ServiceConnection;

    .line 125
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "No error provided"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->error:Ljava/lang/Throwable;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/audio/AudioPlaybackService;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;

    .line 42
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlaybackService;)Lcom/offsec/nethunter/audio/AudioPlaybackService;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;
    .param p1, "x1"    # Lcom/offsec/nethunter/audio/AudioPlaybackService;

    .line 42
    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlaybackService;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;
    .param p1, "x1"    # Lcom/offsec/nethunter/audio/AudioPlaybackService;

    .line 42
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->updatePrefs(Lcom/offsec/nethunter/audio/AudioPlaybackService;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/List;
    .locals 1

    .line 42
    sget-object v0, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/List;
    .locals 1

    .line 42
    sget-object v0, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;

    .line 42
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/AudioFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    return p1
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlayState;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;
    .param p1, "x1"    # Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 42
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getPlayButtonText(Lcom/offsec/nethunter/audio/AudioPlayState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/AudioFragment;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/offsec/nethunter/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;

    .line 42
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->appendDashes()V

    return-void
.end method

.method static synthetic access$700(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/audio/AudioPlayState;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;
    .param p1, "x1"    # Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 42
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->updatePlayStateInternal(Lcom/offsec/nethunter/audio/AudioPlayState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;

    .line 42
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/offsec/nethunter/AudioFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/AudioFragment;

    .line 42
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private appendDashes()V
    .locals 4

    .line 421
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "------------------\n"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 422
    .local v0, "dashes":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 423
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 424
    return-void
.end method

.method private appendErrorText(Ljava/lang/String;I)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "colorId"    # I

    .line 415
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 416
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 417
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 418
    return-void
.end method

.method private checkAndRequestAudioPermission()Z
    .locals 4

    .line 231
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 232
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Permission check: "

    const-string v3, "AudioFragment"

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NOT GRANTED, requesting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->audioPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 236
    const/4 v1, 0x1

    return v1

    .line 238
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GRANTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    return v1
.end method

.method private formatValuesAsSeconds(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 297
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "formattedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 299
    .local v2, "value":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 300
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-string v4, "%.3fs"

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 302
    :cond_0
    const-string v3, "Default"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v2    # "value":Ljava/lang/Long;
    :goto_1
    goto :goto_0

    .line 305
    :cond_1
    return-object v0
.end method

.method private getPlayButtonText(Lcom/offsec/nethunter/audio/AudioPlayState;)Ljava/lang/String;
    .locals 2
    .param p1, "playState"    # Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 398
    sget-object v0, Lcom/offsec/nethunter/AudioFragment$3;->$SwitchMap$com$offsec$nethunter$audio$AudioPlayState:[I

    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlayState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 410
    const v0, 0x7f1300bc

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :pswitch_0
    const v0, 0x7f1300bb

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :pswitch_1
    const v0, 0x7f1300ba

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 404
    :pswitch_2
    const v0, 0x7f1300b6

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :pswitch_3
    const v0, 0x7f1300b9

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 400
    :pswitch_4
    const v0, 0x7f1300b8

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/AudioFragment;
    .locals 3
    .param p0, "itemId"    # I

    .line 134
    new-instance v0, Lcom/offsec/nethunter/AudioFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/AudioFragment;-><init>()V

    .line 135
    .local v0, "fragment":Lcom/offsec/nethunter/AudioFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "ITEM_ID"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/AudioFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    return-object v0
.end method

.method private setUpSpinner(Landroid/widget/Spinner;Ljava/util/List;JI)V
    .locals 2
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p3, "value"    # J
    .param p5, "defaultIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JI)V"
        }
    .end annotation

    .line 342
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 343
    .local v0, "pos":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 345
    new-instance v1, Lcom/offsec/nethunter/AudioFragment$2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AudioFragment$2;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 360
    return-void
.end method

.method private setupDefaultAudioConfig()V
    .locals 6

    .line 280
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    const v1, 0x7f13008f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 281
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    const v1, 0x7f13008d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 284
    sget-object v0, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/AudioFragment;->formatValuesAsSeconds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 285
    .local v0, "formattedBufferHeadroom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/AudioFragment;->formatValuesAsSeconds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 288
    .local v1, "formattedTargetLatency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090009

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 289
    .local v2, "bufferAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 291
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 292
    .local v3, "latencyAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 293
    return-void
.end method

.method private updatePlayStateInternal(Lcom/offsec/nethunter/audio/AudioPlayState;)V
    .locals 4
    .param p1, "playState"    # Lcom/offsec/nethunter/audio/AudioPlayState;

    .line 363
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/AudioFragment;->getPlayButtonText(Lcom/offsec/nethunter/audio/AudioPlayState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 366
    sget-object v0, Lcom/offsec/nethunter/AudioFragment$3;->$SwitchMap$com$offsec$nethunter$audio$AudioPlayState:[I

    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlayState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const v2, 0x1060015

    const v3, 0x1060018

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    const-string v0, "Connection Disconnecting"

    const v1, 0x1060016

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    .line 387
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 381
    :pswitch_1
    const-string v0, "Everything is working fine! Enjoy!"

    invoke-direct {p0, v0, v2}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    .line 382
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->appendDashes()V

    .line 383
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 384
    goto :goto_0

    .line 377
    :pswitch_2
    const-string v0, "Establishing Connection"

    invoke-direct {p0, v0, v3}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    .line 378
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    goto :goto_0

    .line 373
    :pswitch_3
    const-string v0, "Connection Starting"

    invoke-direct {p0, v0, v2}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    .line 374
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    goto :goto_0

    .line 368
    :pswitch_4
    const-string v0, "Disconnected State"

    invoke-direct {p0, v0, v3}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    .line 369
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->appendDashes()V

    .line 370
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 371
    nop

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An error occurred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-virtual {v1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getError()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1060017

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/AudioFragment;->appendErrorText(Ljava/lang/String;I)V

    .line 393
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->appendDashes()V

    .line 395
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePrefs(Lcom/offsec/nethunter/audio/AudioPlaybackService;)V
    .locals 7
    .param p1, "service"    # Lcom/offsec/nethunter/audio/AudioPlaybackService;

    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string v0, "AudioFragment"

    const-string v1, "AudioPlaybackService is null in updatePrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getServerPref()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "serverPref":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .end local v0    # "serverPref":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getPortPref()I

    move-result v0

    .line 323
    .local v0, "portPref":I
    if-lez v0, :cond_2

    .line 324
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 328
    .end local v0    # "portPref":I
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getAutostartPref()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 333
    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    sget-object v3, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getBufferHeadroom()J

    move-result-wide v4

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/offsec/nethunter/AudioFragment;->setUpSpinner(Landroid/widget/Spinner;Ljava/util/List;JI)V

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    .line 337
    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    sget-object v3, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    invoke-virtual {p1}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->getTargetLatency()J

    move-result-wide v4

    const/4 v6, 0x6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/offsec/nethunter/AudioFragment;->setUpSpinner(Landroid/widget/Spinner;Ljava/util/List;JI)V

    .line 339
    :cond_5
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Throwable;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFullScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->fullScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method synthetic lambda$onCreate$0$com-offsec-nethunter-AudioFragment(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "isGranted"    # Ljava/lang/Boolean;

    .line 147
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 148
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "AudioFragment"

    if-eqz v1, :cond_0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission granted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->play()V

    goto :goto_0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission denied: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    const-string v2, "Audio permission denied. Cannot start playback."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-AudioFragment(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3
    .param p1, "audioSettingsContent"    # Landroid/widget/LinearLayout;
    .param p2, "audioSettingsHeader"    # Landroid/widget/TextView;
    .param p3, "v"    # Landroid/view/View;

    .line 181
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 182
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    nop

    .line 184
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800c0

    invoke-static {v0, v2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    invoke-virtual {p2, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 186
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    nop

    .line 188
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800be

    invoke-static {v0, v2, v1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 187
    invoke-virtual {p2, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 190
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-AudioFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 195
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->checkAndRequestAudioPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->stop()V

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->play()V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    const v1, 0x7f130091

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-AudioFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v1, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/offsec/nethunter/AudioFragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->audioPermissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 163
    const-string v0, "onCreateAudioFragment"

    const-string v1, "AudioFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "ITEM_ID"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/offsec/nethunter/AudioFragment;->itemId:I

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received itemId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/offsec/nethunter/AudioFragment;->itemId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const v0, 0x7f0d001c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "view":Landroid/view/View;
    const v2, 0x7f0a008e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 178
    .local v2, "audioSettingsHeader":Landroid/widget/TextView;
    const v3, 0x7f0a008d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 180
    .local v3, "audioSettingsContent":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, v2}, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/AudioFragment;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v4, 0x7f0a000e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    .line 193
    iget-object v4, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    new-instance v4, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    .line 209
    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    .line 210
    const v1, 0x7f0a0098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    .line 211
    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    .line 212
    const v1, 0x7f0a00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    .line 214
    sget-object v1, Lcom/offsec/nethunter/AudioFragment;->VALUES_BUFFER_HEADROOM:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/AudioFragment;->formatValuesAsSeconds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "formattedBufferHeadroom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const v6, 0x1090009

    invoke-direct {v4, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 216
    .local v4, "bufferAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 217
    const v5, 0x7f0a04bc

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    .line 219
    sget-object v5, Lcom/offsec/nethunter/AudioFragment;->VALUES_TARGET_LATENCY:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/offsec/nethunter/AudioFragment;->formatValuesAsSeconds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 220
    .local v5, "formattedTargetLatency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v6, v7

    .line 221
    .local v6, "latencyAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 222
    const v7, 0x7f0a0285

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/offsec/nethunter/AudioFragment;->fullScrollView:Landroid/widget/ScrollView;

    .line 224
    const v7, 0x7f0a0110

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 225
    .local v7, "clearLogsButton":Landroid/widget/Button;
    new-instance v8, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/offsec/nethunter/AudioFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/AudioFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .line 261
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    .line 264
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->fullScrollView:Landroid/widget/ScrollView;

    .line 265
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->playButton:Landroid/widget/Button;

    .line 266
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    .line 267
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->bufferHeadroomSpinner:Landroid/widget/Spinner;

    .line 268
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    .line 269
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->targetLatencySpinner:Landroid/widget/Spinner;

    .line 270
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    .line 272
    iget-boolean v1, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    .line 276
    :cond_0
    iput-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    .line 277
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 244
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 246
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 248
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 252
    iget-boolean v0, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/offsec/nethunter/AudioFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/AudioFragment;->isServiceBound:Z

    .line 256
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 257
    return-void
.end method

.method public play()V
    .locals 5

    .line 427
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    const-string v1, "AudioFragment"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/offsec/nethunter/AudioFragment;->checkAndRequestAudioPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "server":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .local v2, "port":I
    nop

    .line 441
    iget-object v3, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 443
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 444
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->serverInput:Landroid/widget/EditText;

    const-string v3, "Server cannot be empty"

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 445
    return-void

    .line 448
    :cond_2
    iget-object v3, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    if-eqz v3, :cond_3

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to play on server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    iget-object v3, p0, Lcom/offsec/nethunter/AudioFragment;->autoStartCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->setPrefs(Ljava/lang/String;IZ)V

    .line 454
    iget-object v1, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-virtual {v1, v0, v2}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->play(Ljava/lang/String;I)V

    goto :goto_0

    .line 457
    :cond_3
    iget-object v3, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    const v4, 0x7f130090

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 458
    const-string v3, "Service not bound when attempting to play."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    return-void

    .line 436
    .end local v2    # "port":I
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/offsec/nethunter/AudioFragment;->portInput:Landroid/widget/EditText;

    const-string v3, "Invalid port number"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 438
    return-void

    .line 428
    .end local v0    # "server":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_1
    const-string v0, "UI elements are not initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 477
    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->error:Ljava/lang/Throwable;

    .line 478
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->errorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioFragment"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    return-void
.end method

.method public setFullScrollView(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "fullScrollView"    # Landroid/widget/ScrollView;

    .line 473
    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment;->fullScrollView:Landroid/widget/ScrollView;

    .line 474
    return-void
.end method

.method public stop()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment;->boundService:Lcom/offsec/nethunter/audio/AudioPlaybackService;

    invoke-virtual {v0}, Lcom/offsec/nethunter/audio/AudioPlaybackService;->stop()V

    .line 466
    :cond_0
    return-void
.end method
