.class public Lcom/offsec/nethunter/MacchangerFragment;
.super Landroidx/fragment/app/Fragment;
.source "MacchangerFragment.java"


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "MacchangerFragment"

.field private static final iFaceAndMacHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastSelectedIfacePosition:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private changeMacButton:Landroid/widget/Button;

.field private clearMacButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private currentMacTextView:Landroid/widget/TextView;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private interfaceSpinner:Landroid/widget/Spinner;

.field private mac1:Landroid/widget/EditText;

.field private mac2:Landroid/widget/EditText;

.field private mac3:Landroid/widget/EditText;

.field private mac4:Landroid/widget/EditText;

.field private mac5:Landroid/widget/EditText;

.field private mac6:Landroid/widget/EditText;

.field private macModeSpinner:Landroid/widget/Spinner;

.field private final mainHandler:Landroid/os/Handler;

.field private netHostNameEditText:Landroid/widget/EditText;

.field private regenerateMacButton:Landroid/widget/Button;

.field private reloadImageButton:Landroid/widget/ImageButton;

.field private resetMacButton:Landroid/widget/Button;

.field private setHostNameButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/offsec/nethunter/MacchangerFragment;->lastSelectedIfacePosition:I

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 43
    sput p0, Lcom/offsec/nethunter/MacchangerFragment;->lastSelectedIfacePosition:I

    return p0
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/MacchangerFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 43
    sget-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/MacchangerFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->currentMacTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/MacchangerFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->changeMacButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/MacchangerFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->resetMacButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/MacchangerFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/offsec/nethunter/MacchangerFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/MacchangerFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/offsec/nethunter/MacchangerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/MacchangerFragment;

    .line 43
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->genRandomMACAddress()V

    return-void
.end method

