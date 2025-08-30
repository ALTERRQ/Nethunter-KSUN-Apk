.class public Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;
.super Lcom/offsec/nethunter/CARsenalFragment;
.source "CARsenalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/CARsenalFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CANUSBFragment"
.end annotation


# instance fields
.field private SelectedBaudrateUSB:Landroid/widget/EditText;

.field private SelectedCanSpeedUSB:Landroid/widget/EditText;

.field private activity:Landroid/app/Activity;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private selected_usb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1545
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 1546
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1547
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;

    .line 1545
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->showCanUsbConfig()V

    return-void
.end method

.method static synthetic lambda$showCanUsbConfig$2(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "idInput"    # Landroid/widget/EditText;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1608
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showCanUsbConfig$3(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "counterInput"    # Landroid/widget/EditText;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1609
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showCanUsbConfig$4(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "sleepInput"    # Landroid/widget/EditText;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1610
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showCanUsbConfig$5(Landroid/widget/EditText;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "dataInput"    # Landroid/widget/EditText;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1611
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showCanUsbConfig$6(Landroid/widget/Spinner;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "modeSpinner"    # Landroid/widget/Spinner;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1612
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$showCanUsbConfig$7(Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p0, "debugSwitch"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 1613
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method static synthetic lambda$showCanUsbConfig$8(Landroid/content/SharedPreferences;Landroidx/appcompat/widget/SwitchCompat;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "debugSwitch"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "idCheckbox"    # Lcom/google/android/material/checkbox/MaterialCheckBox;
    .param p3, "counterCheckbox"    # Lcom/google/android/material/checkbox/MaterialCheckBox;
    .param p4, "sleepCheckbox"    # Lcom/google/android/material/checkbox/MaterialCheckBox;
    .param p5, "dataCheckbox"    # Lcom/google/android/material/checkbox/MaterialCheckBox;
    .param p6, "modeCheckbox"    # Lcom/google/android/material/checkbox/MaterialCheckBox;
    .param p7, "idInput"    # Landroid/widget/EditText;
    .param p8, "counterInput"    # Landroid/widget/EditText;
    .param p9, "sleepInput"    # Landroid/widget/EditText;
    .param p10, "dataInput"    # Landroid/widget/EditText;
    .param p11, "modeSpinner"    # Landroid/widget/Spinner;
    .param p12, "dialog"    # Landroid/content/DialogInterface;
    .param p13, "which"    # I

    .line 1646
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1649
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "usb_debug_enabled"

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1650
    const-string v1, "usb_id_enabled"

    invoke-virtual {p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1651
    const-string v1, "usb_counter_enabled"

    invoke-virtual {p3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1652
    const-string v1, "usb_sleep_enabled"

    invoke-virtual {p4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1653
    const-string v1, "usb_data_enabled"

    invoke-virtual {p5}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1654
    const-string v1, "usb_mode_enabled"

    invoke-virtual {p6}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1657
    invoke-virtual {p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_id_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1658
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_counter_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1659
    :cond_1
    invoke-virtual {p4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_sleep_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1660
    :cond_2
    invoke-virtual {p5}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_data_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1661
    :cond_3
    invoke-virtual {p6}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p11}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_mode_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1663
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1664
    return-void
.end method

.method private runCanUsb()V
    .locals 11

    .line 1670
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->SelectedCanSpeedUSB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, "USBCANSpeed":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->SelectedBaudrateUSB:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1672
    .local v1, "USBBaudrate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "carsenal_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1674
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "usb_debug_enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_0

    const-string v3, " -t"

    goto :goto_0

    :cond_0
    move-object v3, v5

    .line 1675
    .local v3, "debugEnabled":Ljava/lang/String;
    :goto_0
    const-string v6, "usb_counter_enabled"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " -n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "usb_counter_value"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    .line 1676
    .local v6, "countValue":Ljava/lang/String;
    :goto_1
    const-string v7, "usb_data_enabled"

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -j "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "usb_data_value"

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v5

    .line 1677
    .local v7, "dataValue":Ljava/lang/String;
    :goto_2
    const-string v8, "usb_id_enabled"

    invoke-interface {v2, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " -i "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "usb_id_value"

    invoke-interface {v2, v9, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v5

    .line 1678
    .local v8, "idValue":Ljava/lang/String;
    :goto_3
    const-string v9, "usb_sleep_enabled"

    invoke-interface {v2, v9, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -g "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "usb_sleep_value"

    invoke-interface {v2, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_4
    move-object v9, v5

    .line 1679
    .local v9, "sleepValue":Ljava/lang/String;
    :goto_4
    const-string v10, "usb_mode_enabled"

    invoke-interface {v2, v10, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " -m "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "usb_mode_value"

    invoke-interface {v2, v10, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    move-object v4, v5

    .line 1681
    .local v4, "modeValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    const-string v10, "USB Device (None)"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1682
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canusb -d "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " -s "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " -b "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 1685
    :cond_6
    const-string v5, "Please ensure your USB Device and USB CAN Speed, Baudrate, Data fields are set!"

    invoke-virtual {p0, v5}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->showToast(Ljava/lang/String;)V

    .line 1688
    :goto_5
    iget-object v5, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1689
    return-void
.end method

.method private showCanUsbConfig()V
    .locals 33

    .line 1588
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1589
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1592
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0a050f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1593
    .local v3, "idInput":Landroid/widget/EditText;
    const v4, 0x7f0a050d

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/EditText;

    .line 1594
    .local v15, "counterInput":Landroid/widget/EditText;
    const v4, 0x7f0a0511

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/EditText;

    .line 1595
    .local v14, "sleepInput":Landroid/widget/EditText;
    const v4, 0x7f0a050e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/EditText;

    .line 1596
    .local v13, "dataInput":Landroid/widget/EditText;
    const v4, 0x7f0a0510

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/Spinner;

    .line 1597
    .local v12, "modeSpinner":Landroid/widget/Spinner;
    const v4, 0x7f0a00dd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/appcompat/widget/SwitchCompat;

    .line 1600
    .local v11, "debugSwitch":Landroidx/appcompat/widget/SwitchCompat;
    const v4, 0x7f0a02b9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1601
    .local v10, "idCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const v4, 0x7f0a0127

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1602
    .local v9, "counterCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const v4, 0x7f0a0449

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1603
    .local v8, "sleepCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const v4, 0x7f0a0140

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1604
    .local v7, "dataCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const v4, 0x7f0a0322

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1605
    .local v6, "modeCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const v4, 0x7f0a0144

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/material/checkbox/MaterialCheckBox;

    .line 1608
    .local v5, "debugCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v10, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1609
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, v15}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v9, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1610
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, v14}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v8, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1611
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, v13}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v7, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1612
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda4;

    invoke-direct {v4, v12}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda4;-><init>(Landroid/widget/Spinner;)V

    invoke-virtual {v6, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1613
    new-instance v4, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda5;

    invoke-direct {v4, v11}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda5;-><init>(Landroidx/appcompat/widget/SwitchCompat;)V

    invoke-virtual {v5, v4}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1616
    const-string v4, "1"

    const-string v2, "2"

    move-object/from16 v17, v0

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const-string v0, "Mode"

    move-object/from16 v16, v6

    .end local v6    # "modeCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    .local v16, "modeCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const-string v6, "0"

    filled-new-array {v0, v6, v4, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, "modeOptions":[Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$1;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x1090008

    move-object/from16 v18, v14

    move-object/from16 v14, p0

    .end local v14    # "sleepInput":Landroid/widget/EditText;
    .local v18, "sleepInput":Landroid/widget/EditText;
    invoke-direct {v2, v14, v4, v6, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 1630
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v2, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1631
    invoke-virtual {v12, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1632
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1633
    invoke-virtual {v12, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v19, v0

    .end local v0    # "modeOptions":[Ljava/lang/String;
    .local v19, "modeOptions":[Ljava/lang/String;
    const-string v0, "carsenal_prefs"

    invoke-virtual {v6, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1637
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "usb_debug_enabled"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1638
    .local v6, "debugEnabled":Z
    invoke-virtual {v11, v6}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1639
    invoke-virtual {v5, v6}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    .line 1642
    new-instance v4, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-object/from16 v20, v2

    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v20, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v21, v5

    .end local v5    # "debugCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    .local v21, "debugCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    const v5, 0x7f14012e

    invoke-direct {v4, v2, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 1643
    const-string v2, "CAN-USB Configuration"

    invoke-virtual {v4, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    .line 1644
    invoke-virtual {v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    new-instance v5, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda6;

    move-object v4, v5

    move-object/from16 v22, v1

    move-object v1, v5

    .end local v1    # "dialogView":Landroid/view/View;
    .local v22, "dialogView":Landroid/view/View;
    move-object v5, v0

    move/from16 v24, v6

    move-object/from16 v23, v16

    .end local v6    # "debugEnabled":Z
    .end local v16    # "modeCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    .local v23, "modeCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    .local v24, "debugEnabled":Z
    move-object v6, v11

    move-object/from16 v25, v7

    .end local v7    # "dataCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    .local v25, "dataCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    move-object v7, v10

    move-object/from16 v26, v8

    .end local v8    # "sleepCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    .local v26, "sleepCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    move-object v8, v9

    move-object/from16 v27, v9

    .end local v9    # "counterCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    .local v27, "counterCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    move-object/from16 v9, v26

    move-object/from16 v28, v10

    .end local v10    # "idCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    .local v28, "idCheckbox":Lcom/google/android/material/checkbox/MaterialCheckBox;
    move-object/from16 v10, v25

    move-object/from16 v29, v11

    .end local v11    # "debugSwitch":Landroidx/appcompat/widget/SwitchCompat;
    .local v29, "debugSwitch":Landroidx/appcompat/widget/SwitchCompat;
    move-object/from16 v11, v23

    move-object/from16 v30, v12

    .end local v12    # "modeSpinner":Landroid/widget/Spinner;
    .local v30, "modeSpinner":Landroid/widget/Spinner;
    move-object v12, v3

    move-object/from16 v31, v13

    .end local v13    # "dataInput":Landroid/widget/EditText;
    .local v31, "dataInput":Landroid/widget/EditText;
    move-object v13, v15

    move-object/from16 v14, v18

    move-object/from16 v32, v15

    .end local v15    # "counterInput":Landroid/widget/EditText;
    .local v32, "counterInput":Landroid/widget/EditText;
    move-object/from16 v15, v31

    move-object/from16 v16, v30

    invoke-direct/range {v4 .. v16}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda6;-><init>(Landroid/content/SharedPreferences;Landroidx/appcompat/widget/SwitchCompat;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 1645
    const-string v4, "Apply"

    invoke-virtual {v2, v4, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1665
    const-string v2, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 1666
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1667
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$CANUSBFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 1578
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$CANUSBFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 1582
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->runCanUsb()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1555
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1556
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->activity:Landroid/app/Activity;

    .line 1557
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1561
    const v0, 0x7f0d0028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1563
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->SelectedBaudrateUSB:Landroid/widget/EditText;

    .line 1564
    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->SelectedCanSpeedUSB:Landroid/widget/EditText;

    .line 1567
    const v1, 0x7f0a015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 1568
    .local v1, "spinner":Landroid/widget/Spinner;
    const v2, 0x7f0a03e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageButton;

    .line 1569
    .local v11, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 1570
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1575
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$300()Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda7;

    invoke-direct {v10, p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda7;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;)V

    .line 1569
    const-string v8, "selected_usb"

    const/4 v9, 0x1

    move-object v5, v1

    move-object v6, v11

    invoke-static/range {v2 .. v10}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 1582
    const v2, 0x7f0a047d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda8;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1584
    return-object v0
.end method
