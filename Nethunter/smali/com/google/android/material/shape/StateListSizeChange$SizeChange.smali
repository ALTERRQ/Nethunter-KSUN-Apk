.class public Lcom/google/android/material/shape/StateListSizeChange$SizeChange;
.super Ljava/lang/Object;
.source "StateListSizeChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/StateListSizeChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizeChange"
.end annotation


# instance fields
.field public widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;


# direct methods
.method constructor <init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChange;)V
    .locals 3
    .param p1, "other"    # Lcom/google/android/material/shape/StateListSizeChange$SizeChange;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    iget-object v1, p1, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    iget-object v1, v1, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->type:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;

    iget-object v2, p1, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    iget v2, v2, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;->amount:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;-><init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeType;F)V

    iput-object v0, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    .line 236
    return-void
.end method

.method constructor <init>(Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;)V
    .locals 0
    .param p1, "widthChange"    # Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/google/android/material/shape/StateListSizeChange$SizeChange;->widthChange:Lcom/google/android/material/shape/StateListSizeChange$SizeChangeAmount;

    .line 232
    return-void
.end method
