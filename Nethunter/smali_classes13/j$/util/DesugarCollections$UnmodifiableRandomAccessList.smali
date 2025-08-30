.class Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;
.super Lj$/util/DesugarCollections$UnmodifiableList;
.source "DesugarCollections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/DesugarCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnmodifiableRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/DesugarCollections$UnmodifiableList<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2348186ae0b7b9b1L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)V"
        }
    .end annotation

    .line 472
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;, "Ljava/util/DesugarCollections$UnmodifiableRandomAccessList<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+TE;>;"
    invoke-direct {p0, p1}, Lj$/util/DesugarCollections$UnmodifiableList;-><init>(Ljava/util/List;)V

    .line 473
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 487
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;, "Ljava/util/DesugarCollections$UnmodifiableRandomAccessList<TE;>;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableList;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;, "Ljava/util/DesugarCollections$UnmodifiableRandomAccessList<TE;>;"
    new-instance v0, Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;

    iget-object v1, p0, Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/util/DesugarCollections$UnmodifiableRandomAccessList;-><init>(Ljava/util/List;)V

    return-object v0
.end method
