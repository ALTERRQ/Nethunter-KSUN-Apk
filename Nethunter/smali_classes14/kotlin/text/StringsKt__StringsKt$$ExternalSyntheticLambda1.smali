.class public final synthetic Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:[C

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>([CZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda1;->f$0:[C

    iput-boolean p2, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda1;->f$0:[C

    iget-boolean v1, p0, Lkotlin/text/StringsKt__StringsKt$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lkotlin/text/StringsKt__StringsKt;->$r8$lambda$khMEFDjIj766SCh5THQNoen7fI8([CZLjava/lang/CharSequence;I)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
