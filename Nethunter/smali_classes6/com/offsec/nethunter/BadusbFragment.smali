.class public Lcom/offsec/nethunter/BadusbFragment;
.super Landroidx/fragment/app/Fragment;
.source "BadusbFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private sourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 33
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic lambda$loadOptions$1(Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "ifc"    # Landroid/widget/EditText;

    .line 79
    const-string v0, "^INTERFACE=(.*)$"

    .line 80
    .local v0, "regExpatInterface":Ljava/lang/String;
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 81
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 82
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "ifcValue":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v3    # "ifcValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadOptions(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .line 74
    const v0, 0x7f0a02be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 75
    .local v0, "ifc":Landroid/widget/EditText;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 76
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BadusbFragment;Landroid/widget/EditText;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 88
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 89
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/BadusbFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 38
    new-instance v0, Lcom/offsec/nethunter/BadusbFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BadusbFragment;-><init>()V

    .line 39
    .local v0, "fragment":Lcom/offsec/nethunter/BadusbFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/BadusbFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method

.method private start()V
    .locals 3

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 134
    .local v0, "command":[Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/start-badusb-lollipop &> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/badusb.log &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    const-string v2, "BadUSB attack started! Check /sdcard/nh_files/badusb.log"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private stop()V
    .locals 3

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 143
    .local v0, "command":[Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stop-badusb-lollipop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    const-string v2, "BadUSB attack stopped!"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private updateOptions()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "sourceFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f0a02be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 123
    .local v1, "ifc":Landroid/widget/EditText;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTERFACE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?m)^INTERFACE=(.*)$"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v2, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v3, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 125
    .local v2, "r":Z
    if-eqz v2, :cond_0

    .line 126
    iget-object v3, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    const-string v4, "Options updated!"

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v3, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    const-string v4, "Options not updated!"

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$loadOptions$2$com-offsec-nethunter-BadusbFragment(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "ifc"    # Landroid/widget/EditText;

    .line 77
    iget-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v1, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 87
    return-void
.end method

.method synthetic lambda$onCreateView$0$com-offsec-nethunter-BadusbFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 60
    invoke-direct {p0}, Lcom/offsec/nethunter/BadusbFragment;->updateOptions()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->activity:Landroid/app/Activity;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/configs/startbadusb-lollipop.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    .line 53
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 93
    const/high16 v0, 0x7f0f0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 95
    const v0, 0x7f0a0452

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    .local v0, "sourceItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 97
    .local v1, "iswatch":Z
    if-eqz v1, :cond_0

    .line 98
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    const v0, 0x7f0d001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BadusbFragment;->loadOptions(Landroid/view/View;)V

    .line 59
    const v1, 0x7f0a050b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 60
    .local v1, "button":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/BadusbFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BadusbFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/BadusbFragment;->setHasOptionsMenu(Z)V

    .line 62
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 105
    .local v0, "id":I
    const v1, 0x7f0a0491

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/offsec/nethunter/BadusbFragment;->start()V

    .line 107
    return v2

    .line 108
    :cond_0
    const v1, 0x7f0a04a0

    if-ne v0, v1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/offsec/nethunter/BadusbFragment;->stop()V

    .line 110
    return v2

    .line 111
    :cond_1
    const v1, 0x7f0a0452

    if-ne v0, v1, :cond_2

    .line 112
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/offsec/nethunter/BadusbFragment;->activity:Landroid/app/Activity;

    const-class v4, Lcom/offsec/nethunter/EditSourceActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "path"

    iget-object v4, p0, Lcom/offsec/nethunter/BadusbFragment;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/BadusbFragment;->startActivity(Landroid/content/Intent;)V

    .line 115
    return v2

    .line 117
    .end local v1    # "i":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/offsec/nethunter/BadusbFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BadusbFragment;->loadOptions(Landroid/view/View;)V

    .line 71
    :cond_0
    return-void
.end method
