.class final Lcom/google/common/collect/RegularImmutableTable$Values;
.super Lcom/google/common/collect/ImmutableList;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/RegularImmutableTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$Values;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableTable$Values;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/RegularImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/RegularImmutableTable;
    .param p2, "x1"    # Lcom/google/common/collect/RegularImmutableTable$1;

    .line 92
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$Values;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableTable$Values;-><init>(Lcom/google/common/collect/RegularImmutableTable;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$Values;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$Values;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableTable;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 105
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$Values;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 95
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$Values;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$Values;->this$0:Lcom/google/common/collect/RegularImmutableTable;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableTable;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 114
    .local p0, "this":Lcom/google/common/collect/RegularImmutableTable$Values;, "Lcom/google/common/collect/RegularImmutableTable<TR;TC;TV;>.Values;"
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
