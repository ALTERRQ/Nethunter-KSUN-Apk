.class public Lcom/offsec/nethunter/SETFragment$MainFragment;
.super Lcom/offsec/nethunter/SETFragment;
.source "SETFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/SETFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private nh:Lcom/offsec/nethunter/utils/NhPaths;

.field private selected_template:Ljava/lang/String;

.field private template_src:Ljava/lang/String;

.field private template_tempfile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/offsec/nethunter/SETFragment;-><init>()V

    .line 152
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/SETFragment$MainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/SETFragment$MainFragment;

    .line 149
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->selected_template:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SETFragment$MainFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->selected_template:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/SETFragment$MainFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/SETFragment$MainFragment;

    .line 149
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_src:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SETFragment$MainFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_src:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SETFragment$MainFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 149
    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_tempfile:Ljava/lang/String;

    return-object p1
.end method

.method private refresh(Landroid/view/View;)V
    .locals 17
    .param p1, "SETFragment"    # Landroid/view/View;

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a035c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 246
    .local v2, "myBrowser":Landroid/webkit/WebView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_tempfile:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "template_path":Ljava/lang/String;
    const v4, 0x7f0a0436

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 250
    .local v4, "PhishLink":Landroid/widget/EditText;
    const v5, 0x7f0a0438

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 251
    .local v5, "PhishName":Landroid/widget/EditText;
    const v6, 0x7f0a0439

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 252
    .local v6, "PhishPic":Landroid/widget/EditText;
    const v7, 0x7f0a043a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 254
    .local v7, "PhishSubject":Landroid/widget/EditText;
    iget-object v8, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_src:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 256
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "phish_link":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "phish_name":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 260
    .local v10, "phish_pic":Ljava/lang/String;
    iget-object v11, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->selected_template:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    sparse-switch v12, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v12, "Twitter"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x2

    goto :goto_1

    :sswitch_1
    const-string v12, "Messenger"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    goto :goto_1

    :sswitch_2
    const-string v12, "Facebook"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :goto_0
    const/4 v11, -0x1

    :goto_1
    packed-switch v11, :pswitch_data_0

    goto :goto_2

    .line 268
    :pswitch_0
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v11, v12, v13

    const-string v11, "{0} sent you a Direct Message on Twitter!"

    invoke-static {v11, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 265
    :pswitch_1
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v11, v12, v13

    const-string v11, "{0} sent you a message on Facebook."

    invoke-static {v11, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    goto :goto_2

    .line 262
    :pswitch_2
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v11, v12, v13

    const-string v11, "{0} sent you a message on Messenger."

    invoke-static {v11, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 263
    nop

    .line 272
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    const-string v12, "sed \'s/\\&/\\\\\\&/g\' <<< \""

    const-string v13, "/g\' "

    const-string v15, "&"

    const-string v14, "\""

    if-nez v11, :cond_2

    .line 273
    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 274
    :cond_1
    iget-object v1, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .end local v4    # "PhishLink":Landroid/widget/EditText;
    .local v16, "PhishLink":Landroid/widget/EditText;
    const-string v4, "sed \'s|\\/|\\\\\\/|g\' <<< \""

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 275
    iget-object v1, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \'s/https\\:\\/\\/www.google.com/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_3

    .line 272
    .end local v16    # "PhishLink":Landroid/widget/EditText;
    .restart local v4    # "PhishLink":Landroid/widget/EditText;
    :cond_2
    move-object/from16 v16, v4

    .line 277
    .end local v4    # "PhishLink":Landroid/widget/EditText;
    .restart local v16    # "PhishLink":Landroid/widget/EditText;
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \'s/E Corp/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 278
    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 279
    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 280
    :cond_4
    iget-object v1, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sed -i \"s|id=\\\"set\\\".*|id=\\\"set\\\" src=\\\""

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "\\\" width=\\\"72\\\">|\" "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 282
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 283
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 284
    return-void

    :sswitch_data_0
    .sparse-switch
        0x217bfee6 -> :sswitch_2
        0x21d8daf3 -> :sswitch_1
        0x2c9a4253 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-SETFragment$MainFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 220
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->refresh(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-SETFragment$MainFragment(Landroid/webkit/WebView;Landroid/view/View;)V
    .locals 1
    .param p1, "myBrowser"    # Landroid/webkit/WebView;
    .param p2, "v"    # Landroid/view/View;

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 225
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_src:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-SETFragment$MainFragment(Landroid/view/View;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "PhishSubject"    # Landroid/widget/EditText;
    .param p3, "v"    # Landroid/view/View;

    .line 230
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->refresh(Landroid/view/View;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->template_tempfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "template_path":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/root/setoolkit/src/templates/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->selected_template:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "template_final":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "phish_subject":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo \'SUBJECT=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\' > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " && echo \'HTML=\"\' >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " && cat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " && echo \'\\nEND\"\' >> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Successfully saved to SET templates folder"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 237
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-SETFragment$MainFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 240
    const-string v0, "echo -ne \"\\033]0;SET\\007\" && clear;cd /root/setoolkit && ./setoolkit"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 159
    invoke-super {p0, p1}, Lcom/offsec/nethunter/SETFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    invoke-virtual {p0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment;->context:Landroid/content/Context;

    .line 161
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 167
    move-object/from16 v0, p0

    const v1, 0x7f0d00da

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "rootView":Landroid/view/View;
    iget-object v5, v0, Lcom/offsec/nethunter/SETFragment$MainFragment;->context:Landroid/content/Context;

    const-string v6, "com.offsec.nethunter"

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 169
    .local v5, "sharedpreferences":Landroid/content/SharedPreferences;
    const v6, 0x7f0a0438

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 170
    .local v6, "PhishName":Landroid/widget/EditText;
    const v7, 0x7f0a043a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 173
    .local v7, "PhishSubject":Landroid/widget/EditText;
    const-string v8, "set_setup_done"

    invoke-interface {v5, v8, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 174
    .local v2, "setupdone":Ljava/lang/Boolean;
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->SetupDialog()V

    .line 178
    :cond_0
    const-string v8, "Facebook"

    const-string v9, "Twitter"

    const-string v10, "Messenger"

    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 179
    .local v8, "templates":[Ljava/lang/String;
    const v9, 0x7f0a043c

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 180
    .local v9, "template_spinner":Landroid/widget/Spinner;
    new-instance v10, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->requireContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x1090003

    invoke-direct {v10, v11, v12, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    const v10, 0x7f0a035c

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/webkit/WebView;

    .line 185
    .local v10, "myBrowser":Landroid/webkit/WebView;
    new-instance v11, Lcom/offsec/nethunter/SETFragment$MainFragment$1;

    invoke-direct {v11, v0, v7, v6, v10}, Lcom/offsec/nethunter/SETFragment$MainFragment$1;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/WebView;)V

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 214
    const v11, 0x7f0a03ee

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 215
    .local v11, "ResetTemplate":Landroid/widget/Button;
    const v12, 0x7f0a0408

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 216
    .local v12, "SaveTemplate":Landroid/widget/Button;
    const v13, 0x7f0a0492

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 219
    .local v13, "LaunchSET":Landroid/widget/Button;
    const v14, 0x7f0a03e4

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 220
    .local v14, "RefreshPreview":Landroid/widget/Button;
    new-instance v15, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda0;

    invoke-direct {v15, v0, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    new-instance v15, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;

    invoke-direct {v15, v0, v10}, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/webkit/WebView;)V

    invoke-virtual {v11, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v15, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda2;

    invoke-direct {v15, v0, v1, v7}, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {v12, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v15, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda3;

    invoke-direct {v15, v0}, Lcom/offsec/nethunter/SETFragment$MainFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/SETFragment$MainFragment;)V

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    return-object v1
.end method
