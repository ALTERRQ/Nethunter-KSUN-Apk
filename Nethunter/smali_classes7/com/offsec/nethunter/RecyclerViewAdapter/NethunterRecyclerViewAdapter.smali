.class public Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NethunterRecyclerViewAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NethunterRecyclerView"


# instance fields
.field private final NethunterModelListFilter:Landroid/widget/Filter;

.field private final context:Landroid/content/Context;

.field private final nethunterModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/NethunterModel;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p2, "nethunterModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/NethunterModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 155
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->NethunterModelListFilter:Landroid/widget/Filter;

    .line 38
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    .line 40
    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 1
    .param p0, "position"    # I
    .param p1, "v"    # Landroid/view/View;

    .line 55
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->runCommandforItem(I)V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 71
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$3(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 81
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$5(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 91
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$7(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 110
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->NethunterModelListFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 147
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method synthetic lambda$onBindViewHolder$10$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(ILandroid/view/View;)Z
    .locals 22
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 57
    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v10, 0x0

    .line 58
    .local v10, "nullParent":Landroid/view/ViewGroup;
    iget-object v0, v8, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/LayoutInflater;

    .line 59
    .local v11, "mInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d00a9

    invoke-virtual {v11, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 60
    .local v12, "promptViewEdit":Landroid/view/View;
    const v0, 0x7f0a0227

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/EditText;

    .line 61
    .local v13, "titleEditText":Landroid/widget/EditText;
    const v0, 0x7f0a0225

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/EditText;

    .line 62
    .local v14, "cmdEditText":Landroid/widget/EditText;
    const v0, 0x7f0a0226

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/EditText;

    .line 63
    .local v15, "delimiterEditText":Landroid/widget/EditText;
    const v0, 0x7f0a023d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/CheckBox;

    .line 64
    .local v7, "runOnCreateCheckbox":Landroid/widget/CheckBox;
    const v0, 0x7f0a0228

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 65
    .local v6, "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a0229

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 66
    .local v5, "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a022a

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 67
    .local v4, "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V

    invoke-virtual {v6, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V

    invoke-virtual {v5, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v0, v8}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;)V

    invoke-virtual {v4, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    .line 97
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v2, v8, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    .line 98
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 97
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    .line 98
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    .line 100
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v2, v8, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    .line 101
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    .line 101
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getCommand()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    .line 103
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v2, v8, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    .line 104
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 103
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 102
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    .line 104
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    .line 106
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v2, v8, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    .line 107
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 106
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/NethunterModel;

    .line 107
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/NethunterModel;->getRunOnCreate()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, v8, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v3, v0

    .line 110
    .local v3, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "Apply"

    invoke-virtual {v3, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 111
    invoke-virtual {v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 112
    .local v2, "ad":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v2, v12}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 114
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda8;

    move-object v0, v1

    move-object v8, v1

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    .end local v2    # "ad":Landroidx/appcompat/app/AlertDialog;
    .local v16, "ad":Landroidx/appcompat/app/AlertDialog;
    move-object/from16 v17, v3

    .end local v3    # "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .local v17, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    move-object v3, v13

    move-object/from16 v18, v4

    .end local v4    # "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v18, "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v4, v14

    move-object/from16 v19, v5

    .end local v5    # "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v19, "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v5, v15

    move-object/from16 v20, v6

    .end local v6    # "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v20, "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v6, v7

    move-object/from16 v21, v7

    .end local v7    # "runOnCreateCheckbox":Landroid/widget/CheckBox;
    .local v21, "runOnCreateCheckbox":Landroid/widget/CheckBox;
    move/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;I)V

    move-object/from16 v0, v16

    .end local v16    # "ad":Landroidx/appcompat/app/AlertDialog;
    .local v0, "ad":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 135
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 136
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$onBindViewHolder$2$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 68
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 69
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 70
    const v3, 0x7f130241

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>()V

    .line 71
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 72
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 73
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 74
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 75
    return-void
.end method

.method synthetic lambda$onBindViewHolder$4$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 78
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 80
    const v3, 0x7f130242

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>()V

    .line 81
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 83
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 84
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 85
    return-void
.end method

.method synthetic lambda$onBindViewHolder$6$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 88
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 89
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 90
    const v3, 0x7f130243

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda3;-><init>()V

    .line 91
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 93
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 94
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 95
    return-void
.end method

.method synthetic lambda$onBindViewHolder$8$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "titleEditText"    # Landroid/widget/EditText;
    .param p2, "cmdEditText"    # Landroid/widget/EditText;
    .param p3, "delimiterEditText"    # Landroid/widget/EditText;
    .param p4, "runOnCreateCheckbox"    # Landroid/widget/CheckBox;
    .param p5, "position"    # I
    .param p6, "ad"    # Landroidx/appcompat/app/AlertDialog;
    .param p7, "v1"    # Landroid/view/View;

    .line 117
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "Title cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "Command cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "Delimiter cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 124
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v0, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    goto :goto_0

    :cond_3
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v1

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/NethunterData;

    move-result-object v2

    iget-object v2, v2, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->nethunterModelListFull:Ljava/util/List;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    .line 130
    invoke-interface {v3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 129
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 130
    invoke-static {v3}, Lcom/offsec/nethunter/SQL/NethunterSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/NethunterSQL;

    move-result-object v3

    .line 129
    invoke-virtual {v1, v2, v0, v3}, Lcom/offsec/nethunter/RecyclerViewData/NethunterData;->editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/NethunterSQL;)V

    .line 131
    invoke-virtual {p6}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 133
    .end local v0    # "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void
.end method

.method synthetic lambda$onBindViewHolder$9$com-offsec-nethunter-RecyclerViewAdapter-NethunterRecyclerViewAdapter(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroid/content/DialogInterface;)V
    .locals 11
    .param p1, "ad"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "titleEditText"    # Landroid/widget/EditText;
    .param p3, "cmdEditText"    # Landroid/widget/EditText;
    .param p4, "delimiterEditText"    # Landroid/widget/EditText;
    .param p5, "runOnCreateCheckbox"    # Landroid/widget/CheckBox;
    .param p6, "position"    # I
    .param p7, "dialog"    # Landroid/content/DialogInterface;

    .line 115
    const/4 v0, -0x1

    move-object v9, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 116
    .local v0, "buttonEdit":Landroid/widget/Button;
    new-instance v10, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .line 51
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/NethunterModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 53
    .local v0, "linearLayoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->access$200(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->access$200(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->nethunterModelList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/offsec/nethunter/models/NethunterModel;

    invoke-virtual {v4}, Lcom/offsec/nethunter/models/NethunterModel;->getResult()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapterResult;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 55
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->access$300(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;->access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$$ExternalSyntheticLambda10;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 138
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 45
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/NethunterRecyclerViewAdapter$1;)V

    return-object v1
.end method
