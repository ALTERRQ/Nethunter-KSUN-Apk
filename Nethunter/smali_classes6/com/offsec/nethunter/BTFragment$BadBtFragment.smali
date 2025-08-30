.class public Lcom/offsec/nethunter/BTFragment$BadBtFragment;
.super Lcom/offsec/nethunter/BTFragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/BTFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadBtFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field prefixCMD:Ljava/lang/String;

.field private selected_badbt_class:Ljava/lang/String;

.field private selected_badbtmode:Ljava/lang/String;

.field private selected_prefix:Ljava/lang/String;

.field private selected_preset:Ljava/lang/String;

.field private selected_preset_uac:Ljava/lang/String;

.field uacCMD:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1072
    invoke-direct {p0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    .line 1079
    const-string v0, ""

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    .line 1080
    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    .line 1081
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    .line 1072
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_prefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1072
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_prefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    .line 1072
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_badbtmode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1072
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_badbtmode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    .line 1072
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_preset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1072
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_preset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;

    .line 1072
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_preset_uac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment$BadBtFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1072
    iput-object p1, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_preset_uac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic lambda$onCreateView$6(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 1408
    return-void
.end method

.method private refresh_badbt(Landroid/view/View;)V
    .locals 5
    .param p1, "BTFragment"    # Landroid/view/View;

    .line 1419
    const v0, 0x7f0a000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1420
    .local v0, "BadBTServerStatus":Landroid/widget/TextView;
    const v1, 0x7f0a00a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1421
    .local v1, "badbtserverButton":Landroid/widget/Button;
    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->context:Landroid/content/Context;

    const-string v3, "com.offsec.nethunter"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1423
    .local v2, "sharedpreferences":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0, v0, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1434
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$1$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "v"    # Landroid/view/View;

    .line 1177
    invoke-direct {p0, p1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$2$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/view/View;Landroid/view/View;)V
    .locals 12
    .param p1, "badbtServerButton"    # Landroid/widget/Button;
    .param p2, "badbt_name"    # Landroid/widget/EditText;
    .param p3, "badbt_interface"    # Landroid/widget/EditText;
    .param p4, "badbt_bdaddr"    # Landroid/widget/EditText;
    .param p5, "badbt_class"    # Landroid/widget/EditText;
    .param p6, "sharedpreferences"    # Landroid/content/SharedPreferences;
    .param p7, "rootView"    # Landroid/view/View;
    .param p8, "v"    # Landroid/view/View;

    .line 1184
    move-object v0, p0

    move-object/from16 v1, p7

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "Start"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1185
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1186
    .local v2, "BadBT_name":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1187
    .local v3, "BadBT_iface":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1188
    .local v4, "BadBT_bdaddr":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1189
    .local v5, "BadBT_class":Ljava/lang/String;
    iget-object v6, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/bootkali custom_cmd service dbus status | grep dbus"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1190
    .local v6, "dbus_statusCMD":Ljava/lang/String;
    iget-object v7, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/bootkali custom_cmd service bluetooth status | grep bluetooth"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1191
    .local v7, "bt_statusCMD":Ljava/lang/String;
    iget-object v8, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/bootkali custom_cmd hciconfig | grep hci"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1192
    .local v8, "bt_ifaceCMD":Ljava/lang/String;
    invoke-interface/range {p6 .. p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "badbt-name"

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1193
    invoke-interface/range {p6 .. p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "badbt-iface"

    invoke-interface {v9, v10, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1194
    invoke-interface/range {p6 .. p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "badbt-bdaddr"

    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1195
    invoke-interface/range {p6 .. p6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "badbt-class"

    invoke-interface {v9, v10, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1197
    const-string v9, "dbus is running."

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "bluetooth is running."

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1198
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1199
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "Starting server..."

    invoke-static {v9, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1200
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "echo -ne \"\\033]0;BadBT Server\\007\" && clear;python3 /root/badbt/btk_server.py -n \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' -i "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -c "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&;sleep 1 && echo \'Starting agent...\' && sleep 1 && bluetoothctl --agent NoInputNoOutput && exit"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->run_cmd(Ljava/lang/String;)V

    .line 1202
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    goto :goto_0

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "Please enter interface, keyboard name, and address!"

    invoke-static {v9, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1207
    :cond_1
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "Bluetooth interface or service not running!"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1209
    .end local v2    # "BadBT_name":Ljava/lang/String;
    .end local v3    # "BadBT_iface":Ljava/lang/String;
    .end local v4    # "BadBT_bdaddr":Ljava/lang/String;
    .end local v5    # "BadBT_class":Ljava/lang/String;
    .end local v6    # "dbus_statusCMD":Ljava/lang/String;
    .end local v7    # "bt_statusCMD":Ljava/lang/String;
    .end local v8    # "bt_ifaceCMD":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "Stop"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1210
    iget-object v2, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "kill `ps -ef | grep \'[btk]_server\' | awk {\'print $2\'}`"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 1211
    iget-object v2, v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v3, "pkill bluetoothctl"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    goto :goto_1

    .line 1209
    :cond_3
    :goto_0
    nop

    .line 1214
    :goto_1
    return-void
.end method

.method synthetic lambda$onCreateView$3$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/CheckBox;Landroid/widget/Spinner;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 3
    .param p1, "uacCheckBox"    # Landroid/widget/CheckBox;
    .param p2, "badbtpresets_uac"    # Landroid/widget/Spinner;
    .param p3, "presets_uac"    # Ljava/util/ArrayList;
    .param p4, "v"    # Landroid/view/View;

    .line 1344
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const v1, 0x1090003

    if-eqz v0, :cond_0

    .line 1345
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1346
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1347
    const-string v0, "Windows 7"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    const-string v0, "Windows 8"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1349
    const-string v0, "Windows 10"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    const-string v0, "Windows 11"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0

    .line 1354
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 1355
    const-string v0, "None"

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1357
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1358
    const-string v0, "-"

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    .line 1360
    :goto_0
    return-void
.end method

.method synthetic lambda$onCreateView$4$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1386
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const-string v1, "text/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    const-string v1, "Select text file"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-virtual {p0, v1, v2}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1390
    return-void
.end method

.method synthetic lambda$onCreateView$5$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 1404
    const-string v0, "echo -ne \"\\033]0;BadBT Client\\007\" && clear;python3 /root/badbt/kb_client.py"

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->run_cmd(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Starting keyboard client.."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1406
    return-void
.end method

.method synthetic lambda$onCreateView$7$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 4
    .param p1, "badbt_string"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/view/View;

    .line 1395
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_badbtmode:Ljava/lang/String;

    const-string v1, "Send strings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1397
    .local v0, "BadBT_string":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo -ne \"\\033]0;BadBT Send Strings\\007\" && clear;python3 /root/badbt/send_string.py \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->prefixCMD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->uacCMD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";sleep 2 && echo \'Exiting..\' && exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->run_cmd(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Sending strings.."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .end local v0    # "BadBT_string":Ljava/lang/String;
    goto :goto_0

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->selected_badbtmode:Ljava/lang/String;

    const-string v1, "Interactive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 1401
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Are you sure?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1402
    const-string v1, "Interactive mode will run in NetHunter terminal, but needs a physical keyboard connected as of now."

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1403
    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V

    const-string v2, "Ok"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1407
    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 1409
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 1399
    .end local v0    # "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    :cond_1
    :goto_0
    nop

    .line 1411
    :goto_1
    return-void
.end method

.method synthetic lambda$onResume$0$com-offsec-nethunter-BTFragment$BadBtFragment()V
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$refresh_badbt$8$com-offsec-nethunter-BTFragment$BadBtFragment(Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 2
    .param p1, "BadBTServerStatus"    # Landroid/widget/TextView;
    .param p2, "badbtserverButton"    # Landroid/widget/Button;

    .line 1424
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "ps -ef | grep btk_server"

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, "badbtserver_statusCMD":Ljava/lang/String;
    const-string v1, "btk_server.py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1426
    const v1, 0x7f1300b3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1427
    const v1, 0x7f1300b1

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1430
    :cond_0
    const v1, 0x7f1300ad

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1431
    const v1, 0x7f1300b2

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(I)V

    .line 1433
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1085
    invoke-super {p0, p1}, Lcom/offsec/nethunter/BTFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1086
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->context:Landroid/content/Context;

    .line 1087
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 36
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1099
    move-object/from16 v9, p0

    const v0, 0x7f0d0020

    const/4 v1, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual {v10, v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 1100
    .local v12, "rootView":Landroid/view/View;
    const v0, 0x7f0a00a9

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/Button;

    .line 1101
    .local v13, "badbtServerButton":Landroid/widget/Button;
    iget-object v0, v9, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->context:Landroid/content/Context;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1102
    .local v14, "sharedpreferences":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    .line 1105
    .local v15, "iswatch":Z
    const v0, 0x7f0a009f

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 1106
    .local v8, "BadBTdesc":Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 1107
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1111
    :cond_0
    const v0, 0x7f0a00a0

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/EditText;

    .line 1112
    .local v7, "badbt_interface":Landroid/widget/EditText;
    const v0, 0x7f0a00a1

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 1113
    .local v6, "badbt_name":Landroid/widget/EditText;
    const v0, 0x7f0a009c

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    .line 1114
    .local v5, "badbt_bdaddr":Landroid/widget/EditText;
    const v0, 0x7f0a009d

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    .line 1117
    .local v4, "badbt_class":Landroid/widget/EditText;
    const v0, 0x7f0a009e

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Spinner;

    .line 1118
    .local v3, "badbtclass":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 1119
    .local v2, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Keyboard"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    const-string v0, "Headset"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    const-string v0, "Speaker"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    const-string v0, "Mouse"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    const-string v0, "Printer"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    const-string v0, "PC"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    const-string v0, "Mobile"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    const-string v0, "Custom"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v10, 0x1090003

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1128
    new-instance v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;

    invoke-direct {v0, v9, v4}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$1;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1165
    invoke-direct {v9, v12}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->refresh_badbt(Landroid/view/View;)V

    .line 1166
    const-string v0, "badbt-name"

    const-string v1, ""

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "prevbadbtname":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    :cond_1
    const-string v10, "badbt-iface"

    invoke-interface {v14, v10, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1169
    .local v10, "prevbadbtiface":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    :cond_2
    move-object/from16 v17, v0

    .end local v0    # "prevbadbtname":Ljava/lang/String;
    .local v17, "prevbadbtname":Ljava/lang/String;
    const-string v0, "badbt-bdaddr"

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, "prevbadbtaddr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    :cond_3
    move-object/from16 v18, v0

    .end local v0    # "prevbadbtaddr":Ljava/lang/String;
    .local v18, "prevbadbtaddr":Ljava/lang/String;
    const-string v0, "badbt-class"

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1173
    .local v1, "prevbadbtclass":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    :cond_4
    const v0, 0x7f0a03e2

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1177
    .local v0, "RefreshBadBTStatus":Landroid/widget/ImageButton;
    move-object/from16 v19, v1

    .end local v1    # "prevbadbtclass":Ljava/lang/String;
    .local v19, "prevbadbtclass":Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, v9, v12}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    const v1, 0x7f0a018a

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v21, v10

    .end local v10    # "prevbadbtiface":Ljava/lang/String;
    .local v21, "prevbadbtiface":Ljava/lang/String;
    move-object/from16 v10, v20

    check-cast v10, Landroid/widget/EditText;

    .line 1183
    .local v10, "badbt_string":Landroid/widget/EditText;
    new-instance v11, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda3;

    move-object/from16 v20, v0

    .end local v0    # "RefreshBadBTStatus":Landroid/widget/ImageButton;
    .local v20, "RefreshBadBTStatus":Landroid/widget/ImageButton;
    move-object v0, v11

    move/from16 v22, v15

    const v15, 0x7f0a018a

    .end local v15    # "iswatch":Z
    .local v22, "iswatch":Z
    move-object/from16 v1, p0

    move-object/from16 v23, v2

    .end local v2    # "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v23, "classes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v2, v13

    move-object/from16 v24, v3

    .end local v3    # "badbtclass":Landroid/widget/Spinner;
    .local v24, "badbtclass":Landroid/widget/Spinner;
    move-object v3, v6

    move-object/from16 v25, v4

    .end local v4    # "badbt_class":Landroid/widget/EditText;
    .local v25, "badbt_class":Landroid/widget/EditText;
    move-object v4, v7

    move-object/from16 v26, v5

    .end local v5    # "badbt_bdaddr":Landroid/widget/EditText;
    .local v26, "badbt_bdaddr":Landroid/widget/EditText;
    move-object/from16 v27, v6

    .end local v6    # "badbt_name":Landroid/widget/EditText;
    .local v27, "badbt_name":Landroid/widget/EditText;
    move-object/from16 v6, v25

    move-object/from16 v28, v7

    .end local v7    # "badbt_interface":Landroid/widget/EditText;
    .local v28, "badbt_interface":Landroid/widget/EditText;
    move-object v7, v14

    move-object/from16 v29, v8

    .end local v8    # "BadBTdesc":Landroid/widget/TextView;
    .local v29, "BadBTdesc":Landroid/widget/TextView;
    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/SharedPreferences;Landroid/view/View;)V

    invoke-virtual {v13, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    const v0, 0x7f0a00a3

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Spinner;

    .line 1218
    .local v6, "badbtmode":Landroid/widget/Spinner;
    const v0, 0x7f0a00aa

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1219
    .local v7, "BadBTSettingsView":Landroid/view/View;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1220
    .local v8, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Send strings"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    const-string v0, "Interactive"

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1223
    new-instance v0, Lcom/offsec/nethunter/BTFragment$BadBtFragment$2;

    invoke-direct {v0, v9, v7}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$2;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1239
    const v0, 0x7f0a0504

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/CheckBox;

    .line 1240
    .local v11, "uacCheckBox":Landroid/widget/CheckBox;
    const v0, 0x7f0a00ab

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .line 1241
    .local v30, "BadBTUACView":Landroid/view/View;
    const v0, 0x7f0a00a4

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Spinner;

    .line 1242
    .local v5, "badbtprefix":Landroid/widget/Spinner;
    const v0, 0x7f0a00a8

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Spinner;

    .line 1243
    .local v4, "badbtpresets_uac":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1244
    .local v3, "presets_uac":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 1245
    .local v2, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Mobile Home"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    const-string v0, "Mobile Browser"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    const-string v0, "Windows CMD"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    const-string v0, "Mac Terminal"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    const-string v0, "Linux Terminal"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    const-string v1, "None"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v31, v1

    const v1, 0x1090003

    invoke-direct {v0, v15, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1252
    new-instance v15, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;

    move-object v0, v15

    move-object/from16 v32, v6

    move-object/from16 v6, v31

    .end local v6    # "badbtmode":Landroid/widget/Spinner;
    .local v32, "badbtmode":Landroid/widget/Spinner;
    move-object/from16 v1, p0

    move-object/from16 v31, v2

    .end local v2    # "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v31, "prefixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v2, v30

    move-object/from16 v33, v3

    .end local v3    # "presets_uac":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v33, "presets_uac":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v3, v11

    move-object/from16 v34, v4

    .end local v4    # "badbtpresets_uac":Landroid/widget/Spinner;
    .local v34, "badbtpresets_uac":Landroid/widget/Spinner;
    move-object/from16 v4, v33

    move-object/from16 v35, v7

    move-object v7, v5

    .end local v5    # "badbtprefix":Landroid/widget/Spinner;
    .local v7, "badbtprefix":Landroid/widget/Spinner;
    .local v35, "BadBTSettingsView":Landroid/view/View;
    move-object/from16 v5, v34

    invoke-direct/range {v0 .. v5}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$3;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/view/View;Landroid/widget/CheckBox;Ljava/util/ArrayList;Landroid/widget/Spinner;)V

    invoke-virtual {v7, v15}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1314
    const v0, 0x7f0a00a7

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 1315
    .local v0, "badbtpresets":Landroid/widget/Spinner;
    const v1, 0x7f0a018a

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1316
    .local v1, "badbtstring":Landroid/widget/EditText;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v2, "presets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "Rickroll"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    const-string v3, "Fake Windows Update"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1321
    new-instance v3, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;

    invoke-direct {v3, v9, v1}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$4;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1343
    new-instance v3, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda4;

    move-object/from16 v5, v33

    move-object/from16 v4, v34

    .end local v33    # "presets_uac":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34    # "badbtpresets_uac":Landroid/widget/Spinner;
    .restart local v4    # "badbtpresets_uac":Landroid/widget/Spinner;
    .local v5, "presets_uac":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3, v9, v11, v4, v5}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/CheckBox;Landroid/widget/Spinner;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1361
    new-instance v3, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;

    invoke-direct {v3, v9}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$5;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1383
    const v3, 0x7f0a02cf

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 1384
    .local v3, "injectStringButton":Landroid/widget/Button;
    new-instance v6, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda5;

    invoke-direct {v6, v9}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda5;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1393
    const v6, 0x7f0a0473

    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 1394
    .local v6, "StartBadBtButton":Landroid/widget/Button;
    new-instance v15, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda6;

    invoke-direct {v15, v9, v10}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda6;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;Landroid/widget/EditText;)V

    invoke-virtual {v6, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1413
    return-object v12
.end method

.method public onResume()V
    .locals 3

    .line 1091
    invoke-super {p0}, Lcom/offsec/nethunter/BTFragment;->onResume()V

    .line 1092
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Status updated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1093
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$BadBtFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/BTFragment$BadBtFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1094
    return-void
.end method
