.class public Lcom/offsec/nethunter/LauncherButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "LauncherButton.java"


# instance fields
.field private db_id:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 9
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getDb_id()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/offsec/nethunter/LauncherButton;->db_id:J

    return-wide v0
.end method

.method public setDb_id(J)V
    .locals 0
    .param p1, "db_id"    # J

    .line 15
    iput-wide p1, p0, Lcom/offsec/nethunter/LauncherButton;->db_id:J

    .line 16
    return-void
.end method
