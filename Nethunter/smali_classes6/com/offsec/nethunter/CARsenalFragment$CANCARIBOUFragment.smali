.class public Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;
.super Lcom/offsec/nethunter/CARsenalFragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CANCARIBOUFragment"
.end annotation


# instance fields
.field private SelectedFile:Landroid/widget/EditText;

.field private SelectedMessage:Landroid/widget/EditText;

.field private addrByteSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private arbIDContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private autoBlacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private blacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private candumpContainer:Landroid/view/ViewGroup;

.field private dataContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private dtypeContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private durationContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private ecuResetMethodeContainer:Landroid/view/ViewGroup;

.field private ecuResetMethodeSpinner:Landroid/widget/Spinner;

.field private ecuResetTypeContainer:Landroid/view/ViewGroup;

.field private ecuResetTypeSpinner:Landroid/widget/Spinner;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private fileContainer:Landroid/view/ViewGroup;

.field private idContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private indexContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private interDelayContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private iterationsContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private loopContainer:Landroid/view/ViewGroup;

.field private maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private maxdidContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private memLengthByteSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private memLengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private memSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private messageContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private minContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private mindidContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private numberContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private outputContainer:Landroid/view/ViewGroup;

.field private padContainer:Landroid/view/ViewGroup;

.field private requestsContainer:Landroid/view/ViewGroup;

.field private responsesContainer:Landroid/view/ViewGroup;

.field private reverseContainer:Landroid/view/ViewGroup;

.field private securityLevelContainer:Landroid/view/ViewGroup;

.field private securityLevelInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private securityLevelSpinner:Landroid/widget/Spinner;

.field private seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private seedTargetContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private selected_caniface:Ljava/lang/String;

.field private separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private sessionSeqContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private sessionTypeContainer:Landroid/view/ViewGroup;

.field private sessionTypeInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private sessionTypeSpinner:Landroid/widget/Spinner;

.field private skipverifyContainer:Landroid/view/ViewGroup;

.field private sprContainer:Landroid/view/ViewGroup;

.field private srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private stypeContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private timeoutContainer:Lcom/google/android/material/textfield/TextInputLayout;

