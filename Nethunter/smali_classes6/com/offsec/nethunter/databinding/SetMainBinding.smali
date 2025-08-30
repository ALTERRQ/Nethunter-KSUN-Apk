.class public abstract Lcom/offsec/nethunter/databinding/SetMainBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SetMainBinding.java"


# instance fields
.field public final divider:Landroid/view/View;

.field public final divider4:Landroid/view/View;

.field public final mybrowser:Landroid/webkit/WebView;

.field public final refreshPreview:Landroid/widget/Button;

.field public final resetTemplate:Landroid/widget/Button;

.field public final saveTemplate:Landroid/widget/Button;

.field public final setLink:Landroid/widget/EditText;

.field public final setName:Landroid/widget/EditText;

.field public final setPic:Landroid/widget/EditText;

.field public final setSubject:Landroid/widget/EditText;

.field public final setTemplate:Landroid/widget/Spinner;

.field public final startSet:Landroid/widget/Button;

.field public final textView12:Landroid/widget/TextView;

.field public final textView18:Landroid/widget/TextView;

.field public final textView6:Landroid/widget/TextView;

.field public final textView7:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Landroid/webkit/WebView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "divider"    # Landroid/view/View;
    .param p5, "divider4"    # Landroid/view/View;
    .param p6, "mybrowser"    # Landroid/webkit/WebView;
    .param p7, "refreshPreview"    # Landroid/widget/Button;
    .param p8, "resetTemplate"    # Landroid/widget/Button;
    .param p9, "saveTemplate"    # Landroid/widget/Button;
    .param p10, "setLink"    # Landroid/widget/EditText;
    .param p11, "setName"    # Landroid/widget/EditText;
    .param p12, "setPic"    # Landroid/widget/EditText;
    .param p13, "setSubject"    # Landroid/widget/EditText;
    .param p14, "setTemplate"    # Landroid/widget/Spinner;
    .param p15, "startSet"    # Landroid/widget/Button;
    .param p16, "textView12"    # Landroid/widget/TextView;
    .param p17, "textView18"    # Landroid/widget/TextView;
    .param p18, "textView6"    # Landroid/widget/TextView;
    .param p19, "textView7"    # Landroid/widget/TextView;

    .line 74
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 75
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->divider:Landroid/view/View;

    .line 76
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->divider4:Landroid/view/View;

    .line 77
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->mybrowser:Landroid/webkit/WebView;

    .line 78
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->refreshPreview:Landroid/widget/Button;

    .line 79
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->resetTemplate:Landroid/widget/Button;

    .line 80
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->saveTemplate:Landroid/widget/Button;

    .line 81
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setLink:Landroid/widget/EditText;

    .line 82
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setName:Landroid/widget/EditText;

    .line 83
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setPic:Landroid/widget/EditText;

    .line 84
    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setSubject:Landroid/widget/EditText;

    .line 85
    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->setTemplate:Landroid/widget/Spinner;

    .line 86
    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->startSet:Landroid/widget/Button;

    .line 87
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->textView12:Landroid/widget/TextView;

    .line 88
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->textView18:Landroid/widget/TextView;

    .line 89
    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->textView6:Landroid/widget/TextView;

    .line 90
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/offsec/nethunter/databinding/SetMainBinding;->textView7:Landroid/widget/TextView;

    .line 91
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 133
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/offsec/nethunter/databinding/SetMainBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    const v0, 0x7f0d00da

    invoke-static {p1, p0, v0}, Lcom/offsec/nethunter/databinding/SetMainBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/databinding/SetMainBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 115
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/offsec/nethunter/databinding/SetMainBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/offsec/nethunter/databinding/SetMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .param p3, "component"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    const v0, 0x7f0d00da

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/databinding/SetMainBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/offsec/nethunter/databinding/SetMainBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d00da

    invoke-static {p0, v2, v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/offsec/nethunter/databinding/SetMainBinding;

    return-object v0
.end method
