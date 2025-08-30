.class Lcom/offsec/nethunter/SETFragment$MainFragment$1;
.super Ljava/lang/Object;
.source "SETFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SETFragment$MainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

.field final synthetic val$PhishName:Landroid/widget/EditText;

.field final synthetic val$PhishSubject:Landroid/widget/EditText;

.field final synthetic val$myBrowser:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SETFragment$MainFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/SETFragment$MainFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishSubject:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishName:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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

    .line 188
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$102(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$100(Lcom/offsec/nethunter/SETFragment$MainFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "Twitter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "Messenger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "Facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/configs/set-twitter.html"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$202(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    const-string v1, "set-twitter.html"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$302(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishSubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "{0} sent you a Direct Message on Twitter!"

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/configs/set-facebook.html"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$202(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    const-string v1, "set-facebook.html"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$302(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishSubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "{0} sent you a message on Facebook."

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    goto :goto_2

    .line 191
    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/configs/set-messenger.html"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$202(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    const-string v1, "set-messenger.html"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$302(Lcom/offsec/nethunter/SETFragment$MainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishSubject:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$PhishName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "{0} sent you a message on Messenger."

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    nop

    .line 206
    :goto_2
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 207
    iget-object v0, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/offsec/nethunter/SETFragment$MainFragment$1;->this$0:Lcom/offsec/nethunter/SETFragment$MainFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/SETFragment$MainFragment;->access$200(Lcom/offsec/nethunter/SETFragment$MainFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 208
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x217bfee6 -> :sswitch_2
        0x21d8daf3 -> :sswitch_1
        0x2c9a4253 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 211
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