.field private whitelistContainer:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1750
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 1751
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1752
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 1756
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->mindidContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxdidContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->messageContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->loopContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->fileContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->padContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->candumpContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->reverseContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->whitelistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->responsesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requestsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->indexContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->arbIDContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dataContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->blacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->autoBlacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->skipverifyContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->timeoutContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->stypeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dtypeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->durationContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sprContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetMethodeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->numberContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memLengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->addrByteSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memLengthByteSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionSeqContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedTargetContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->interDelayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->iterationsContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;

    .line 1750
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;[Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;
    .param p1, "x1"    # [Ljava/lang/String;

    .line 1750
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method private createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;
    .locals 3
    .param p1, "items"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1769
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$1;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    return-object v0
.end method

.method private getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2296
    if-eqz p1, :cond_0

    .line 2297
    invoke-virtual {p1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2298
    .local v0, "container":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2299
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2300
    .local v1, "input":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2305
    .end local v0    # "container":Landroid/view/View;
    .end local v1    # "input":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private getVisibleSpinnerOrInputValue(Landroid/widget/Spinner;Landroid/view/ViewGroup;Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .locals 6
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "spinnerContainer"    # Landroid/view/ViewGroup;
    .param p3, "inputContainer"    # Lcom/google/android/material/textfield/TextInputLayout;

    .line 2330
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_4

    .line 2331
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2334
    .local v0, "selected":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2348
    :cond_0
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2352
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2335
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2336
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 2337
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_3

    .line 2338
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2339
    .local v4, "input":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2344
    .end local v2    # "editText":Landroid/widget/EditText;
    .end local v4    # "input":Ljava/lang/String;
    :cond_3
    return-object v1

    .line 2354
    .end local v0    # "selected":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method private getVisibleSpinnerValue(Landroid/widget/Spinner;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 2309
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2310
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 2311
    .local v0, "pos":I
    if-lez v0, :cond_1

    .line 2312
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2315
    .local v1, "selected":Ljava/lang/String;
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2316
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2319
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2322
    .end local v0    # "pos":I
    .end local v1    # "selected":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private runDump(Ljava/lang/String;)V
    .locals 7
    .param p1, "dump_module"    # Ljava/lang/String;

    .line 2358
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->whitelistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, " "

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2364
    .local v0, "whitelistValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, " -s "

    invoke-direct {p0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2365
    .local v1, "separateLineValue":Ljava/lang/String;
    const-string v2, ""

    .line 2366
    .local v2, "outputEnabled":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2367
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0a00de

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 2368
    .local v3, "outputSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2369
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2370
    .local v4, "filePath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2376
    .end local v3    # "outputSwitch":Landroidx/appcompat/widget/SwitchCompat;
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 2377
    .local v3, "candumpEnabled":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->candumpContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2378
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->candumpContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a00da

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    .line 2379
    .local v4, "candumpSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2380
    const-string v3, " -c"

    .line 2384
    .end local v4    # "candumpSwitch":Landroidx/appcompat/widget/SwitchCompat;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dump"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2386
    .local v4, "cmdBase":Ljava/lang/String;
    const-string v5, "None"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2389
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown dump submodule: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2391
    :goto_0
    return-void

    .line 2359
    .end local v0    # "whitelistValue":Ljava/lang/String;
    .end local v1    # "separateLineValue":Ljava/lang/String;
    .end local v2    # "outputEnabled":Ljava/lang/String;
    .end local v3    # "candumpEnabled":Ljava/lang/String;
    .end local v4    # "cmdBase":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2360
    return-void
.end method

.method private runFuzzer(Ljava/lang/String;)V
    .locals 22
    .param p1, "fuzzer_module"    # Ljava/lang/String;

    .line 2394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v3, "Interfaces"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 2399
    :cond_0
    const-string v2, ""

    .line 2400
    .local v2, "outputEnabled":Ljava/lang/String;
    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2401
    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0a00de

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 2402
    .local v3, "outputSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2403
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2404
    .local v4, "filePath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2410
    .end local v3    # "outputSwitch":Landroidx/appcompat/widget/SwitchCompat;
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    .line 2411
    .local v3, "responsesEnabled":Ljava/lang/String;
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->responsesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2412
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->responsesContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a00e1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    .line 2413
    .local v4, "responsesSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2414
    const-string v3, " -responses"

    .line 2418
    .end local v4    # "responsesSwitch":Landroidx/appcompat/widget/SwitchCompat;
    :cond_2
    const-string v4, ""

    .line 2419
    .local v4, "requestsEnabled":Ljava/lang/String;
    iget-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requestsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 2420
    iget-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requestsContainer:Landroid/view/ViewGroup;

    const v6, 0x7f0a00e0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    .line 2421
    .local v5, "requestsSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2422
    const-string v4, " -requests"

    .line 2426
    .end local v5    # "requestsSwitch":Landroidx/appcompat/widget/SwitchCompat;
    :cond_3
    const-string v5, ""

    .line 2427
    .local v5, "selected_file":Ljava/lang/String;
    iget-object v6, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->fileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 2428
    iget-object v6, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2429
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2430
    move-object v5, v6

    .line 2434
    .end local v6    # "text":Ljava/lang/String;
    :cond_4
    iget-object v6, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    const-string v7, " -id "

    invoke-direct {v0, v6, v7}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2435
    .local v6, "idValue":Ljava/lang/String;
    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    const-string v8, " -seed "

    invoke-direct {v0, v7, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2436
    .local v7, "seedValue":Ljava/lang/String;
    iget-object v8, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    const-string v9, " -min "

    invoke-direct {v0, v8, v9}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2437
    .local v8, "minValue":Ljava/lang/String;
    iget-object v9, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    const-string v10, " -max "

    invoke-direct {v0, v9, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2438
    .local v9, "maxValue":Ljava/lang/String;
    iget-object v10, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v10}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    const-string v11, " -delay "

    invoke-direct {v0, v10, v11}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2439
    .local v10, "delayValue":Ljava/lang/String;
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->indexContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v11}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    const-string v12, " -index "

    invoke-direct {v0, v11, v12}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2440
    .local v11, "indexValue":Ljava/lang/String;
    iget-object v12, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->arbIDContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    const-string v13, " "

    invoke-direct {v0, v12, v13}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2441
    .local v12, "arbIDValue":Ljava/lang/String;
    iget-object v14, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dataContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v14}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v14

    invoke-direct {v0, v14, v13}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2443
    .local v14, "dataValue":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v12

    .end local v12    # "arbIDValue":Ljava/lang/String;
    .local v16, "arbIDValue":Ljava/lang/String;
    const-string v12, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v15, " fuzzer "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2445
    .local v12, "cmdBase":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v15

    move-object/from16 v17, v7

    .end local v7    # "seedValue":Ljava/lang/String;
    .local v17, "seedValue":Ljava/lang/String;
    const-string v7, "brute"

    move-object/from16 v18, v11

    .end local v11    # "indexValue":Ljava/lang/String;
    .local v18, "indexValue":Ljava/lang/String;
    const-string v11, "identify"

    move-object/from16 v19, v9

    .end local v9    # "maxValue":Ljava/lang/String;
    .local v19, "maxValue":Ljava/lang/String;
    const-string v9, "replay"

    move-object/from16 v20, v8

    .end local v8    # "minValue":Ljava/lang/String;
    .local v20, "minValue":Ljava/lang/String;
    const-string v8, "random"

    move-object/from16 v21, v2

    .end local v2    # "outputEnabled":Ljava/lang/String;
    .local v21, "outputEnabled":Ljava/lang/String;
    const-string v2, "mutate"

    sparse-switch v15, :sswitch_data_0

    :cond_5
    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x2

    goto :goto_1

    :goto_0
    const/4 v15, -0x1

    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 2462
    move-object/from16 v2, v16

    move-object/from16 v15, v19

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v16, v4

    move-object/from16 v4, v18

    .end local v18    # "indexValue":Ljava/lang/String;
    .end local v19    # "maxValue":Ljava/lang/String;
    .end local v20    # "minValue":Ljava/lang/String;
    .end local v21    # "outputEnabled":Ljava/lang/String;
    .local v2, "arbIDValue":Ljava/lang/String;
    .local v4, "indexValue":Ljava/lang/String;
    .local v8, "outputEnabled":Ljava/lang/String;
    .local v9, "minValue":Ljava/lang/String;
    .local v15, "maxValue":Ljava/lang/String;
    .local v16, "requestsEnabled":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown fuzzer submodule: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2459
    .end local v2    # "arbIDValue":Ljava/lang/String;
    .end local v8    # "outputEnabled":Ljava/lang/String;
    .end local v9    # "minValue":Ljava/lang/String;
    .end local v15    # "maxValue":Ljava/lang/String;
    .local v4, "requestsEnabled":Ljava/lang/String;
    .local v16, "arbIDValue":Ljava/lang/String;
    .restart local v18    # "indexValue":Ljava/lang/String;
    .restart local v19    # "maxValue":Ljava/lang/String;
    .restart local v20    # "minValue":Ljava/lang/String;
    .restart local v21    # "outputEnabled":Ljava/lang/String;
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2460
    move-object/from16 v2, v16

    move-object/from16 v15, v19

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v16, v4

    move-object/from16 v4, v18

    goto/16 :goto_2

    .line 2456
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v8, v21

    .end local v21    # "outputEnabled":Ljava/lang/String;
    .restart local v8    # "outputEnabled":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v9, v20

    .end local v20    # "minValue":Ljava/lang/String;
    .restart local v9    # "minValue":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v15, v19

    .end local v19    # "maxValue":Ljava/lang/String;
    .restart local v15    # "maxValue":Ljava/lang/String;
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v7, v18

    .end local v18    # "indexValue":Ljava/lang/String;
    .local v7, "indexValue":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, v17

    .end local v17    # "seedValue":Ljava/lang/String;
    .local v11, "seedValue":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2457
    move-object/from16 v2, v16

    move-object/from16 v16, v4

    move-object v4, v7

    goto/16 :goto_2

    .line 2453
    .end local v7    # "indexValue":Ljava/lang/String;
    .end local v8    # "outputEnabled":Ljava/lang/String;
    .end local v9    # "minValue":Ljava/lang/String;
    .end local v11    # "seedValue":Ljava/lang/String;
    .end local v15    # "maxValue":Ljava/lang/String;
    .restart local v17    # "seedValue":Ljava/lang/String;
    .restart local v18    # "indexValue":Ljava/lang/String;
    .restart local v19    # "maxValue":Ljava/lang/String;
    .restart local v20    # "minValue":Ljava/lang/String;
    .restart local v21    # "outputEnabled":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v11, v17

    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    .end local v17    # "seedValue":Ljava/lang/String;
    .end local v18    # "indexValue":Ljava/lang/String;
    .end local v19    # "maxValue":Ljava/lang/String;
    .end local v20    # "minValue":Ljava/lang/String;
    .end local v21    # "outputEnabled":Ljava/lang/String;
    .restart local v7    # "indexValue":Ljava/lang/String;
    .restart local v8    # "outputEnabled":Ljava/lang/String;
    .restart local v9    # "minValue":Ljava/lang/String;
    .restart local v11    # "seedValue":Ljava/lang/String;
    .restart local v15    # "maxValue":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, v16

    .end local v16    # "arbIDValue":Ljava/lang/String;
    .local v13, "arbIDValue":Ljava/lang/String;
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2454
    move-object/from16 v16, v4

    move-object v4, v7

    move-object v2, v13

    goto :goto_2

    .line 2450
    .end local v7    # "indexValue":Ljava/lang/String;
    .end local v8    # "outputEnabled":Ljava/lang/String;
    .end local v9    # "minValue":Ljava/lang/String;
    .end local v11    # "seedValue":Ljava/lang/String;
    .end local v13    # "arbIDValue":Ljava/lang/String;
    .end local v15    # "maxValue":Ljava/lang/String;
    .restart local v16    # "arbIDValue":Ljava/lang/String;
    .restart local v17    # "seedValue":Ljava/lang/String;
    .restart local v18    # "indexValue":Ljava/lang/String;
    .restart local v19    # "maxValue":Ljava/lang/String;
    .restart local v20    # "minValue":Ljava/lang/String;
    .restart local v21    # "outputEnabled":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v2, v16

    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    .end local v16    # "arbIDValue":Ljava/lang/String;
    .end local v18    # "indexValue":Ljava/lang/String;
    .end local v19    # "maxValue":Ljava/lang/String;
    .end local v20    # "minValue":Ljava/lang/String;
    .end local v21    # "outputEnabled":Ljava/lang/String;
    .restart local v2    # "arbIDValue":Ljava/lang/String;
    .restart local v7    # "indexValue":Ljava/lang/String;
    .restart local v8    # "outputEnabled":Ljava/lang/String;
    .restart local v9    # "minValue":Ljava/lang/String;
    .restart local v15    # "maxValue":Ljava/lang/String;
    move-object/from16 v16, v4

    .end local v4    # "requestsEnabled":Ljava/lang/String;
    .local v16, "requestsEnabled":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2451
    move-object v4, v7

    goto :goto_2

    .line 2447
    .end local v2    # "arbIDValue":Ljava/lang/String;
    .end local v7    # "indexValue":Ljava/lang/String;
    .end local v8    # "outputEnabled":Ljava/lang/String;
    .end local v9    # "minValue":Ljava/lang/String;
    .end local v15    # "maxValue":Ljava/lang/String;
    .restart local v4    # "requestsEnabled":Ljava/lang/String;
    .local v16, "arbIDValue":Ljava/lang/String;
    .restart local v18    # "indexValue":Ljava/lang/String;
    .restart local v19    # "maxValue":Ljava/lang/String;
    .restart local v20    # "minValue":Ljava/lang/String;
    .restart local v21    # "outputEnabled":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v2, v16

    move-object/from16 v15, v19

    move-object/from16 v9, v20

    move-object/from16 v8, v21

    move-object/from16 v16, v4

    move-object/from16 v4, v18

    .end local v18    # "indexValue":Ljava/lang/String;
    .end local v19    # "maxValue":Ljava/lang/String;
    .end local v20    # "minValue":Ljava/lang/String;
    .end local v21    # "outputEnabled":Ljava/lang/String;
    .restart local v2    # "arbIDValue":Ljava/lang/String;
    .local v4, "indexValue":Ljava/lang/String;
    .restart local v8    # "outputEnabled":Ljava/lang/String;
    .restart local v9    # "minValue":Ljava/lang/String;
    .restart local v15    # "maxValue":Ljava/lang/String;
    .local v16, "requestsEnabled":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2448
    nop

    .line 2464
    :goto_2
    return-void

    .line 2395
    .end local v2    # "arbIDValue":Ljava/lang/String;
    .end local v3    # "responsesEnabled":Ljava/lang/String;
    .end local v4    # "indexValue":Ljava/lang/String;
    .end local v5    # "selected_file":Ljava/lang/String;
    .end local v6    # "idValue":Ljava/lang/String;
    .end local v8    # "outputEnabled":Ljava/lang/String;
    .end local v9    # "minValue":Ljava/lang/String;
    .end local v10    # "delayValue":Ljava/lang/String;
    .end local v12    # "cmdBase":Ljava/lang/String;
    .end local v14    # "dataValue":Ljava/lang/String;
    .end local v15    # "maxValue":Ljava/lang/String;
    .end local v16    # "requestsEnabled":Ljava/lang/String;
    .end local v17    # "seedValue":Ljava/lang/String;
    :cond_6
    :goto_3
    const-string v2, "Please choose a CAN Interface!"

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2396
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3f58d0ba -> :sswitch_4
        -0x37ed1b3d -> :sswitch_3
        -0x37b3b819 -> :sswitch_2
        -0x81790f4 -> :sswitch_1
        0x59a9756 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runListener(Ljava/lang/String;)V
    .locals 4
    .param p1, "listener_module"    # Ljava/lang/String;

    .line 2467
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2472
    :cond_0
    const-string v0, ""

    .line 2473
    .local v0, "reverseEnabled":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->reverseContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2474
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->reverseContainer:Landroid/view/ViewGroup;

    const v2, 0x7f0a00e2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    .line 2475
    .local v1, "reverseSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2476
    const-string v0, " -r"

    .line 2480
    .end local v1    # "reverseSwitch":Landroidx/appcompat/widget/SwitchCompat;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2482
    .local v1, "cmdBase":Ljava/lang/String;
    const-string v2, "None"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2485
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown listener submodule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2487
    :goto_0
    return-void

    .line 2468
    .end local v0    # "reverseEnabled":Ljava/lang/String;
    .end local v1    # "cmdBase":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2469
    return-void
.end method

.method private runModuleTemplate(Ljava/lang/String;)V
    .locals 4
    .param p1, "moduleTemplate_module"    # Ljava/lang/String;

    .line 2490
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2495
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, " -id "

    invoke-direct {p0, v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2497
    .local v0, "idValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " module_template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2499
    .local v1, "cmdBase":Ljava/lang/String;
    const-string v2, "None"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2502
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown module_template submodule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2504
    :goto_0
    return-void

    .line 2491
    .end local v0    # "idValue":Ljava/lang/String;
    .end local v1    # "cmdBase":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2492
    return-void
.end method

.method private runSend(Ljava/lang/String;)V
    .locals 10
    .param p1, "send_module"    # Ljava/lang/String;

    .line 2507
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2512
    :cond_0
    const-string v0, ""

    .line 2513
    .local v0, "selected_message":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->messageContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2514
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedMessage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2515
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2516
    move-object v0, v1

    .line 2519
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .line 2520
    .local v1, "selected_file":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->fileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 2521
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2522
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2523
    move-object v1, v2

    .line 2526
    .end local v2    # "text":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    .line 2527
    .local v2, "loopEnabled":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->loopContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 2528
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->loopContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0a00dc

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 2529
    .local v3, "loopSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2530
    const-string v2, " --loop"

    .line 2533
    .end local v3    # "loopSwitch":Landroidx/appcompat/widget/SwitchCompat;
    :cond_3
    const-string v3, ""

    .line 2534
    .local v3, "padEnabled":Ljava/lang/String;
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->padContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 2535
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->padContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a00df

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    .line 2536
    .local v4, "padSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2537
    const-string v3, " --pad"

    .line 2540
    .end local v4    # "padSwitch":Landroidx/appcompat/widget/SwitchCompat;
    :cond_4
    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const-string v5, " --delay "

    invoke-direct {p0, v4, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2542
    .local v4, "delayValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2544
    .local v5, "cmdBase":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "message"

    const-string v8, "file"

    sparse-switch v6, :sswitch_data_0

    :cond_5
    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_1

    :goto_0
    const/4 v6, -0x1

    :goto_1
    const-string v9, " "

    packed-switch v6, :pswitch_data_0

    .line 2552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown send submodule: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 2549
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2550
    goto :goto_2

    .line 2546
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2547
    nop

    .line 2554
    :goto_2
    return-void

    .line 2508
    .end local v0    # "selected_message":Ljava/lang/String;
    .end local v1    # "selected_file":Ljava/lang/String;
    .end local v2    # "loopEnabled":Ljava/lang/String;
    .end local v3    # "padEnabled":Ljava/lang/String;
    .end local v4    # "delayValue":Ljava/lang/String;
    .end local v5    # "cmdBase":Ljava/lang/String;
    :cond_6
    :goto_3
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2509
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ff57c -> :sswitch_1
        0x38eb0007 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runUDS(Ljava/lang/String;)V
    .locals 37
    .param p1, "uds_module"    # Ljava/lang/String;

    .line 2557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v3, "Interfaces"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 2562
    :cond_0
    const-string v2, ""

    .line 2563
    .local v2, "skipverifyEnabled":Ljava/lang/String;
    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->skipverifyContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2564
    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->skipverifyContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0a00e3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 2565
    .local v3, "skipverifySwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2566
    const-string v2, " --skipverify"

    .line 2570
    .end local v3    # "skipverifySwitch":Landroidx/appcompat/widget/SwitchCompat;
    :cond_1
    const-string v3, ""

    .line 2571
    .local v3, "sprEnabled":Ljava/lang/String;
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sprContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 2572
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sprContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0a00e4

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/SwitchCompat;

    .line 2573
    .local v4, "sprSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2574
    const-string v3, " -spr"

    .line 2578
    .end local v4    # "sprSwitch":Landroidx/appcompat/widget/SwitchCompat;
    :cond_2
    const-string v4, ""

    .line 2579
    .local v4, "outputEnabled":Ljava/lang/String;
    iget-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 2580
    iget-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    const v6, 0x7f0a00de

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/SwitchCompat;

    .line 2581
    .local v5, "outputSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2582
    iget-object v6, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2583
    .local v6, "filePath":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2584
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " --outfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2589
    .end local v5    # "outputSwitch":Landroidx/appcompat/widget/SwitchCompat;
    .end local v6    # "filePath":Ljava/lang/String;
    :cond_3
    iget-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dtypeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    const-string v6, " "

    invoke-direct {v0, v5, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2590
    .local v5, "dtypeValue":Ljava/lang/String;
    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->stypeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    invoke-direct {v0, v7, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2591
    .local v7, "stypeValue":Ljava/lang/String;
    iget-object v8, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-direct {v0, v8, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2592
    .local v8, "srcValue":Ljava/lang/String;
    iget-object v9, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-direct {v0, v9, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2593
    .local v9, "dstValue":Ljava/lang/String;
    iget-object v10, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->mindidContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v10}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    const-string v11, " --min_did "

    invoke-direct {v0, v10, v11}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2594
    .local v10, "mindidValue":Ljava/lang/String;
    iget-object v11, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxdidContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v11}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v11

    const-string v12, " --max_did "

    invoke-direct {v0, v11, v12}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2595
    .local v11, "maxdidValue":Ljava/lang/String;
    iget-object v12, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    const-string v13, " -min "

    invoke-direct {v0, v12, v13}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2596
    .local v12, "minValue":Ljava/lang/String;
    iget-object v13, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v13}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v13

    const-string v14, " -max "

    invoke-direct {v0, v13, v14}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2597
    .local v13, "maxValue":Ljava/lang/String;
    iget-object v14, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v14}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v14

    const-string v15, " -d "

    invoke-direct {v0, v14, v15}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2598
    .local v14, "delayValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->durationContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v16, v7

    .end local v7    # "stypeValue":Ljava/lang/String;
    .local v16, "stypeValue":Ljava/lang/String;
    const-string v7, " --duration "

    invoke-direct {v0, v15, v7}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2599
    .local v7, "durationValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->timeoutContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v17, v5

    .end local v5    # "dtypeValue":Ljava/lang/String;
    .local v17, "dtypeValue":Ljava/lang/String;
    const-string v5, " -t "

    invoke-direct {v0, v15, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2600
    .local v5, "timeoutValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->numberContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v18, v3

    .end local v3    # "sprEnabled":Ljava/lang/String;
    .local v18, "sprEnabled":Ljava/lang/String;
    const-string v3, " --num "

    invoke-direct {v0, v15, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2601
    .local v3, "numberValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->blacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v19, v7

    .end local v7    # "durationValue":Ljava/lang/String;
    .local v19, "durationValue":Ljava/lang/String;
    const-string v7, " --blacklist "

    invoke-direct {v0, v15, v7}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2602
    .local v7, "blacklistValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->autoBlacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v20, v3

    .end local v3    # "numberValue":Ljava/lang/String;
    .local v20, "numberValue":Ljava/lang/String;
    const-string v3, " --autoblacklist "

    invoke-direct {v0, v15, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2603
    .local v3, "autoBlacklistValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v21, v9

    .end local v9    # "dstValue":Ljava/lang/String;
    .local v21, "dstValue":Ljava/lang/String;
    const-string v9, " --start_addr "

    invoke-direct {v0, v15, v9}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2604
    .local v9, "startAddrValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memLengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v22, v8

    .end local v8    # "srcValue":Ljava/lang/String;
    .local v22, "srcValue":Ljava/lang/String;
    const-string v8, " --mem_length "

    invoke-direct {v0, v15, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2605
    .local v8, "memLengthValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v23, v4

    .end local v4    # "outputEnabled":Ljava/lang/String;
    .local v23, "outputEnabled":Ljava/lang/String;
    const-string v4, " --mem_size "

    invoke-direct {v0, v15, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2606
    .local v4, "memSizeValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->addrByteSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v24, v4

    .end local v4    # "memSizeValue":Ljava/lang/String;
    .local v24, "memSizeValue":Ljava/lang/String;
    const-string v4, " --address_byte_size "

    invoke-direct {v0, v15, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2607
    .local v4, "addrByteSizeValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memLengthByteSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v15}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v15

    move-object/from16 v25, v4

    .end local v4    # "addrByteSizeValue":Ljava/lang/String;
    .local v25, "addrByteSizeValue":Ljava/lang/String;
    const-string v4, " --memory_length_byte_size "

    invoke-direct {v0, v15, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2608
    .local v4, "memLengthByteSizeValue":Ljava/lang/String;
    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeSpinner:Landroid/widget/Spinner;

    move-object/from16 v26, v4

    .end local v4    # "memLengthByteSizeValue":Ljava/lang/String;
    .local v26, "memLengthByteSizeValue":Ljava/lang/String;
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v15, v4, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleSpinnerValue(Landroid/widget/Spinner;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2609
    .local v4, "ecuResetValue":Ljava/lang/String;
    iget-object v6, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeSpinner:Landroid/widget/Spinner;

    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeContainer:Landroid/view/ViewGroup;

    move-object/from16 v27, v4

    .end local v4    # "ecuResetValue":Ljava/lang/String;
    .local v27, "ecuResetValue":Ljava/lang/String;
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, v6, v15, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleSpinnerOrInputValue(Landroid/widget/Spinner;Landroid/view/ViewGroup;Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v4

    .line 2615
    .local v4, "sessiontypeValue":Ljava/lang/String;
    iget-object v6, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelSpinner:Landroid/widget/Spinner;

    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelContainer:Landroid/view/ViewGroup;

    move-object/from16 v28, v4

    .end local v4    # "sessiontypeValue":Ljava/lang/String;
    .local v28, "sessiontypeValue":Ljava/lang/String;
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, v6, v15, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleSpinnerOrInputValue(Landroid/widget/Spinner;Landroid/view/ViewGroup;Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;

    move-result-object v4

    .line 2621
    .local v4, "levelValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v15, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " uds "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2623
    .local v6, "cmdBase":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v15

    move-object/from16 v29, v4

    .end local v4    # "levelValue":Ljava/lang/String;
    .local v29, "levelValue":Ljava/lang/String;
    const-string v4, "testerpresent"

    move-object/from16 v30, v8

    .end local v8    # "memLengthValue":Ljava/lang/String;
    .local v30, "memLengthValue":Ljava/lang/String;
    const-string v8, "services"

    move-object/from16 v31, v9

    .end local v9    # "startAddrValue":Ljava/lang/String;
    .local v31, "startAddrValue":Ljava/lang/String;
    const-string v9, "auto"

    const-string v0, "discovery"

    move-object/from16 v32, v11

    .end local v11    # "maxdidValue":Ljava/lang/String;
    .local v32, "maxdidValue":Ljava/lang/String;
    const-string v11, "security_seed"

    move-object/from16 v33, v10

    .end local v10    # "mindidValue":Ljava/lang/String;
    .local v33, "mindidValue":Ljava/lang/String;
    const-string v10, "read_mem"

    move-object/from16 v34, v5

    .end local v5    # "timeoutValue":Ljava/lang/String;
    .local v34, "timeoutValue":Ljava/lang/String;
    const-string v5, "dump_dids"

    move-object/from16 v35, v14

    .end local v14    # "delayValue":Ljava/lang/String;
    .local v35, "delayValue":Ljava/lang/String;
    const-string v14, "subservices"

    move-object/from16 v36, v2

    .end local v2    # "skipverifyEnabled":Ljava/lang/String;
    .local v36, "skipverifyEnabled":Ljava/lang/String;
    const-string v2, "ecu_reset"

    sparse-switch v15, :sswitch_data_0

    :cond_4
    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0x8

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x0

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x5

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x7

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x6

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x2

    goto :goto_1

    :sswitch_8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x3

    goto :goto_1

    :goto_0
    const/4 v15, -0x1

    :goto_1
    packed-switch v15, :pswitch_data_0

    .line 2653
    move-object/from16 v0, p0

    move-object/from16 v14, v17

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v28

    move-object/from16 v2, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    move-object/from16 v20, v18

    move-object/from16 v18, v32

    .end local v17    # "dtypeValue":Ljava/lang/String;
    .end local v21    # "dstValue":Ljava/lang/String;
    .end local v22    # "srcValue":Ljava/lang/String;
    .end local v28    # "sessiontypeValue":Ljava/lang/String;
    .end local v32    # "maxdidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .local v1, "dstValue":Ljava/lang/String;
    .local v2, "timeoutValue":Ljava/lang/String;
    .local v5, "numberValue":Ljava/lang/String;
    .local v9, "skipverifyEnabled":Ljava/lang/String;
    .local v10, "srcValue":Ljava/lang/String;
    .local v11, "sessiontypeValue":Ljava/lang/String;
    .local v14, "dtypeValue":Ljava/lang/String;
    .local v15, "delayValue":Ljava/lang/String;
    .local v18, "maxdidValue":Ljava/lang/String;
    .local v20, "sprEnabled":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown UDS submodule: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v8, v1

    move-object/from16 v1, p1

    .end local v1    # "dstValue":Ljava/lang/String;
    .local v8, "dstValue":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2650
    .end local v2    # "timeoutValue":Ljava/lang/String;
    .end local v5    # "numberValue":Ljava/lang/String;
    .end local v8    # "dstValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "sessiontypeValue":Ljava/lang/String;
    .end local v14    # "dtypeValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .restart local v17    # "dtypeValue":Ljava/lang/String;
    .local v18, "sprEnabled":Ljava/lang/String;
    .local v20, "numberValue":Ljava/lang/String;
    .restart local v21    # "dstValue":Ljava/lang/String;
    .restart local v22    # "srcValue":Ljava/lang/String;
    .restart local v28    # "sessiontypeValue":Ljava/lang/String;
    .restart local v32    # "maxdidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v9, v36

    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v15, v35

    .end local v35    # "delayValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, v34

    .end local v34    # "timeoutValue":Ljava/lang/String;
    .local v8, "timeoutValue":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v14, v33

    .end local v33    # "mindidValue":Ljava/lang/String;
    .local v14, "mindidValue":Ljava/lang/String;
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, v32

    .end local v32    # "maxdidValue":Ljava/lang/String;
    .local v2, "maxdidValue":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, p0

    invoke-virtual {v4, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2651
    move-object v0, v4

    move-object/from16 v14, v17

    move-object/from16 v5, v20

    move-object/from16 v10, v22

    move-object/from16 v11, v28

    move-object/from16 v20, v18

    move-object/from16 v18, v2

    move-object v2, v8

    move-object/from16 v8, v21

    goto/16 :goto_2

    .line 2647
    .end local v2    # "maxdidValue":Ljava/lang/String;
    .end local v8    # "timeoutValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v14    # "mindidValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .restart local v32    # "maxdidValue":Ljava/lang/String;
    .restart local v33    # "mindidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v4, p0

    move-object/from16 v2, v32

    move-object/from16 v14, v33

    move-object/from16 v8, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    .end local v32    # "maxdidValue":Ljava/lang/String;
    .end local v33    # "mindidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v2    # "maxdidValue":Ljava/lang/String;
    .restart local v8    # "timeoutValue":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v14    # "mindidValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, v31

    .end local v31    # "startAddrValue":Ljava/lang/String;
    .local v10, "startAddrValue":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, v30

    .end local v30    # "memLengthValue":Ljava/lang/String;
    .local v11, "memLengthValue":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v5, v24

    .end local v24    # "memSizeValue":Ljava/lang/String;
    .local v5, "memSizeValue":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, v25

    .end local v25    # "addrByteSizeValue":Ljava/lang/String;
    .local v10, "addrByteSizeValue":Ljava/lang/String;
    .restart local v31    # "startAddrValue":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, v26

    .end local v26    # "memLengthByteSizeValue":Ljava/lang/String;
    .local v10, "memLengthByteSizeValue":Ljava/lang/String;
    .restart local v25    # "addrByteSizeValue":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, v23

    .end local v23    # "outputEnabled":Ljava/lang/String;
    .local v10, "outputEnabled":Ljava/lang/String;
    .restart local v26    # "memLengthByteSizeValue":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, v22

    .end local v22    # "srcValue":Ljava/lang/String;
    .local v10, "srcValue":Ljava/lang/String;
    .restart local v23    # "outputEnabled":Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v21

    .end local v21    # "dstValue":Ljava/lang/String;
    .restart local v1    # "dstValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2648
    move-object v0, v4

    move-object/from16 v14, v17

    move-object/from16 v5, v20

    move-object/from16 v11, v28

    move-object/from16 v20, v18

    move-object/from16 v18, v2

    move-object v2, v8

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 2644
    .end local v1    # "dstValue":Ljava/lang/String;
    .end local v2    # "maxdidValue":Ljava/lang/String;
    .end local v5    # "memSizeValue":Ljava/lang/String;
    .end local v8    # "timeoutValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "memLengthValue":Ljava/lang/String;
    .end local v14    # "mindidValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .restart local v21    # "dstValue":Ljava/lang/String;
    .restart local v22    # "srcValue":Ljava/lang/String;
    .restart local v24    # "memSizeValue":Ljava/lang/String;
    .restart local v30    # "memLengthValue":Ljava/lang/String;
    .restart local v32    # "maxdidValue":Ljava/lang/String;
    .restart local v33    # "mindidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v4, p0

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v0, v24

    move-object/from16 v11, v30

    move-object/from16 v2, v32

    move-object/from16 v14, v33

    move-object/from16 v8, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    .end local v21    # "dstValue":Ljava/lang/String;
    .end local v22    # "srcValue":Ljava/lang/String;
    .end local v30    # "memLengthValue":Ljava/lang/String;
    .end local v32    # "maxdidValue":Ljava/lang/String;
    .end local v33    # "mindidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v1    # "dstValue":Ljava/lang/String;
    .restart local v2    # "maxdidValue":Ljava/lang/String;
    .restart local v8    # "timeoutValue":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v10    # "srcValue":Ljava/lang/String;
    .restart local v11    # "memLengthValue":Ljava/lang/String;
    .restart local v14    # "mindidValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2645
    move-object v0, v4

    move-object/from16 v14, v17

    move-object/from16 v5, v20

    move-object/from16 v11, v28

    move-object/from16 v20, v18

    move-object/from16 v18, v2

    move-object v2, v8

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 2640
    .end local v1    # "dstValue":Ljava/lang/String;
    .end local v2    # "maxdidValue":Ljava/lang/String;
    .end local v8    # "timeoutValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "memLengthValue":Ljava/lang/String;
    .end local v14    # "mindidValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .restart local v21    # "dstValue":Ljava/lang/String;
    .restart local v22    # "srcValue":Ljava/lang/String;
    .restart local v30    # "memLengthValue":Ljava/lang/String;
    .restart local v32    # "maxdidValue":Ljava/lang/String;
    .restart local v33    # "mindidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v4, p0

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v0, v30

    move-object/from16 v2, v32

    move-object/from16 v14, v33

    move-object/from16 v8, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    .end local v21    # "dstValue":Ljava/lang/String;
    .end local v22    # "srcValue":Ljava/lang/String;
    .end local v30    # "memLengthValue":Ljava/lang/String;
    .end local v32    # "maxdidValue":Ljava/lang/String;
    .end local v33    # "mindidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .local v0, "memLengthValue":Ljava/lang/String;
    .restart local v1    # "dstValue":Ljava/lang/String;
    .restart local v2    # "maxdidValue":Ljava/lang/String;
    .restart local v8    # "timeoutValue":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v10    # "srcValue":Ljava/lang/String;
    .restart local v14    # "mindidValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    iget-object v5, v4, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeSpinner:Landroid/widget/Spinner;

    .end local v0    # "memLengthValue":Ljava/lang/String;
    .restart local v30    # "memLengthValue":Ljava/lang/String;
    iget-object v0, v4, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeContainer:Landroid/view/ViewGroup;

    .end local v2    # "maxdidValue":Ljava/lang/String;
    .restart local v32    # "maxdidValue":Ljava/lang/String;
    const-string v2, " --reset "

    invoke-direct {v4, v5, v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleSpinnerValue(Landroid/widget/Spinner;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2641
    .local v0, "resetValue":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v5, v20

    .end local v20    # "numberValue":Ljava/lang/String;
    .local v5, "numberValue":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v11, v28

    .end local v28    # "sessiontypeValue":Ljava/lang/String;
    .local v11, "sessiontypeValue":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v20, v0

    move-object/from16 v0, v29

    .end local v29    # "levelValue":Ljava/lang/String;
    .local v0, "levelValue":Ljava/lang/String;
    .local v20, "resetValue":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2642
    move-object v0, v4

    move-object v2, v8

    move-object/from16 v14, v17

    move-object/from16 v20, v18

    move-object/from16 v18, v32

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 2637
    .end local v0    # "levelValue":Ljava/lang/String;
    .end local v1    # "dstValue":Ljava/lang/String;
    .end local v5    # "numberValue":Ljava/lang/String;
    .end local v8    # "timeoutValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "sessiontypeValue":Ljava/lang/String;
    .end local v14    # "mindidValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .local v20, "numberValue":Ljava/lang/String;
    .restart local v21    # "dstValue":Ljava/lang/String;
    .restart local v22    # "srcValue":Ljava/lang/String;
    .restart local v28    # "sessiontypeValue":Ljava/lang/String;
    .restart local v29    # "levelValue":Ljava/lang/String;
    .restart local v33    # "mindidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v2, p0

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v28

    move-object/from16 v0, v29

    move-object/from16 v14, v33

    move-object/from16 v8, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    .end local v20    # "numberValue":Ljava/lang/String;
    .end local v21    # "dstValue":Ljava/lang/String;
    .end local v22    # "srcValue":Ljava/lang/String;
    .end local v28    # "sessiontypeValue":Ljava/lang/String;
    .end local v33    # "mindidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v1    # "dstValue":Ljava/lang/String;
    .restart local v5    # "numberValue":Ljava/lang/String;
    .restart local v8    # "timeoutValue":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v10    # "srcValue":Ljava/lang/String;
    .restart local v11    # "sessiontypeValue":Ljava/lang/String;
    .restart local v14    # "mindidValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v4, v19

    .end local v19    # "durationValue":Ljava/lang/String;
    .local v4, "durationValue":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v4, v18

    .end local v18    # "sprEnabled":Ljava/lang/String;
    .local v4, "sprEnabled":Ljava/lang/String;
    .restart local v19    # "durationValue":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2638
    move-object v0, v2

    move-object/from16 v20, v4

    move-object v2, v8

    move-object/from16 v14, v17

    move-object/from16 v18, v32

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 2634
    .end local v1    # "dstValue":Ljava/lang/String;
    .end local v4    # "sprEnabled":Ljava/lang/String;
    .end local v5    # "numberValue":Ljava/lang/String;
    .end local v8    # "timeoutValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "sessiontypeValue":Ljava/lang/String;
    .end local v14    # "mindidValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .restart local v18    # "sprEnabled":Ljava/lang/String;
    .restart local v20    # "numberValue":Ljava/lang/String;
    .restart local v21    # "dstValue":Ljava/lang/String;
    .restart local v22    # "srcValue":Ljava/lang/String;
    .restart local v28    # "sessiontypeValue":Ljava/lang/String;
    .restart local v33    # "mindidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v28

    move-object/from16 v18, v32

    move-object/from16 v14, v33

    move-object/from16 v8, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    .end local v20    # "numberValue":Ljava/lang/String;
    .end local v21    # "dstValue":Ljava/lang/String;
    .end local v22    # "srcValue":Ljava/lang/String;
    .end local v28    # "sessiontypeValue":Ljava/lang/String;
    .end local v32    # "maxdidValue":Ljava/lang/String;
    .end local v33    # "mindidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v1    # "dstValue":Ljava/lang/String;
    .restart local v4    # "sprEnabled":Ljava/lang/String;
    .restart local v5    # "numberValue":Ljava/lang/String;
    .restart local v8    # "timeoutValue":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v10    # "srcValue":Ljava/lang/String;
    .restart local v11    # "sessiontypeValue":Ljava/lang/String;
    .restart local v14    # "mindidValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    .local v18, "maxdidValue":Ljava/lang/String;
    move-object/from16 v20, v4

    .end local v4    # "sprEnabled":Ljava/lang/String;
    .local v20, "sprEnabled":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, v27

    .end local v27    # "ecuResetValue":Ljava/lang/String;
    .local v4, "ecuResetValue":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2635
    move-object v2, v8

    move-object/from16 v14, v17

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 2631
    .end local v1    # "dstValue":Ljava/lang/String;
    .end local v4    # "ecuResetValue":Ljava/lang/String;
    .end local v5    # "numberValue":Ljava/lang/String;
    .end local v8    # "timeoutValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "sessiontypeValue":Ljava/lang/String;
    .end local v14    # "mindidValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .local v18, "sprEnabled":Ljava/lang/String;
    .local v20, "numberValue":Ljava/lang/String;
    .restart local v21    # "dstValue":Ljava/lang/String;
    .restart local v22    # "srcValue":Ljava/lang/String;
    .restart local v27    # "ecuResetValue":Ljava/lang/String;
    .restart local v28    # "sessiontypeValue":Ljava/lang/String;
    .restart local v32    # "maxdidValue":Ljava/lang/String;
    .restart local v33    # "mindidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v4, v27

    move-object/from16 v11, v28

    move-object/from16 v2, v33

    move-object/from16 v8, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    move-object/from16 v20, v18

    move-object/from16 v18, v32

    .end local v21    # "dstValue":Ljava/lang/String;
    .end local v22    # "srcValue":Ljava/lang/String;
    .end local v27    # "ecuResetValue":Ljava/lang/String;
    .end local v28    # "sessiontypeValue":Ljava/lang/String;
    .end local v32    # "maxdidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v1    # "dstValue":Ljava/lang/String;
    .restart local v4    # "ecuResetValue":Ljava/lang/String;
    .restart local v5    # "numberValue":Ljava/lang/String;
    .restart local v8    # "timeoutValue":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v10    # "srcValue":Ljava/lang/String;
    .restart local v11    # "sessiontypeValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    .local v18, "maxdidValue":Ljava/lang/String;
    .local v20, "sprEnabled":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v14, v17

    .end local v17    # "dtypeValue":Ljava/lang/String;
    .local v14, "dtypeValue":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, v16

    .end local v16    # "stypeValue":Ljava/lang/String;
    .local v4, "stypeValue":Ljava/lang/String;
    .restart local v27    # "ecuResetValue":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2632
    move-object v2, v8

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 2628
    .end local v1    # "dstValue":Ljava/lang/String;
    .end local v4    # "stypeValue":Ljava/lang/String;
    .end local v5    # "numberValue":Ljava/lang/String;
    .end local v8    # "timeoutValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "sessiontypeValue":Ljava/lang/String;
    .end local v14    # "dtypeValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .restart local v16    # "stypeValue":Ljava/lang/String;
    .restart local v17    # "dtypeValue":Ljava/lang/String;
    .local v18, "sprEnabled":Ljava/lang/String;
    .local v20, "numberValue":Ljava/lang/String;
    .restart local v21    # "dstValue":Ljava/lang/String;
    .restart local v22    # "srcValue":Ljava/lang/String;
    .restart local v28    # "sessiontypeValue":Ljava/lang/String;
    .restart local v32    # "maxdidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v4, v16

    move-object/from16 v14, v17

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v28

    move-object/from16 v2, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    move-object/from16 v20, v18

    move-object/from16 v18, v32

    .end local v17    # "dtypeValue":Ljava/lang/String;
    .end local v21    # "dstValue":Ljava/lang/String;
    .end local v22    # "srcValue":Ljava/lang/String;
    .end local v28    # "sessiontypeValue":Ljava/lang/String;
    .end local v32    # "maxdidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v1    # "dstValue":Ljava/lang/String;
    .local v2, "timeoutValue":Ljava/lang/String;
    .restart local v5    # "numberValue":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v10    # "srcValue":Ljava/lang/String;
    .restart local v11    # "sessiontypeValue":Ljava/lang/String;
    .restart local v14    # "dtypeValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    .local v18, "maxdidValue":Ljava/lang/String;
    .local v20, "sprEnabled":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2629
    move-object v8, v1

    move-object/from16 v1, p1

    goto :goto_2

    .line 2625
    .end local v1    # "dstValue":Ljava/lang/String;
    .end local v2    # "timeoutValue":Ljava/lang/String;
    .end local v5    # "numberValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "sessiontypeValue":Ljava/lang/String;
    .end local v14    # "dtypeValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .restart local v17    # "dtypeValue":Ljava/lang/String;
    .local v18, "sprEnabled":Ljava/lang/String;
    .local v20, "numberValue":Ljava/lang/String;
    .restart local v21    # "dstValue":Ljava/lang/String;
    .restart local v22    # "srcValue":Ljava/lang/String;
    .restart local v28    # "sessiontypeValue":Ljava/lang/String;
    .restart local v32    # "maxdidValue":Ljava/lang/String;
    .restart local v34    # "timeoutValue":Ljava/lang/String;
    .restart local v35    # "delayValue":Ljava/lang/String;
    .restart local v36    # "skipverifyEnabled":Ljava/lang/String;
    :pswitch_8
    move-object v4, v0

    move-object/from16 v14, v17

    move-object/from16 v5, v20

    move-object/from16 v1, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v28

    move-object/from16 v2, v34

    move-object/from16 v15, v35

    move-object/from16 v9, v36

    move-object/from16 v0, p0

    move-object/from16 v20, v18

    move-object/from16 v18, v32

    .end local v17    # "dtypeValue":Ljava/lang/String;
    .end local v21    # "dstValue":Ljava/lang/String;
    .end local v22    # "srcValue":Ljava/lang/String;
    .end local v28    # "sessiontypeValue":Ljava/lang/String;
    .end local v32    # "maxdidValue":Ljava/lang/String;
    .end local v34    # "timeoutValue":Ljava/lang/String;
    .end local v35    # "delayValue":Ljava/lang/String;
    .end local v36    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v1    # "dstValue":Ljava/lang/String;
    .restart local v2    # "timeoutValue":Ljava/lang/String;
    .restart local v5    # "numberValue":Ljava/lang/String;
    .restart local v9    # "skipverifyEnabled":Ljava/lang/String;
    .restart local v10    # "srcValue":Ljava/lang/String;
    .restart local v11    # "sessiontypeValue":Ljava/lang/String;
    .restart local v14    # "dtypeValue":Ljava/lang/String;
    .restart local v15    # "delayValue":Ljava/lang/String;
    .local v18, "maxdidValue":Ljava/lang/String;
    .local v20, "sprEnabled":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2626
    move-object v8, v1

    move-object/from16 v1, p1

    .line 2655
    .end local v1    # "dstValue":Ljava/lang/String;
    .local v8, "dstValue":Ljava/lang/String;
    :goto_2
    return-void

    .line 2558
    .end local v2    # "timeoutValue":Ljava/lang/String;
    .end local v3    # "autoBlacklistValue":Ljava/lang/String;
    .end local v5    # "numberValue":Ljava/lang/String;
    .end local v6    # "cmdBase":Ljava/lang/String;
    .end local v7    # "blacklistValue":Ljava/lang/String;
    .end local v8    # "dstValue":Ljava/lang/String;
    .end local v9    # "skipverifyEnabled":Ljava/lang/String;
    .end local v10    # "srcValue":Ljava/lang/String;
    .end local v11    # "sessiontypeValue":Ljava/lang/String;
    .end local v12    # "minValue":Ljava/lang/String;
    .end local v13    # "maxValue":Ljava/lang/String;
    .end local v14    # "dtypeValue":Ljava/lang/String;
    .end local v15    # "delayValue":Ljava/lang/String;
    .end local v16    # "stypeValue":Ljava/lang/String;
    .end local v18    # "maxdidValue":Ljava/lang/String;
    .end local v19    # "durationValue":Ljava/lang/String;
    .end local v20    # "sprEnabled":Ljava/lang/String;
    .end local v23    # "outputEnabled":Ljava/lang/String;
    .end local v24    # "memSizeValue":Ljava/lang/String;
    .end local v25    # "addrByteSizeValue":Ljava/lang/String;
    .end local v26    # "memLengthByteSizeValue":Ljava/lang/String;
    .end local v27    # "ecuResetValue":Ljava/lang/String;
    .end local v29    # "levelValue":Ljava/lang/String;
    .end local v30    # "memLengthValue":Ljava/lang/String;
    .end local v31    # "startAddrValue":Ljava/lang/String;
    .end local v33    # "mindidValue":Ljava/lang/String;
    :cond_5
    :goto_3
    const-string v2, "Please choose a CAN Interface!"

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2559
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f204559 -> :sswitch_8
        -0x634b7162 -> :sswitch_7
        -0x50cb5cc1 -> :sswitch_6
        -0x33b08c54 -> :sswitch_5
        -0x29f967f0 -> :sswitch_4
        -0x7397a50 -> :sswitch_3
        0x2dddaf -> :sswitch_2
        0x5235105e -> :sswitch_1
        0x5ec5ff1c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runUDSFuzz(Ljava/lang/String;)V
    .locals 13
    .param p1, "uds_fuzz_module"    # Ljava/lang/String;

    .line 2658
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v1, "Interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2663
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeContainer:Landroid/view/ViewGroup;

    const-string v2, " --reset "

    invoke-direct {p0, v0, v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleSpinnerValue(Landroid/widget/Spinner;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2664
    .local v0, "ecuResetValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetMethodeSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetMethodeContainer:Landroid/view/ViewGroup;

    const-string v3, " --reset_method "

    invoke-direct {p0, v1, v2, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleSpinnerValue(Landroid/widget/Spinner;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2665
    .local v1, "ecuResetMethodeValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, " -d "

    invoke-direct {p0, v2, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2666
    .local v2, "delayValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionSeqContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    const-string v4, " "

    invoke-direct {p0, v3, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2667
    .local v3, "sessionSeqValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedTargetContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2668
    .local v5, "seedTargetValue":Ljava/lang/String;
    iget-object v6, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-direct {p0, v6, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2669
    .local v6, "srcValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    invoke-direct {p0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2670
    .local v4, "dstValue":Ljava/lang/String;
    iget-object v7, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->interDelayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    const-string v8, " --inter_delay "

    invoke-direct {p0, v7, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2671
    .local v7, "interDelayValue":Ljava/lang/String;
    iget-object v8, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->iterationsContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    const-string v9, " --iter "

    invoke-direct {p0, v8, v9}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2673
    .local v8, "iterationsValue":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uds_fuzz "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2675
    .local v9, "cmdBase":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const-string v11, "delay_fuzzer"

    const-string v12, "seed_randomness_fuzzer"

    sparse-switch v10, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :goto_0
    const/4 v10, -0x1

    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 2683
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown UDS_Fuzz submodule: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 2680
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2681
    goto :goto_2

    .line 2677
    :pswitch_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2678
    nop

    .line 2685
    :goto_2
    return-void

    .line 2659
    .end local v0    # "ecuResetValue":Ljava/lang/String;
    .end local v1    # "ecuResetMethodeValue":Ljava/lang/String;
    .end local v2    # "delayValue":Ljava/lang/String;
    .end local v3    # "sessionSeqValue":Ljava/lang/String;
    .end local v4    # "dstValue":Ljava/lang/String;
    .end local v5    # "seedTargetValue":Ljava/lang/String;
    .end local v6    # "srcValue":Ljava/lang/String;
    .end local v7    # "interDelayValue":Ljava/lang/String;
    .end local v8    # "iterationsValue":Ljava/lang/String;
    .end local v9    # "cmdBase":Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v0, "Please choose a CAN Interface!"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2660
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xb7642cd -> :sswitch_1
        0x6c1f7378 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runXCP(Ljava/lang/String;)V
    .locals 17
    .param p1, "xcp_module"    # Ljava/lang/String;

    .line 2688
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    const-string v3, "Interfaces"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 2693
    :cond_0
    const-string v2, ""

    .line 2694
    .local v2, "outputEnabled":Ljava/lang/String;
    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2695
    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0a00de

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SwitchCompat;

    .line 2696
    .local v3, "outputSwitch":Landroidx/appcompat/widget/SwitchCompat;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2697
    iget-object v4, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2698
    .local v4, "filePath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2699
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -f "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2704
    .end local v3    # "outputSwitch":Landroidx/appcompat/widget/SwitchCompat;
    .end local v4    # "filePath":Ljava/lang/String;
    :cond_1
    iget-object v3, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    const-string v4, " "

    invoke-direct {v0, v3, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2705
    .local v3, "startAddrValue":Ljava/lang/String;
    iget-object v5, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2706
    .local v5, "lengthValue":Ljava/lang/String;
    iget-object v6, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2707
    .local v6, "srcValue":Ljava/lang/String;
    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    invoke-direct {v0, v7, v4}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2708
    .local v4, "dstValue":Ljava/lang/String;
    iget-object v7, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v7}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    const-string v8, " -min "

    invoke-direct {v0, v7, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2709
    .local v7, "minValue":Ljava/lang/String;
    iget-object v8, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v8}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    const-string v9, " -max "

    invoke-direct {v0, v8, v9}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2710
    .local v8, "maxValue":Ljava/lang/String;
    iget-object v9, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->blacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v9}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    const-string v10, " -blacklist "

    invoke-direct {v0, v9, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2711
    .local v9, "blacklistValue":Ljava/lang/String;
    iget-object v10, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->autoBlacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v10}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    const-string v11, " -autoblacklist "

    invoke-direct {v0, v10, v11}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->getVisibleParam(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2714
    .local v10, "autoBlacklistValue":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "printf \"[default]\ninterface = socketcan\nchannel = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" > $HOME/.canrc && caringcaribou -i "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " xcp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2716
    .local v11, "cmdBase":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v12

    const-string v13, "info"

    const-string v14, "dump"

    const-string v15, "discovery"

    move-object/from16 v16, v10

    .end local v10    # "autoBlacklistValue":Ljava/lang/String;
    .local v16, "autoBlacklistValue":Ljava/lang/String;
    const-string v10, "commands"

    sparse-switch v12, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x2

    goto :goto_1

    :goto_0
    const/4 v12, -0x1

    :goto_1
    packed-switch v12, :pswitch_data_0

    .line 2730
    move-object/from16 v12, v16

    .end local v16    # "autoBlacklistValue":Ljava/lang/String;
    .local v12, "autoBlacklistValue":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown XCP submodule: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2727
    .end local v12    # "autoBlacklistValue":Ljava/lang/String;
    .restart local v16    # "autoBlacklistValue":Ljava/lang/String;
    :pswitch_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2728
    move-object/from16 v12, v16

    goto :goto_2

    .line 2724
    :pswitch_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2725
    move-object/from16 v12, v16

    goto :goto_2

    .line 2721
    :pswitch_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2722
    move-object/from16 v12, v16

    goto :goto_2

    .line 2718
    :pswitch_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v12, v16

    .end local v16    # "autoBlacklistValue":Ljava/lang/String;
    .restart local v12    # "autoBlacklistValue":Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 2719
    nop

    .line 2732
    :goto_2
    return-void

    .line 2689
    .end local v2    # "outputEnabled":Ljava/lang/String;
    .end local v3    # "startAddrValue":Ljava/lang/String;
    .end local v4    # "dstValue":Ljava/lang/String;
    .end local v5    # "lengthValue":Ljava/lang/String;
    .end local v6    # "srcValue":Ljava/lang/String;
    .end local v7    # "minValue":Ljava/lang/String;
    .end local v8    # "maxValue":Ljava/lang/String;
    .end local v9    # "blacklistValue":Ljava/lang/String;
    .end local v11    # "cmdBase":Ljava/lang/String;
    .end local v12    # "autoBlacklistValue":Ljava/lang/String;
    :cond_3
    :goto_3
    const-string v2, "Please choose a CAN Interface!"

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2690
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x23e9f578 -> :sswitch_3
        -0x7397a50 -> :sswitch_2
        0x2f39f4 -> :sswitch_1
        0x3164ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1953
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-direct {v0, v1, v3}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;-><init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V

    .line 1954
    .local v0, "dialog":Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
    invoke-virtual {v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->show()V

    .line 1955
    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 1970
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->selected_caniface:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-CARsenalFragment$CANCARIBOUFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 3
    .param p1, "moduleSpinner"    # Landroid/widget/Spinner;
    .param p2, "subModuleSpinner"    # Landroid/widget/Spinner;
    .param p3, "v"    # Landroid/view/View;

    .line 2254
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2255
    .local v0, "module":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2257
    .local v1, "subModule":Ljava/lang/String;
    const-string v2, "Modules"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Sub-Modules"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 2262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "Fuzzer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "Listener"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "UDS_Fuzz"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "Send"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string v2, "Dump"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_5
    const-string v2, "XCP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_6
    const-string v2, "UDS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_7
    const-string v2, "module_template"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 2288
    const-string v2, "Unknown module selected."

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 2285
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runXCP(Ljava/lang/String;)V

    .line 2286
    goto :goto_2

    .line 2282
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runUDSFuzz(Ljava/lang/String;)V

    .line 2283
    goto :goto_2

    .line 2279
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runUDS(Ljava/lang/String;)V

    .line 2280
    goto :goto_2

    .line 2276
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runSend(Ljava/lang/String;)V

    .line 2277
    goto :goto_2

    .line 2273
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runModuleTemplate(Ljava/lang/String;)V

    .line 2274
    goto :goto_2

    .line 2270
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runListener(Ljava/lang/String;)V

    .line 2271
    goto :goto_2

    .line 2267
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runFuzzer(Ljava/lang/String;)V

    .line 2268
    goto :goto_2

    .line 2264
    :pswitch_7
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->runDump(Ljava/lang/String;)V

    .line 2265
    nop

    .line 2290
    :goto_2
    return-void

    .line 2258
    :cond_2
    :goto_3
    const-string v2, "Please select a Module and Sub-Module."

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->showToast(Ljava/lang/String;)V

    .line 2259
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36f52f13 -> :sswitch_7
        0x147a4 -> :sswitch_6
        0x152c5 -> :sswitch_5
        0x20ae14 -> :sswitch_4
        0x2743a8 -> :sswitch_3
        0x1dea302a -> :sswitch_2
        0x541728d4 -> :sswitch_1
        0x7e1d455c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1791
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1792
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 37
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1796
    move-object/from16 v6, p0

    const v0, 0x7f0d002a

    const/4 v1, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual {v7, v0, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 1798
    .local v9, "rootView":Landroid/view/View;
    const v0, 0x7f0a0451

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1799
    const v0, 0x7f0a0343

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->minContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1800
    const v0, 0x7f0a0333

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1801
    const v0, 0x7f0a049d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->srcContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1802
    const v0, 0x7f0a0189

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dstContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1803
    const v0, 0x7f0a0344

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->mindidContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1804
    const v0, 0x7f0a0334

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->maxdidContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1805
    const v0, 0x7f0a04d8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->stypeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1806
    const v0, 0x7f0a018b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dtypeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1807
    const v0, 0x7f0a0158

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->delayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1808
    const v0, 0x7f0a0303

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->lengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1809
    const v0, 0x7f0a04a7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->startAddrContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1810
    const v0, 0x7f0a045d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->separateLineContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1811
    const v0, 0x7f0a02cc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->idContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1812
    const v0, 0x7f0a056a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->whitelistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1813
    const v0, 0x7f0a02dc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->indexContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1814
    const v0, 0x7f0a0096

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->arbIDContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1815
    const v0, 0x7f0a014d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->dataContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1816
    const v0, 0x7f0a00c6

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->blacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1817
    const v0, 0x7f0a00a1

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->autoBlacklistContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1818
    const v0, 0x7f0a051d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->timeoutContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1819
    const v0, 0x7f0a0193

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->durationContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1820
    const v0, 0x7f0a033a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memLengthContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1821
    const v0, 0x7f0a033c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1822
    const v0, 0x7f0a0076

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->addrByteSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1823
    const v0, 0x7f0a0338

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->memLengthByteSizeContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1824
    const v0, 0x7f0a0460

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionSeqContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1825
    const v0, 0x7f0a044f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->seedTargetContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1826
    const v0, 0x7f0a02e9

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->interDelayContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1827
    const v0, 0x7f0a02f0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->iterationsContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1828
    const v0, 0x7f0a0497

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sprContainer:Landroid/view/ViewGroup;

    .line 1829
    const v0, 0x7f0a0478

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->skipverifyContainer:Landroid/view/ViewGroup;

    .line 1830
    const v0, 0x7f0a0313

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->loopContainer:Landroid/view/ViewGroup;

    .line 1831
    const v0, 0x7f0a03cd

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->padContainer:Landroid/view/ViewGroup;

    .line 1832
    const v0, 0x7f0a0420

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->reverseContainer:Landroid/view/ViewGroup;

    .line 1833
    const v0, 0x7f0a03c7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->outputContainer:Landroid/view/ViewGroup;

    .line 1834
    const v0, 0x7f0a041a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->responsesContainer:Landroid/view/ViewGroup;

    .line 1835
    const v0, 0x7f0a0413

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requestsContainer:Landroid/view/ViewGroup;

    .line 1836
    const v0, 0x7f0a0101

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->candumpContainer:Landroid/view/ViewGroup;

    .line 1837
    const v0, 0x7f0a033f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->messageContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1838
    const v0, 0x7f0a010b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedMessage:Landroid/widget/EditText;

    .line 1839
    const v0, 0x7f0a027d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->fileContainer:Landroid/view/ViewGroup;

    .line 1840
    const v0, 0x7f0a010a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->SelectedFile:Landroid/widget/EditText;

    .line 1841
    const v0, 0x7f0a03ac

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->numberContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1844
    const v0, 0x7f0a048e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeContainer:Landroid/view/ViewGroup;

    .line 1845
    const v0, 0x7f0a019b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeSpinner:Landroid/widget/Spinner;

    .line 1848
    const v0, 0x7f0a048f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetMethodeContainer:Landroid/view/ViewGroup;

    .line 1849
    const v0, 0x7f0a019a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetMethodeSpinner:Landroid/widget/Spinner;

    .line 1852
    const v0, 0x7f0a0491

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeContainer:Landroid/view/ViewGroup;

    .line 1853
    const v0, 0x7f0a04db

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeSpinner:Landroid/widget/Spinner;

    .line 1854
    const v0, 0x7f0a04da

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1857
    const v0, 0x7f0a0490

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelContainer:Landroid/view/ViewGroup;

    .line 1858
    const v0, 0x7f0a0308

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelSpinner:Landroid/widget/Spinner;

    .line 1859
    const v0, 0x7f0a0307

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    .line 1862
    const-string v14, "4=enable rapid power shutdown"

    const-string v15, "5=disable rapid power shutdown"

    const-string v10, "Select ECU Reset Type"

    const-string v11, "1=hard"

    const-string v12, "2=key off/on"

    const-string v13, "3=soft"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1871
    .local v10, "ecuResetOptions":[Ljava/lang/String;
    invoke-direct {v6, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v11

    .line 1872
    .local v11, "ecuResetAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v11, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1873
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v11}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1876
    const-string v1, "0=once before seed request start"

    const-string v2, "1=before each seed request (default)"

    const-string v3, "Select ECU Reset Methode"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .line 1882
    .local v12, "ecuResetMethodeOptions":[Ljava/lang/String;
    invoke-direct {v6, v12}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v13

    .line 1883
    .local v13, "ecuResetMethodeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v13, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1884
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->ecuResetMethodeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1887
    const-string v20, "0x60-0x7E=Supplier"

    const-string v21, "0x0,0x5-0x3F,0x7F=ISOSAEReserved"

    const-string v14, "Select Session Type"

    const-string v15, "1=defaultSession"

    const-string v16, "2=programmingSession"

    const-string v17, "3=extendedSession"

    const-string v18, "4=safetySession"

    const-string v19, "0x40-0x5F=OEM"

    filled-new-array/range {v14 .. v21}, [Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 1898
    .local v14, "sessionTypeOptions":[Ljava/lang/String;
    invoke-direct {v6, v14}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v15

    .line 1899
    .local v15, "sessionTypeAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1900
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1902
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->sessionTypeSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;

    invoke-direct {v2, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1920
    const-string v1, "0x61-0x7E=Supplier"

    const-string v2, "0x0,0x43-0x5E,0x7F=ISOSAEReserved"

    const-string v3, "Select Security Level"

    const-string v4, "0x1-0x41=OEM"

    const-string v5, "0x5F=EOLPyrotechnics"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 1928
    .local v5, "securityLevelOptions":[Ljava/lang/String;
    invoke-direct {v6, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 1929
    .local v4, "securityLevelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1930
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1932
    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->securityLevelSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$3;

    invoke-direct {v2, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$3;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1951
    const v1, 0x7f0a010c

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageButton;

    .line 1952
    .local v3, "browseButton":Landroid/widget/ImageButton;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1958
    const v1, 0x7f0a0167

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v25, v1

    check-cast v25, Landroid/widget/Spinner;

    .line 1959
    .local v25, "spinner":Landroid/widget/Spinner;
    const v1, 0x7f0a0410

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v26, v1

    check-cast v26, Landroid/widget/ImageButton;

    .line 1961
    .local v26, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 1962
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->requireContext()Landroid/content/Context;

    move-result-object v16

    iget-object v1, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, v6, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1967
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$400()Landroid/content/SharedPreferences;

    move-result-object v21

    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, v6}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;)V

    .line 1961
    const-string v22, "selected_usb"

    const/16 v23, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    move-object/from16 v24, v0

    invoke-static/range {v16 .. v24}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 1974
    const v0, 0x7f0a034e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/Spinner;

    .line 1975
    .local v2, "moduleSpinner":Landroid/widget/Spinner;
    const v0, 0x7f0a04df

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/Spinner;

    .line 1976
    .local v1, "subModuleSpinner":Landroid/widget/Spinner;
    const v0, 0x7f0a04ac

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1978
    .local v0, "startButton":Landroid/widget/Button;
    const-string v23, "UDS_Fuzz"

    const-string v24, "XCP"

    const-string v16, "Modules"

    const-string v17, "Dump"

    const-string v18, "Fuzzer"

    const-string v19, "Listener"

    const-string v20, "module_template"

    const-string v21, "Send"

    const-string v22, "UDS"

    filled-new-array/range {v16 .. v24}, [Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1979
    .local v17, "modules":[Ljava/lang/String;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v18, v16

    .line 1980
    .local v18, "subModulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    move-object/from16 v16, v0

    .end local v0    # "startButton":Landroid/widget/Button;
    .local v16, "startButton":Landroid/widget/Button;
    const-string v0, "Sub-Modules"

    move-object/from16 v19, v3

    .end local v3    # "browseButton":Landroid/widget/ImageButton;
    .local v19, "browseButton":Landroid/widget/ImageButton;
    const-string v3, "None"

    move-object/from16 v20, v4

    .end local v4    # "securityLevelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v20, "securityLevelAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v5

    .end local v5    # "securityLevelOptions":[Ljava/lang/String;
    .local v21, "securityLevelOptions":[Ljava/lang/String;
    const-string v5, "Dump"

    move-object/from16 v7, v18

    .end local v18    # "subModulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    .local v7, "subModulesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    const-string v31, "random"

    const-string v32, "replay"

    const-string v27, "Sub-Modules"

    const-string v28, "brute"

    const-string v29, "identify"

    const-string v30, "mutate"

    filled-new-array/range {v27 .. v32}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "Fuzzer"

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    const-string v4, "Listener"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    const-string v4, "module_template"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    const-string v3, "file"

    const-string v4, "message"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Send"

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    const-string v35, "read_mem"

    const-string v36, "auto"

    const-string v27, "Sub-Modules"

    const-string v28, "discovery"

    const-string v29, "services"

    const-string v30, "subservices"

    const-string v31, "ecu_reset"

    const-string v32, "testerpresent"

    const-string v33, "security_seed"

    const-string v34, "dump_dids"

    filled-new-array/range {v27 .. v36}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "UDS"

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    const-string v3, "delay_fuzzer"

    const-string v4, "seed_randomness_fuzzer"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "UDS_Fuzz"

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1987
    const-string v3, "commands"

    const-string v4, "dump"

    const-string v5, "discovery"

    const-string v8, "info"

    filled-new-array {v0, v5, v8, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "XCP"

    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    move-object/from16 v8, v17

    .end local v17    # "modules":[Ljava/lang/String;
    .local v8, "modules":[Ljava/lang/String;
    invoke-direct {v6, v8}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 1990
    .local v5, "moduleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v5, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1991
    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1993
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;->createDisabledFirstItemAdapter([Ljava/lang/String;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 1994
    .local v4, "emptySubModuleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1995
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1997
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$4;

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    .end local v16    # "startButton":Landroid/widget/Button;
    .local v10, "startButton":Landroid/widget/Button;
    .local v17, "ecuResetOptions":[Ljava/lang/String;
    move-object v0, v3

    move-object/from16 v16, v1

    .end local v1    # "subModuleSpinner":Landroid/widget/Spinner;
    .local v16, "subModuleSpinner":Landroid/widget/Spinner;
    move-object/from16 v1, p0

    move-object/from16 v18, v11

    move-object v11, v2

    .end local v2    # "moduleSpinner":Landroid/widget/Spinner;
    .local v11, "moduleSpinner":Landroid/widget/Spinner;
    .local v18, "ecuResetAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v2, v8

    move-object/from16 v22, v8

    move-object v8, v3

    .end local v8    # "modules":[Ljava/lang/String;
    .local v22, "modules":[Ljava/lang/String;
    move-object v3, v7

    move-object/from16 v23, v4

    .end local v4    # "emptySubModuleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v23, "emptySubModuleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v4, v16

    move-object/from16 v24, v5

    .end local v5    # "moduleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v24, "moduleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$4;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;[Ljava/lang/String;Ljava/util/Map;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v11, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2023
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;

    move-object/from16 v1, v16

    .end local v16    # "subModuleSpinner":Landroid/widget/Spinner;
    .restart local v1    # "subModuleSpinner":Landroid/widget/Spinner;
    invoke-direct {v0, v6, v11, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$5;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2253
    new-instance v0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, v6, v11, v1}, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2292
    return-object v9
.end method
