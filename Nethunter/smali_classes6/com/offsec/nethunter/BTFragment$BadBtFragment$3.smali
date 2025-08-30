.class Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;
.super Ljava/lang/Object;
.source "BTFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/BTFragment$BadBtFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

.field final synthetic val$BadBTUACView:Landroid/view/View;

.field final synthetic val$badbtpresets_uac:Landroid/widget/Spinner;

.field final synthetic val$presets_uac:Ljava/util/ArrayList;

.field final synthetic val$uacCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/view/View;Landroid/widget/CheckBox;Ljava/util/ArrayList;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1252
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    iput-object p3, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

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

    .line 1255
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$302(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1256
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-static {v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->access$300(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "None"

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "Mac Terminal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "Mobile Browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "Mobile Home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "Linux Terminal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v1, "Windows CMD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v1, 0x1090003

    const/16 v4, 0x8

    const-string v5, "-"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1298
    :pswitch_0
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v5, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    .line 1300
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1301
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1302
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {v3}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1304
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v5, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    goto/16 :goto_2

    .line 1289
    :pswitch_1
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1290
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v4, "linux"

    iput-object v4, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    .line 1291
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1292
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1293
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {v3}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1295
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v5, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    .line 1296
    goto/16 :goto_2

    .line 1280
    :pswitch_2
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v4, "mac"

    iput-object v4, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1283
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1284
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {v3}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1286
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v5, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    .line 1287
    goto :goto_2

    .line 1276
    :pswitch_3
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v1, "windows"

    iput-object v1, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    .line 1278
    goto :goto_2

    .line 1267
    :pswitch_4
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v4, "mobilewww"

    iput-object v4, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    .line 1269
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1270
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1271
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1272
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {v3}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1273
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v5, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    .line 1274
    goto :goto_2

    .line 1258
    :pswitch_5
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$BadBTUACView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    const-string v4, "mobile"

    iput-object v4, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    .line 1260
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$uacCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1261
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1262
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$badbtpresets_uac:Landroid/widget/Spinner;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    invoke-virtual {v3}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->val$presets_uac:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1264
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;->this$0:Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    iput-object v5, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    .line 1265
    nop

    .line 1307
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x29821e23 -> :sswitch_5
        0x252358 -> :sswitch_4
        0x4dd2468 -> :sswitch_3
        0x118f859d -> :sswitch_2
        0x54acf9aa -> :sswitch_1
        0x797d0e6d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
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

    .line 1310
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
