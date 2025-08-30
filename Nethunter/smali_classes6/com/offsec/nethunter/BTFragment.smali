.class public Lcom/offsec/nethunter/BTFragment;
.super Landroidx/fragment/app/Fragment;
.source "BTFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;,
        Lcom/offsec/nethunter/BTFragment$PreferencesData;,
        Lcom/offsec/nethunter/BTFragment$BadBtFragment;,
        Lcom/offsec/nethunter/BTFragment$CWFragment;,
        Lcom/offsec/nethunter/BTFragment$SpoofFragment;,
        Lcom/offsec/nethunter/BTFragment$ToolsFragment;,
        Lcom/offsec/nethunter/BTFragment$MainFragment;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private sharedpreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 62
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/BTFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/BTFragment;

    .line 59
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/BTFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 66
    new-instance v0, Lcom/offsec/nethunter/BTFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/BTFragment;-><init>()V

    .line 67
    .local v0, "fragment":Lcom/offsec/nethunter/BTFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/BTFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    return-object v0
.end method


# virtual methods
.method public RunSetup()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 189
    :cond_0
    const-string v0, "echo -ne \"\\033]0;BT Arsenal Setup\\007\" && clear;apt update && apt install screen bluetooth bluez bluez-tools bluez-obexd libbluetooth3 sox spooftooph libglib2.0*-dev libsystemd-dev python3-dbus python3-bluez python3-pyudev python3-evdev libbluetooth-dev redfang bluelog blueranger -y;if [[ -f /usr/bin/carwhisperer && -f /usr/bin/rfcomm_scan ]];then echo \'All scripts are installed!\'; else git clone https://github.com/yesimxev/carwhisperer-0.2 /root/carwhisperer;cd /root/carwhisperer;make && make install;git clone https://github.com/yesimxev/bt_audit /root/bt_audit;cd /root/bt_audit/src;make;cp rfcomm_scan /usr/bin/;fi;if [[ -f /usr/lib/libglibutil.so ]]; then echo \'Libglibutil is installed!\'; else git clone https://github.com/yesimxev/libglibutil /root/libglibutil;cd /root/libglibutil;make && make install-dev;fi;if [[ -f /usr/lib/libgbinder.so ]]; then echo \'Libgbinder is installed!\'; else git clone https://github.com/yesimxev/libgbinder /root/libgbinder;cd /root/libgbinder;make && make install-dev;fi;if [[ -f /usr/sbin/bluebinder ]]; then echo \'Bluebinder is installed!\'; else git clone https://github.com/yesimxev/bluebinder /root/bluebinder;cd /root/bluebinder;make && make install;fi;if [[ -f /root/badbt/btk_server.py ]]; then echo \'BadBT is installed!\'; else git clone https://github.com/yesimxev/badbt /root/badbt && cp /root/badbt/org.thanhle.btkbservice.conf /etc/dbus-1/system.d/;fi;if [[ ! \"`grep \'noplugin=input\' /etc/init.d/bluetooth`\" == \"\" ]]; then echo \'Bluetooth service is patched!\'; else echo \'Patching Bluetooth service..\' && sed -i -e \'s/.*NOPLUGIN_OPTION=\"\"/NOPLUGIN_OPTION=\"--noplugin=input\"/g\' /etc/init.d/bluetooth;fi; echo \'Everything is installed!\' && echo \'\nPress any key to continue...\' && read -s -n 1 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/BTFragment;->run_cmd(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bt_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 205
    return-void
.end method

