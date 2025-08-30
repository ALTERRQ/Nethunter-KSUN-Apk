.class public Lcom/offsec/nethunter/MPCFragment;
.super Landroidx/fragment/app/Fragment;
.source "MPCFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private builder:Landroid/net/NetworkRequest$Builder;

.field private callbackTypeVar:Ljava/lang/String;

.field private callbackVar:Ljava/lang/String;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private context:Landroid/content/Context;

.field private payloadVar:Ljava/lang/String;

.field private stagerVar:Ljava/lang/String;

.field private typeVar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$002(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/MPCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->typeVar:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/MPCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->payloadVar:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/MPCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->callbackVar:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/MPCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->stagerVar:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/offsec/nethunter/MPCFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/MPCFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/offsec/nethunter/MPCFragment;->callbackTypeVar:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/MPCFragment;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/MPCFragment;

    .line 31
    iget-object v0, p0, Lcom/offsec/nethunter/MPCFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1
    .param p1, "buttonId"    # I
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "rootView"    # Landroid/view/View;

    .line 296
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method

.method private getCmd(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p1, "rootView"    # Landroid/view/View;

    .line 290
    const v0, 0x7f0a0339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 291
    .local v0, "ipaddress":Landroid/widget/EditText;
    const v1, 0x7f0a033c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 292
    .local v1, "port":Landroid/widget/EditText;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/offsec/nethunter/MPCFragment;->typeVar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/offsec/nethunter/MPCFragment;->payloadVar:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/offsec/nethunter/MPCFragment;->callbackVar:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/offsec/nethunter/MPCFragment;->stagerVar:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/MPCFragment;->callbackTypeVar:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/MPCFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 46
    new-instance v0, Lcom/offsec/nethunter/MPCFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/MPCFragment;-><init>()V

    .line 47
    .local v0, "fragment":Lcom/offsec/nethunter/MPCFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/MPCFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-MPCFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cd /sdcard/; msfpc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "thecmd"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/MPCFragment;->run_cmd(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-MPCFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cd /var/www/html; msfpc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "thecmd"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/MPCFragment;->run_cmd(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/offsec/nethunter/MPCFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/offsec/nethunter/MPCFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 59
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/MPCFragment;->builder:Landroid/net/NetworkRequest$Builder;

    .line 60
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 64
    move-object/from16 v0, p0

    const v1, 0x7f0d00bf

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, "rootView":Landroid/view/View;
    iget-object v5, v0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const-string v6, "com.offsec.nethunter"

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 68
    .local v2, "sharedpreferences":Landroid/content/SharedPreferences;
    const v5, 0x7f0a033e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 69
    .local v5, "typeSpinner":Landroid/widget/Spinner;
    iget-object v6, v0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v7, 0x7f03000e

    const v8, 0x7f0d00c0

    invoke-static {v6, v7, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v6

    .line 72
    .local v6, "typeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    const-string v7, "asp"

    iput-object v7, v0, Lcom/offsec/nethunter/MPCFragment;->typeVar:Ljava/lang/String;

    .line 76
    new-instance v7, Lcom/offsec/nethunter/MPCFragment$1;

    invoke-direct {v7, v0}, Lcom/offsec/nethunter/MPCFragment$1;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    const v7, 0x7f0a033b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 132
    .local v7, "payloadSpinner":Landroid/widget/Spinner;
    iget-object v9, v0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v10, 0x7f03000c

    invoke-static {v9, v10, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v9

    .line 135
    .local v9, "payloadAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 137
    const-string v10, "msf"

    iput-object v10, v0, Lcom/offsec/nethunter/MPCFragment;->payloadVar:Ljava/lang/String;

    .line 138
    new-instance v10, Lcom/offsec/nethunter/MPCFragment$2;

    invoke-direct {v10, v0}, Lcom/offsec/nethunter/MPCFragment$2;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {v7, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 157
    const v10, 0x7f0a0337

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 158
    .local v10, "callbackSpinner":Landroid/widget/Spinner;
    iget-object v11, v0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v12, 0x7f03000a

    invoke-static {v11, v12, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v11

    .line 161
    .local v11, "callbackAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 163
    const-string v12, "reverse"

    iput-object v12, v0, Lcom/offsec/nethunter/MPCFragment;->callbackVar:Ljava/lang/String;

    .line 164
    new-instance v12, Lcom/offsec/nethunter/MPCFragment$3;

    invoke-direct {v12, v0}, Lcom/offsec/nethunter/MPCFragment$3;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {v10, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 183
    const v12, 0x7f0a033d

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 184
    .local v12, "stageSpinner":Landroid/widget/Spinner;
    iget-object v13, v0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    const v14, 0x7f03000d

    invoke-static {v13, v14, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v13

    .line 187
    .local v13, "stagerAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 189
    const-string v14, "staged"

    iput-object v14, v0, Lcom/offsec/nethunter/MPCFragment;->stagerVar:Ljava/lang/String;

    .line 190
    new-instance v14, Lcom/offsec/nethunter/MPCFragment$4;

    invoke-direct {v14, v0}, Lcom/offsec/nethunter/MPCFragment$4;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {v12, v14}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 209
    const v14, 0x7f0a0338

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    .line 210
    .local v14, "callbackTypeSpinner":Landroid/widget/Spinner;
    iget-object v15, v0, Lcom/offsec/nethunter/MPCFragment;->context:Landroid/content/Context;

    move-object/from16 v16, v2

    .end local v2    # "sharedpreferences":Landroid/content/SharedPreferences;
    .local v16, "sharedpreferences":Landroid/content/SharedPreferences;
    const v2, 0x7f03000b

    invoke-static {v15, v2, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 213
    .local v2, "callbackTypeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v14, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 215
    const-string v8, "tcp"

    iput-object v8, v0, Lcom/offsec/nethunter/MPCFragment;->callbackTypeVar:Ljava/lang/String;

    .line 216
    new-instance v8, Lcom/offsec/nethunter/MPCFragment$5;

    invoke-direct {v8, v0}, Lcom/offsec/nethunter/MPCFragment$5;-><init>(Lcom/offsec/nethunter/MPCFragment;)V

    invoke-virtual {v14, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 245
    const v8, 0x7f0a033c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 246
    .local v8, "port":Landroid/widget/EditText;
    const v15, 0x7f1301f1

    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setText(I)V

    .line 250
    iget-object v15, v0, Lcom/offsec/nethunter/MPCFragment;->connectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v2

    .end local v2    # "callbackTypeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .local v17, "callbackTypeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    iget-object v2, v0, Lcom/offsec/nethunter/MPCFragment;->builder:Landroid/net/NetworkRequest$Builder;

    .line 251
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/MPCFragment$6;

    invoke-direct {v3, v0, v1}, Lcom/offsec/nethunter/MPCFragment$6;-><init>(Lcom/offsec/nethunter/MPCFragment;Landroid/view/View;)V

    .line 250
    invoke-virtual {v15, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 273
    const-string v2, "start cmd values"

    invoke-direct {v0, v1}, Lcom/offsec/nethunter/MPCFragment;->getCmd(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v2, Lcom/offsec/nethunter/MPCFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lcom/offsec/nethunter/MPCFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/MPCFragment;Landroid/view/View;)V

    const v3, 0x7f0a0336

    invoke-direct {v0, v3, v2, v1}, Lcom/offsec/nethunter/MPCFragment;->addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 281
    new-instance v2, Lcom/offsec/nethunter/MPCFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lcom/offsec/nethunter/MPCFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/MPCFragment;Landroid/view/View;)V

    const v3, 0x7f0a0335

    invoke-direct {v0, v3, v2, v1}, Lcom/offsec/nethunter/MPCFragment;->addClickListener(ILandroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 286
    return-object v1
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 304
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/offsec/nethunter/MPCFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method
