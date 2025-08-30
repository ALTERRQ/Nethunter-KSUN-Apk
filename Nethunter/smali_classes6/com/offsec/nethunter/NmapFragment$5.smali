.class Lcom/offsec/nethunter/NmapFragment$5;
.super Ljava/lang/Object;
.source "NmapFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/NmapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/NmapFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/NmapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/NmapFragment;

    .line 395
    iput-object p1, p0, Lcom/offsec/nethunter/NmapFragment$5;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/offsec/nethunter/NmapFragment$5;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/NmapFragment;->access$700(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->access$100(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/offsec/nethunter/NmapFragment$5;->this$0:Lcom/offsec/nethunter/NmapFragment;

    iget-object v2, p0, Lcom/offsec/nethunter/NmapFragment$5;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/NmapFragment;->access$800(Lcom/offsec/nethunter/NmapFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/offsec/nethunter/NmapFragment;->access$702(Lcom/offsec/nethunter/NmapFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/NmapFragment$5;->this$0:Lcom/offsec/nethunter/NmapFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/NmapFragment;->access$700(Lcom/offsec/nethunter/NmapFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nethunter/NmapFragment;->access$200(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 399
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 403
    return-void
.end method
