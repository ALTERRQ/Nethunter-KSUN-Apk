.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final synthetic f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;

.field public final synthetic f$3:Lcom/google/android/material/textfield/TextInputEditText;

.field public final synthetic f$4:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$1:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iput-object p4, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$3:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p5, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$4:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$1:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$2:Lcom/google/android/material/checkbox/MaterialCheckBox;

    iget-object v3, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$3:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v4, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda5;->f$4:Lcom/google/android/material/textfield/TextInputEditText;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->lambda$showMainConfig$42(Landroid/content/SharedPreferences;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/checkbox/MaterialCheckBox;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