.method public RunSetupWatch()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 167
    :cond_0
    const-string v0, "echo -ne \"\\033]0;BT Arsenal Setup\\007\" && clear;apt update && apt install screen bluetooth bluez bluez-tools bluez-obexd libbluetooth3 sox spooftooph libglib2.0*-dev libsystemd-dev python3-dbus python3-bluez python3-pyudev python3-evdev libbluetooth-dev redfang bluelog blueranger espeak -y;if [[ -f /usr/sbin/bluebinder ]]; then echo \'Bluebinder is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/bluebinder/master/prebuilt/armhf/bluebinder -P /usr/sbin/ && chmod +x /usr/sbin/bluebinder;fi;if [[ -f /usr/lib/libgbinder.so.1.1.25 ]]; then echo \'libgbinder.so.1.1.25 is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/libgbinder/master/prebuilt/armhf/libgbinder.so.1.1.25 -P /usr/lib/ && ln -s libgbinder.so.1.1.25 /usr/lib/libgbinder.so.1.1 && ln -s libgbinder.so.1.1 /usr/lib/libgbinder.so.1 && ln -s libgbinder.so.1 /usr/lib/libgbinder.so;fi;if [[ -f /usr/lib/libglibutil.so.1.0.67 ]]; then echo \'libglibutil.so.1.0.67 is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/libglibutil/master/prebuilt/armhf/libglibutil.so.1.0.67 -P /usr/lib/ && ln -s libglibutil.so.1.0.67 /usr/lib/libglibutil.so.1.0 && ln -s libglibutil.so.1.0 /usr/lib/libglibutil.so.1 && ln -s libglibutil.so.1 /usr/lib/libglibutil.so;fi;if [[ -f /usr/bin/carwhisperer ]]; then echo \'carwhisperer is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/carwhisperer-0.2/master/prebuilt/armhf/carwhisperer -P /usr/bin/ && chmod +x /usr/bin/carwhisperer;fi;if [[ -f /usr/bin/rfcomm_scan ]]; then echo \'rfcomm_scan is installed!\'; else wget https://raw.githubusercontent.com/yesimxev/bt_audit/master/prebuilt/armhf/rfcomm_scan -P /usr/bin/ && chmod +x /usr/bin/rfcomm_scan;fi;if [[ -d /root/carwhisperer ]]; then echo \'/root/carwhisperer is installed!\'; else git clone https://github.com/yesimxev/carwhisperer-0.2 /root/carwhisperer;fi;if [[ -f /root/badbt/btk_server.py ]]; then echo \'BadBT is installed!\'; else git clone https://github.com/yesimxev/badbt /root/badbt && cp /root/badbt/org.thanhle.btkbservice.conf /etc/dbus-1/system.d/;fi;if [[ ! \"`grep \'noplugin=input\' /etc/init.d/bluetooth`\" == \"\" ]]; then echo \'Bluetooth service is patched!\'; else echo \'Patching Bluetooth service..\' && sed -i -e \'s/# NOPLUGIN_OPTION=.*/NOPLUGIN_OPTION=\"--noplugin=input\"/g\' /etc/init.d/bluetooth;fi;echo \'Everything is installed! Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/BTFragment;->run_cmd(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bt_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 183
    return-void
.end method

.method public RunUpdate()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 211
    :cond_0
    const-string v0, "echo -ne \"\\033]0;BT Arsenal Update\\007\" && clear;apt update && apt install screen bluetooth bluez bluez-tools bluez-obexd libbluetooth3 sox spooftooph libbluetooth-dev redfang bluelog blueranger libglib2.0*-dev libsystemd-dev python3-dbus python3-bluez python3-pyudev python3-evdev  -y;if [[ -f /usr/bin/carwhisperer && -f /usr/bin/rfcomm_scan && -f /root/bluebinder && -f /root/libgbinder && -f /root/libglibutil ]];then cd /root/carwhisperer/;git pull && make && make install;cd /root/bluebinder/;git pull && make && make install;cd /root/libgbinder/;git pull && make && make install-dev;cd /root/libglibutil/;git pull && make && make install-dev;cd /root/bt_audit; git pull; cd src && make;cp rfcomm_scan /usr/bin/;cd /root/badbt/;git pull;fi; echo \'Done! Closing in 3secs..\'; sleep 3 && exit "

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/BTFragment;->run_cmd(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bt_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    return-void
.end method

.method public SetupDialog()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    const-string v2, "com.offsec.nethunter"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "running_on_wearos"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 131
    .local v0, "iswatch":Ljava/lang/Boolean;
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f14012e

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 132
    .local v1, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v2, "Welcome to Bluetooth Arsenal!"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 133
    const-string v2, "This seems to be the first run. Install the Bluetooth tools?"

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 134
    new-instance v2, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/BTFragment;Ljava/lang/Boolean;)V

    const-string v3, "Install"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 139
    new-instance v2, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    const-string v3, "Disable message"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 143
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 144
    return-void
.end method

