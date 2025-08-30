.class public Lcom/offsec/nethunter/NmapFragment;
.super Landroidx/fragment/app/Fragment;
.source "NmapFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final CommandComposed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NMAPFragment"


# instance fields
.field private MySearch:Ljava/lang/String;

.field private OSdetect:Ljava/lang/String;

.field private Ports:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private fastmode:Ljava/lang/String;

.field private ipv6check:Ljava/lang/String;

.field private net_interface:Ljava/lang/String;

.field private portsBar:Landroid/widget/EditText;

.field private searchBar:Landroid/widget/EditText;

.field private searchall:Ljava/lang/String;

.field private sv:Ljava/lang/String;

.field private technique:Ljava/lang/String;

.field private time_template:Ljava/lang/String;

.field private topports:Ljava/lang/String;

.field private udpscan:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 53
    invoke-static {}, Lcom/offsec/nethunter/NmapFragment;->cleanCmd()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->net_interface:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->time_template:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->OSdetect:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->udpscan:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->ipv6check:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->technique:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->sv:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->MySearch:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->Ports:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->topports:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->net_interface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->net_interface:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 29
    invoke-static {p0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 29
    invoke-static {p0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->technique:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->technique:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->time_template:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->time_template:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->MySearch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->MySearch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/offsec/nethunter/NmapFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->searchBar:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->Ports:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment;->Ports:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/offsec/nethunter/NmapFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 29
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->portsBar:Landroid/widget/EditText;

    return-object v0
.end method

.method private addClickListener(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p2, "rootView"    # Landroid/view/View;

    .line 445
    const v0, 0x7f0a037a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    return-void
.end method

.method private static addToCmd(Ljava/lang/String;)V
    .locals 1
    .param p0, "opt"    # Ljava/lang/String;

    .line 434
    sget-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method private static cleanCmd()V
    .locals 3

    .line 428
    sget-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    sget-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    sget-object v1, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    :cond_0
    return-void
.end method

.method private getCmd()Ljava/lang/String;
    .locals 3

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v0, "genCmd":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "j":I
    :goto_0
    if-ltz v1, :cond_0

    .line 419
    sget-object v2, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 422
    .end local v1    # "j":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NMAP CMD OUTPUT: "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/LinearLayout;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p0, "AdvLayout"    # Landroid/widget/LinearLayout;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 94
    const-string v0, "NMAPFragment"

    if-eqz p2, :cond_0

    .line 95
    const-string v1, "Advanced Options Open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    const-string v1, "Advanced Options Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    :goto_0
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/NmapFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 69
    new-instance v0, Lcom/offsec/nethunter/NmapFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/NmapFragment;-><init>()V

    .line 70
    .local v0, "fragment":Lcom/offsec/nethunter/NmapFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/NmapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v0
.end method

.method private static removeFromCmd(Ljava/lang/String;)V
    .locals 2
    .param p0, "opt"    # Ljava/lang/String;

    .line 438
    sget-object v0, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 439
    sget-object v1, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    sget-object v1, Lcom/offsec/nethunter/NmapFragment;->CommandComposed:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 438
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 442
    .end local v0    # "j":I
    :cond_1
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$1$com-offsec-nethunter-NmapFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 105
    invoke-direct {p0}, Lcom/offsec/nethunter/NmapFragment;->getCmd()Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$10$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "osdetectbox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 365
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const-string v0, " -O"

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->OSdetect:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->OSdetect:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->OSdetect:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-NmapFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/offsec/nethunter/NmapFragment;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/NmapFragment;->run_cmd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-NmapFragment(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 278
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "NMAPFragment"

    if-eqz v0, :cond_0

    .line 279
    const-string v0, " -A"

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->searchall:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "fastmodeCheckbox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 292
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, " -F"

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "pingCheckbox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 304
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, " -sn"

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->fastmode:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    .line 310
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$6$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "topportsCheckbox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 316
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, " --top-ports 20"

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->topports:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->topports:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->topports:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "udpCheckbox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 328
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const-string v0, " -sU"

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->udpscan:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->udpscan:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->udpscan:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$8$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "ipv6box"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 341
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, " -6"

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->ipv6check:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->ipv6check:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->ipv6check:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    .line 347
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$9$com-offsec-nethunter-NmapFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1
    .param p1, "svbox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 353
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, " -sV"

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->sv:Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->sv:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->addToCmd(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->sv:Ljava/lang/String;

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->removeFromCmd(Ljava/lang/String;)V

    .line 359
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/offsec/nethunter/NmapFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    move-object/from16 v0, p0

    const v1, 0x7f0d00ae

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "rootView":Landroid/view/View;
    const v5, 0x7f0a0370

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 87
    .local v5, "AdvLayout":Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v6, v0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    const-string v7, "com.offsec.nethunter"

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 91
    .local v6, "sharedpreferences":Landroid/content/SharedPreferences;
    const v7, 0x7f0a0371

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SwitchCompat;

    .line 92
    .local v7, "advswitch":Landroidx/appcompat/widget/SwitchCompat;
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 93
    new-instance v2, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v5}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    const v2, 0x7f0a037a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 104
    .local v2, "searchButton":Landroid/widget/Button;
    new-instance v8, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda3;

    invoke-direct {v8, v0}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v8, 0x7f0a0374

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 109
    .local v8, "typeSpinner":Landroid/widget/Spinner;
    iget-object v9, v0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    const v10, 0x7f03000f

    const v11, 0x1090008

    invoke-static {v9, v10, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v9

    .line 111
    .local v9, "typeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v10, 0x1090009

    invoke-virtual {v9, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 112
    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 113
    const-string v12, "wlan0"

    iput-object v12, v0, Lcom/offsec/nethunter/NmapFragment;->net_interface:Ljava/lang/String;

    .line 114
    new-instance v12, Lcom/offsec/nethunter/NmapFragment$1;

    invoke-direct {v12, v0}, Lcom/offsec/nethunter/NmapFragment$1;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {v8, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 154
    const v12, 0x7f0a037b

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Spinner;

    .line 155
    .local v12, "techSpinner":Landroid/widget/Spinner;
    iget-object v13, v0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    const v14, 0x7f030010

    invoke-static {v13, v14, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v13

    .line 157
    .local v13, "techAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v9, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 158
    invoke-virtual {v12, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    new-instance v14, Lcom/offsec/nethunter/NmapFragment$2;

    invoke-direct {v14, v0}, Lcom/offsec/nethunter/NmapFragment$2;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {v12, v14}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    new-instance v14, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda4;

    invoke-direct {v14, v0}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-direct {v0, v14, v1}, Lcom/offsec/nethunter/NmapFragment;->addClickListener(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 222
    const v14, 0x7f0a037d

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    .line 223
    .local v14, "timeSpinner":Landroid/widget/Spinner;
    iget-object v15, v0, Lcom/offsec/nethunter/NmapFragment;->context:Landroid/content/Context;

    const v10, 0x7f030011

    invoke-static {v15, v10, v11}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v10

    .line 225
    .local v10, "timeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v11, 0x1090009

    invoke-virtual {v10, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 226
    invoke-virtual {v14, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 227
    new-instance v11, Lcom/offsec/nethunter/NmapFragment$3;

    invoke-direct {v11, v0}, Lcom/offsec/nethunter/NmapFragment$3;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {v14, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 276
    const v11, 0x7f0a0372

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 277
    .local v11, "allCheckbox":Landroid/widget/CheckBox;
    new-instance v15, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda5;

    invoke-direct {v15, v0}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {v11, v15}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    const v15, 0x7f0a0373

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 291
    .local v15, "fastmodeCheckbox":Landroid/widget/CheckBox;
    move-object/from16 v16, v2

    .end local v2    # "searchButton":Landroid/widget/Button;
    .local v16, "searchButton":Landroid/widget/Button;
    new-instance v2, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v15}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    .line 299
    .local v2, "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v15, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    move-object/from16 v17, v2

    .end local v2    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v17, "checkBoxListener":Landroid/view/View$OnClickListener;
    const v2, 0x7f0a0378

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 303
    .local v2, "pingCheckbox":Landroid/widget/CheckBox;
    new-instance v3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    .line 311
    .end local v17    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v3, "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    move-object/from16 v17, v2

    .end local v2    # "pingCheckbox":Landroid/widget/CheckBox;
    .local v17, "pingCheckbox":Landroid/widget/CheckBox;
    const v2, 0x7f0a037e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 315
    .local v2, "topportsCheckbox":Landroid/widget/CheckBox;
    move-object/from16 v18, v3

    .end local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v18, "checkBoxListener":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0, v2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    .line 323
    .end local v18    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .restart local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    move-object/from16 v18, v2

    .end local v2    # "topportsCheckbox":Landroid/widget/CheckBox;
    .local v18, "topportsCheckbox":Landroid/widget/CheckBox;
    const v2, 0x7f0a037f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 327
    .local v2, "udpCheckbox":Landroid/widget/CheckBox;
    move-object/from16 v19, v3

    .end local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v19, "checkBoxListener":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, v0, v2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    .line 335
    .end local v19    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .restart local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    move-object/from16 v19, v2

    .end local v2    # "udpCheckbox":Landroid/widget/CheckBox;
    .local v19, "udpCheckbox":Landroid/widget/CheckBox;
    const v2, 0x7f0a0375

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 340
    .local v2, "ipv6box":Landroid/widget/CheckBox;
    move-object/from16 v20, v3

    .end local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v20, "checkBoxListener":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0, v2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    .line 348
    .end local v20    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .restart local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    move-object/from16 v20, v2

    .end local v2    # "ipv6box":Landroid/widget/CheckBox;
    .local v20, "ipv6box":Landroid/widget/CheckBox;
    const v2, 0x7f0a036f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 352
    .local v2, "svbox":Landroid/widget/CheckBox;
    move-object/from16 v21, v3

    .end local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v21, "checkBoxListener":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    .line 360
    .end local v21    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .restart local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    move-object/from16 v21, v2

    .end local v2    # "svbox":Landroid/widget/CheckBox;
    .local v21, "svbox":Landroid/widget/CheckBox;
    const v2, 0x7f0a0377

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 364
    .local v2, "osdetectbox":Landroid/widget/CheckBox;
    move-object/from16 v22, v3

    .end local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v22, "checkBoxListener":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2}, Lcom/offsec/nethunter/NmapFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/NmapFragment;Landroid/widget/CheckBox;)V

    .line 372
    .end local v22    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .restart local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    move-object/from16 v22, v2

    .end local v2    # "osdetectbox":Landroid/widget/CheckBox;
    .local v22, "osdetectbox":Landroid/widget/CheckBox;
    const v2, 0x7f0a037c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/offsec/nethunter/NmapFragment;->searchBar:Landroid/widget/EditText;

    .line 375
    iget-object v2, v0, Lcom/offsec/nethunter/NmapFragment;->searchBar:Landroid/widget/EditText;

    move-object/from16 v23, v3

    .end local v3    # "checkBoxListener":Landroid/view/View$OnClickListener;
    .local v23, "checkBoxListener":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/offsec/nethunter/NmapFragment$4;

    invoke-direct {v3, v0}, Lcom/offsec/nethunter/NmapFragment$4;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 394
    const v2, 0x7f0a0379

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v0, Lcom/offsec/nethunter/NmapFragment;->portsBar:Landroid/widget/EditText;

    .line 395
    iget-object v2, v0, Lcom/offsec/nethunter/NmapFragment;->portsBar:Landroid/widget/EditText;

    new-instance v3, Lcom/offsec/nethunter/NmapFragment$5;

    invoke-direct {v3, v0}, Lcom/offsec/nethunter/NmapFragment$5;-><init>(Lcom/offsec/nethunter/NmapFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 413
    return-object v1
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 453
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 454
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/offsec/nethunter/NmapFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 455
    return-void
.end method
