.class public Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "KaliServicesRecyclerViewAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KaliServiceRecycleView"


# instance fields
.field private final KaliServicesModelListFilter:Landroid/widget/Filter;

.field private final context:Landroid/content/Context;

.field private final kaliServicesModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
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
            "Lcom/offsec/nethunter/models/KaliServicesModel;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p2, "kaliServicesModelList":Ljava/util/List;, "Ljava/util/List<Lcom/offsec/nethunter/models/KaliServicesModel;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 203
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    iput-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->KaliServicesModelListFilter:Landroid/widget/Filter;

    .line 44
    iput-object p1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;

    .line 38
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic lambda$onBindViewHolder$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 81
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$2(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 91
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 101
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$6(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 111
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$8(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 135
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->KaliServicesModelListFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 195
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method synthetic lambda$onBindViewHolder$1$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 78
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 80
    const v3, 0x7f130170

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda6;-><init>()V

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

.method synthetic lambda$onBindViewHolder$10$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroid/content/DialogInterface;)V
    .locals 12
    .param p1, "adEdit"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "titleEditText"    # Landroid/widget/EditText;
    .param p3, "startCmdEditText"    # Landroid/widget/EditText;
    .param p4, "stopCmdEditText"    # Landroid/widget/EditText;
    .param p5, "checkstatusCmdEditText"    # Landroid/widget/EditText;
    .param p6, "runOnChrootStartCheckbox"    # Landroid/widget/CheckBox;
    .param p7, "position"    # I
    .param p8, "dialog"    # Landroid/content/DialogInterface;

    .line 138
    const/4 v0, -0x1

    move-object v10, p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 139
    .local v0, "buttonEdit":Landroid/widget/Button;
    new-instance v11, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda4;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method synthetic lambda$onBindViewHolder$11$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(ILandroid/view/View;)Z
    .locals 26
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 64
    move-object/from16 v9, p0

    move/from16 v10, p1

    const/4 v11, 0x0

    .line 65
    .local v11, "nullParent":Landroid/view/ViewGroup;
    iget-object v0, v9, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/LayoutInflater;

    .line 66
    .local v12, "mInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0d0062

    invoke-virtual {v12, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 67
    .local v13, "promptViewEdit":Landroid/view/View;
    const v0, 0x7f0a01ed

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/EditText;

    .line 68
    .local v14, "titleEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01eb

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/EditText;

    .line 69
    .local v15, "startCmdEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01ec

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/EditText;

    .line 70
    .local v8, "stopCmdEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01ea

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 71
    .local v7, "checkstatusCmdEditText":Landroid/widget/EditText;
    const v0, 0x7f0a01e9

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/CheckBox;

    .line 72
    .local v6, "runOnChrootStartCheckbox":Landroid/widget/CheckBox;
    const v0, 0x7f0a01ee

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 73
    .local v5, "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a01ef

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 74
    .local v4, "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a01f0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 75
    .local v3, "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    const v0, 0x7f0a01f1

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 77
    .local v2, "readmeButton4":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v0, v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda11;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    invoke-virtual {v5, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda12;

    invoke-direct {v0, v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda12;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    invoke-virtual {v4, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v0, v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda13;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    invoke-virtual {v3, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, v9}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;)V

    invoke-virtual {v2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 118
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    move-object/from16 v16, v2

    .end local v2    # "readmeButton4":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v16, "readmeButton4":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    iget-object v2, v9, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    .line 119
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 119
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 121
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, v9, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    .line 122
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 120
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 122
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v15, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 124
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, v9, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    .line 125
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 124
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 125
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStopService()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 127
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, v9, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    .line 128
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 128
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforCheckServiceStatus()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    iget-object v0, v0, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    .line 130
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v1, v1, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v2, v9, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    .line 131
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 130
    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 129
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/models/KaliServicesModel;

    .line 131
    invoke-virtual {v0}, Lcom/offsec/nethunter/models/KaliServicesModel;->getRunOnChrootStart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 129
    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 132
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, v9, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    move-object v2, v0

    .line 133
    .local v2, "adbEdit":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    invoke-virtual {v2, v13}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 134
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 135
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "OK"

    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 136
    invoke-virtual {v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 137
    .local v1, "adEdit":Landroidx/appcompat/app/AlertDialog;
    new-instance v0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda3;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    .end local v1    # "adEdit":Landroidx/appcompat/app/AlertDialog;
    .local v18, "adEdit":Landroidx/appcompat/app/AlertDialog;
    move-object/from16 v1, p0

    move-object/from16 v19, v2

    .end local v2    # "adbEdit":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .local v19, "adbEdit":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    move-object/from16 v2, v18

    move-object/from16 v20, v3

    .end local v3    # "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v20, "readmeButton3":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v3, v14

    move-object/from16 v21, v4

    .end local v4    # "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v21, "readmeButton2":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v4, v15

    move-object/from16 v22, v5

    .end local v5    # "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .local v22, "readmeButton1":Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    move-object v5, v8

    move-object/from16 v23, v6

    .end local v6    # "runOnChrootStartCheckbox":Landroid/widget/CheckBox;
    .local v23, "runOnChrootStartCheckbox":Landroid/widget/CheckBox;
    move-object v6, v7

    move-object/from16 v24, v7

    .end local v7    # "checkstatusCmdEditText":Landroid/widget/EditText;
    .local v24, "checkstatusCmdEditText":Landroid/widget/EditText;
    move-object/from16 v7, v23

    move-object/from16 v25, v8

    .end local v8    # "stopCmdEditText":Landroid/widget/EditText;
    .local v25, "stopCmdEditText":Landroid/widget/EditText;
    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroidx/appcompat/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;I)V

    move-object/from16 v1, v17

    move-object/from16 v0, v18

    .end local v18    # "adEdit":Landroidx/appcompat/app/AlertDialog;
    .local v0, "adEdit":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 161
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 162
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$onBindViewHolder$12$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(ILandroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStartService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforStopService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getCommandforCheckServiceStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    if-eqz p3, :cond_0

    .line 172
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_0
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->updateRunOnChrootStartServices(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 177
    return-void
.end method

.method synthetic lambda$onBindViewHolder$13$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;ILandroid/view/View;)V
    .locals 3
    .param p1, "itemViewHolder"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;
    .param p2, "position"    # I
    .param p3, "v"    # Landroid/view/View;

    .line 180
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$300(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$300(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, p2, v1, v2}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->startServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v0

    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$300(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, p2, v1, v2}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->stopServiceforItem(ILandroidx/appcompat/widget/SwitchCompat;Landroid/content/Context;)V

    .line 185
    :goto_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$3$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 88
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 89
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 90
    const v3, 0x7f130171

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>()V

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

.method synthetic lambda$onBindViewHolder$5$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 98
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 99
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 100
    const v3, 0x7f13016e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda5;-><init>()V

    .line 101
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 103
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 104
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 105
    return-void
.end method

.method synthetic lambda$onBindViewHolder$7$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 108
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 109
    .local v0, "adb":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "HOW TO USE:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 110
    const v3, 0x7f13016f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda10;-><init>()V

    .line 111
    const-string v3, "Close"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 113
    .local v1, "ad":Landroidx/appcompat/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 114
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 115
    return-void
.end method

.method synthetic lambda$onBindViewHolder$9$com-offsec-nethunter-RecyclerViewAdapter-KaliServicesRecyclerViewAdapter(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;ILandroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 4
    .param p1, "titleEditText"    # Landroid/widget/EditText;
    .param p2, "startCmdEditText"    # Landroid/widget/EditText;
    .param p3, "stopCmdEditText"    # Landroid/widget/EditText;
    .param p4, "checkstatusCmdEditText"    # Landroid/widget/EditText;
    .param p5, "runOnChrootStartCheckbox"    # Landroid/widget/CheckBox;
    .param p6, "position"    # I
    .param p7, "adEdit"    # Landroidx/appcompat/app/AlertDialog;
    .param p8, "v1"    # Landroid/view/View;

    .line 140
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "Title cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "Start Command cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 144
    :cond_1
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "Stop Command cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    :cond_2
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    const-string v1, "String cannot be empty"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v0, "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {p5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    goto :goto_0

    :cond_4
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v1

    invoke-static {}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->getInstance()Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;

    move-result-object v2

    iget-object v2, v2, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->kaliServicesModelListFull:Ljava/util/List;

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    .line 156
    invoke-interface {v3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 155
    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 156
    invoke-static {v3}, Lcom/offsec/nethunter/SQL/KaliServicesSQL;->getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/KaliServicesSQL;

    move-result-object v3

    .line 155
    invoke-virtual {v1, v2, v0, v3}, Lcom/offsec/nethunter/RecyclerViewData/KaliServicesData;->editData(ILjava/util/List;Lcom/offsec/nethunter/SQL/KaliServicesSQL;)V

    .line 157
    invoke-virtual {p7}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 159
    .end local v0    # "dataArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;I)V
    .locals 5
    .param p1, "itemViewHolder"    # Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;
    .param p2, "position"    # I

    .line 57
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v1}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 58
    .local v0, "tempStatusTextView":Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[+]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, -0xff0100

    goto :goto_0

    :cond_0
    const-string v2, "#D81B60"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 59
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$200(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getRunOnChrootStart()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$300(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->kaliServicesModelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/offsec/nethunter/models/KaliServicesModel;

    invoke-virtual {v2}, Lcom/offsec/nethunter/models/KaliServicesModel;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 62
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$400(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$100(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$200(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    invoke-static {p1}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;->access$300(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v1

    new-instance v2, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$$ExternalSyntheticLambda9;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;I)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .line 51
    iget-object v0, p0, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$ItemViewHolder;-><init>(Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter;Landroid/view/View;Lcom/offsec/nethunter/RecyclerViewAdapter/KaliServicesRecyclerViewAdapter$1;)V

    return-object v1
.end method