.method public SetupDialogWatch()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    const-string v1, "com.offsec.nethunter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 150
    :cond_0
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 151
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "This seems to be the first run. Install the Bluetooth tools?"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 152
    new-instance v1, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda2;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 156
    new-instance v1, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/BTFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    const-string v2, "No"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 160
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 161
    return-void
.end method

.method synthetic lambda$SetupDialog$0$com-offsec-nethunter-BTFragment(Ljava/lang/Boolean;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "iswatch"    # Ljava/lang/Boolean;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetupWatch()V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetup()V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bt_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    return-void
.end method

.method synthetic lambda$SetupDialog$1$com-offsec-nethunter-BTFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bt_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    return-void
.end method

.method synthetic lambda$SetupDialogWatch$2$com-offsec-nethunter-BTFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 153
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetupWatch()V

    .line 154
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bt_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    return-void
.end method

.method synthetic lambda$SetupDialogWatch$3$com-offsec-nethunter-BTFragment(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 158
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bt_setup_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1439
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1440
    const/16 v0, 0x3e9

    const-string v1, "/document/primary:"

    const/4 v2, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 1441
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0a02ce

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1442
    .local v0, "injectfilename":Landroid/widget/EditText;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1443
    .local v3, "FilePath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1444
    sget-object v4, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1445
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1443
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1447
    .end local v0    # "injectfilename":Landroid/widget/EditText;
    .end local v3    # "FilePath":Ljava/lang/String;
    :cond_1
    :goto_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_3

    if-ne p2, v2, :cond_3

    .line 1448
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0a018a

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1449
    .local v0, "badbtstring":Landroid/widget/EditText;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1450
    .local v2, "FilePath":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1451
    sget-object v3, Lcom/offsec/nethunter/utils/NhPaths;->SD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1452
    .end local v2    # "FilePath":Ljava/lang/String;
    .local v1, "FilePath":Ljava/lang/String;
    new-instance v2, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v2}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    .line 1453
    .local v2, "exe":Lcom/offsec/nethunter/utils/ShellExecuter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1454
    .local v3, "fileContent":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1450
    .end local v1    # "FilePath":Ljava/lang/String;
    .end local v3    # "fileContent":Ljava/lang/String;
    .local v2, "FilePath":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1456
    .end local v0    # "badbtstring":Landroid/widget/EditText;
    .end local v2    # "FilePath":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "menuinflater"    # Landroid/view/MenuInflater;

    .line 103
    const v0, 0x7f0f0001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    const v0, 0x7f0d001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "rootView":Landroid/view/View;
    new-instance v2, Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 85
    .local v2, "tabsPagerAdapter":Lcom/offsec/nethunter/BTFragment$TabsPagerAdapter;
    const v3, 0x7f0a03a6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    .line 86
    .local v3, "mViewPager":Landroidx/viewpager/widget/ViewPager;
    invoke-virtual {v3, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 87
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 88
    new-instance v4, Lcom/offsec/nethunter/BTFragment$1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/BTFragment$1;-><init>(Lcom/offsec/nethunter/BTFragment;)V

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 94
    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    const-string v5, "com.offsec.nethunter"

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 97
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/offsec/nethunter/BTFragment;->setHasOptionsMenu(Z)V

    .line 98
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 108
    iget-object v0, p0, Lcom/offsec/nethunter/BTFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "running_on_wearos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 109
    .local v0, "iswatch":Ljava/lang/Boolean;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 110
    .local v1, "id":I
    const v2, 0x7f0a043f

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 111
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetupWatch()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunSetup()V

    .line 113
    :goto_0
    return v3

    .line 114
    :cond_1
    const v2, 0x7f0a050a

    if-ne v1, v2, :cond_3

    .line 115
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "Updates have to be done manually through adb shell. If anything gone wrong at first run, please run Setup again."

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/offsec/nethunter/BTFragment;->RunUpdate()V

    .line 120
    :goto_1
    return v3

    .line 122
    :cond_3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2
.end method

.method public run_cmd(Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1480
    const-string v0, "/data/data/com.offsec.nhterm/files/usr/bin/kali"

    invoke-static {v0, p1}, Lcom/offsec/nethunter/bridge/Bridge;->createExecuteIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1481
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/offsec/nethunter/BTFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1482
    return-void
.end method
