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
.field private activity:Landroid/app/Activity;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private selectedBaudrateUSB:Landroid/widget/EditText;

.field private selectedCanSpeedUSB:Landroid/widget/EditText;

.field private selected_usb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1603
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment;-><init>()V

    .line 1604
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1605
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$100(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;

    .line 1603
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->showCanUsbConfig()V

    return-void
.end method

.method private getStringArrayAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1698
    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "Mode"

    const-string v3, "0"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1699
    .local v0, "modeOptions":[Ljava/lang/String;
    new-instance v1, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$1;

    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 1712
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1713
    return-object v1
.end method

.method static synthetic lambda$showCanUsbConfig$2(Landroid/content/SharedPreferences;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "debugSwitch"    # Landroidx/appcompat/widget/SwitchCompat;
    .param p2, "idInput"    # Landroid/widget/EditText;
    .param p3, "counterInput"    # Landroid/widget/EditText;
    .param p4, "sleepInput"    # Landroid/widget/EditText;
    .param p5, "dataInput"    # Landroid/widget/EditText;
    .param p6, "modeSpinner"    # Landroid/widget/Spinner;
    .param p7, "dialog"    # Landroid/content/DialogInterface;
    .param p8, "which"    # I

    .line 1681
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1683
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "usb_debug_enabled"

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1684
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_id_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1685
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_counter_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1686
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_sleep_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1687
    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_data_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1688
    invoke-virtual {p6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usb_mode_value"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1690
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1691
    return-void
.end method

.method private runCanUsb()V
    .locals 12

    .line 1717
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selectedCanSpeedUSB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1718
    .local v0, "USBCANSpeed":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selectedBaudrateUSB:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1719
    .local v1, "USBBaudrate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "carsenal_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1721
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    const-string v5, "USB Devices"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 1726
    :cond_0
    const-string v3, "usb_debug_enabled"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    const-string v3, " -t"

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 1727
    .local v3, "debugEnabled":Ljava/lang/String;
    :goto_0
    const-string v5, "usb_id_value"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1728
    .local v5, "idValue":Ljava/lang/String;
    const-string v6, "usb_counter_value"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1729
    .local v6, "countValue":Ljava/lang/String;
    const-string v7, "usb_data_value"

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1730
    .local v7, "dataValue":Ljava/lang/String;
    const-string v8, "usb_sleep_value"

    invoke-interface {v2, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1731
    .local v8, "sleepValue":Ljava/lang/String;
    const-string v9, "usb_mode_value"

    invoke-interface {v2, v9, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1733
    .local v4, "modeValue":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1734
    .local v9, "cmdBuilder":Ljava/lang/StringBuilder;
    const-string v10, "canusb -d "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1735
    const-string v11, " -s "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1736
    const-string v11, " -b "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1737
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, " -i "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, " -j "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, " -g "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, " -n "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, " -m "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->run_cmd(Ljava/lang/String;)Ljava/lang/String;

    .line 1746
    iget-object v10, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1747
    return-void

    .line 1722
    .end local v3    # "debugEnabled":Ljava/lang/String;
    .end local v4    # "modeValue":Ljava/lang/String;
    .end local v5    # "idValue":Ljava/lang/String;
    .end local v6    # "countValue":Ljava/lang/String;
    .end local v7    # "dataValue":Ljava/lang/String;
    .end local v8    # "sleepValue":Ljava/lang/String;
    .end local v9    # "cmdBuilder":Ljava/lang/StringBuilder;
    :cond_7
    :goto_1
    const-string v3, "Please ensure your USB Device, CAN Speed, Baudrate, and Data fields are set!"

    invoke-virtual {p0, v3}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->showToast(Ljava/lang/String;)V

    .line 1723
    return-void
.end method

.method private showCanUsbConfig()V
    .locals 21

    .line 1646
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1647
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d0029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1650
    .local v1, "dialogView":Landroid/view/View;
    const v3, 0x7f0a054d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1651
    .local v3, "idInput":Landroid/widget/EditText;
    const v4, 0x7f0a054b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/EditText;

    .line 1652
    .local v12, "counterInput":Landroid/widget/EditText;
    const v4, 0x7f0a054f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroid/widget/EditText;

    .line 1653
    .local v13, "sleepInput":Landroid/widget/EditText;
    const v4, 0x7f0a054c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/EditText;

    .line 1654
    .local v14, "dataInput":Landroid/widget/EditText;
    const v4, 0x7f0a054e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/Spinner;

    .line 1655
    .local v15, "modeSpinner":Landroid/widget/Spinner;
    const v4, 0x7f0a00e5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroidx/appcompat/widget/SwitchCompat;

    .line 1658
    .local v11, "debugSwitch":Landroidx/appcompat/widget/SwitchCompat;
    invoke-direct/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->getStringArrayAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v10

    .line 1659
    .local v10, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v15, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1660
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1663
    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "carsenal_prefs"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1665
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "usb_debug_enabled"

    invoke-interface {v9, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v11, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 1666
    const-string v4, "usb_id_value"

    const-string v5, ""

    invoke-interface {v9, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    const-string v4, "usb_counter_value"

    invoke-interface {v9, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1668
    const-string v4, "usb_sleep_value"

    invoke-interface {v9, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    const-string v4, "usb_data_value"

    invoke-interface {v9, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1670
    const-string v4, "usb_mode_value"

    invoke-interface {v9, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1671
    .local v8, "savedMode":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1672
    invoke-virtual {v10, v8}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    .line 1673
    .local v4, "pos":I
    if-ltz v4, :cond_0

    invoke-virtual {v15, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1677
    .end local v4    # "pos":I
    :cond_0
    new-instance v4, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f14012e

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 1678
    const-string v5, "CAN-USB Configuration"

    invoke-virtual {v4, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    .line 1679
    invoke-virtual {v4, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v7

    new-instance v6, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;

    move-object v4, v6

    move-object v5, v9

    move-object v2, v6

    move-object v6, v11

    move-object/from16 v16, v0

    move-object v0, v7

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .local v16, "inflater":Landroid/view/LayoutInflater;
    move-object v7, v3

    move-object/from16 v17, v8

    .end local v8    # "savedMode":Ljava/lang/String;
    .local v17, "savedMode":Ljava/lang/String;
    move-object v8, v12

    move-object/from16 v18, v9

    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .local v18, "prefs":Landroid/content/SharedPreferences;
    move-object v9, v13

    move-object/from16 v19, v10

    .end local v10    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .local v19, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object v10, v14

    move-object/from16 v20, v11

    .end local v11    # "debugSwitch":Landroidx/appcompat/widget/SwitchCompat;
    .local v20, "debugSwitch":Landroidx/appcompat/widget/SwitchCompat;
    move-object v11, v15

    invoke-direct/range {v4 .. v11}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda0;-><init>(Landroid/content/SharedPreferences;Landroidx/appcompat/widget/SwitchCompat;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 1680
    const-string v4, "Apply"

    invoke-virtual {v0, v4, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1692
    const-string v2, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 1693
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 1694
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-offsec-nethunter-CARsenalFragment$CANUSBFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 1636
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selected_usb:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-offsec-nethunter-CARsenalFragment$CANUSBFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 1640
    invoke-direct {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->runCanUsb()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1613
    invoke-super {p0, p1}, Lcom/offsec/nethunter/CARsenalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 1614
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->activity:Landroid/app/Activity;

    .line 1615
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 1619
    const v0, 0x7f0d0028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1621
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selectedBaudrateUSB:Landroid/widget/EditText;

    .line 1622
    const v1, 0x7f0a0107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->selectedCanSpeedUSB:Landroid/widget/EditText;

    .line 1625
    const v1, 0x7f0a0167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 1626
    .local v1, "spinner":Landroid/widget/Spinner;
    const v2, 0x7f0a0410

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageButton;

    .line 1627
    .local v11, "refreshBtn":Landroid/widget/ImageButton;
    nop

    .line 1628
    invoke-virtual {p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    .line 1633
    invoke-static {}, Lcom/offsec/nethunter/CARsenalFragment;->access$400()Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v10, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;)V

    .line 1627
    const-string v8, "selected_usb"

    const/4 v9, 0x1

    move-object v5, v1

    move-object v6, v11

    invoke-static/range {v2 .. v10}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V

    .line 1640
    const v2, 0x7f0a04b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/CARsenalFragment$CANUSBFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1642
    return-object v0
.end method
