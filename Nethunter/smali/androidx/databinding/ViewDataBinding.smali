.class public abstract Landroidx/databinding/ViewDataBinding;
.super Landroidx/databinding/BaseObservable;
.source "ViewDataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/ViewDataBinding$OnStartListener;,
        Landroidx/databinding/ViewDataBinding$IncludedLayouts;,
        Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;,
        Landroidx/databinding/ViewDataBinding$LiveDataListener;,
        Landroidx/databinding/ViewDataBinding$WeakMapListener;,
        Landroidx/databinding/ViewDataBinding$WeakListListener;,
        Landroidx/databinding/ViewDataBinding$WeakPropertyListener;
    }
.end annotation


# static fields
.field private static final BINDING_NUMBER_START:I

.field public static final BINDING_TAG_PREFIX:Ljava/lang/String; = "binding_"

.field private static final CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

.field private static final HALTED:I = 0x2

.field private static final REBIND:I = 0x1

.field private static final REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "Landroidx/databinding/OnRebindCallback;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final REBOUND:I = 0x3

.field private static final ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

.field static SDK_INT:I

.field private static final USE_CHOREOGRAPHER:Z

.field private static final sReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroidx/databinding/ViewDataBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mBindingComponent:Landroidx/databinding/DataBindingComponent;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainingBinding:Landroidx/databinding/ViewDataBinding;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mInLiveDataRegisterObserver:Z

.field protected mInStateFlowRegisterObserver:Z

