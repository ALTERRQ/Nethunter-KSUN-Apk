.class public final synthetic Lcom/google/common/collect/Multisets$FilteredMultiset$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/google/common/collect/Multisets$FilteredMultiset;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Multisets$FilteredMultiset;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/Multisets$FilteredMultiset$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Multisets$FilteredMultiset;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/collect/Multisets$FilteredMultiset;

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset;->lambda$createEntrySet$0$com-google-common-collect-Multisets$FilteredMultiset(Lcom/google/common/collect/Multiset$Entry;)Z

    move-result p1

    return p1
.end method
