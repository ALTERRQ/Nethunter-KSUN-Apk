.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/offsec/nethunter/CARsenalFragment$RootFileBrowserDialog$OnFileSelectedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onFileSelected(Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANCARIBOUFragment$$ExternalSyntheticLambda0;->f$0:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
