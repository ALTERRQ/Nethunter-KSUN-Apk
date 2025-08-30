.class Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;
.super Ljava/lang/Object;
.source "CARsenalFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils;->setupDeviceInterfaceSpinner(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/offsec/nethunter/utils/ShellExecuter;Landroid/widget/Spinner;Landroid/view/View;Landroid/content/SharedPreferences;Ljava/lang/String;ZLcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

.field final synthetic val$deviceIfaces:Ljava/util/ArrayList;

.field final synthetic val$sharedPrefKey:Ljava/lang/String;

.field final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2914
    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$sharedPrefKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$callback:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$deviceIfaces:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    .line 2917
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    .line 2918
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2919
    .local v0, "selected":Ljava/lang/String;
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$sharedPrefKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2920
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2921
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2922
    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$callback:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    invoke-interface {v1, v0}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;->onInterfaceSelected(Ljava/lang/String;)V

    .line 2924
    .end local v0    # "selected":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 2928
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$callback:Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$2;->val$deviceIfaces:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/offsec/nethunter/CARsenalFragment$SpinnerUtils$SelectionCallback;->onInterfaceSelected(Ljava/lang/String;)V

    .line 2929
    return-void
.end method
