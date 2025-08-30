.class Lcom/offsec/nethunter/WifipumpkinFragment$1;
.super Ljava/lang/Object;
.source "WifipumpkinFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/WifipumpkinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

.field final synthetic val$PreviewCheckbox:Landroid/widget/CheckBox;

.field final synthetic val$TemplateString:[Ljava/lang/String;

.field final synthetic val$myBrowser:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/WifipumpkinFragment;Landroid/widget/CheckBox;[Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/WifipumpkinFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$PreviewCheckbox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$TemplateString:[Ljava/lang/String;

    iput-object p4, p0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
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

    .line 134
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p0

    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    move-object v2, p1

    move/from16 v3, p3

    invoke-virtual {p1, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$002(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$000(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "None"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$PreviewCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$PreviewCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 138
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$TemplateString:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v1, v4

    goto/16 :goto_1

    .line 140
    :cond_0
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$PreviewCheckbox:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 141
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$000(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "FlaskDemo"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "/templates/login.html"

    const-string v7, "/nh_files/templates/"

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {v9}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$000(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/templates/En/templates/login.html"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$102(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_PATH()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {v9}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$000(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$102(Lcom/offsec/nethunter/WifipumpkinFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    :goto_0
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 147
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 148
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 149
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 151
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 152
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    new-instance v8, Landroid/webkit/WebViewClient;

    invoke-direct {v8}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 153
    iget-object v1, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 154
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "externalStoragePath":Ljava/lang/String;
    iget-object v8, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {v9}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$000(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/static"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v5, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$100(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "UTF-8"

    const/4 v13, 0x0

    const-string v11, "text/html"

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v5, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$myBrowser:Landroid/webkit/WebView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {v8}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$000(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 157
    iget-object v5, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->val$TemplateString:[Ljava/lang/String;

    iget-object v6, v0, Lcom/offsec/nethunter/WifipumpkinFragment$1;->this$0:Lcom/offsec/nethunter/WifipumpkinFragment;

    invoke-static {v6}, Lcom/offsec/nethunter/WifipumpkinFragment;->access$000(Lcom/offsec/nethunter/WifipumpkinFragment;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 159
    .end local v1    # "externalStoragePath":Ljava/lang/String;
    :goto_1
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

    .line 162
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
