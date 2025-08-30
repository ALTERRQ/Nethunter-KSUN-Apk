.class public final synthetic Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/CARsenalFragment$MainFragment;[Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;->f$0:Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;->f$2:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;->f$0:Lcom/offsec/nethunter/CARsenalFragment$MainFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/offsec/nethunter/CARsenalFragment$MainFragment$$ExternalSyntheticLambda31;->f$2:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/offsec/nethunter/CARsenalFragment$MainFragment;->lambda$onCreateView$20$com-offsec-nethunter-CARsenalFragment$MainFragment([Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
