.class public Lcom/offsec/nethunter/DuckHunterFragment;
.super Landroidx/fragment/app/Fragment;
.source "DuckHunterFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;,
        Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;
    }
.end annotation


# static fields
.field private static final ARG_SECTION_NUMBER:Ljava/lang/String; = "section_number"

.field private static final TAG:Ljava/lang/String; = "DuckHunterFragment"

.field private static keyboardLayoutString:[Ljava/lang/String;

.field public static lang:Ljava/lang/String;

.field private static final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sharedpreferences:Landroid/content/SharedPreferences;


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private final duckHuntBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

.field private duckyInputFile:Ljava/lang/String;

.field private duckyOutputFile:Ljava/lang/String;

.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private isReceiverRegistered:Z

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private final mainHandler:Landroid/os/Handler;

.field private menu:Landroid/view/Menu;

.field private shouldconvert:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    .line 49
    const-string v0, "us"

    sput-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->lang:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mainHandler:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->shouldconvert:Z

    .line 61
    new-instance v0, Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckHuntBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

    .line 62
    new-instance v0, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {v0}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method static synthetic access$000(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/view/Menu;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 43
    invoke-static {}, Lcom/offsec/nethunter/DuckHunterFragment;->setLang()V

    return-void
.end method

.method static synthetic access$200(Lcom/offsec/nethunter/DuckHunterFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterFragment;

    .line 43
    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->shouldconvert:Z

    return v0
.end method

.method static synthetic access$202(Lcom/offsec/nethunter/DuckHunterFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterFragment;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->shouldconvert:Z

    return p1
.end method

.method static synthetic access$300(Lcom/offsec/nethunter/DuckHunterFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyInputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/offsec/nethunter/DuckHunterFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/offsec/nethunter/DuckHunterFragment;

    .line 43
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method private getMaterialAlertDialogBuilder()Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .locals 3

    .line 221
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    const v2, 0x7f14012e

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    .line 222
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-string v1, "Language:"

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 223
    new-instance v1, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda3;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 234
    return-object v0
.end method

.method static synthetic lambda$openLanguageDialog$3(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 211
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "DuckHunterLanguageIndex"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    sget-object v1, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    sget-object v2, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "DuckHunterLanguage"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    return-void
.end method

.method public static newInstance(I)Lcom/offsec/nethunter/DuckHunterFragment;
    .locals 3
    .param p0, "sectionNumber"    # I

    .line 65
    new-instance v0, Lcom/offsec/nethunter/DuckHunterFragment;

    invoke-direct {v0}, Lcom/offsec/nethunter/DuckHunterFragment;-><init>()V

    .line 66
    .local v0, "fragment":Lcom/offsec/nethunter/DuckHunterFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 67
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "section_number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/DuckHunterFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method

.method private openLanguageDialog()V
    .locals 4

    .line 208
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "DuckHunterLanguageIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 209
    .local v0, "keyboardLayoutIndex":I
    invoke-direct {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getMaterialAlertDialogBuilder()Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 210
    .local v1, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    sget-object v2, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    new-instance v3, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 216
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 217
    return-void
.end method

.method private static setLang()V
    .locals 3

    .line 203
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v1, "DuckHunterLanguageIndex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, "keyboardLayoutIndex":I
    sget-object v1, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    sget-object v2, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/offsec/nethunter/DuckHunterFragment;->lang:Ljava/lang/String;

    .line 205
    return-void
.end method


# virtual methods
.method synthetic lambda$getMaterialAlertDialogBuilder$4$com-offsec-nethunter-DuckHunterFragment(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 224
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/offsec/nethunter/DuckHunterFragment;->setLang()V

    .line 229
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "ACTION"

    const-string v3, "WRITEDUCKY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 230
    const-string v2, "com.offsec.nethunter.WRITEDUCKY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    .line 231
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    :cond_1
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$0$com-offsec-nethunter-DuckHunterFragment()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    const-string v1, "Launching Attack"

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$1$com-offsec-nethunter-DuckHunterFragment(Z)V
    .locals 2
    .param p1, "result"    # Z

    .line 156
    if-nez p1, :cond_2

    .line 157
    new-instance v0, Ljava/io/File;

    const-string v1, "/config/usb_gadget/g1"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    const-string v1, "HID interfaces are not enabled! Please enable in USB Arsenal."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/hidg0"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    const-string v1, "Fixing HID interface permissions.."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    const-string v1, "chmod 666 /dev/hidg*"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRoot([Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    const-string v1, "HID interfaces are not patched or enabled, please check your kernel configuration."

    invoke-static {v0, v1}, Lcom/offsec/nethunter/utils/NhPaths;->showMessage_long(Landroid/content/Context;Ljava/lang/String;)V

    .line 166
    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$onOptionsItemSelected$2$com-offsec-nethunter-DuckHunterFragment()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootReturnValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    .local v0, "result":Z
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda4;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->context:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/modules/ducky_in.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyInputFile:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SD_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/modules/ducky_out.sh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckyOutputFile:Ljava/lang/String;

    .line 79
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "American English"

    const-string v2, "us"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Turkish"

    const-string v2, "tr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Swedish"

    const-string v2, "sv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Slovenian"

    const-string v2, "si"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Russian"

    const-string v2, "ru"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Portuguese"

    const-string v2, "pt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Norwegian"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Croatian"

    const-string v2, "hr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "United Kingdom"

    const-string v2, "gb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "French"

    const-string v2, "fr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Finland"

    const-string v2, "fi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Spain"

    const-string v2, "es"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Danish"

    const-string v2, "dk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "German"

    const-string v2, "de"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Candian"

    const-string v2, "ca"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Canadian Multilingual Standard"

    const-string v2, "cm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Brazil"

    const-string v2, "br"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Belgian"

    const-string v2, "be"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    const-string v1, "Hungarian"

    const-string v2, "hu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    .line 99
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 138
    iput-object p1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->menu:Landroid/view/Menu;

    .line 139
    const v0, 0x7f0f0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 140
    const v0, 0x7f0a017e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 141
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 103
    const v0, 0x7f0d004e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "rootView":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/offsec/nethunter/DuckHunterFragment;->setHasOptionsMenu(Z)V

    .line 105
    new-instance v3, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;

    invoke-virtual {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;Landroidx/fragment/app/FragmentManager;)V

    .line 106
    .local v3, "tabsPagerAdapter":Lcom/offsec/nethunter/DuckHunterFragment$TabsPagerAdapter;
    const v4, 0x7f0a03a8

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    iput-object v4, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 107
    iget-object v4, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 108
    iget-object v4, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 109
    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lcom/offsec/nethunter/DuckHunterFragment$1;

    invoke-direct {v4, p0}, Lcom/offsec/nethunter/DuckHunterFragment$1;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 122
    iget-object v2, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    const-string v4, "com.offsec.nethunter"

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    .line 124
    sget-object v1, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    const-string v2, "DuckHunterLanguageIndex"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 126
    sget-object v4, Lcom/offsec/nethunter/DuckHunterFragment;->map:Ljava/util/HashMap;

    sget-object v5, Lcom/offsec/nethunter/DuckHunterFragment;->keyboardLayoutString:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "us"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    sget-object v4, Lcom/offsec/nethunter/DuckHunterFragment;->sharedpreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    goto :goto_1

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 197
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->menu:Landroid/view/Menu;

    .line 199
    iput-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 146
    .local v0, "itemId":I
    const v1, 0x7f0a017e

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/offsec/nethunter/DuckHunterFragment$$ExternalSyntheticLambda1;-><init>(Lcom/offsec/nethunter/DuckHunterFragment;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 168
    return v2

    .line 169
    :cond_0
    const v1, 0x7f0a010c

    if-ne v0, v1, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/offsec/nethunter/DuckHunterFragment;->openLanguageDialog()V

    .line 171
    return v2

    .line 173
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    .line 188
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 189
    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckHuntBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->isReceiverRegistered:Z

    .line 193
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 179
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 180
    iget-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->isReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/offsec/nethunter/DuckHunterFragment;->duckHuntBroadcastReceiver:Lcom/offsec/nethunter/DuckHunterFragment$DuckHuntBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.offsec.nethunter.SHOULDCONVERT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nethunter/DuckHunterFragment;->isReceiverRegistered:Z

    .line 184
    :cond_0
    return-void
.end method
