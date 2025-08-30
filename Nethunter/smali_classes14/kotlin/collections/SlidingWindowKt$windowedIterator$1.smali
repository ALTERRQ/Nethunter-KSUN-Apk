.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x3,
        0x4,
        0x4,
        0x4,
        0x4
    }
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "buffer",
        "e",
        "bufferInitialCapacity",
        "gap",
        "skip",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap",
        "skip",
        "$this$iterator",
        "buffer",
        "e",
        "bufferInitialCapacity",
        "gap",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap",
        "$this$iterator",
        "buffer",
        "bufferInitialCapacity",
        "gap"
    }
    s = {
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "I$2",
        "L$0",
        "L$1",
        "L$3",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field I$1:I

.field I$2:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator<",
            "+TT;>;ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/collections/SlidingWindowKt$windowedIterator$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p6}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    iget v1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v7, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlin/coroutines/Continuation;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/sequences/SequenceScope;

    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 24
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .end local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :pswitch_0
    iget v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .local v2, "gap":I
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .local v3, "bufferInitialCapacity":I
    iget-object v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/collections/RingBuffer;

    .local v4, "buffer":Lkotlin/collections/RingBuffer;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move v6, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_a

    .end local v2    # "gap":I
    .end local v3    # "bufferInitialCapacity":I
    .end local v4    # "buffer":Lkotlin/collections/RingBuffer;
    :pswitch_1
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .local v3, "gap":I
    iget v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .local v6, "bufferInitialCapacity":I
    iget-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/collections/RingBuffer;

    .local v7, "buffer":Lkotlin/collections/RingBuffer;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v9, v7

    move v7, v6

    move v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_9

    .end local v3    # "gap":I
    .end local v6    # "bufferInitialCapacity":I
    .end local v7    # "buffer":Lkotlin/collections/RingBuffer;
    :pswitch_2
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .restart local v3    # "gap":I
    iget v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .restart local v6    # "bufferInitialCapacity":I
    iget-object v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    .local v7, "e":Ljava/lang/Object;
    iget-object v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/collections/RingBuffer;

    .local v9, "buffer":Lkotlin/collections/RingBuffer;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v10, v9

    move-object v9, v8

    move v8, v6

    move v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_6

    .end local v3    # "gap":I
    .end local v6    # "bufferInitialCapacity":I
    .end local v7    # "e":Ljava/lang/Object;
    .end local v9    # "buffer":Lkotlin/collections/RingBuffer;
    :pswitch_3
    iget v2, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    .local v2, "skip":I
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .restart local v3    # "gap":I
    iget v4, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .local v4, "bufferInitialCapacity":I
    iget-object v5, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    .local v5, "buffer":Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move v8, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_3

    .end local v2    # "skip":I
    .end local v3    # "gap":I
    .end local v4    # "bufferInitialCapacity":I
    .end local v5    # "buffer":Ljava/util/ArrayList;
    :pswitch_4
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    .local v3, "skip":I
    iget v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    .local v6, "gap":I
    iget v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    .local v7, "bufferInitialCapacity":I
    iget-object v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    .local v8, "e":Ljava/lang/Object;
    iget-object v9, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    .local v10, "buffer":Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v0

    move-object v12, v8

    move v8, v7

    move v7, v6

    move-object v6, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_1

    .end local v3    # "skip":I
    .end local v6    # "gap":I
    .end local v7    # "bufferInitialCapacity":I
    .end local v8    # "e":Ljava/lang/Object;
    .end local v10    # "buffer":Ljava/util/ArrayList;
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    iget v3, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    const/16 v6, 0x400

    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v3

    .line 26
    .local v3, "bufferInitialCapacity":I
    iget v6, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v7, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    sub-int/2addr v6, v7

    .line 27
    .restart local v6    # "gap":I
    if-ltz v6, :cond_7

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .local v7, "buffer":Ljava/util/ArrayList;
    const/4 v8, 0x0

    .line 30
    .local v8, "skip":I
    iget-object v9, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v11, v0

    move-object v10, v9

    move-object v9, v7

    move v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    .end local v3    # "bufferInitialCapacity":I
    .end local p0    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v7, "bufferInitialCapacity":I
    .local v9, "buffer":Ljava/util/ArrayList;
    .local v11, "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 31
    .local v12, "e":Ljava/lang/Object;
    if-lez v8, :cond_1

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    iget v14, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v13, v14, :cond_0

    .line 34
    move-object v13, v11

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v2, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v9, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v10, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v7, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput v8, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    iput v4, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v2, v9, v13}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_2

    .line 24
    return-object v3

    .line 34
    :cond_2
    move v15, v6

    move-object v6, v3

    move v3, v8

    move v8, v7

    move v7, v15

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .line 35
    .end local v6    # "gap":I
    .end local v9    # "buffer":Ljava/util/ArrayList;
    .local v3, "skip":I
    .local v7, "gap":I
    .local v8, "bufferInitialCapacity":I
    .restart local v10    # "buffer":Ljava/util/ArrayList;
    :goto_1
    iget-boolean v13, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v13, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    iget v14, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v13

    .line 36
    :goto_2
    move v3, v7

    move v15, v8

    move v8, v3

    move-object v3, v6

    move v6, v7

    move v7, v15

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .end local v12    # "e":Ljava/lang/Object;
    goto :goto_0

    .line 39
    .end local v3    # "skip":I
    .end local v10    # "buffer":Ljava/util/ArrayList;
    .restart local v6    # "gap":I
    .local v7, "bufferInitialCapacity":I
    .local v8, "skip":I
    .restart local v9    # "buffer":Ljava/util/ArrayList;
    :cond_4
    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/2addr v4, v10

    if-eqz v4, :cond_11

    .line 40
    iget-boolean v4, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-nez v4, :cond_5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v10, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v4, v10, :cond_11

    :cond_5
    move-object v4, v11

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v5, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v5, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v7, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput v8, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$2:I

    const/4 v5, 0x2

    iput v5, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v2, v9, v4}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    .line 24
    return-object v3

    .line 40
    :cond_6
    move v3, v6

    move v4, v7

    move-object v5, v9

    .end local v6    # "gap":I
    .end local v7    # "bufferInitialCapacity":I
    .end local v9    # "buffer":Ljava/util/ArrayList;
    .local v3, "gap":I
    .restart local v4    # "bufferInitialCapacity":I
    .restart local v5    # "buffer":Ljava/util/ArrayList;
    :goto_3
    move v6, v3

    move v7, v4

    goto/16 :goto_b

    .line 43
    .end local v2    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .end local v4    # "bufferInitialCapacity":I
    .end local v5    # "buffer":Ljava/util/ArrayList;
    .end local v8    # "skip":I
    .end local v11    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    .local v1, "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v3, "bufferInitialCapacity":I
    .restart local v6    # "gap":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_7
    new-instance v7, Lkotlin/collections/RingBuffer;

    invoke-direct {v7, v3}, Lkotlin/collections/RingBuffer;-><init>(I)V

    .line 44
    .local v7, "buffer":Lkotlin/collections/RingBuffer;
    iget-object v8, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v11, v0

    move-object v9, v7

    move v7, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    .end local v3    # "bufferInitialCapacity":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .restart local v2    # "$this$iterator":Lkotlin/sequences/SequenceScope;
    .local v7, "bufferInitialCapacity":I
    .local v9, "buffer":Lkotlin/collections/RingBuffer;
    .restart local v11    # "this":Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 45
    .local v10, "e":Ljava/lang/Object;
    invoke-virtual {v9, v10}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v9}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 47
    invoke-virtual {v9}, Lkotlin/collections/RingBuffer;->size()I

    move-result v12

    iget v13, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ge v12, v13, :cond_9

    iget v12, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-virtual {v9, v12}, Lkotlin/collections/RingBuffer;->expanded(I)Lkotlin/collections/RingBuffer;

    move-result-object v9

    goto :goto_4

    .line 49
    :cond_9
    iget-boolean v12, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v12, :cond_a

    move-object v12, v9

    check-cast v12, Ljava/util/List;

    goto :goto_5

    :cond_a
    new-instance v12, Ljava/util/ArrayList;

    move-object v13, v9

    check-cast v13, Ljava/util/Collection;

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v12, Ljava/util/List;

    :goto_5
    move-object v13, v11

    check-cast v13, Lkotlin/coroutines/Continuation;

    iput-object v2, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v9, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v8, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v14, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v7, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    const/4 v14, 0x3

    iput v14, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v2, v12, v13}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_b

    .line 24
    return-object v3

    .line 49
    :cond_b
    move-object v15, v8

    move v8, v7

    move-object v7, v10

    move-object v10, v9

    move-object v9, v15

    .line 50
    .end local v9    # "buffer":Lkotlin/collections/RingBuffer;
    .local v7, "e":Ljava/lang/Object;
    .local v8, "bufferInitialCapacity":I
    .local v10, "buffer":Lkotlin/collections/RingBuffer;
    :goto_6
    iget v12, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v10, v12}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    .end local v7    # "e":Ljava/lang/Object;
    goto :goto_4

    .line 53
    .end local v8    # "bufferInitialCapacity":I
    .end local v10    # "buffer":Lkotlin/collections/RingBuffer;
    .local v7, "bufferInitialCapacity":I
    .restart local v9    # "buffer":Lkotlin/collections/RingBuffer;
    :cond_c
    iget-boolean v8, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-eqz v8, :cond_11

    .line 54
    :goto_7
    invoke-virtual {v9}, Lkotlin/collections/RingBuffer;->size()I

    move-result v8

    iget v10, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    if-le v8, v10, :cond_f

    .line 55
    iget-boolean v8, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v8, :cond_d

    move-object v8, v9

    check-cast v8, Ljava/util/List;

    goto :goto_8

    :cond_d
    new-instance v8, Ljava/util/ArrayList;

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v8, Ljava/util/List;

    :goto_8
    move-object v10, v11

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v2, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput-object v9, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v5, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v5, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v7, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    const/4 v12, 0x4

    iput v12, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v2, v8, v10}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_e

    .line 24
    return-object v3

    .line 56
    :cond_e
    :goto_9
    iget v8, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v9, v8}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    goto :goto_7

    .line 58
    :cond_f
    move-object v8, v9

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v4, v8

    if-eqz v4, :cond_11

    move-object v4, v11

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v5, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v5, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v7, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput v6, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    const/4 v5, 0x5

    iput v5, v11, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->label:I

    invoke-virtual {v2, v9, v4}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_10

    .line 24
    return-object v3

    .line 58
    :cond_10
    move v3, v7

    move-object v4, v9

    .line 61
    .end local v7    # "bufferInitialCapacity":I
    .end local v9    # "buffer":Lkotlin/collections/RingBuffer;
    .restart local v3    # "bufferInitialCapacity":I
    .local v4, "buffer":Lkotlin/collections/RingBuffer;
    :goto_a
    move v7, v3

    .end local v3    # "bufferInitialCapacity":I
    .end local v4    # "buffer":Lkotlin/collections/RingBuffer;
    .restart local v7    # "bufferInitialCapacity":I
    :cond_11
    :goto_b
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