.method private executeTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 361
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method private genRandomMACAddress()V
    .locals 9

    .line 157
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 158
    .local v0, "random":Ljava/security/SecureRandom;
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 159
    .local v1, "macAddr":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 161
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    const/4 v3, 0x0

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xfc

    const/4 v5, 0x2

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v3

    const-string v4, "%02x"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    aget-byte v7, v1, v6

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v7, v8, v3

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    const/4 v5, 0x3

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    const/4 v5, 0x4

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v5, v7, v3

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    const/4 v5, 0x5

    aget-byte v5, v1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method private static getIfaceAndMacAddr()V
    .locals 12

    .line 270
    sget-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 272
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 273
    .local v0, "allIface":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 274
    .local v2, "iface":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v3

    .line 275
    .local v3, "macBytes":[B
    if-nez v3, :cond_1

    .line 276
    goto :goto_0

    .line 278
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v4, "macaddrStringBuilder":Ljava/lang/StringBuilder;
    array-length v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v5, :cond_2

    aget-byte v9, v3, v7

    .line 280
    .local v9, "b":B
    const-string v10, "%02X:"

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v11, v8, v6

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    nop

    .end local v9    # "b":B
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 283
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 285
    :cond_3
    sget-object v5, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .end local v2    # "iface":Ljava/net/NetworkInterface;
    .end local v3    # "macBytes":[B
    .end local v4    # "macaddrStringBuilder":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 289
    .end local v0    # "allIface":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :cond_4
    goto :goto_2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "MacchangerFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v0, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void
.end method

.method private getMacAddress()Ljava/lang/String;
    .locals 3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    .line 349
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    .line 350
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    .line 351
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    .line 352
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    .line 353
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/MacchangerFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 70
    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/MacchangerFragment;-><init>()V

    .line 71
    .local v0, "fragment":Lcom/offsec/nethunter/MacchangerFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/MacchangerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v0
.end method

.method private setChangeMacButton()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->changeMacButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void
.end method

.method private setClearMacButton()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    return-void
.end method

.method private setHostNameEditText()V
    .locals 1

    .line 170
    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private setMacModeSpinner()V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->macModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->macModeSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$3;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 245
    return-void
.end method

.method private setRegenerateMacButton()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method private setReloadImageButton()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method private setResetMacButton()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->resetMacButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void
.end method

.method private setSetHostnameButton()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method private setupInterfaceSpinner()V
    .locals 5

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/offsec/nethunter/MacchangerFragment;->iFaceAndMacHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 204
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 205
    .local v1, "iFaceStrings":[Ljava/lang/String;
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/MacchangerFragment;->activity:Landroid/app/Activity;

    const v4, 0x1090008

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 206
    .local v2, "iFaceArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 207
    iget-object v3, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 208
    iget-object v3, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    sget v4, Lcom/offsec/nethunter/MacchangerFragment;->lastSelectedIfacePosition:I

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 209
    iget-object v3, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/offsec/nethunter/MacchangerFragment$2;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/MacchangerFragment$2;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    return-void
.end method


# virtual methods
.method synthetic lambda$setChangeMacButton$14$com-offsec-nethunter-MacchangerFragment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "macAddress"    # Ljava/lang/String;

    .line 335
    if-nez p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAC address of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to change MAC address on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Try another MAC."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    .line 340
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 341
    return-void
.end method

.method synthetic lambda$setChangeMacButton$15$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 4
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "iface":Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ip link set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " down && ip link set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " && ip link set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " up"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v1

    .line 334
    .local v1, "result":I
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/MacchangerFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    return-void
.end method

.method synthetic lambda$setChangeMacButton$16$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 325
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "macAddress":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing MAC address on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    .line 327
    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method synthetic lambda$setClearMacButton$6$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method synthetic lambda$setHostNameEditText$0$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    return-void
.end method

.method synthetic lambda$setHostNameEditText$1$com-offsec-nethunter-MacchangerFragment()V
    .locals 5

    .line 171
    const-string v0, "MacchangerFragment"

    const-string v1, "unknown"

    .line 172
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/sys/kernel/hostname"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    .line 174
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 176
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading hostname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 175
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hostname file not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 179
    :goto_2
    move-object v0, v1

    .line 180
    .local v0, "hostname":Ljava/lang/String;
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method synthetic lambda$setRegenerateMacButton$5$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 248
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->genRandomMACAddress()V

    return-void
.end method

.method synthetic lambda$setReloadImageButton$7$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 264
    invoke-static {}, Lcom/offsec/nethunter/MacchangerFragment;->getIfaceAndMacAddr()V

    .line 265
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setupInterfaceSpinner()V

    .line 266
    return-void
.end method

.method synthetic lambda$setResetMacButton$10$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "originalMac"    # Ljava/lang/String;

    .line 305
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ip link set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " down && ip link set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " && ip link set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v0

    .line 310
    .local v0, "result":I
    iget-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/MacchangerFragment;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method synthetic lambda$setResetMacButton$11$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "originalMac"    # Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restoring original MAC for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    .line 304
    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method synthetic lambda$setResetMacButton$12$com-offsec-nethunter-MacchangerFragment()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "iface":Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat /sys/class/net/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/address"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "originalMac":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void

    .line 298
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve the original MAC address for interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MacchangerFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v2, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, v0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda16;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method synthetic lambda$setResetMacButton$13$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 294
    new-instance v0, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$setResetMacButton$8$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve the original MAC address for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setResetMacButton$9$com-offsec-nethunter-MacchangerFragment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "originalMac"    # Ljava/lang/String;

    .line 311
    if-nez p1, :cond_0

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MAC address of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " restored to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to restore MAC address on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 317
    return-void
.end method

.method synthetic lambda$setSetHostnameButton$2$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 2
    .param p1, "newHostName"    # Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "net.hostname is set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/MacchangerFragment;->showToast(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameEditText()V

    .line 196
    return-void
.end method

.method synthetic lambda$setSetHostnameButton$3$com-offsec-nethunter-MacchangerFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "newHostName"    # Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setprop net.hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method synthetic lambda$setSetHostnameButton$4$com-offsec-nethunter-MacchangerFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "newHostName":Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0}, Lcom/offsec/nethunter/MacchangerFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/MacchangerFragment;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/MacchangerFragment;->executeTask(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 79
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/offsec/nethunter/MacchangerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->context:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lcom/offsec/nethunter/MacchangerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->activity:Landroid/app/Activity;

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 86
    const v0, 0x7f0d0071

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    .line 88
    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->macModeSpinner:Landroid/widget/Spinner;

    .line 89
    const v1, 0x7f0a0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->changeMacButton:Landroid/widget/Button;

    .line 90
    const v1, 0x7f0a0211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameButton:Landroid/widget/Button;

    .line 91
    const v1, 0x7f0a0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->resetMacButton:Landroid/widget/Button;

    .line 92
    const v1, 0x7f0a020d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    .line 93
    const v1, 0x7f0a0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->currentMacTextView:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0a020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    .line 95
    const v1, 0x7f0a020e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    .line 96
    const v1, 0x7f0a0203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    .line 97
    const v1, 0x7f0a0206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    .line 98
    const v1, 0x7f0a0207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    .line 99
    const v1, 0x7f0a0208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    .line 100
    const v1, 0x7f0a0209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    .line 101
    const v1, 0x7f0a020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    .line 102
    const v1, 0x7f0a020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    .line 103
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 137
    iget-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->interfaceSpinner:Landroid/widget/Spinner;

    .line 139
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->macModeSpinner:Landroid/widget/Spinner;

    .line 140
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->changeMacButton:Landroid/widget/Button;

    .line 141
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameButton:Landroid/widget/Button;

    .line 142
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->resetMacButton:Landroid/widget/Button;

    .line 143
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->regenerateMacButton:Landroid/widget/Button;

    .line 144
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->clearMacButton:Landroid/widget/Button;

    .line 145
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->netHostNameEditText:Landroid/widget/EditText;

    .line 146
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac1:Landroid/widget/EditText;

    .line 147
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac2:Landroid/widget/EditText;

    .line 148
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac3:Landroid/widget/EditText;

    .line 149
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac4:Landroid/widget/EditText;

    .line 150
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac5:Landroid/widget/EditText;

    .line 151
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->mac6:Landroid/widget/EditText;

    .line 152
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->currentMacTextView:Landroid/widget/TextView;

    .line 153
    iput-object v0, p0, Lcom/offsec/nethunter/MacchangerFragment;->reloadImageButton:Landroid/widget/ImageButton;

    .line 154
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/offsec/nethunter/MacchangerFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/MacchangerFragment$1;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/MacchangerFragment$1;-><init>(Lcom/offsec/nethunter/MacchangerFragment;)V

    .line 120
    invoke-virtual {p0}, Lcom/offsec/nethunter/MacchangerFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->addMenuProvider(Landroidx/core/view/MenuProvider;Landroidx/lifecycle/LifecycleOwner;)V

    .line 122
    invoke-static {}, Lcom/offsec/nethunter/MacchangerFragment;->getIfaceAndMacAddr()V

    .line 123
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setupInterfaceSpinner()V

    .line 124
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setHostNameEditText()V

    .line 125
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setSetHostnameButton()V

    .line 126
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setMacModeSpinner()V

    .line 127
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setReloadImageButton()V

    .line 128
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setChangeMacButton()V

    .line 129
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setResetMacButton()V

    .line 130
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setRegenerateMacButton()V

    .line 131
    invoke-direct {p0}, Lcom/offsec/nethunter/MacchangerFragment;->setClearMacButton()V

    .line 132
    return-void
.end method