.field private mIsExecutingPendingBindings:Z

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mLocalFieldObservers:[Landroidx/databinding/WeakListener;

.field private mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

.field private mPendingRebind:Z

.field private mRebindCallbacks:Landroidx/databinding/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry<",
            "Landroidx/databinding/OnRebindCallback;",
            "Landroidx/databinding/ViewDataBinding;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRebindHalted:Z

.field private final mRebindRunnable:Ljava/lang/Runnable;

.field private final mRoot:Landroid/view/View;

.field private mUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    .line 88
    const-string v0, "binding_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroidx/databinding/ViewDataBinding;->BINDING_NUMBER_START:I

    .line 90
    sget v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    .line 95
    new-instance v0, Landroidx/databinding/ViewDataBinding$1;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$1;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 110
    new-instance v0, Landroidx/databinding/ViewDataBinding$2;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$2;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 125
    new-instance v0, Landroidx/databinding/ViewDataBinding$3;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$3;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 140
    new-instance v0, Landroidx/databinding/ViewDataBinding$4;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$4;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

    .line 153
    new-instance v0, Landroidx/databinding/ViewDataBinding$5;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$5;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    .line 173
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 178
    nop

    .line 181
    new-instance v0, Landroidx/databinding/ViewDataBinding$6;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$6;-><init>()V

    sput-object v0, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    .line 196
    return-void
.end method

.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V
    .locals 2
    .param p1, "bindingComponent"    # Landroidx/databinding/DataBindingComponent;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "localFieldCount"    # I

    .line 308
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 201
    new-instance v0, Landroidx/databinding/ViewDataBinding$7;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$7;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    .line 230
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    .line 309
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mBindingComponent:Landroidx/databinding/DataBindingComponent;

    .line 310
    new-array v0, p3, [Landroidx/databinding/WeakListener;

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    .line 311
    iput-object p2, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    .line 312
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    sget-boolean v0, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    .line 317
    new-instance v0, Landroidx/databinding/ViewDataBinding$8;

    invoke-direct {v0, p0}, Landroidx/databinding/ViewDataBinding$8;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    goto :goto_0

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 325
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    .line 327
    :goto_0
    return-void

    .line 313
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DataBinding must be created in view\'s UI Thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 1
    .param p1, "bindingComponent"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "localFieldCount"    # I

    .line 333
    invoke-static {p1}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 334
    return-void
.end method

.method static synthetic access$002(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/databinding/ViewDataBinding;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    return p1
.end method

.method static synthetic access$100(Landroidx/databinding/ViewDataBinding;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroidx/databinding/ViewDataBinding;

    .line 67
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Landroidx/databinding/ViewDataBinding;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/databinding/ViewDataBinding;
    .param p1, "x1"    # Z

    .line 67
    iput-boolean p1, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    return p1
.end method

.method static synthetic access$300()V
    .locals 0

    .line 67
    invoke-static {}, Landroidx/databinding/ViewDataBinding;->processReferenceQueue()V

    return-void
.end method

.method static synthetic access$400(Landroidx/databinding/ViewDataBinding;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroidx/databinding/ViewDataBinding;

    .line 67
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/View$OnAttachStateChangeListener;
    .locals 1

    .line 67
    sget-object v0, Landroidx/databinding/ViewDataBinding;->ROOT_REATTACHED_LISTENER:Landroid/view/View$OnAttachStateChangeListener;

    return-object v0
.end method

.method protected static bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .param p0, "bindingComponent"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutId"    # I

    .line 736
    nop

    .line 737
    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    .line 736
    invoke-static {v0, p1, p2}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method private static checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;
    .locals 2
    .param p0, "bindingComponent"    # Ljava/lang/Object;

    .line 337
    if-nez p0, :cond_0

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 340
    :cond_0
    instance-of v0, p0, Landroidx/databinding/DataBindingComponent;

    if-eqz v0, :cond_1

    .line 346
    move-object v0, p0

    check-cast v0, Landroidx/databinding/DataBindingComponent;

    return-object v0

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private executeBindingsInternal()V
    .locals 4

    .line 494
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 496
    return-void

    .line 498
    :cond_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 499
    return-void

    .line 501
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    .line 502
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    .line 503
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 504
    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    invoke-virtual {v2, p0, v0, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 507
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 511
    :cond_2
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindHalted:Z

    if-nez v0, :cond_3

    .line 512
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    .line 513
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    if-eqz v0, :cond_3

    .line 514
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v3}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 517
    :cond_3
    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->mIsExecutingPendingBindings:Z

    .line 518
    return-void
.end method

.method protected static executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .param p0, "other"    # Landroidx/databinding/ViewDataBinding;

    .line 526
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    .line 527
    return-void
.end method

.method private static findIncludeIndex(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;I)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "minInclude"    # I
    .param p2, "included"    # Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .param p3, "includedIndex"    # I

    .line 1317
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1318
    .local v0, "slashIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1320
    .local v1, "layoutName":Ljava/lang/CharSequence;
    iget-object v2, p2, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layouts:[[Ljava/lang/String;

    aget-object v2, v2, p3

    .line 1321
    .local v2, "layouts":[Ljava/lang/String;
    array-length v3, v2

    .line 1322
    .local v3, "length":I
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1323
    aget-object v5, v2, v4

    .line 1324
    .local v5, "layout":Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1325
    return v4

    .line 1322
    .end local v5    # "layout":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1328
    .end local v4    # "i":I
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method private static findLastMatching(Landroid/view/ViewGroup;I)I
    .locals 12
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "firstIncludedIndex"    # I

    .line 1332
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1333
    .local v0, "firstView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1334
    .local v1, "firstViewTag":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1335
    .local v2, "tagBase":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 1337
    .local v3, "tagSequenceIndex":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1338
    .local v4, "count":I
    move v5, p1

    .line 1339
    .local v5, "max":I
    add-int/lit8 v6, p1, 0x1

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 1340
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1341
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 1342
    .local v8, "objTag":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 1343
    .local v9, "tag":Ljava/lang/String;
    :goto_1
    if-eqz v9, :cond_2

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1344
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v10, v11, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_1

    .line 1345
    return v5

    .line 1347
    :cond_1
    invoke-static {v9, v3}, Landroidx/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1348
    move v5, v6

    .line 1339
    .end local v7    # "view":Landroid/view/View;
    .end local v8    # "objTag":Ljava/lang/Object;
    .end local v9    # "tag":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1352
    .end local v6    # "i":I
    :cond_3
    return v5
.end method

.method static getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 563
    if-eqz p0, :cond_0

    .line 564
    sget v0, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ViewDataBinding;

    return-object v0

    .line 566
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBuildSdkInt()I
    .locals 1

    .line 371
    sget v0, Landroidx/databinding/ViewDataBinding;->SDK_INT:I

    return v0
.end method

.method protected static getColorFromResource(Landroid/view/View;I)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resourceId"    # I

    .line 836
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 837
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0

    .line 839
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected static getColorStateListFromResource(Landroid/view/View;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resourceId"    # I

    .line 845
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 846
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 848
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method protected static getDrawableFromResource(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resourceId"    # I

    .line 854
    nop

    .line 855
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected static getFrom(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;)TT;"
        }
    .end annotation

    .line 1124
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p0, :cond_0

    .line 1125
    const/4 v0, 0x0

    return-object v0

    .line 1127
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected static getFromArray([BI)B
    .locals 1
    .param p0, "arr"    # [B
    .param p1, "index"    # I

    .line 895
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 898
    :cond_0
    aget-byte v0, p0, p1

    return v0

    .line 896
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static getFromArray([CI)C
    .locals 1
    .param p0, "arr"    # [C
    .param p1, "index"    # I

    .line 927
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 930
    :cond_0
    aget-char v0, p0, p1

    return v0

    .line 928
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static getFromArray([DI)D
    .locals 2
    .param p0, "arr"    # [D
    .param p1, "index"    # I

    .line 991
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 994
    :cond_0
    aget-wide v0, p0, p1

    return-wide v0

    .line 992
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected static getFromArray([FI)F
    .locals 1
    .param p0, "arr"    # [F
    .param p1, "index"    # I

    .line 975
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    aget v0, p0, p1

    return v0

    .line 976
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static getFromArray([II)I
    .locals 1
    .param p0, "arr"    # [I
    .param p1, "index"    # I

    .line 943
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 946
    :cond_0
    aget v0, p0, p1

    return v0

    .line 944
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static getFromArray([JI)J
    .locals 2
    .param p0, "arr"    # [J
    .param p1, "index"    # I

    .line 959
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 962
    :cond_0
    aget-wide v0, p0, p1

    return-wide v0

    .line 960
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected static getFromArray([Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    .line 863
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 866
    :cond_0
    aget-object v0, p0, p1

    return-object v0

    .line 864
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getFromArray([SI)S
    .locals 1
    .param p0, "arr"    # [S
    .param p1, "index"    # I

    .line 911
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    aget-short v0, p0, p1

    return v0

    .line 912
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static getFromArray([ZI)Z
    .locals 1
    .param p0, "arr"    # [Z
    .param p1, "index"    # I

    .line 879
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    aget-boolean v0, p0, p1

    return v0

    .line 880
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static getFromList(Landroid/util/SparseIntArray;I)I
    .locals 1
    .param p0, "list"    # Landroid/util/SparseIntArray;
    .param p1, "index"    # I

    .line 1090
    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0

    .line 1091
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static getFromList(Landroid/util/SparseLongArray;I)J
    .locals 2
    .param p0, "list"    # Landroid/util/SparseLongArray;
    .param p1, "index"    # I

    .line 1107
    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1110
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    return-wide v0

    .line 1108
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected static getFromList(Landroid/util/LongSparseArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1040
    .local p0, "list":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TT;>;"
    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1041
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getFromList(Landroid/util/SparseArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1023
    .local p0, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1024
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getFromList(Landroidx/collection/LongSparseArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1057
    .local p0, "list":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TT;>;"
    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1060
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1058
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getFromList(Ljava/util/List;I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 1007
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1008
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected static getFromList(Landroid/util/SparseBooleanArray;I)Z
    .locals 1
    .param p0, "list"    # Landroid/util/SparseBooleanArray;
    .param p1, "index"    # I

    .line 1074
    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 1077
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1075
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "attachToParent"    # Z
    .param p4, "bindingComponent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1409
    nop

    .line 1414
    invoke-static {p4}, Landroidx/databinding/ViewDataBinding;->checkAndCastToBindingComponent(Ljava/lang/Object;)Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    .line 1409
    invoke-static {p0, p1, p2, p3, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    return-object v0
.end method

.method private static isNumeric(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "startIndex"    # I

    .line 1356
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1357
    .local v0, "length":I
    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 1358
    return v1

    .line 1360
    :cond_0
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1361
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1362
    return v1

    .line 1360
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1365
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V
    .locals 23
    .param p0, "bindingComponent"    # Landroidx/databinding/DataBindingComponent;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bindings"    # [Ljava/lang/Object;
    .param p3, "includes"    # Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .param p4, "viewsWithIds"    # Landroid/util/SparseIntArray;
    .param p5, "isRoot"    # Z

    .line 1231
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {p1 .. p1}, Landroidx/databinding/ViewDataBinding;->getBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v10

    .line 1232
    .local v10, "existingBinding":Landroidx/databinding/ViewDataBinding;
    if-eqz v10, :cond_0

    .line 1233
    return-void

    .line 1235
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 1236
    .local v11, "objTag":Ljava/lang/Object;
    instance-of v0, v11, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    .line 1237
    .local v12, "tag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1238
    .local v0, "isBound":Z
    const-string v13, "layout"

    const/4 v1, -0x1

    if-eqz p5, :cond_5

    if-eqz v12, :cond_5

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1239
    const/16 v2, 0x5f

    invoke-virtual {v12, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1240
    .local v2, "underscoreIndex":I
    if-lez v2, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-static {v12, v3}, Landroidx/databinding/ViewDataBinding;->isNumeric(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1241
    add-int/lit8 v3, v2, 0x1

    invoke-static {v12, v3}, Landroidx/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    move-result v3

    .line 1242
    .local v3, "index":I
    aget-object v4, p2, v3

    if-nez v4, :cond_2

    .line 1243
    aput-object v7, p2, v3

    .line 1245
    :cond_2
    if-nez v8, :cond_3

    const/4 v4, -0x1

    goto :goto_1

    :cond_3
    move v4, v3

    .line 1246
    .local v4, "indexInIncludes":I
    :goto_1
    const/4 v0, 0x1

    .line 1247
    .end local v3    # "index":I
    goto :goto_2

    .line 1248
    .end local v4    # "indexInIncludes":I
    :cond_4
    const/4 v4, -0x1

    .line 1250
    .end local v2    # "underscoreIndex":I
    .restart local v4    # "indexInIncludes":I
    :goto_2
    move v14, v0

    move v15, v4

    goto :goto_4

    .end local v4    # "indexInIncludes":I
    :cond_5
    if-eqz v12, :cond_8

    const-string v2, "binding_"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1251
    sget v2, Landroidx/databinding/ViewDataBinding;->BINDING_NUMBER_START:I

    invoke-static {v12, v2}, Landroidx/databinding/ViewDataBinding;->parseTagInt(Ljava/lang/String;I)I

    move-result v2

    .line 1252
    .local v2, "tagIndex":I
    aget-object v3, p2, v2

    if-nez v3, :cond_6

    .line 1253
    aput-object v7, p2, v2

    .line 1255
    :cond_6
    const/4 v0, 0x1

    .line 1256
    if-nez v8, :cond_7

    const/4 v3, -0x1

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    move v4, v3

    .line 1257
    .end local v2    # "tagIndex":I
    .restart local v4    # "indexInIncludes":I
    move v14, v0

    move v15, v4

    goto :goto_4

    .line 1259
    .end local v4    # "indexInIncludes":I
    :cond_8
    const/4 v4, -0x1

    move v14, v0

    move v15, v4

    .line 1261
    .end local v0    # "isBound":Z
    .local v14, "isBound":Z
    .local v15, "indexInIncludes":I
    :goto_4
    if-nez v14, :cond_9

    .line 1262
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1263
    .local v0, "id":I
    if-lez v0, :cond_9

    .line 1265
    if-eqz v9, :cond_9

    invoke-virtual {v9, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    move v2, v1

    .local v2, "index":I
    if-ltz v1, :cond_9

    aget-object v1, p2, v2

    if-nez v1, :cond_9

    .line 1267
    aput-object v7, p2, v2

    .line 1272
    .end local v0    # "id":I
    .end local v2    # "index":I
    :cond_9
    instance-of v0, v7, Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 1273
    move-object v5, v7

    check-cast v5, Landroid/view/ViewGroup;

    .line 1274
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1275
    .local v4, "count":I
    const/4 v0, 0x0

    .line 1276
    .local v0, "minInclude":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v4, :cond_12

    .line 1277
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1278
    .local v3, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 1279
    .local v2, "isInclude":Z
    if-ltz v15, :cond_10

    move/from16 v16, v2

    .end local v2    # "isInclude":Z
    .local v16, "isInclude":Z
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1280
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1281
    .local v2, "childTag":Ljava/lang/String;
    move/from16 v17, v4

    .end local v4    # "count":I
    .local v17, "count":I
    const-string v4, "_0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1282
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_d

    .line 1284
    invoke-static {v2, v0, v8, v15}, Landroidx/databinding/ViewDataBinding;->findIncludeIndex(Ljava/lang/String;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;I)I

    move-result v4

    .line 1286
    .local v4, "includeIndex":I
    if-ltz v4, :cond_c

    .line 1287
    const/16 v16, 0x1

    .line 1288
    add-int/lit8 v0, v4, 0x1

    .line 1289
    move/from16 v18, v0

    .end local v0    # "minInclude":I
    .local v18, "minInclude":I
    iget-object v0, v8, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->indexes:[[I

    aget-object v0, v0, v15

    aget v0, v0, v4

    .line 1290
    .local v0, "index":I
    move-object/from16 v19, v2

    .end local v2    # "childTag":Ljava/lang/String;
    .local v19, "childTag":Ljava/lang/String;
    iget-object v2, v8, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->layoutIds:[[I

    aget-object v2, v2, v15

    aget v2, v2, v4

    .line 1291
    .local v2, "layoutId":I
    move/from16 v20, v4

    .end local v4    # "includeIndex":I
    .local v20, "includeIndex":I
    invoke-static {v5, v1}, Landroidx/databinding/ViewDataBinding;->findLastMatching(Landroid/view/ViewGroup;I)I

    move-result v4

    .line 1292
    .local v4, "lastMatchingIndex":I
    if-ne v4, v1, :cond_a

    .line 1293
    invoke-static {v6, v3, v2}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v21

    aput-object v21, p2, v0

    move v7, v1

    goto :goto_8

    .line 1296
    :cond_a
    sub-int v21, v4, v1

    move/from16 v22, v4

    .end local v4    # "lastMatchingIndex":I
    .local v22, "lastMatchingIndex":I
    add-int/lit8 v4, v21, 0x1

    .line 1297
    .local v4, "includeCount":I
    new-array v7, v4, [Landroid/view/View;

    .line 1298
    .local v7, "included":[Landroid/view/View;
    const/16 v21, 0x0

    move/from16 v8, v21

    .local v8, "j":I
    :goto_6
    if-ge v8, v4, :cond_b

    .line 1299
    add-int v9, v1, v8

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1298
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, p4

    goto :goto_6

    .line 1301
    .end local v8    # "j":I
    :cond_b
    invoke-static {v6, v7, v2}, Landroidx/databinding/DataBindingUtil;->bind(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    aput-object v8, p2, v0

    .line 1303
    add-int/lit8 v8, v4, -0x1

    add-int/2addr v1, v8

    move v7, v1

    goto :goto_8

    .line 1286
    .end local v7    # "included":[Landroid/view/View;
    .end local v18    # "minInclude":I
    .end local v19    # "childTag":Ljava/lang/String;
    .end local v20    # "includeIndex":I
    .end local v22    # "lastMatchingIndex":I
    .local v0, "minInclude":I
    .local v2, "childTag":Ljava/lang/String;
    .local v4, "includeIndex":I
    :cond_c
    move-object/from16 v19, v2

    move/from16 v20, v4

    .end local v2    # "childTag":Ljava/lang/String;
    .end local v4    # "includeIndex":I
    .restart local v19    # "childTag":Ljava/lang/String;
    .restart local v20    # "includeIndex":I
    goto :goto_7

    .line 1282
    .end local v19    # "childTag":Ljava/lang/String;
    .end local v20    # "includeIndex":I
    .restart local v2    # "childTag":Ljava/lang/String;
    :cond_d
    move-object/from16 v19, v2

    .end local v2    # "childTag":Ljava/lang/String;
    .restart local v19    # "childTag":Ljava/lang/String;
    goto :goto_7

    .line 1281
    .end local v19    # "childTag":Ljava/lang/String;
    .restart local v2    # "childTag":Ljava/lang/String;
    :cond_e
    move-object/from16 v19, v2

    .end local v2    # "childTag":Ljava/lang/String;
    .restart local v19    # "childTag":Ljava/lang/String;
    goto :goto_7

    .line 1279
    .end local v17    # "count":I
    .end local v19    # "childTag":Ljava/lang/String;
    .local v4, "count":I
    :cond_f
    move/from16 v17, v4

    .end local v4    # "count":I
    .restart local v17    # "count":I
    goto :goto_7

    .end local v16    # "isInclude":Z
    .end local v17    # "count":I
    .local v2, "isInclude":Z
    .restart local v4    # "count":I
    :cond_10
    move/from16 v16, v2

    move/from16 v17, v4

    .line 1308
    .end local v2    # "isInclude":Z
    .end local v4    # "count":I
    .restart local v16    # "isInclude":Z
    .restart local v17    # "count":I
    :goto_7
    move/from16 v18, v0

    move v7, v1

    .end local v0    # "minInclude":I
    .end local v1    # "i":I
    .local v7, "i":I
    .restart local v18    # "minInclude":I
    :goto_8
    if-nez v16, :cond_11

    .line 1309
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    move-object v9, v3

    .end local v3    # "child":Landroid/view/View;
    .local v9, "child":Landroid/view/View;
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v19, v5

    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    .local v19, "viewGroup":Landroid/view/ViewGroup;
    move v5, v8

    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    goto :goto_9

    .line 1308
    .end local v9    # "child":Landroid/view/View;
    .end local v19    # "viewGroup":Landroid/view/ViewGroup;
    .restart local v3    # "child":Landroid/view/View;
    .restart local v5    # "viewGroup":Landroid/view/ViewGroup;
    :cond_11
    move-object v9, v3

    move-object/from16 v19, v5

    .line 1276
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    .end local v16    # "isInclude":Z
    .restart local v19    # "viewGroup":Landroid/view/ViewGroup;
    :goto_9
    add-int/lit8 v1, v7, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v4, v17

    move/from16 v0, v18

    move-object/from16 v5, v19

    .end local v7    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_5

    .end local v17    # "count":I
    .end local v18    # "minInclude":I
    .end local v19    # "viewGroup":Landroid/view/ViewGroup;
    .restart local v0    # "minInclude":I
    .restart local v4    # "count":I
    .restart local v5    # "viewGroup":Landroid/view/ViewGroup;
    :cond_12
    move/from16 v17, v4

    move-object/from16 v19, v5

    .line 1313
    .end local v0    # "minInclude":I
    .end local v1    # "i":I
    .end local v4    # "count":I
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    :cond_13
    return-void
.end method

.method protected static mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 7
    .param p0, "bindingComponent"    # Landroidx/databinding/DataBindingComponent;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "numBindings"    # I
    .param p3, "includes"    # Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .param p4, "viewsWithIds"    # Landroid/util/SparseIntArray;

    .line 759
    new-array v6, p2, [Ljava/lang/Object;

    .line 760
    .local v6, "bindings":[Ljava/lang/Object;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    .line 761
    return-object v6
.end method

.method protected static mapBindings(Landroidx/databinding/DataBindingComponent;[Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;
    .locals 8
    .param p0, "bindingComponent"    # Landroidx/databinding/DataBindingComponent;
    .param p1, "roots"    # [Landroid/view/View;
    .param p2, "numBindings"    # I
    .param p3, "includes"    # Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .param p4, "viewsWithIds"    # Landroid/util/SparseIntArray;

    .line 1220
    new-array v6, p2, [Ljava/lang/Object;

    .line 1221
    .local v6, "bindings":[Ljava/lang/Object;
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_0
    array-length v0, p1

    if-ge v7, v0, :cond_0

    .line 1222
    aget-object v1, p1, v7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, v6

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;Landroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;Z)V

    .line 1221
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1224
    .end local v7    # "i":I
    :cond_0
    return-object v6
.end method

.method protected static parse(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fallback"    # B

    .line 775
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method protected static parse(Ljava/lang/String;C)C
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fallback"    # C

    .line 828
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 831
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 829
    :cond_1
    :goto_0
    return p1
.end method

.method protected static parse(Ljava/lang/String;D)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fallback"    # D

    .line 820
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method protected static parse(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fallback"    # F

    .line 811
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method protected static parse(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fallback"    # I

    .line 793
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method protected static parse(Ljava/lang/String;J)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fallback"    # J

    .line 802
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method protected static parse(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fallback"    # S

    .line 784
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 785
    :catch_0
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method protected static parse(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "fallback"    # Z

    .line 766
    if-nez p0, :cond_0

    .line 767
    return p1

    .line 769
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static parseTagInt(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "startIndex"    # I

    .line 1375
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1376
    .local v0, "end":I
    const/4 v1, 0x0

    .line 1377
    .local v1, "val":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1378
    mul-int/lit8 v1, v1, 0xa

    .line 1379
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1380
    .local v3, "c":C
    add-int/lit8 v4, v3, -0x30

    add-int/2addr v1, v4

    .line 1377
    .end local v3    # "c":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1382
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method private static processReferenceQueue()V
    .locals 2

    .line 1390
    nop

    :cond_0
    :goto_0
    sget-object v0, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+Landroidx/databinding/ViewDataBinding;>;"
    if-eqz v0, :cond_1

    .line 1391
    instance-of v0, v1, Landroidx/databinding/WeakListener;

    if-eqz v0, :cond_0

    .line 1392
    move-object v0, v1

    check-cast v0, Landroidx/databinding/WeakListener;

    .line 1393
    .local v0, "listener":Landroidx/databinding/WeakListener;
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->unregister()Z

    .line 1394
    .end local v0    # "listener":Landroidx/databinding/WeakListener;
    goto :goto_0

    .line 1396
    :cond_1
    return-void
.end method

.method protected static safeUnbox(Ljava/lang/Byte;)B
    .locals 1
    .param p0, "boxed"    # Ljava/lang/Byte;

    .line 1169
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    :goto_0
    return v0
.end method

.method protected static safeUnbox(Ljava/lang/Character;)C
    .locals 1
    .param p0, "boxed"    # Ljava/lang/Character;

    .line 1174
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    :goto_0
    return v0
.end method

.method protected static safeUnbox(Ljava/lang/Double;)D
    .locals 2
    .param p0, "boxed"    # Ljava/lang/Double;

    .line 1179
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected static safeUnbox(Ljava/lang/Float;)F
    .locals 1
    .param p0, "boxed"    # Ljava/lang/Float;

    .line 1184
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method protected static safeUnbox(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "boxed"    # Ljava/lang/Integer;

    .line 1154
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected static safeUnbox(Ljava/lang/Long;)J
    .locals 2
    .param p0, "boxed"    # Ljava/lang/Long;

    .line 1159
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method protected static safeUnbox(Ljava/lang/Short;)S
    .locals 1
    .param p0, "boxed"    # Ljava/lang/Short;

    .line 1164
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    :goto_0
    return v0
.end method

.method protected static safeUnbox(Ljava/lang/Boolean;)Z
    .locals 1
    .param p0, "boxed"    # Ljava/lang/Boolean;

    .line 1189
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected static setBindingInverseListener(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;)V
    .locals 1
    .param p0, "binder"    # Landroidx/databinding/ViewDataBinding;
    .param p1, "oldListener"    # Landroidx/databinding/InverseBindingListener;
    .param p2, "listener"    # Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;

    .line 1141
    if-eq p1, p2, :cond_1

    .line 1142
    if-eqz p1, :cond_0

    .line 1143
    move-object v0, p1

    check-cast v0, Landroidx/databinding/ViewDataBinding$PropertyChangedInverseListener;

    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 1146
    :cond_0
    if-eqz p2, :cond_1

    .line 1147
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 1150
    :cond_1
    return-void
.end method

.method protected static setTo(Landroid/util/LongSparseArray;ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    .line 1049
    .local p0, "list":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1052
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1053
    return-void

    .line 1050
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroid/util/SparseArray;ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    .line 1031
    .local p0, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1035
    return-void

    .line 1032
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroid/util/SparseBooleanArray;IZ)V
    .locals 1
    .param p0, "list"    # Landroid/util/SparseBooleanArray;
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1082
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1085
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1086
    return-void

    .line 1083
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroid/util/SparseIntArray;II)V
    .locals 1
    .param p0, "list"    # Landroid/util/SparseIntArray;
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1098
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    return-void

    .line 1099
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroid/util/SparseLongArray;IJ)V
    .locals 1
    .param p0, "list"    # Landroid/util/SparseLongArray;
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1116
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1119
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1120
    return-void

    .line 1117
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Landroidx/collection/LongSparseArray;ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;ITT;)V"
        }
    .end annotation

    .line 1066
    .local p0, "list":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1069
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1070
    return-void

    .line 1067
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Ljava/util/List;ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)V"
        }
    .end annotation

    .line 1015
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1018
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1019
    return-void

    .line 1016
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TT;>;TK;TT;)V"
        }
    .end annotation

    .line 1132
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 1133
    return-void

    .line 1135
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    return-void
.end method

.method protected static setTo([BIB)V
    .locals 1
    .param p0, "arr"    # [B
    .param p1, "index"    # I
    .param p2, "value"    # B

    .line 903
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    aput-byte p2, p0, p1

    .line 907
    return-void

    .line 904
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([CIC)V
    .locals 1
    .param p0, "arr"    # [C
    .param p1, "index"    # I
    .param p2, "value"    # C

    .line 935
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 938
    :cond_0
    aput-char p2, p0, p1

    .line 939
    return-void

    .line 936
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([DID)V
    .locals 1
    .param p0, "arr"    # [D
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 999
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1002
    :cond_0
    aput-wide p2, p0, p1

    .line 1003
    return-void

    .line 1000
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([FIF)V
    .locals 1
    .param p0, "arr"    # [F
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 983
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    aput p2, p0, p1

    .line 987
    return-void

    .line 984
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([III)V
    .locals 1
    .param p0, "arr"    # [I
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 951
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    aput p2, p0, p1

    .line 955
    return-void

    .line 952
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([JIJ)V
    .locals 1
    .param p0, "arr"    # [J
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 967
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 970
    :cond_0
    aput-wide p2, p0, p1

    .line 971
    return-void

    .line 968
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)V"
        }
    .end annotation

    .line 871
    .local p0, "arr":[Ljava/lang/Object;, "[TT;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    aput-object p2, p0, p1

    .line 875
    return-void

    .line 872
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([SIS)V
    .locals 1
    .param p0, "arr"    # [S
    .param p1, "index"    # I
    .param p2, "value"    # S

    .line 919
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 922
    :cond_0
    aput-short p2, p0, p1

    .line 923
    return-void

    .line 920
    :cond_1
    :goto_0
    return-void
.end method

.method protected static setTo([ZIZ)V
    .locals 1
    .param p0, "arr"    # [Z
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 887
    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    array-length v0, p0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 890
    :cond_0
    aput-boolean p2, p0, p1

    .line 891
    return-void

    .line 888
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addOnRebindCallback(Landroidx/databinding/OnRebindCallback;)V
    .locals 2
    .param p1, "listener"    # Landroidx/databinding/OnRebindCallback;

    .line 461
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Landroidx/databinding/CallbackRegistry;

    sget-object v1, Landroidx/databinding/ViewDataBinding;->REBIND_NOTIFIER:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    invoke-direct {v0, v1}, Landroidx/databinding/CallbackRegistry;-><init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    .line 464
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/CallbackRegistry;->add(Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method protected ensureBindingComponentIsNotNull(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 701
    .local p1, "oneExample":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mBindingComponent:Landroidx/databinding/DataBindingComponent;

    if-eqz v0, :cond_0

    .line 711
    return-void

    .line 702
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required DataBindingComponent is null in class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 703
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". A BindingAdapter in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 704
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not static and requires an object to use, retrieved from the DataBindingComponent. If you don\'t use an inflation method taking a DataBindingComponent, use DataBindingUtil.setDefaultComponent or make all BindingAdapter methods static."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "errorMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract executeBindings()V
.end method

.method public executePendingBindings()V
    .locals 1

    .line 483
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    if-nez v0, :cond_0

    .line 484
    invoke-direct {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsInternal()V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 488
    :goto_0
    return-void
.end method

.method forceExecuteBindings()V
    .locals 0

    .line 531
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executeBindings()V

    .line 532
    return-void
.end method

.method public getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 451
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method protected getObservedField(I)Ljava/lang/Object;
    .locals 2
    .param p1, "localFieldId"    # I

    .line 638
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    aget-object v0, v0, p1

    .line 639
    .local v0, "listener":Landroidx/databinding/WeakListener;
    if-nez v0, :cond_0

    .line 640
    const/4 v1, 0x0

    return-object v1

    .line 642
    :cond_0
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 578
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method protected handleFieldChange(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "mLocalFieldId"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldId"    # I

    .line 583
    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInStateFlowRegisterObserver:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->onFieldChange(ILjava/lang/Object;I)Z

    move-result v0

    .line 590
    .local v0, "result":Z
    if-eqz v0, :cond_1

    .line 591
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 593
    :cond_1
    return-void

    .line 587
    .end local v0    # "result":Z
    :cond_2
    :goto_0
    return-void
.end method

.method public abstract hasPendingBindings()Z
.end method

.method public abstract invalidateAll()V
.end method

.method protected abstract onFieldChange(ILjava/lang/Object;I)Z
.end method

.method protected registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V
    .locals 2
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Ljava/lang/Object;
    .param p3, "listenerCreator"    # Landroidx/databinding/CreateWeakListener;

    .line 718
    if-nez p2, :cond_0

    .line 719
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    aget-object v0, v0, p1

    .line 722
    .local v0, "listener":Landroidx/databinding/WeakListener;
    if-nez v0, :cond_1

    .line 723
    sget-object v1, Landroidx/databinding/ViewDataBinding;->sReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {p3, p0, p1, v1}, Landroidx/databinding/CreateWeakListener;->create(Landroidx/databinding/ViewDataBinding;ILjava/lang/ref/ReferenceQueue;)Landroidx/databinding/WeakListener;

    move-result-object v0

    .line 724
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    aput-object v0, v1, p1

    .line 725
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_1

    .line 726
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Landroidx/databinding/WeakListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 729
    :cond_1
    invoke-virtual {v0, p2}, Landroidx/databinding/WeakListener;->setTarget(Ljava/lang/Object;)V

    .line 730
    return-void
.end method

.method public removeOnRebindCallback(Landroidx/databinding/OnRebindCallback;)V
    .locals 1
    .param p1, "listener"    # Landroidx/databinding/OnRebindCallback;

    .line 473
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mRebindCallbacks:Landroidx/databinding/CallbackRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/CallbackRegistry;->remove(Ljava/lang/Object;)V

    .line 476
    :cond_0
    return-void
.end method

.method protected requestRebind()V
    .locals 3

    .line 610
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    goto :goto_0

    .line 613
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 614
    .local v0, "owner":Landroidx/lifecycle/LifecycleOwner;
    if-eqz v0, :cond_1

    .line 615
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    .line 616
    .local v1, "state":Landroidx/lifecycle/Lifecycle$State;
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    return-void

    .line 620
    .end local v1    # "state":Landroidx/lifecycle/Lifecycle$State;
    :cond_1
    monitor-enter p0

    .line 621
    :try_start_0
    iget-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    if-eqz v1, :cond_2

    .line 622
    monitor-exit p0

    return-void

    .line 624
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/databinding/ViewDataBinding;->mPendingRebind:Z

    .line 625
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    sget-boolean v1, Landroidx/databinding/ViewDataBinding;->USE_CHOREOGRAPHER:Z

    if-eqz v1, :cond_3

    .line 627
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 629
    :cond_3
    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mUIThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/databinding/ViewDataBinding;->mRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    .end local v0    # "owner":Landroidx/lifecycle/LifecycleOwner;
    :goto_0
    return-void

    .line 625
    .restart local v0    # "owner":Landroidx/lifecycle/LifecycleOwner;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected setContainedBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 0
    .param p1, "included"    # Landroidx/databinding/ViewDataBinding;

    .line 1198
    if-eqz p1, :cond_0

    .line 1199
    iput-object p0, p1, Landroidx/databinding/ViewDataBinding;->mContainingBinding:Landroidx/databinding/ViewDataBinding;

    .line 1201
    :cond_0
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4
    .param p1, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    .line 418
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 419
    const-string v0, "DataBinding"

    const-string v1, "Setting the fragment as the LifecycleOwner might cause memory leaks because views lives shorter than the Fragment. Consider using Fragment\'s view lifecycle"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-ne v0, p1, :cond_1

    .line 424
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 429
    :cond_2
    iput-object p1, p0, Landroidx/databinding/ViewDataBinding;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 430
    if-eqz p1, :cond_4

    .line 431
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    if-nez v0, :cond_3

    .line 432
    new-instance v0, Landroidx/databinding/ViewDataBinding$OnStartListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/databinding/ViewDataBinding$OnStartListener;-><init>(Landroidx/databinding/ViewDataBinding;Landroidx/databinding/ViewDataBinding$1;)V

    iput-object v0, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    .line 434
    :cond_3
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/databinding/ViewDataBinding;->mOnStartListener:Landroidx/databinding/ViewDataBinding$OnStartListener;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 436
    :cond_4
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 437
    .local v3, "weakListener":Landroidx/databinding/WeakListener;, "Landroidx/databinding/WeakListener<*>;"
    if-eqz v3, :cond_5

    .line 438
    invoke-virtual {v3, p1}, Landroidx/databinding/WeakListener;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 436
    .end local v3    # "weakListener":Landroidx/databinding/WeakListener;, "Landroidx/databinding/WeakListener<*>;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :cond_6
    return-void
.end method

.method protected setRootTag(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 353
    sget v0, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 354
    return-void
.end method

.method protected setRootTag([Landroid/view/View;)V
    .locals 4
    .param p1, "views"    # [Landroid/view/View;

    .line 360
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 361
    .local v2, "view":Landroid/view/View;
    sget v3, Landroidx/databinding/library/R$id;->dataBinding:I

    invoke-virtual {v2, v3, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 360
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method public abstract setVariable(ILjava/lang/Object;)Z
.end method

.method public unbind()V
    .locals 4

    .line 555
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 556
    .local v3, "weakListener":Landroidx/databinding/WeakListener;
    if-eqz v3, :cond_0

    .line 557
    invoke-virtual {v3}, Landroidx/databinding/WeakListener;->unregister()Z

    .line 555
    .end local v3    # "weakListener":Landroidx/databinding/WeakListener;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    :cond_1
    return-void
.end method

.method protected unregisterFrom(I)Z
    .locals 2
    .param p1, "localFieldId"    # I

    .line 599
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    aget-object v0, v0, p1

    .line 600
    .local v0, "listener":Landroidx/databinding/WeakListener;
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->unregister()Z

    move-result v1

    return v1

    .line 603
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z
    .locals 2
    .param p1, "localFieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/lifecycle/LiveData<",
            "*>;)Z"
        }
    .end annotation

    .line 689
    .local p2, "observable":Landroidx/lifecycle/LiveData;, "Landroidx/lifecycle/LiveData<*>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    .line 691
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/databinding/ViewDataBinding;->CREATE_LIVE_DATA_LISTENER:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    .line 691
    return v1

    .line 693
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/databinding/ViewDataBinding;->mInLiveDataRegisterObserver:Z

    .line 694
    throw v1
.end method

.method protected updateRegistration(ILandroidx/databinding/Observable;)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Landroidx/databinding/Observable;

    .line 668
    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_PROPERTY_LISTENER:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result v0

    return v0
.end method

.method protected updateRegistration(ILandroidx/databinding/ObservableList;)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Landroidx/databinding/ObservableList;

    .line 675
    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_LIST_LISTENER:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result v0

    return v0
.end method

.method protected updateRegistration(ILandroidx/databinding/ObservableMap;)Z
    .locals 1
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Landroidx/databinding/ObservableMap;

    .line 682
    sget-object v0, Landroidx/databinding/ViewDataBinding;->CREATE_MAP_LISTENER:Landroidx/databinding/CreateWeakListener;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z

    move-result v0

    return v0
.end method

.method protected updateRegistration(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)Z
    .locals 3
    .param p1, "localFieldId"    # I
    .param p2, "observable"    # Ljava/lang/Object;
    .param p3, "listenerCreator"    # Landroidx/databinding/CreateWeakListener;

    .line 648
    if-nez p2, :cond_0

    .line 649
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->unregisterFrom(I)Z

    move-result v0

    return v0

    .line 651
    :cond_0
    iget-object v0, p0, Landroidx/databinding/ViewDataBinding;->mLocalFieldObservers:[Landroidx/databinding/WeakListener;

    aget-object v0, v0, p1

    .line 652
    .local v0, "listener":Landroidx/databinding/WeakListener;
    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V

    .line 654
    return v1

    .line 656
    :cond_1
    invoke-virtual {v0}, Landroidx/databinding/WeakListener;->getTarget()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_2

    .line 657
    const/4 v1, 0x0

    return v1

    .line 659
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->unregisterFrom(I)Z

    .line 660
    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->registerTo(ILjava/lang/Object;Landroidx/databinding/CreateWeakListener;)V

    .line 661
    return v1
.end method
