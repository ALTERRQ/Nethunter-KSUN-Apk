.class Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ModulesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field autoLoadCheckBox:Landroid/widget/CheckBox;

.field statusIcon:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/offsec/nethunter/ModulesFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/offsec/nethunter/ModulesFragment$1;

    .line 567
    invoke-direct {p0}, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$ViewHolder;-><init>()V

    return-void
.end method
