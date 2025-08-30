.class Lcom/offsec/nethunter/VNCFragment$5;
.super Ljava/lang/Object;
.source "VNCFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/VNCFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/VNCFragment;

.field final synthetic val$sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/VNCFragment;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/VNCFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$5;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 342
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/VNCFragment;->access$502(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/VNCFragment;->access$500(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/VNCFragment;->access$500(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-geometry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/VNCFragment;->access$500(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/VNCFragment;->access$602(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 344
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/offsec/nethunter/VNCFragment;->access$602(Lcom/offsec/nethunter/VNCFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    :goto_1
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_kex_res"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 349
    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$5;->val$sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment$5;->this$0:Lcom/offsec/nethunter/VNCFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/VNCFragment;->access$500(Lcom/offsec/nethunter/VNCFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_kex_res_string"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 353
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
