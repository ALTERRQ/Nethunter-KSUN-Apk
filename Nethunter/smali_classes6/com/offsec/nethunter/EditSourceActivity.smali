.class public Lcom/offsec/nethunter/EditSourceActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "EditSourceActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private configFilePath:Ljava/lang/String;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/EditSourceActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iput-object p0, p0, Lcom/offsec/nethunter/EditSourceActivity;->activity:Landroid/app/Activity;

    .line 29
    invoke-virtual {p0}, Lcom/offsec/nethunter/EditSourceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 31
    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    .line 32
    const v1, 0x7f0d00de

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/EditSourceActivity;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/offsec/nethunter/EditSourceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f060049

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 35
    const v1, 0x7f0a0451

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/EditSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 36
    .local v1, "source":Landroid/widget/EditText;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const v3, 0x7f130190

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/EditSourceActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v2, p0, Lcom/offsec/nethunter/EditSourceActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v3, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 39
    invoke-virtual {p0}, Lcom/offsec/nethunter/EditSourceActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    .line 40
    .local v2, "ab":Landroidx/appcompat/app/ActionBar;
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v2, v5}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    :cond_0
    iget-object v3, p0, Lcom/offsec/nethunter/EditSourceActivity;->activity:Landroid/app/Activity;

    const-string v4, "File Loaded"

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void

    .line 30
    .end local v1    # "source":Landroid/widget/EditText;
    .end local v2    # "ab":Landroidx/appcompat/app/ActionBar;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {p0}, Landroidx/core/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 50
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public updateSource(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 70
    const v0, 0x7f0a0451

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/EditSourceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 71
    .local v0, "source":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "newSource":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/EditSourceActivity;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v3, p0, Lcom/offsec/nethunter/EditSourceActivity;->configFilePath:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 73
    .local v2, "isSaved":Z
    if-eqz v2, :cond_0

    .line 74
    iget-object v3, p0, Lcom/offsec/nethunter/EditSourceActivity;->activity:Landroid/app/Activity;

    const-string v4, "Source updated"

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/offsec/nethunter/EditSourceActivity;->activity:Landroid/app/Activity;

    const-string v4, "Source not updated"

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void
.end method
