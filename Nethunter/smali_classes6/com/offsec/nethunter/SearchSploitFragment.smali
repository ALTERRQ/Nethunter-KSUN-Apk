.class public Lcom/offsec/nethunter/SearchSploitFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchSploitFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "SearchSploitFragment"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adi:Landroidx/appcompat/app/AlertDialog;

.field private context:Landroid/content/Context;

.field private database:Lcom/offsec/nethunter/SearchSploitSQL;

.field private full_exploitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/SearchSploit;",
            ">;"
        }
    .end annotation
.end field

.field private isLoaded:Ljava/lang/Boolean;

.field private numex:Landroid/widget/TextView;

.field private searchSploitListView:Landroid/widget/ListView;

.field private sel_platform:Ljava/lang/String;

.field private sel_search:Ljava/lang/String;

.field private sel_type:Ljava/lang/String;

.field private withFilters:Ljava/lang/Boolean;


# direct methods
.method public static synthetic $r8$lambda$fg2gSR1idc7jAM5GIouAwp8AifU(Lcom/offsec/nethunter/SearchSploitFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->isLoaded:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$002(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SearchSploitFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/SearchSploitFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SearchSploitFragment;

    .line 43
    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    return-void
.end method

.method static synthetic access$202(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SearchSploitFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_platform:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/SearchSploitFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_type:Ljava/lang/String;

    return-object p1
.end method

.method private static hideSoftKeyboard(Landroid/view/View;)V
    .locals 3
    .param p0, "caller"    # Landroid/view/View;

    .line 201
    new-instance v0, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method

.method static synthetic lambda$hideSoftKeyboard$6(Landroid/view/View;)V
    .locals 3
    .param p0, "caller"    # Landroid/view/View;

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 203
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 204
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "id"    # I

    .line 182
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private loadExploits()V
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_platform:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_type:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_platform:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/offsec/nethunter/SearchSploitSQL;->getAllExploitsFiltered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .local v0, "exploitList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/SearchSploit;>;"
    goto :goto_0

    .line 264
    .end local v0    # "exploitList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/SearchSploit;>;"
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->full_exploitList:Ljava/util/List;

    .restart local v0    # "exploitList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/SearchSploit;>;"
    goto :goto_0

    .line 267
    .end local v0    # "exploitList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/SearchSploit;>;"
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->sel_search:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SearchSploitSQL;->getAllExploitsRaw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 270
    .restart local v0    # "exploitList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/SearchSploit;>;"
    :goto_0
    if-nez v0, :cond_2

    .line 271
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    return-void

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->numex:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "%d results"

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    new-instance v1, Lcom/offsec/nethunter/ExploitLoader;

    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/offsec/nethunter/ExploitLoader;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 277
    .local v1, "exploitAdapter":Lcom/offsec/nethunter/ExploitLoader;
    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->searchSploitListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 278
    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->isLoaded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 281
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 283
    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 284
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->isLoaded:Ljava/lang/Boolean;

    .line 285
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/offsec/nethunter/SearchSploitFragment;->hideSoftKeyboard(Landroid/view/View;)V

    .line 288
    .end local v0    # "exploitList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/SearchSploit;>;"
    .end local v1    # "exploitAdapter":Lcom/offsec/nethunter/ExploitLoader;
    :cond_3
    return-void
.end method

.method private main(Landroid/view/View;)V
    .locals 11
    .param p1, "rootView"    # Landroid/view/View;

    .line 208
    const v0, 0x7f0a0415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->searchSploitListView:Landroid/widget/ListView;

    .line 209
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    invoke-virtual {v0}, Lcom/offsec/nethunter/SearchSploitSQL;->getCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 210
    .local v0, "exploitCount":Ljava/lang/Long;
    const v1, 0x7f0a0432

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 211
    .local v1, "searchSearchSploit":Landroid/widget/Button;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const v8, 0x7f0a041c

    cmp-long v9, v2, v4

    if-nez v9, :cond_0

    .line 212
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 215
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/offsec/nethunter/SearchSploitFragment;->hideSoftKeyboard(Landroid/view/View;)V

    .line 216
    return-void

    .line 218
    :cond_0
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    invoke-virtual {v2}, Lcom/offsec/nethunter/SearchSploitSQL;->getPlatforms()Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, "platformList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v3, 0x7f0a019a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 224
    .local v3, "platformSpin":Landroid/widget/Spinner;
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    const v6, 0x1090003

    invoke-direct {v4, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 225
    .local v4, "adp12":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 226
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 227
    new-instance v7, Lcom/offsec/nethunter/SearchSploitFragment$2;

    invoke-direct {v7, p0, v2}, Lcom/offsec/nethunter/SearchSploitFragment$2;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/util/List;)V

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 239
    iget-object v7, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    invoke-virtual {v7}, Lcom/offsec/nethunter/SearchSploitSQL;->getTypes()Ljava/util/List;

    move-result-object v7

    .line 240
    .local v7, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v8, 0x7f0a019b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 241
    .local v8, "typeSpin":Landroid/widget/Spinner;
    new-instance v9, Landroid/widget/ArrayAdapter;

    iget-object v10, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    invoke-direct {v9, v10, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v6, v9

    .line 242
    .local v6, "adp13":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 243
    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 244
    new-instance v5, Lcom/offsec/nethunter/SearchSploitFragment$3;

    invoke-direct {v5, p0, v7}, Lcom/offsec/nethunter/SearchSploitFragment$3;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/util/List;)V

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 255
    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    .line 256
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/SearchSploitFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 61
    new-instance v0, Lcom/offsec/nethunter/SearchSploitFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/SearchSploitFragment;-><init>()V

    .line 62
    .local v0, "fragment":Lcom/offsec/nethunter/SearchSploitFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SearchSploitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-object v0
.end method


# virtual methods
.method synthetic lambda$loadExploits$7$com-offsec-nethunter-SearchSploitFragment()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SearchSploitSQL;->getAllExploitsRaw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->full_exploitList:Ljava/util/List;

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-SearchSploitFragment(Ljava/lang/Boolean;Landroid/view/View;Landroid/widget/ProgressBar;)V
    .locals 20
    .param p1, "isFeeded"    # Ljava/lang/Boolean;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;

    .line 122
    move-object/from16 v1, p0

    const-string v2, "importDB"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, v1, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    const-string v3, "DB FEED DONE"

    invoke-static {v0, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 126
    .local v3, "sd":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 127
    .local v4, "data":Ljava/lang/String;
    const-string v0, "SearchSploit"

    move-object v5, v0

    .line 128
    .local v5, "DATABASE_NAME":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "databases/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 129
    .local v6, "currentDBPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/nh_files/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 131
    .local v7, "backupDBPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    .line 132
    .local v8, "backupDB":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    .line 134
    .local v9, "currentDB":Ljava/io/File;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, v0

    .line 135
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    move-object v11, v0

    .line 136
    .local v11, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v18, v0

    .line 137
    .local v18, "src":Ljava/nio/channels/FileChannel;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v19, v0

    .line 138
    .local v19, "dst":Ljava/nio/channels/FileChannel;
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    const-wide/16 v14, 0x0

    move-object/from16 v12, v19

    move-object/from16 v13, v18

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    if-eqz v19, :cond_0

    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v19    # "dst":Ljava/nio/channels/FileChannel;
    :cond_0
    if-eqz v18, :cond_1

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .end local v18    # "src":Ljava/nio/channels/FileChannel;
    :cond_1
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 140
    .end local v10    # "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully imported "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 141
    move-object/from16 v12, p2

    :try_start_9
    invoke-direct {v1, v12}, Lcom/offsec/nethunter/SearchSploitFragment;->main(Landroid/view/View;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .end local v3    # "sd":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "DATABASE_NAME":Ljava/lang/String;
    .end local v6    # "currentDBPath":Ljava/lang/String;
    .end local v7    # "backupDBPath":Ljava/lang/String;
    .end local v8    # "backupDB":Ljava/io/File;
    .end local v9    # "currentDB":Ljava/io/File;
    goto :goto_8

    .line 134
    .restart local v3    # "sd":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v5    # "DATABASE_NAME":Ljava/lang/String;
    .restart local v6    # "currentDBPath":Ljava/lang/String;
    .restart local v7    # "backupDBPath":Ljava/lang/String;
    .restart local v8    # "backupDB":Ljava/io/File;
    .restart local v9    # "currentDB":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "src":Ljava/nio/channels/FileChannel;
    .restart local v19    # "dst":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v0

    move-object/from16 v12, p2

    move-object v13, v0

    if-eqz v19, :cond_2

    :try_start_a
    invoke-virtual/range {v19 .. v19}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v14, v0

    :try_start_b
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "sd":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "DATABASE_NAME":Ljava/lang/String;
    .end local v6    # "currentDBPath":Ljava/lang/String;
    .end local v7    # "backupDBPath":Ljava/lang/String;
    .end local v8    # "backupDB":Ljava/io/File;
    .end local v9    # "currentDB":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "src":Ljava/nio/channels/FileChannel;
    .end local p1    # "isFeeded":Ljava/lang/Boolean;
    .end local p2    # "rootView":Landroid/view/View;
    .end local p3    # "progressBar":Landroid/widget/ProgressBar;
    :cond_2
    :goto_0
    throw v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v19    # "dst":Ljava/nio/channels/FileChannel;
    .restart local v3    # "sd":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v5    # "DATABASE_NAME":Ljava/lang/String;
    .restart local v6    # "currentDBPath":Ljava/lang/String;
    .restart local v7    # "backupDBPath":Ljava/lang/String;
    .restart local v8    # "backupDB":Ljava/io/File;
    .restart local v9    # "currentDB":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "src":Ljava/nio/channels/FileChannel;
    .restart local p1    # "isFeeded":Ljava/lang/Boolean;
    .restart local p2    # "rootView":Landroid/view/View;
    .restart local p3    # "progressBar":Landroid/widget/ProgressBar;
    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v12, p2

    :goto_1
    move-object v13, v0

    if-eqz v18, :cond_3

    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v14, v0

    :try_start_d
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "sd":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "DATABASE_NAME":Ljava/lang/String;
    .end local v6    # "currentDBPath":Ljava/lang/String;
    .end local v7    # "backupDBPath":Ljava/lang/String;
    .end local v8    # "backupDB":Ljava/io/File;
    .end local v9    # "currentDB":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local p1    # "isFeeded":Ljava/lang/Boolean;
    .end local p2    # "rootView":Landroid/view/View;
    .end local p3    # "progressBar":Landroid/widget/ProgressBar;
    :cond_3
    :goto_2
    throw v13
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .end local v18    # "src":Ljava/nio/channels/FileChannel;
    .restart local v3    # "sd":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v5    # "DATABASE_NAME":Ljava/lang/String;
    .restart local v6    # "currentDBPath":Ljava/lang/String;
    .restart local v7    # "backupDBPath":Ljava/lang/String;
    .restart local v8    # "backupDB":Ljava/io/File;
    .restart local v9    # "currentDB":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local p1    # "isFeeded":Ljava/lang/Boolean;
    .restart local p2    # "rootView":Landroid/view/View;
    .restart local p3    # "progressBar":Landroid/widget/ProgressBar;
    :catchall_5
    move-exception v0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v12, p2

    :goto_3
    move-object v13, v0

    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object v14, v0

    :try_start_f
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "sd":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "DATABASE_NAME":Ljava/lang/String;
    .end local v6    # "currentDBPath":Ljava/lang/String;
    .end local v7    # "backupDBPath":Ljava/lang/String;
    .end local v8    # "backupDB":Ljava/io/File;
    .end local v9    # "currentDB":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "isFeeded":Ljava/lang/Boolean;
    .end local p2    # "rootView":Landroid/view/View;
    .end local p3    # "progressBar":Landroid/widget/ProgressBar;
    :goto_4
    throw v13
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "sd":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v5    # "DATABASE_NAME":Ljava/lang/String;
    .restart local v6    # "currentDBPath":Ljava/lang/String;
    .restart local v7    # "backupDBPath":Ljava/lang/String;
    .restart local v8    # "backupDB":Ljava/io/File;
    .restart local v9    # "currentDB":Ljava/io/File;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "isFeeded":Ljava/lang/Boolean;
    .restart local p2    # "rootView":Landroid/view/View;
    .restart local p3    # "progressBar":Landroid/widget/ProgressBar;
    :catchall_8
    move-exception v0

    goto :goto_5

    :catchall_9
    move-exception v0

    move-object/from16 v12, p2

    :goto_5
    move-object v11, v0

    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto :goto_6

    :catchall_a
    move-exception v0

    move-object v13, v0

    :try_start_11
    invoke-virtual {v11, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "isFeeded":Ljava/lang/Boolean;
    .end local p2    # "rootView":Landroid/view/View;
    .end local p3    # "progressBar":Landroid/widget/ProgressBar;
    :goto_6
    throw v11
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 142
    .end local v3    # "sd":Ljava/lang/String;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "DATABASE_NAME":Ljava/lang/String;
    .end local v6    # "currentDBPath":Ljava/lang/String;
    .end local v7    # "backupDBPath":Ljava/lang/String;
    .end local v8    # "backupDB":Ljava/io/File;
    .end local v9    # "currentDB":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "isFeeded":Ljava/lang/Boolean;
    .restart local p2    # "rootView":Landroid/view/View;
    .restart local p3    # "progressBar":Landroid/widget/ProgressBar;
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v12, p2

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    goto :goto_9

    .line 146
    :cond_4
    move-object/from16 v12, p2

    iget-object v0, v1, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    const-string v2, "Unable to find Searchsploit files.csv database. Install exploitdb in chroot"

    invoke-static {v0, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    :goto_9
    const/16 v0, 0x8

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-SearchSploitFragment(Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;)V
    .locals 2
    .param p1, "searchSearchSploit"    # Landroid/widget/Button;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;

    .line 120
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    invoke-virtual {v0}, Lcom/offsec/nethunter/SearchSploitSQL;->doDbFeed()Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    .local v0, "isFeeded":Ljava/lang/Boolean;
    new-instance v1, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Ljava/lang/Boolean;Landroid/view/View;Landroid/widget/ProgressBar;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-SearchSploitFragment(Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "progressBar"    # Landroid/widget/ProgressBar;
    .param p2, "searchSearchSploit"    # Landroid/widget/Button;
    .param p3, "rootView"    # Landroid/view/View;
    .param p4, "v"    # Landroid/view/View;

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/widget/Button;Landroid/view/View;Landroid/widget/ProgressBar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-SearchSploitFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;

    .line 155
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SearchSploitFragment;->main(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$5$com-offsec-nethunter-SearchSploitFragment(Landroid/view/MenuItem;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "id"    # I

    .line 184
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a041c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    const-string v0, "Disable Raw search"

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 186
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    .line 187
    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    .line 188
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/SearchSploitFragment;->hideSoftKeyboard(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 163
    const v0, 0x7f0f000c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    const v0, 0x7f0d00d4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "rootView":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/SearchSploitFragment;->setHasOptionsMenu(Z)V

    .line 81
    new-instance v2, Lcom/offsec/nethunter/SearchSploitSQL;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/offsec/nethunter/SearchSploitSQL;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/offsec/nethunter/SearchSploitFragment;->database:Lcom/offsec/nethunter/SearchSploitSQL;

    .line 82
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    const v4, 0x7f14012e

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 83
    .local v2, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v3, "Exploit Database Archive"

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 84
    const-string v3, "Loading...wait"

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 86
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    .line 87
    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 88
    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->adi:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 90
    const v1, 0x7f0a0388

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/SearchSploitFragment;->numex:Landroid/widget/TextView;

    .line 91
    const v1, 0x7f0a0416

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 92
    .local v1, "searchStr":Landroid/widget/SearchView;
    new-instance v3, Lcom/offsec/nethunter/SearchSploitFragment$1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/SearchSploitFragment$1;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 115
    const v3, 0x7f0a0432

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 116
    .local v3, "searchSearchSploit":Landroid/widget/Button;
    const v4, 0x7f0a03d2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 117
    .local v4, "progressBar":Landroid/widget/ProgressBar;
    new-instance v5, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v4, v3, v0}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/widget/ProgressBar;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, v0}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/view/View;)V

    const-wide/16 v7, 0xfa

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a03db

    if-ne v0, v1, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->requireView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a041c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/SearchSploitFragment;->withFilters:Ljava/lang/Boolean;

    .line 174
    const-string v0, "Enable Raw search"

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 175
    invoke-direct {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->loadExploits()V

    .line 176
    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/SearchSploitFragment;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_2
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v3, p0, Lcom/offsec/nethunter/SearchSploitFragment;->activity:Landroid/app/Activity;

    const v4, 0x7f14012e

    invoke-direct {v0, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 179
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v3, "Raw search warning"

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 181
    const-string v3, "The exploit db is pretty big (+30K exploits), activating raw search will make the search slow.\nIs useful to do global searches when you don\'t find a exploit."

    invoke-virtual {v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda4;-><init>()V

    .line 182
    const-string v5, "Cancel"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Lcom/offsec/nethunter/SearchSploitFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/SearchSploitFragment;Landroid/view/MenuItem;)V

    .line 183
    const-string v5, "Enable"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 191
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    .line 192
    .local v3, "ad":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 193
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 195
    .end local v0    # "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v3    # "ad":Landroidx/appcompat/app/AlertDialog;
    :goto_0
    return v1

    .line 197
    :cond_3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
