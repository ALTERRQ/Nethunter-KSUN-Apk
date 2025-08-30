.class public final synthetic Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/base/Converter;

.field public final synthetic f$1:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/Converter;Ljava/lang/Iterable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/base/Converter;

    iput-object p2, p0, Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/base/Converter;

    iget-object v1, p0, Lcom/google/common/base/Converter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Converter;->lambda$convertAll$0$com-google-common-base-Converter(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
