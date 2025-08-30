.class Lcom/offsec/nethunter/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SettingsFragment;

.field final synthetic val$animation_dir:[Ljava/lang/String;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SettingsFragment;Landroid/view/View;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/SettingsFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->val$rootView:Landroid/view/View;

    iput-object p3, p0, Lcom/offsec/nethunter/SettingsFragment$2;->val$animation_dir:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$2;->val$rootView:Landroid/view/View;

    const v1, 0x7f0a0517

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    .line 189
    .local v0, "videoview":Landroid/widget/VideoView;
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/offsec/nethunter/SettingsFragment;->access$002(Lcom/offsec/nethunter/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v1}, Lcom/offsec/nethunter/SettingsFragment;->access$000(Lcom/offsec/nethunter/SettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "Glitch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "Burning"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "New Kali"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "ctOS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "Classic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "/"

    const-string v4, "android.resource://"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 232
    :pswitch_0
    const/4 v1, 0x0

    .line 233
    .local v1, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f120002

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 237
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->val$animation_dir:[Ljava/lang/String;

    const-string v4, "src_glitch"

    aput-object v4, v2, v3

    .line 238
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/SettingsFragment;->access$200(Lcom/offsec/nethunter/SettingsFragment;)V

    .line 239
    goto/16 :goto_2

    .line 222
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_1
    const/4 v1, 0x0

    .line 223
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f120001

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 227
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->val$animation_dir:[Ljava/lang/String;

    const-string v4, "src_ctos"

    aput-object v4, v2, v3

    .line 228
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/SettingsFragment;->access$200(Lcom/offsec/nethunter/SettingsFragment;)V

    .line 229
    goto/16 :goto_2

    .line 212
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    .line 213
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f120003

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 217
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->val$animation_dir:[Ljava/lang/String;

    const-string v4, "src_kali"

    aput-object v4, v2, v3

    .line 218
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/SettingsFragment;->access$200(Lcom/offsec/nethunter/SettingsFragment;)V

    .line 219
    goto/16 :goto_2

    .line 202
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_3
    const/4 v1, 0x0

    .line 203
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f120004

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 207
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->val$animation_dir:[Ljava/lang/String;

    const-string v4, "src_mk"

    aput-object v4, v2, v3

    .line 208
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/SettingsFragment;->access$200(Lcom/offsec/nethunter/SettingsFragment;)V

    .line 209
    goto :goto_2

    .line 192
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_4
    const/4 v1, 0x0

    .line 193
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v5}, Lcom/offsec/nethunter/SettingsFragment;->access$100(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v4, 0x7f120000

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_5
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 197
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->val$animation_dir:[Ljava/lang/String;

    const-string v4, "src"

    aput-object v4, v2, v3

    .line 198
    iget-object v2, p0, Lcom/offsec/nethunter/SettingsFragment$2;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {v2}, Lcom/offsec/nethunter/SettingsFragment;->access$200(Lcom/offsec/nethunter/SettingsFragment;)V

    .line 199
    nop

    .line 242
    .end local v1    # "path":Ljava/lang/String;
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69e62f8e -> :sswitch_4
        0x2ebe15 -> :sswitch_3
        0x52684013 -> :sswitch_2
        0x717c5793 -> :sswitch_1
        0x7f4b7955 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
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

    .line 246
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
