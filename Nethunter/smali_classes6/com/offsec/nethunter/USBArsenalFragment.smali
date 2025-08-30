.class public Lcom/offsec/nethunter/USBArsenalFragment;
.super Landroidx/fragment/app/Fragment;
.source "USBArsenalFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "USBArsenalFragment"

.field private static is_init_exists:Z


# instance fields
.field private activity:Landroid/app/Activity;

.field private adbSpinner:Landroid/widget/Spinner;

.field private context:Landroid/content/Context;

.field private currentInquiryHintTextView:Landroid/widget/TextView;

.field private imageMounterLL:Landroid/widget/LinearLayout;

.field private imgFileSpinner:Landroid/widget/Spinner;

.field private inquiryStringEditText:Landroid/widget/EditText;

.field private mountImgButton:Landroid/widget/Button;

.field private mountedImageHintTextView:Landroid/widget/TextView;

.field private mountedImageTextView:Landroid/widget/TextView;

.field private reloadMountStateButton:Landroid/widget/ImageButton;

.field private reloadUSBStateImageButton:Landroid/widget/ImageButton;

.field private saveUSBFunctionConfigButton:Landroid/widget/Button;

.field private saveUSBNetworkTetheringConfigButton:Landroid/widget/Button;

.field private setUSBIfaceButton:Landroid/widget/Button;

.field private setUSBNetworkTetheringButton:Landroid/widget/Button;

.field private targetOSSpinner:Landroid/widget/Spinner;

.field private final uiHandler:Landroid/os/Handler;

.field private unmountImgButton:Landroid/widget/Button;

.field private final usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

.field private usbFuncSpinner:Landroid/widget/Spinner;

.field private usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

.field private usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

.field private usbNetworkTetheringHintTextView:Landroid/widget/TextView;

.field private usbNetworkTetheringLL:Landroid/widget/LinearLayout;

.field private usbStatusTextView:Landroid/widget/TextView;

.field private usbStorageFunctionName:Ljava/lang/String;

