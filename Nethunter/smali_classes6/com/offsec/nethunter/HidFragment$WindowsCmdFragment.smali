.class public Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;
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
    name = "WindowsCmdFragment"
.end annotation


# static fields
.field private static final PICKFILE_RESULT_CODE:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private configFilePath:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private loadFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment;-><init>()V

    .line 449
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method private getMaterialAlertDialogBuilder()Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 4

    .line 519
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 521
    .local v0, "alert":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Name"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 522
    const-string v1, "Please enter a name for your script."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 525
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 526
    .local v1, "input":Landroid/widget/EditText;
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 528
    new-instance v2, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;Landroid/widget/EditText;)V

    const-string v3, "Ok"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 557
    return-object v0
.end method

.method static synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 510
    return-void
.end method


# virtual methods
.method synthetic lambda$getMaterialAlertDialogBuilder$1$com-offsec-nethunter-HidFragment$WindowsCmdFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "whichButton"    # I

    .line 529
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 532
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".conf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v1, "scriptFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 536
    return-void

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0531

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 539
    .local v2, "source1":Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "text1":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 541
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 542
    .local v4, "fOut":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 543
    .local v5, "myOutWriter":Ljava/io/OutputStreamWriter;
    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 545
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 546
    iget-object v6, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string v7, "Script saved"

    invoke-static {v6, v7}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "source1":Landroid/widget/EditText;
    .end local v3    # "text1":Ljava/lang/String;
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .end local v5    # "myOutWriter":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 547
    :catch_0
    move-exception v2

    .line 548
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 551
    :cond_1
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string v3, "File already exists"

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 553
    .end local v1    # "scriptFile":Ljava/io/File;
    :goto_1
    goto :goto_2

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string v2, "Wrong name provided"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 556
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 562
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "FilePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0531

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 565
    .local v1, "source":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v2, v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 566
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string v3, "Script loaded"

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 569
    .end local v0    # "FilePath":Ljava/lang/String;
    .end local v1    # "source":Landroid/widget/EditText;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 479
    .local v0, "id":I
    const v1, 0x7f0a0532

    if-ne v0, v1, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0531

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 484
    .local v1, "source":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v4, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lcom/offsec/nethunter/utils/ShellExecuter;->SaveFileContents(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 486
    .local v3, "isSaved":Z
    if-eqz v3, :cond_1

    .line 487
    iget-object v4, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string v5, "Source updated"

    invoke-static {v4, v5}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 489
    .end local v1    # "source":Landroid/widget/EditText;
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "isSaved":Z
    :cond_1
    goto/16 :goto_2

    :cond_2
    const v1, 0x7f0a052f

    if-ne v0, v1, :cond_4

    .line 491
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v1, "scriptsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v1    # "scriptsDir":Ljava/io/File;
    :cond_3
    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 498
    .local v2, "selectedUri":Landroid/net/Uri;
    const-string v3, "file/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->filePickerLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v3, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 500
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "selectedUri":Landroid/net/Uri;
    goto :goto_2

    :cond_4
    const v1, 0x7f0a0530

    if-ne v0, v1, :cond_6

    .line 502
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .local v1, "scriptsDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    .end local v1    # "scriptsDir":Ljava/io/File;
    :cond_5
    goto :goto_1

    .line 504
    :catch_1
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getMaterialAlertDialogBuilder()Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 508
    .local v1, "alert":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v2, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v3, "Cancel"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 511
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 512
    .end local v1    # "alert":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    goto :goto_2

    .line 513
    :cond_6
    iget-object v1, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    const-string v2, "Unknown click"

    invoke-static {v1, v2}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 515
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 453
    invoke-super {p0, p1}, Lcom/offsec/nethunter/HidFragment;->onCreate(Landroid/os/Bundle;)V

    .line 454
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->context:Landroid/content/Context;

    .line 455
    invoke-virtual {p0}, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->activity:Landroid/app/Activity;

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/configs/hid-cmd.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->configFilePath:Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/scripts/hid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->loadFilePath:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 463
    const v0, 0x7f0d0059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 464
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a0531

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 465
    .local v1, "source":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v3, p0, Lcom/offsec/nethunter/HidFragment$WindowsCmdFragment;->configFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->ReadFile_ASYNC(Ljava/lang/String;Landroid/widget/EditText;)V

    .line 466
    const v2, 0x7f0a0532

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 467
    .local v2, "b":Landroid/widget/Button;
    const v3, 0x7f0a052f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 468
    .local v3, "b1":Landroid/widget/Button;
    const v4, 0x7f0a0530

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 469
    .local v4, "b2":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    return-object v0
.end method
