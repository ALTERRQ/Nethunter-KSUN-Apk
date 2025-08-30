.class public Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootFileBrowserDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final listener:Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;

    .line 2974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2967
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 2975
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->context:Landroid/content/Context;

    .line 2976
    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->listener:Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;

    .line 2977
    return-void
.end method

.method private goUp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 3037
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 3039
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 3040
    .local v0, "newPath":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 3041
    .local v2, "lastSlash":I
    if-ltz v2, :cond_2

    .line 3042
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3044
    :cond_2
    const-string v0, "/"

    .line 3046
    :goto_1
    return-object v0
.end method

.method static synthetic lambda$showDirectory$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 3006
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showDirectory$2(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 2
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 3011
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 3012
    .local v0, "cancelButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 3013
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 3015
    :cond_0
    return-void
.end method

.method private loadDirectory(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3022
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls -p "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsChrootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3024
    .local v1, "output":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3025
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3026
    .local v2, "lines":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 3027
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3028
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3029
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3026
    .end local v5    # "line":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3033
    .end local v2    # "lines":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private showDirectory(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 2985
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->loadDirectory(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2987
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2988
    const-string v1, ".."

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2991
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 2993
    .local v1, "itemArray":[Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2994
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const-string v3, "Select File"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2995
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3006
    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$$ExternalSyntheticLambda1;-><init>()V

    const-string v4, "Cancel"

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3008
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 3010
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$$ExternalSyntheticLambda2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 3017
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3018
    return-void
.end method


# virtual methods
.method synthetic lambda$showDirectory$0$com-offsec-nethunter-CARsenalFragment$RootFileBrowserDialog([Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "itemArray"    # [Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 2996
    aget-object v0, p1, p4

    .line 2997
    .local v0, "selectedItem":Ljava/lang/String;
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2998
    invoke-direct {p0, p2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->goUp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2999
    .local v1, "parentPath":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->showDirectory(Ljava/lang/String;)V

    .line 3000
    .end local v1    # "parentPath":Ljava/lang/String;
    goto :goto_0

    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->showDirectory(Ljava/lang/String;)V

    goto :goto_0

    .line 3003
    :cond_1
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->listener:Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;->onFileSelected(Ljava/lang/String;)V

    .line 3005
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 2980
    const-string v0, "/"

    .line 2981
    .local v0, "currentPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog;->showDirectory(Ljava/lang/String;)V

    .line 2982
    return-void
.end method