.field private usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    nop

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 54
    new-instance v0, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-direct {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x5

    new-array v1, v0, [Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    .line 80
    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/USBArsenalFragment;

    .line 49
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/USBArsenalFragment;

    .line 49
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->gettargetOSSpinnerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/USBArsenalFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/USBArsenalFragment;

    .line 49
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbFuncSpinnerString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/USBArsenalFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBSwitchInfos(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    return v0
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/USBArsenalFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/USBArsenalFragment;

    .line 49
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/offsec/nethunter/USBArsenalFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/USBArsenalFragment;

    .line 49
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/offsec/nethunter/USBArsenalFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/USBArsenalFragment;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBNetworkInfos(I)V

    return-void
.end method

.method private getImageFiles()V
    .locals 8

    .line 628
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v2, "image_folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 633
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v4, "Creating directory for storing image files.."

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 635
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create directory for storing image files at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 636
    return-void

    .line 640
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 641
    .local v3, "filesInFolder":[Ljava/io/File;
    if-eqz v3, :cond_4

    .line 642
    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, v3, v1

    .line 643
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 644
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".img"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".iso"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 645
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .end local v5    # "file":Ljava/io/File;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v3    # "filesInFolder":[Ljava/io/File;
    :cond_3
    goto :goto_1

    .line 641
    .restart local v3    # "filesInFolder":[Ljava/io/File;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "image_folder":Ljava/io/File;
    throw v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v3    # "filesInFolder":[Ljava/io/File;
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "image_folder":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 651
    const-string v3, "USBArsenalFragment"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    const v4, 0x1090008

    invoke-direct {v1, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 654
    .local v1, "imageAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 655
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 656
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 657
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 658
    return-void
.end method

.method private gettargetOSSpinnerString()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getusbFuncSpinnerString()Ljava/lang/String;
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Enable"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ",adb"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 662
    return-object v0

    .line 665
    :cond_1
    const-string v0, "reset"

    return-object v0
.end method

.method private getusbNetWorkModeSpinnerPosition()I
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method private isAllUSBInfosValid()Z
    .locals 8

    .line 677
    sget-boolean v0, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 678
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^0x[0-9a-fA-F]{4}$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "The regex must be ^0x[0-9a-fA-F]{4}$"

    const-string v5, "Invalid Format"

    const v6, 0x7f14012e

    if-nez v0, :cond_0

    .line 679
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 680
    return v2

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 684
    return v2

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^\\w+$|^$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "The regex must be ^\\w+$|^$"

    if-nez v0, :cond_2

    .line 687
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 688
    return v2

    .line 690
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v7, 0x3

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 691
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 692
    return v2

    .line 694
    :cond_3
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^[0-9A-Z]{10}$|^$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 695
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const-string v1, "The regex must be ^[0-9A-Z]{10}$|^$"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 696
    return v2

    .line 699
    :cond_4
    return v1
.end method

.method static synthetic lambda$onOptionsItemSelected$19(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 546
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$20(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 547
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$23(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 568
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$24(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 569
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/USBArsenalFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 84
    new-instance v0, Lcom/offsec/nethunter/USBArsenalFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/USBArsenalFragment;-><init>()V

    .line 85
    .local v0, "fragment":Lcom/offsec/nethunter/USBArsenalFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/USBArsenalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    return-object v0
.end method

.method private refreshUSBNetworkInfos(I)V
    .locals 2
    .param p1, "attackModePosition"    # I

    .line 714
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 715
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 716
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 717
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 718
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 719
    return-void
.end method

.method private refreshUSBSwitchInfos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "targetOSName"    # Ljava/lang/String;
    .param p2, "functionName"    # Ljava/lang/String;

    .line 703
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 704
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "targetOSName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v2, "functionName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const/16 v2, 0xa

    iput v2, v0, Landroid/os/Message;->what:I

    .line 708
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 709
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 710
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v2}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 711
    return-void
.end method


# virtual methods
.method synthetic lambda$onOptionsItemSelected$21$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 4
    .param p1, "storedpathEditText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "v"    # Landroid/view/View;

    .line 552
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->backupData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 554
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db successfully backed up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 557
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Failed to backup the DB."

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 559
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 560
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$22$com-offsec-nethunter-USBArsenalFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adBackup"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "storedpathEditText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 550
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 551
    .local v0, "buttonOK":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$25$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 4
    .param p1, "storedpathEditText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "v"    # Landroid/view/View;

    .line 574
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->restoreData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 576
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db is successfully restored to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->gettargetOSSpinnerString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbFuncSpinnerString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBSwitchInfos(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBNetworkInfos(I)V

    goto :goto_0

    .line 580
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 581
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v2, "Failed to restore the DB."

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 583
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 584
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$26$com-offsec-nethunter-USBArsenalFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adRestore"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "storedpathEditText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 572
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 573
    .local v0, "buttonOK":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .line 221
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->isAllUSBInfosValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 222
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Windows"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "win"

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Linux"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "lnx"

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Mac OS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mac"

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    nop

    .line 226
    .local v0, "target":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 227
    .local v3, "functions":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ",adb"

    goto :goto_2

    :cond_4
    move-object v4, v2

    .line 228
    .local v4, "adbEnable":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -v \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v1, v6, v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "idVendor":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -p \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "idProduct":Ljava/lang/String;
    iget-object v7, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -m \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v8, v9, v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "manufacturer":Ljava/lang/String;
    :goto_3
    iget-object v8, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_4

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -P \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "product":Ljava/lang/String;
    :goto_4
    iget-object v10, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -s \'"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "serialnumber":Ljava/lang/String;
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ -f /init.nethunter.rc ] && setprop sys.usb.config "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " || "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/usbarsenal -t \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' -f \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "commandBuilder":Ljava/lang/String;
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    .line 250
    .local v10, "msg":Landroid/os/Message;
    iput v9, v10, Landroid/os/Message;->what:I

    .line 251
    iput-object v5, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v9, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v9}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    .end local v0    # "target":Ljava/lang/String;
    .end local v1    # "idVendor":Ljava/lang/String;
    .end local v2    # "serialnumber":Ljava/lang/String;
    .end local v3    # "functions":Ljava/lang/String;
    .end local v4    # "adbEnable":Ljava/lang/String;
    .end local v5    # "commandBuilder":Ljava/lang/String;
    .end local v6    # "idProduct":Ljava/lang/String;
    .end local v7    # "manufacturer":Ljava/lang/String;
    .end local v8    # "product":Ljava/lang/String;
    .end local v10    # "msg":Landroid/os/Message;
    :cond_8
    return-void
.end method

.method synthetic lambda$onViewCreated$1$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbtethering -o "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -i "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 257
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -A "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 258
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -B "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v1, v1, v2

    .line 259
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -C "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 260
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    .line 261
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/USBArsenalFragment;->run_cmd_android(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onViewCreated$10$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V
    .locals 8
    .param p1, "resultObject"    # Ljava/lang/Object;
    .param p2, "usbFuncWinArrayAdapter"    # Landroid/widget/ArrayAdapter;
    .param p3, "usbFuncMACArrayAdapter"    # Landroid/widget/ArrayAdapter;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 383
    .local v0, "usbFuncArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 384
    const-string v1, "win"

    invoke-static {v1}, Lcom/google/common/base/Predicates;->containsPattern(Ljava/lang/String;)Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 383
    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 385
    .local v1, "usbFuncWinArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 386
    const-string v2, "mac"

    invoke-static {v2}, Lcom/google/common/base/Predicates;->containsPattern(Ljava/lang/String;)Lcom/google/common/base/Predicate;

    move-result-object v2

    .line 385
    invoke-static {v0, v2}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 387
    .local v2, "usbFuncMacArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 388
    invoke-virtual {p2, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 389
    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 390
    invoke-virtual {p3, v2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 391
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 392
    .local v7, "infoEditText":Landroid/widget/EditText;
    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 391
    .end local v7    # "infoEditText":Landroid/widget/EditText;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 394
    :cond_0
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBFunctionConfigButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 396
    return-void
.end method

.method synthetic lambda$onViewCreated$11$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultObject"    # Ljava/lang/Object;

    .line 400
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v1, "Failed to set USB function."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v1, "USB function set successfully."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 407
    return-void
.end method

.method synthetic lambda$onViewCreated$12$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 6
    .param p1, "resultObject"    # Ljava/lang/Object;

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    const v3, 0x7f1302d7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 413
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 417
    const-string v4, "/config/usb_gadget/g1/functions/"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 418
    const-string v4, "/config/usb_gadget/g1/functions"

    const-string v5, "gsi.rndis"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 419
    const-string v4, " "

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mass_storage"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getImageFiles()V

    goto :goto_0

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rndis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    .line 429
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "acm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 430
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBNetworkInfos(I)V

    .line 438
    :goto_2
    return-void
.end method

.method synthetic lambda$onViewCreated$13$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultObject"    # Ljava/lang/Object;

    .line 448
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageTextView:Landroid/widget/TextView;

    const v1, 0x7f1302d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$14$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 3
    .param p1, "resultObject"    # Ljava/lang/Object;

    .line 454
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been mounted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mount image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 460
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 462
    return-void
.end method

.method synthetic lambda$onViewCreated$15$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 3
    .param p1, "resultObject"    # Ljava/lang/Object;

    .line 466
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been unmounted."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    goto :goto_0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unmount image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Your drive may be still be in use by the host, please eject your drive on the host first,and then try to umount the image again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    .line 474
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 475
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 477
    return-void
.end method

.method synthetic lambda$onViewCreated$16$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultObject"    # Ljava/lang/Object;

    .line 496
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getidVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getidProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getmanufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getproduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->getserialnumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 501
    return-void
.end method

.method synthetic lambda$onViewCreated$17$com-offsec-nethunter-USBArsenalFragment(Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultObject"    # Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getupstream_iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getusb_iface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_address_for_target()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_gateway()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_subnetmask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 510
    return-void
.end method

.method synthetic lambda$onViewCreated$18$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;Ljava/lang/Object;I)V
    .locals 4
    .param p1, "usbFuncWinArrayAdapter"    # Landroid/widget/ArrayAdapter;
    .param p2, "usbFuncMACArrayAdapter"    # Landroid/widget/ArrayAdapter;
    .param p3, "resultObject"    # Ljava/lang/Object;
    .param p4, "actionCode"    # I

    .line 361
    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 362
    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_0

    goto/16 :goto_0

    .line 504
    :pswitch_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 495
    :pswitch_1
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 502
    goto/16 :goto_0

    .line 480
    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->inquiryStringEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "newInquiry":Ljava/lang/String;
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v2, "Inquiry string reset to default successfully."

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->currentInquiryHintTextView:Landroid/widget/TextView;

    const v2, 0x7f1302d5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inquiry string changed to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' successfully."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->currentInquiryHintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change inquiry string to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    .line 493
    goto/16 :goto_0

    .line 465
    .end local v0    # "newInquiry":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    goto/16 :goto_0

    .line 453
    :pswitch_4
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    goto/16 :goto_0

    .line 447
    :pswitch_5
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    goto :goto_0

    .line 441
    :pswitch_6
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    .line 443
    .local v0, "folder_name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "mass_storage.0"

    .line 444
    :cond_2
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    .line 445
    goto :goto_0

    .line 410
    .end local v0    # "folder_name":Ljava/lang/String;
    :pswitch_7
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 439
    goto :goto_0

    .line 399
    :pswitch_8
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    goto :goto_0

    .line 381
    :pswitch_9
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Ljava/lang/Object;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    goto :goto_0

    .line 364
    :pswitch_a
    move-object v1, p3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 365
    const/4 v0, 0x1

    sput-boolean v0, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    .line 366
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 367
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 368
    const-string v1, "cat /init.nethunter.rc | grep -E -o \'sys.usb.config=([a-zA-Z,_]+)\' | sed \'s/sys.usb.config=//\' | sort | uniq"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 371
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    sput-boolean v0, Lcom/offsec/nethunter/USBArsenalFragment;->is_init_exists:Z

    .line 372
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    nop

    .line 514
    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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

.method synthetic lambda$onViewCreated$2$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 264
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 265
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 266
    const-string v1, "find /config/usb_gadget/g1/configs/b.1 -type l -exec readlink -e {} \\; | xargs echo"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    return-void
.end method

.method synthetic lambda$onViewCreated$3$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 271
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 272
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat /config/usb_gadget/g1/functions/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lun.0/file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getImageFiles()V

    .line 276
    return-void
.end method

.method synthetic lambda$onViewCreated$4$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 15
    .param p1, "readOnlyCheckBox"    # Landroid/widget/CheckBox;
    .param p2, "v"    # Landroid/view/View;

    .line 279
    move-object v0, p0

    iget-object v1, v0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, v0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v2, "No image file is selected."

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    :cond_0
    iget-object v1, v0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    iget-object v1, v0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 284
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 285
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v1, Landroid/os/Message;->what:I

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x4

    const-string v8, "/lun.0/cdrom"

    const-string v9, " && echo \'1\' > /config/usb_gadget/g1/functions/"

    const-string v10, " && echo \'0\' > /config/usb_gadget/g1/functions/mass_storage.gs6/lun.0/cdrom"

    const-string v11, ".iso"

    const-string v12, "/lun.0/ro"

    const-string v13, "/lun.0/file"

    const-string v14, "%s%s && echo \'%s/%s\' > /config/usb_gadget/g1/functions/"

    if-eqz v3, :cond_2

    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v14, v0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "echo \'1\' > /config/usb_gadget/g1/functions/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 289
    iget-object v13, v0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1
    iget-object v8, v0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    .line 291
    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v2

    aput-object v10, v7, v6

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    aput-object v2, v7, v5

    aput-object v8, v7, v4

    .line 287
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 293
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v14, v0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "echo \'0\' > /config/usb_gadget/g1/functions/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 295
    iget-object v13, v0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_3
    iget-object v8, v0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    .line 297
    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v12, v7, v2

    aput-object v10, v7, v6

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_IMG_PATH:Ljava/lang/String;

    aput-object v2, v7, v5

    aput-object v8, v7, v4

    .line 293
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    :goto_0
    iget-object v2, v0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v2}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    return-void
.end method

.method synthetic lambda$onViewCreated$5$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 304
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 306
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v0, Landroid/os/Message;->what:I

    .line 307
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    aput-object v3, v5, v1

    const/4 v1, 0x2

    aput-object v4, v5, v1

    const-string v1, "echo \'\' > /config/usb_gadget/g1/functions/%s/lun.0/file && echo \'0\' > /config/usb_gadget/g1/functions/%s/lun.0/ro && echo \'0\' > /config/usb_gadget/g1/functions/%s/lun.0/cdrom"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void
.end method

.method synthetic lambda$onViewCreated$6$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 315
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 316
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 317
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->inquiryStringEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStorageFunctionName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "echo \'%s\' > /config/usb_gadget/g1/functions/%s/lun.0/inquiry_string"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v1}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method

.method synthetic lambda$onViewCreated$7$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 322
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x[0-9a-fA-F]{4}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "Invalid Format"

    const v3, 0x7f14012e

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    .line 323
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\w+|^$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    .line 326
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[0-9A-Z]{10}|^$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const-string v1, "The regex must be [0-9A-Z]{10}|^$"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto/16 :goto_4

    .line 331
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 332
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v1

    .line 333
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbFuncSpinnerString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    .line 335
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    .line 336
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->setUSBSwitchColumnData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something\'s wrong when processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v2, "Saved."

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 331
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    .end local v0    # "i":I
    :cond_4
    :goto_2
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const-string v1, "The regex must be \\w*|^$"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_4

    .line 324
    :cond_5
    :goto_3
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const-string v1, "The regex must be 0x[0-9a-fA-F]{4}"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 343
    :cond_6
    :goto_4
    return-void
.end method

.method synthetic lambda$onViewCreated$8$com-offsec-nethunter-USBArsenalFragment(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 346
    new-instance v6, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 347
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 348
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    .line 349
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    .line 350
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const/4 v5, 0x4

    aget-object v0, v0, v5

    .line 351
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .local v0, "usbArsenalUSBNetworkModel":Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v1

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->setUSBNetworkColumnData(ILcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v2, "Failed saving configs to DB, please check if your input is valid."

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v2, "Saved."

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void
.end method

.method synthetic lambda$onViewCreated$9$com-offsec-nethunter-USBArsenalFragment(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V
    .locals 2
    .param p1, "usbFuncWinArrayAdapter"    # Landroid/widget/ArrayAdapter;
    .param p2, "usbFuncMACArrayAdapter"    # Landroid/widget/ArrayAdapter;

    .line 373
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 374
    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 375
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 376
    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 93
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    .line 96
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v0}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->start()V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/USBArsenalFragment;->setHasOptionsMenu(Z)V

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 528
    const v0, 0x7f0f000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 529
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 530
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 102
    const v0, 0x7f0d00e1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 601
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    .line 603
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageTextView:Landroid/widget/TextView;

    .line 604
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    .line 605
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringHintTextView:Landroid/widget/TextView;

    .line 606
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    .line 607
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    .line 608
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    .line 609
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringLL:Landroid/widget/LinearLayout;

    .line 610
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    .line 611
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    .line 612
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    .line 613
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBNetworkTetheringButton:Landroid/widget/Button;

    .line 614
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBFunctionConfigButton:Landroid/widget/Button;

    .line 615
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBNetworkTetheringConfigButton:Landroid/widget/Button;

    .line 616
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    .line 617
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    .line 618
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    .line 619
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

    .line 620
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    .line 621
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 622
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    .line 623
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 624
    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    .line 625
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 534
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 535
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_4

    .line 536
    const v1, 0x7f0d0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 537
    .local v1, "promptView":Landroid/view/View;
    const v2, 0x7f0a01d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 538
    .local v2, "titleTextView":Landroid/widget/TextView;
    const v3, 0x7f0a01d7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 540
    .local v3, "storedpathEditText":Landroid/widget/EditText;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 541
    .local v4, "itemId":I
    const v5, 0x7f0a025d

    const-string v6, "OK"

    const-string v7, "Cancel"

    const v8, 0x7f14012e

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "%s/FragmentUSBArsenal"

    if-ne v4, v5, :cond_0

    .line 542
    const v5, 0x7f1302d4

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 543
    new-array v5, v10, [Ljava/lang/Object;

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v10, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 544
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v9, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    invoke-direct {v5, v9, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 545
    .local v5, "adbBackup":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 546
    new-instance v8, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda13;

    invoke-direct {v8}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 547
    new-instance v7, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda14;

    invoke-direct {v7}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 548
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v6

    .line 549
    .local v6, "adBackup":Landroidx/appcompat/app/AlertDialog;
    new-instance v7, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda15;

    invoke-direct {v7, p0, v6, v3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda15;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 562
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 563
    .end local v5    # "adbBackup":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v6    # "adBackup":Landroidx/appcompat/app/AlertDialog;
    goto/16 :goto_1

    :cond_0
    const v5, 0x7f0a025f

    if-ne v4, v5, :cond_1

    .line 564
    const v5, 0x7f1302d3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 565
    new-array v5, v10, [Ljava/lang/Object;

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v10, v5, v9

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 566
    new-instance v5, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v9, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    invoke-direct {v5, v9, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 567
    .local v5, "adbRestore":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 568
    new-instance v8, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda16;

    invoke-direct {v8}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v5, v7, v8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 569
    new-instance v7, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;

    invoke-direct {v7}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 570
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v6

    .line 571
    .local v6, "adRestore":Landroidx/appcompat/app/AlertDialog;
    new-instance v7, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda18;

    invoke-direct {v7, p0, v6, v3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 586
    invoke-virtual {v6}, Landroidx/appcompat/app/AlertDialog;->show()V

    .end local v5    # "adbRestore":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v6    # "adRestore":Landroidx/appcompat/app/AlertDialog;
    goto :goto_0

    .line 587
    :cond_1
    const v5, 0x7f0a025c

    if-ne v4, v5, :cond_3

    .line 588
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->resetData()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 589
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v6, "db is successfully reset to default."

    invoke-static {v5, v6}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->gettargetOSSpinnerString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbFuncSpinnerString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBSwitchInfos(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-direct {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getusbNetWorkModeSpinnerPosition()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/offsec/nethunter/USBArsenalFragment;->refreshUSBNetworkInfos(I)V

    goto :goto_1

    .line 593
    :cond_2
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    const-string v6, "Failed to reset the db to default."

    invoke-static {v5, v6}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 587
    :cond_3
    :goto_0
    nop

    .line 596
    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 535
    .end local v1    # "promptView":Landroid/view/View;
    .end local v2    # "titleTextView":Landroid/widget/TextView;
    .end local v3    # "storedpathEditText":Landroid/widget/EditText;
    .end local v4    # "itemId":I
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public onStart()V
    .locals 1

    .line 519
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 520
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 521
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 524
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 107
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f0a0263

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    .line 109
    const v0, 0x7f0a0264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    .line 110
    const v0, 0x7f0a0260

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    .line 111
    const v0, 0x7f0a0261

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imgFileSpinner:Landroid/widget/Spinner;

    .line 112
    const v0, 0x7f0a0262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

    .line 113
    const v0, 0x7f0a0243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    .line 114
    const v0, 0x7f0a0240

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBNetworkTetheringButton:Landroid/widget/Button;

    .line 115
    const v0, 0x7f0a023f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    .line 116
    const v0, 0x7f0a0244

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    .line 117
    const v0, 0x7f0a023e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    .local v0, "changeInquiryButton":Landroid/widget/Button;
    const v1, 0x7f0a0252

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    .line 119
    const v1, 0x7f0a0251

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    .line 120
    const v1, 0x7f0a0241

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBFunctionConfigButton:Landroid/widget/Button;

    .line 121
    const v1, 0x7f0a0242

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBNetworkTetheringConfigButton:Landroid/widget/Button;

    .line 122
    const v1, 0x7f0a0245

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 123
    .local v1, "readOnlyCheckBox":Landroid/widget/CheckBox;
    const v2, 0x7f0a0266

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbStatusTextView:Landroid/widget/TextView;

    .line 124
    const v2, 0x7f0a0267

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageTextView:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f0a0265

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->currentInquiryHintTextView:Landroid/widget/TextView;

    .line 126
    const v2, 0x7f0a0256

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountedImageHintTextView:Landroid/widget/TextView;

    .line 127
    const v2, 0x7f0a0257

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringHintTextView:Landroid/widget/TextView;

    .line 128
    const v2, 0x7f0a0255

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->imageMounterLL:Landroid/widget/LinearLayout;

    .line 129
    const v2, 0x7f0a025a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkTetheringLL:Landroid/widget/LinearLayout;

    .line 130
    const v2, 0x7f0a0248

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->inquiryStringEditText:Landroid/widget/EditText;

    .line 132
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a0247

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 133
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a0246

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 134
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a0249

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 135
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a024a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 136
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbSwitchInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a024b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 137
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a024f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v2, v4

    .line 138
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a0250

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v2, v5

    .line 139
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a024e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v2, v6

    .line 140
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a024c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v2, v7

    .line 141
    iget-object v2, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkInfoEditTextGroup:[Landroid/widget/EditText;

    const v3, 0x7f0a024d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    aput-object v3, v2, v8

    .line 143
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 144
    .local v2, "msg":Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 145
    const-string v3, "[ -f /init.nethunter.rc ]"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v3}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .end local v2    # "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 149
    .restart local v2    # "msg":Landroid/os/Message;
    const/4 v3, 0x5

    iput v3, v2, Landroid/os/Message;->what:I

    .line 150
    const-string v3, "find /config/usb_gadget/g1/functions/ -name \"mass_storage.*\" -maxdepth 1 -type d -exec basename {} \\; | head -n1"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    invoke-virtual {v3}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    .end local v2    # "msg":Landroid/os/Message;
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v5, 0x1090008

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 154
    .local v2, "usbFuncWinArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 155
    .local v3, "usbFuncMACArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v6, p0, Lcom/offsec/nethunter/USBArsenalFragment;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/offsec/nethunter/USBArsenalFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f03001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 156
    .local v4, "usbNetworkAttackModeArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 157
    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 158
    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 160
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->targetOSSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/offsec/nethunter/USBArsenalFragment$1;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 177
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbFuncSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$2;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$2;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 196
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->adbSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$3;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$3;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 208
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbNetworkAttackModeSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$4;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$4;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 220
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBIfaceButton:Landroid/widget/Button;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->setUSBNetworkTetheringButton:Landroid/widget/Button;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda19;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadUSBStateImageButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda20;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->reloadMountStateButton:Landroid/widget/ImageButton;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda21;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->mountImgButton:Landroid/widget/Button;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda22;

    invoke-direct {v6, p0, v1}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda22;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->unmountImgButton:Landroid/widget/Button;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda23;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    new-instance v5, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda24;

    invoke-direct {v5, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda24;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBFunctionConfigButton:Landroid/widget/Button;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda25;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda25;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->saveUSBNetworkTetheringConfigButton:Landroid/widget/Button;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda26;

    invoke-direct {v6, p0}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda26;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v5, p0, Lcom/offsec/nethunter/USBArsenalFragment;->usbArsenalHandlerThread:Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;

    new-instance v6, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v2, v3}, Lcom/offsec/nethunter/USBArsenalFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/USBArsenalFragment;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v5, v6}, Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread;->setOnShellExecuterFinishedListener(Lcom/offsec/nethunter/HandlerThread/USBArsenalHandlerThread$USBArsenalListener;)V

    .line 515
    return-void
.end method

.method public run_cmd_android(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 726
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/android-su"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 727
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/USBArsenalFragment;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 728
    return-void
.end method
