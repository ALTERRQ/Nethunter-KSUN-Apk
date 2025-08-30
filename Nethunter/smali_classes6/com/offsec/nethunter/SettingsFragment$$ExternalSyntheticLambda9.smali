.class public final synthetic Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/SettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda9;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda9;->f$0:Lcom/offsec/nethunter/SettingsFragment;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/SettingsFragment;->lambda$requestStoragePermission$0$com-offsec-nethunter-SettingsFragment(Ljava/util/Map;)V

    return-void
.end method
