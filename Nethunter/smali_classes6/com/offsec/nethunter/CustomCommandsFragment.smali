.class public Lcom/offsec/nethunter/CustomCommandsFragment;
.super Landroidx/fragment/app/Fragment;
.source "CustomCommandsFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field public static final TAG:Ljava/lang/String; = "CustomCommandsFragment"

.field public static targetPositionId:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private addButton:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

.field private deleteButton:Landroid/widget/Button;

.field private moveButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 57
    const-string v0, "CustomCommandsFragment"

    const-string v1, "CustomCommandsFragment: init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/CustomCommandsFragment;)Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/CustomCommandsFragment;

    .line 45
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    return-object v0
.end method

.method static synthetic lambda$onAddItemSetup$11(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 286
    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$1(Landroid/view/Menu;Landroid/view/View;)V
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "v"    # Landroid/view/View;

    .line 123
    const v0, 0x7f0a01c8

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    return-void
.end method

.method static synthetic lambda$onCreateOptionsMenu$2(Landroid/view/Menu;)Z
    .locals 2
    .param p0, "menu"    # Landroid/view/Menu;

    .line 125
    const v0, 0x7f0a01c8

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$onDeleteItemSetup$15(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 328
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onDeleteItemSetup$16(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 329
    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$20(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 385
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onMoveItemSetup$21(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 386
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 158
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 159
    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$7(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 184
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onOptionsItemSelected$8(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 185
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/CustomCommandsFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 61
    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment;-><init>()V

    .line 62
    .local v0, "fragment":Lcom/offsec/nethunter/CustomCommandsFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/CustomCommandsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method

.method private onAddItemSetup()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->addButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method

.method private onDeleteItemSetup()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->deleteButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda19;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-void
.end method

.method private onMoveItemSetup()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->moveButton:Landroid/widget/Button;

    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    return-void
.end method


# virtual methods
.method synthetic lambda$onAddItemSetup$12$com-offsec-nethunter-CustomCommandsFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "commandLabelEditText"    # Landroid/widget/EditText;
    .param p2, "commandEditText"    # Landroid/widget/EditText;
    .param p3, "sendToSpinner"    # Landroid/widget/Spinner;
    .param p4, "execModeSpinner"    # Landroid/widget/Spinner;
    .param p5, "runOnBootCheckbox"    # Landroid/widget/CheckBox;
    .param p6, "adAdd"    # Landroidx/appcompat/app/AlertDialog;
    .param p7, "v1"    # Landroid/view/View;

    .line 294
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "Label cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 296
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "Command String cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    goto :goto_0

    :cond_2
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v1

    sget v2, Lcom/offsec/nethunter/CustomCommandsFragment;->targetPositionId:I

    iget-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->addData(ILjava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 306
    invoke-virtual {p6}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 308
    .end local v0    # "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void
.end method

.method synthetic lambda$onAddItemSetup$13$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V
    .locals 11
    .param p1, "adAdd"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "commandLabelEditText"    # Landroid/widget/EditText;
    .param p3, "commandEditText"    # Landroid/widget/EditText;
    .param p4, "sendToSpinner"    # Landroid/widget/Spinner;
    .param p5, "execModeSpinner"    # Landroid/widget/Spinner;
    .param p6, "runOnBootCheckbox"    # Landroid/widget/CheckBox;
    .param p7, "dialog"    # Landroid/content/DialogInterface;

    .line 292
    const/4 v0, -0x1

    move-object v9, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 293
    .local v0, "buttonAdd":Landroid/widget/Button;
    new-instance v10, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda18;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda18;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method

.method synthetic lambda$onAddItemSetup$14$com-offsec-nethunter-CustomCommandsFragment(Landroid/view/View;)V
    .locals 23
    .param p1, "v"    # Landroid/view/View;

    .line 218
    move-object/from16 v8, p0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v9, v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    .line 219
    .local v9, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    if-nez v9, :cond_0

    return-void

    .line 220
    :cond_0
    iget-object v0, v8, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/LayoutInflater;

    .line 221
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d0038

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 222
    .local v11, "promptViewAdd":Landroid/view/View;
    const v0, 0x7f0a01b8

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/EditText;

    .line 223
    .local v12, "commandLabelEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01b7

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 224
    .local v13, "commandEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01bc

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/Spinner;

    .line 225
    .local v14, "sendToSpinner":Landroid/widget/Spinner;
    const v0, 0x7f0a01b9

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/Spinner;

    .line 226
    .local v15, "execModeSpinner":Landroid/widget/Spinner;
    const v0, 0x7f0a01b6

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/CheckBox;

    .line 227
    .local v16, "runOnBootCheckbox":Landroid/widget/CheckBox;
    const v0, 0x7f0a01bb

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Spinner;

    .line 228
    .local v7, "insertPositions":Landroid/widget/Spinner;
    const v0, 0x7f0a01ba

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    .line 230
    .local v6, "insertLabels":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 231
    .local v5, "commandLabelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    .line 232
    .local v1, "customCommandsModel":Lcom/offsec/nethunter/models/CustomCommandsModel;
    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v1    # "customCommandsModel":Lcom/offsec/nethunter/models/CustomCommandsModel;
    goto :goto_0

    .line 235
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, v8, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v4, v0

    .line 236
    .local v4, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 238
    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$2;

    invoke-direct {v0, v8, v6, v9, v4}, Lcom/offsec/nethunter/CustomCommandsFragment$2;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/Spinner;Ljava/util/List;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 285
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, v8, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v3, v0

    .line 286
    .local v3, "adbAdd":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "OK"

    invoke-virtual {v3, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 287
    invoke-virtual {v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 288
    .local v2, "adAdd":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v2, v11}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 289
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 291
    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda23;

    move-object v0, v1

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "adAdd":Landroidx/appcompat/app/AlertDialog;
    .local v17, "adAdd":Landroidx/appcompat/app/AlertDialog;
    move-object/from16 v18, v3

    .end local v3    # "adbAdd":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .local v18, "adbAdd":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    move-object v3, v12

    move-object/from16 v19, v4

    .end local v4    # "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v19, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v4, v13

    move-object/from16 v20, v5

    .end local v5    # "commandLabelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v20, "commandLabelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v5, v14

    move-object/from16 v21, v6

    .end local v6    # "insertLabels":Landroid/widget/Spinner;
    .local v21, "insertLabels":Landroid/widget/Spinner;
    move-object v6, v15

    move-object/from16 v22, v7

    .end local v7    # "insertPositions":Landroid/widget/Spinner;
    .local v22, "insertPositions":Landroid/widget/Spinner;
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda23;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v17

    .end local v17    # "adAdd":Landroidx/appcompat/app/AlertDialog;
    .local v0, "adAdd":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 310
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 311
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$17$com-offsec-nethunter-CustomCommandsFragment(Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 6
    .param p1, "recyclerViewDeleteItem"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "adDelete"    # Landroidx/appcompat/app/AlertDialog;
    .param p3, "v1"    # Landroid/view/View;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v0, "selectedPosition":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v1, "selectedTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 342
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 343
    .local v3, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    .line 344
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a01d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 345
    .local v4, "box":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 346
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v4    # "box":Landroid/widget/CheckBox;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v2    # "i":I
    .end local v3    # "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 352
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->deleteData(Ljava/util/List;Ljava/util/List;Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 353
    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully deleted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " items."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 356
    :cond_2
    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v3, "Nothing to be deleted."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    :goto_1
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$18$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adDelete"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "recyclerViewDeleteItem"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 336
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 337
    .local v0, "buttonDelete":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p2, p1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda20;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    return-void
.end method

.method synthetic lambda$onDeleteItemSetup$19$com-offsec-nethunter-CustomCommandsFragment(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 316
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    .line 317
    .local v0, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 319
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d003a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 320
    .local v2, "promptViewDelete":Landroid/view/View;
    const v3, 0x7f0a01c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    .line 321
    .local v3, "recyclerViewDeleteItem":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v5, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;

    iget-object v6, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 323
    .local v5, "customCommandsRecyclerViewAdapterDeleteItems":Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapterDeleteItems;
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    move-object v4, v6

    .line 324
    .local v4, "linearLayoutManagerDelete":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 325
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 327
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v7, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    const v9, 0x7f14012e

    invoke-direct {v6, v7, v9}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 328
    .local v6, "adbDelete":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v7, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v7}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda10;-><init>()V

    const-string v9, "Cancel"

    invoke-virtual {v6, v9, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 329
    new-instance v7, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v7}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda12;-><init>()V

    const-string v9, "Delete"

    invoke-virtual {v6, v9, v7}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 330
    invoke-virtual {v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v7

    .line 331
    .local v7, "adDelete":Landroidx/appcompat/app/AlertDialog;
    const-string v9, "Select the service you want to remove: "

    invoke-virtual {v7, v9}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v7, v2}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 333
    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 335
    new-instance v8, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda13;

    invoke-direct {v8, p0, v7, v3}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 360
    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 361
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$22$com-offsec-nethunter-CustomCommandsFragment(Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "titlesBefore"    # Landroid/widget/Spinner;
    .param p2, "titlesAfter"    # Landroid/widget/Spinner;
    .param p3, "actions"    # Landroid/widget/Spinner;
    .param p4, "adMove"    # Landroidx/appcompat/app/AlertDialog;
    .param p5, "v1"    # Landroid/view/View;

    .line 393
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 394
    .local v0, "originalPositionIndex":I
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 395
    .local v1, "targetPositionIndex":I
    if-eq v0, v1, :cond_3

    .line 396
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_3

    .line 397
    :cond_0
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 401
    :cond_2
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->moveData(IILcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    .line 402
    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v3, "Successfully moved item."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p4}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 398
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v3, "You are moving the item to the same position, nothing to be moved."

    invoke-static {v2, v3}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 405
    :goto_1
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$23$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/content/DialogInterface;)V
    .locals 8
    .param p1, "adMove"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "titlesBefore"    # Landroid/widget/Spinner;
    .param p3, "titlesAfter"    # Landroid/widget/Spinner;
    .param p4, "actions"    # Landroid/widget/Spinner;
    .param p5, "dialog"    # Landroid/content/DialogInterface;

    .line 391
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 392
    .local v0, "buttonMove":Landroid/widget/Button;
    new-instance v7, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda21;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda21;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    return-void
.end method

.method synthetic lambda$onMoveItemSetup$24$com-offsec-nethunter-CustomCommandsFragment(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .line 366
    move-object/from16 v6, p0

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v7, v0, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->customCommandsModelListFull:Ljava/util/List;

    .line 367
    .local v7, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    if-nez v7, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, v6, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/LayoutInflater;

    .line 369
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d003c

    invoke-virtual {v8, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 370
    .local v9, "promptViewMove":Landroid/view/View;
    const v0, 0x7f0a01cd

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Spinner;

    .line 371
    .local v10, "titlesBefore":Landroid/widget/Spinner;
    const v0, 0x7f0a01cc

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Spinner;

    .line 372
    .local v11, "titlesAfter":Landroid/widget/Spinner;
    const v0, 0x7f0a01cb

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/Spinner;

    .line 374
    .local v12, "actions":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 375
    .local v13, "commandLabelArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/CustomCommandsModel;

    .line 376
    .local v1, "customCommandsModel":Lcom/offsec/nethunter/models/CustomCommandsModel;
    invoke-virtual {v1}, Lcom/offsec/nethunter/models/CustomCommandsModel;->getCommandLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .end local v1    # "customCommandsModel":Lcom/offsec/nethunter/models/CustomCommandsModel;
    goto :goto_0

    .line 379
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, v6, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, v13}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object v14, v0

    .line 380
    .local v14, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v0, 0x1090009

    invoke-virtual {v14, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 381
    invoke-virtual {v10, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 382
    invoke-virtual {v11, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 384
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, v6, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v15, v0

    .line 385
    .local v15, "adbMove":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "Cancel"

    invoke-virtual {v15, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 386
    new-instance v0, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "Move"

    invoke-virtual {v15, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 387
    invoke-virtual {v15}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    .line 388
    .local v5, "adMove":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v5, v9}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 389
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 390
    new-instance v4, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda9;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v10

    move-object v6, v4

    move-object v4, v11

    move-object/from16 v16, v7

    move-object v7, v5

    .end local v5    # "adMove":Landroidx/appcompat/app/AlertDialog;
    .local v7, "adMove":Landroidx/appcompat/app/AlertDialog;
    .local v16, "customCommandsModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/CustomCommandsModel;>;"
    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v6}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 407
    invoke-virtual {v7}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 408
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$10$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adRestore"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "storedpathEditText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 188
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 189
    .local v0, "buttonOK":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p2, p3}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda17;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$5$com-offsec-nethunter-CustomCommandsFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 4
    .param p1, "storedpathEditText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "v"    # Landroid/view/View;

    .line 164
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->backupData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db is successfully backup to "

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

    .line 168
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 169
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

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

    .line 171
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 172
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$6$com-offsec-nethunter-CustomCommandsFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "adBackup"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "storedpathEditText"    # Landroid/widget/EditText;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 162
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 163
    .local v0, "buttonOK":Landroid/widget/Button;
    new-instance v1, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2, p3}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda14;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$9$com-offsec-nethunter-CustomCommandsFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;Landroid/view/View;)V
    .locals 4
    .param p1, "storedpathEditText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "v"    # Landroid/view/View;

    .line 190
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->restoreData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "returnedResult":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

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

    goto :goto_0

    .line 194
    :cond_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 195
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

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

    .line 197
    :goto_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 198
    return-void
.end method

.method synthetic lambda$onViewCreated$0$com-offsec-nethunter-CustomCommandsFragment(Ljava/util/List;)V
    .locals 1
    .param p1, "customCommandsModelList"    # Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/CustomCommandsFragment;->setHasOptionsMenu(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    .line 74
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 114
    const v0, 0x7f0f0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    const v0, 0x7f0a01b2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    .local v0, "searchItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    .line 118
    .local v1, "searchView":Landroidx/appcompat/widget/SearchView;
    invoke-virtual {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 119
    .local v2, "iswatch":Z
    if-eqz v2, :cond_0

    .line 120
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    :cond_0
    if-eqz v1, :cond_1

    .line 123
    new-instance v3, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda15;

    invoke-direct {v3, p1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda15;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v3, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda16;

    invoke-direct {v3, p1}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda16;-><init>(Landroid/view/Menu;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V

    .line 128
    new-instance v3, Lcom/offsec/nethunter/CustomCommandsFragment$1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$1;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 141
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 142
    return-void

    .line 122
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 78
    const v0, 0x7f0d0037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 209
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->addButton:Landroid/widget/Button;

    .line 211
    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->deleteButton:Landroid/widget/Button;

    .line 212
    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->moveButton:Landroid/widget/Button;

    .line 213
    iput-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    .line 214
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 146
    iget-object v0, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 149
    .local v1, "id":I
    const v2, 0x7f0a01c7

    const-string v3, "OK"

    const-string v4, "Cancel"

    const v5, 0x7f14012e

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "%s/FragmentCustomCommands"

    const v9, 0x7f0a01b3

    const v10, 0x7f0a01b4

    const/4 v11, 0x0

    const v12, 0x7f0d0039

    if-ne v1, v2, :cond_0

    .line 150
    invoke-virtual {v0, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, "promptViewBackup":Landroid/view/View;
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 152
    .local v10, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 154
    .local v9, "storedpathEditText":Landroid/widget/EditText;
    const v11, 0x7f130105

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 155
    new-array v7, v7, [Ljava/lang/Object;

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v11, v7, v6

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v7, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v5, v6

    .line 157
    .local v5, "adbBackup":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 158
    new-instance v6, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda24;

    invoke-direct {v6}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v5, v4, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 159
    new-instance v4, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 160
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    .line 161
    .local v3, "adBackup":Landroidx/appcompat/app/AlertDialog;
    new-instance v4, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v3, v9}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 174
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 175
    .end local v2    # "promptViewBackup":Landroid/view/View;
    .end local v3    # "adBackup":Landroidx/appcompat/app/AlertDialog;
    .end local v5    # "adbBackup":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v9    # "storedpathEditText":Landroid/widget/EditText;
    .end local v10    # "titleTextView":Landroid/widget/TextView;
    goto :goto_1

    :cond_0
    const v2, 0x7f0a01c9

    if-ne v1, v2, :cond_1

    .line 176
    invoke-virtual {v0, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 177
    .local v2, "promptViewRestore":Landroid/view/View;
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 178
    .restart local v10    # "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 180
    .restart local v9    # "storedpathEditText":Landroid/widget/EditText;
    const v11, 0x7f130104

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 181
    new-array v7, v7, [Ljava/lang/Object;

    sget-object v11, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_SQLBACKUP_PATH:Ljava/lang/String;

    aput-object v11, v7, v6

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    new-instance v6, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v7, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v5, v6

    .line 183
    .local v5, "adbRestore":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v5, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 184
    new-instance v6, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v5, v4, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 185
    new-instance v4, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v5, v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 186
    invoke-virtual {v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v3

    .line 187
    .local v3, "adRestore":Landroidx/appcompat/app/AlertDialog;
    new-instance v4, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v3, v9}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 200
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog;->show()V

    .end local v2    # "promptViewRestore":Landroid/view/View;
    .end local v3    # "adRestore":Landroidx/appcompat/app/AlertDialog;
    .end local v5    # "adbRestore":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v9    # "storedpathEditText":Landroid/widget/EditText;
    .end local v10    # "titleTextView":Landroid/widget/TextView;
    goto :goto_0

    .line 201
    :cond_1
    const v2, 0x7f0a01c6

    if-ne v1, v2, :cond_2

    .line 202
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/offsec/nethunter/SQL/CustomCommandsSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/CustomCommandsSQL;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/RecyclerViewData/CustomCommandsData;->resetData(Lcom/offsec/nethunter/SQL/CustomCommandsSQL;)V

    goto :goto_1

    .line 201
    :cond_2
    :goto_0
    nop

    .line 204
    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;

    .line 86
    .local v0, "customCommandsViewModel":Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;
    iget-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->init(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0}, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->getLiveDataCustomCommandsModelList()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/CustomCommandsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CustomCommandsFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 89
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    iget-object v2, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/offsec/nethunter/viewmodels/CustomCommandsViewModel;->getLiveDataCustomCommandsModelList()Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    .line 90
    const v1, 0x7f0a01ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->context:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 92
    .local v2, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->customCommandsRecyclerViewAdapter:Lcom/offsec/nethunter/RecyclerViewAdapter/CustomCommandsRecyclerViewAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 95
    const v3, 0x7f0a01b5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->addButton:Landroid/widget/Button;

    .line 96
    const v3, 0x7f0a01bf

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->deleteButton:Landroid/widget/Button;

    .line 97
    const v3, 0x7f0a01ca

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->moveButton:Landroid/widget/Button;

    .line 98
    const v3, 0x7f0a01bd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 100
    .local v3, "customBanner":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->onAddItemSetup()V

    .line 101
    invoke-direct {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->onDeleteItemSetup()V

    .line 102
    invoke-direct {p0}, Lcom/offsec/nethunter/CustomCommandsFragment;->onMoveItemSetup()V

    .line 105
    iget-object v4, p0, Lcom/offsec/nethunter/CustomCommandsFragment;->activity:Landroid/app/Activity;

    const-string v6, "com.offsec.nethunter"

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 106
    .local v4, "sharedpreferences":Landroid/content/SharedPreferences;
    const-string v6, "running_on_wearos"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 107
    .local v5, "iswatch":Z
    if-eqz v5, :cond_0

    .line 108
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_0
    return-void
.end method
