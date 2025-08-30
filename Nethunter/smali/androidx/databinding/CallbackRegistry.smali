.class public Landroidx/databinding/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private mFirst64Removed:J

.field private mNotificationLevel:I

.field private final mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private mRemainderRemoved:[J


# direct methods
.method public constructor <init>(Landroidx/databinding/CallbackRegistry$NotifierCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "notifier":Landroidx/databinding/CallbackRegistry$NotifierCallback;, "Landroidx/databinding/CallbackRegistry$NotifierCallback<TC;TT;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 76
    iput-object p1, p0, Landroidx/databinding/CallbackRegistry;->mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    .line 77
    return-void
.end method

.method private isRemoved(I)Z
    .locals 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 229
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    const/16 v0, 0x40

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge p1, v0, :cond_1

    .line 231
    shl-long/2addr v3, p1

    .line 232
    .local v3, "bitMask":J
    iget-wide v7, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    and-long/2addr v7, v3

    cmp-long v0, v7, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 233
    .end local v3    # "bitMask":J
    :cond_1
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v0, :cond_2

    .line 235
    return v6

    .line 237
    :cond_2
    div-int/lit8 v0, p1, 0x40

    sub-int/2addr v0, v5

    .line 238
    .local v0, "maskIndex":I
    iget-object v7, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    array-length v7, v7

    if-lt v0, v7, :cond_3

    .line 240
    return v6

    .line 243
    :cond_3
    iget-object v7, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v8, v7, v0

    .line 244
    .local v8, "bits":J
    rem-int/lit8 v7, p1, 0x40

    shl-long/2addr v3, v7

    .line 245
    .restart local v3    # "bitMask":J
    and-long v10, v8, v3

    cmp-long v7, v10, v1

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    return v5
.end method

.method private notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .locals 8
    .param p2, "arg"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I
    .param p6, "bits"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "sender",
            "arg",
            "arg2",
            "startIndex",
            "endIndex",
            "bits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    const-wide/16 v0, 0x1

    .line 199
    .local v0, "bitMask":J
    move v2, p4

    .local v2, "i":I
    :goto_0
    if-ge v2, p5, :cond_1

    .line 200
    and-long v3, p6, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 201
    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->mNotifier:Landroidx/databinding/CallbackRegistry$NotifierCallback;

    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, p3}, Landroidx/databinding/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 203
    :cond_0
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private notifyFirst64(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 122
    .local v0, "maxNotified":I
    const/4 v6, 0x0

    iget-wide v8, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, v0

    invoke-direct/range {v2 .. v9}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 123
    return-void
.end method

.method private notifyRecurse(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 11
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 141
    .local v0, "callbackCount":I
    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    move v9, v1

    .line 145
    .local v9, "remainderIndex":I
    invoke-direct {p0, p1, p2, p3, v9}, Landroidx/databinding/CallbackRegistry;->notifyRemainder(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 149
    add-int/lit8 v1, v9, 0x2

    mul-int/lit8 v10, v1, 0x40

    .line 152
    .local v10, "startCallbackIndex":I
    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, v10

    move v6, v0

    invoke-direct/range {v1 .. v8}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 153
    return-void
.end method

.method private notifyRemainder(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 16
    .param p2, "arg"    # I
    .param p4, "remainderIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2",
            "remainderIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    move-object/from16 v8, p0

    if-gez p4, :cond_0

    .line 169
    invoke-direct/range {p0 .. p3}, Landroidx/databinding/CallbackRegistry;->notifyFirst64(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, v8, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v9, v0, p4

    .line 172
    .local v9, "bits":J
    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v11, v0, 0x40

    .line 173
    .local v11, "startIndex":I
    iget-object v0, v8, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v11, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 174
    .local v12, "endIndex":I
    add-int/lit8 v0, p4, -0x1

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct {v8, v13, v14, v15, v0}, Landroidx/databinding/CallbackRegistry;->notifyRemainder(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v11

    move v5, v12

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Landroidx/databinding/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 177
    .end local v9    # "bits":J
    .end local v11    # "startIndex":I
    .end local v12    # "endIndex":I
    :goto_0
    return-void
.end method

.method private removeRemovedCallbacks(IJ)V
    .locals 9
    .param p1, "startIndex"    # I
    .param p2, "removed"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startIndex",
            "removed"
        }
    .end annotation

    .line 260
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    add-int/lit8 v0, p1, 0x40

    .line 262
    .local v0, "endIndex":I
    const-wide/high16 v1, -0x8000000000000000L

    .line 263
    .local v1, "bitMask":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, p1, :cond_1

    .line 264
    and-long v4, p2, v1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 265
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    :cond_0
    const/4 v4, 0x1

    ushr-long/2addr v1, v4

    .line 263
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 269
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private setRemovalBit(I)V
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 288
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_0

    .line 290
    shl-long/2addr v0, p1

    .line 291
    .local v0, "bitMask":J
    iget-wide v2, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 292
    .end local v0    # "bitMask":J
    goto :goto_1

    .line 293
    :cond_0
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v3, v3, -0x1

    .line 294
    .local v3, "remainderIndex":I
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v4, :cond_1

    .line 295
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v2, v4, [J

    iput-object v2, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    goto :goto_0

    .line 296
    :cond_1
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    array-length v4, v4

    if-gt v4, v3, :cond_2

    .line 298
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v2, v4, [J

    .line 299
    .local v2, "newRemainders":[J
    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    iget-object v5, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iput-object v2, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 302
    .end local v2    # "newRemainders":[J
    :cond_2
    :goto_0
    rem-int/lit8 v2, p1, 0x40

    shl-long/2addr v0, v2

    .line 303
    .restart local v0    # "bitMask":J
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v4, v2, v3

    or-long/2addr v4, v0

    aput-wide v4, v2, v3

    .line 305
    .end local v0    # "bitMask":J
    .end local v3    # "remainderIndex":I
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 213
    if-eqz p1, :cond_2

    .line 216
    :try_start_0
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    .end local p0    # "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :cond_0
    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_1
    monitor-exit p0

    return-void

    .line 212
    .end local v0    # "index":I
    .end local p1    # "callback":Ljava/lang/Object;, "TC;"
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 214
    .restart local p1    # "callback":Ljava/lang/Object;, "TC;"
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    .end local p1    # "callback":Ljava/lang/Object;, "TC;"
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 363
    :try_start_0
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 365
    .end local p0    # "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :cond_0
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 367
    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;->setRemovalBit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 370
    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized clone()Landroidx/databinding/CallbackRegistry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/CallbackRegistry<",
            "TC;TT;TA;>;"
        }
    .end annotation

    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "clone":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/CallbackRegistry;

    move-object v0, v1

    .line 381
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    .line 382
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    .line 383
    const/4 v1, 0x0

    iput v1, v0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 385
    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 386
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 387
    invoke-direct {p0, v2}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    iget-object v3, v0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    iget-object v4, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .end local p0    # "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 377
    .end local v0    # "clone":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 391
    .restart local v0    # "clone":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1
    monitor-exit p0

    return-object v0

    .line 377
    .end local v0    # "clone":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    invoke-virtual {p0}, Landroidx/databinding/CallbackRegistry;->clone()Landroidx/databinding/CallbackRegistry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized copyCallbacks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TC;>;"
        }
    .end annotation

    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 313
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    iget-object v1, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 315
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 316
    invoke-direct {p0, v2}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 317
    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local p0    # "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0

    return-object v0

    .line 312
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .end local v1    # "numListeners":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized copyCallbacks(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TC;>;)V"
        }
    .end annotation

    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callbacks":Ljava/util/List;, "Ljava/util/List<TC;>;"
    monitor-enter p0

    .line 329
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 330
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 331
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 332
    invoke-direct {p0, v1}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    iget-object v2, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    .end local p0    # "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 328
    .end local v0    # "numListeners":I
    .end local p1    # "callbacks":Ljava/util/List;, "Ljava/util/List<TC;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 5

    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 344
    :try_start_0
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 345
    monitor-exit p0

    return v1

    .line 346
    :cond_0
    :try_start_1
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 347
    monitor-exit p0

    return v2

    .line 349
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 350
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 351
    invoke-direct {p0, v3}, Landroidx/databinding/CallbackRegistry;->isRemoved(I)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_2

    .line 352
    monitor-exit p0

    return v2

    .line 350
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v3    # "i":I
    .end local p0    # "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :cond_3
    monitor-exit p0

    return v1

    .line 343
    .end local v0    # "numListeners":I
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 6
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sender",
            "arg",
            "arg2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/CallbackRegistry;->notifyRecurse(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 92
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    .line 93
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 96
    iget-object v3, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v4, v3, v0

    move-wide v3, v4

    .line 97
    .local v3, "removedBits":J
    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 98
    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x40

    invoke-direct {p0, v5, v3, v4}, Landroidx/databinding/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 99
    iget-object v5, p0, Landroidx/databinding/CallbackRegistry;->mRemainderRemoved:[J

    aput-wide v1, v5, v0

    .line 95
    .end local v3    # "removedBits":J
    .end local p0    # "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    :cond_1
    iget-wide v3, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 104
    iget-wide v3, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3, v4}, Landroidx/databinding/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 105
    iput-wide v1, p0, Landroidx/databinding/CallbackRegistry;->mFirst64Removed:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_2
    monitor-exit p0

    return-void

    .line 89
    .end local p1    # "sender":Ljava/lang/Object;, "TT;"
    .end local p2    # "arg":I
    .end local p3    # "arg2":Ljava/lang/Object;, "TA;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 277
    :try_start_0
    iget v0, p0, Landroidx/databinding/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    .end local p0    # "this":Landroidx/databinding/CallbackRegistry;, "Landroidx/databinding/CallbackRegistry<TC;TT;TA;>;"
    :cond_0
    iget-object v0, p0, Landroidx/databinding/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 281
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 282
    invoke-direct {p0, v0}, Landroidx/databinding/CallbackRegistry;->setRemovalBit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v0    # "index":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    .end local p1    # "callback":Ljava/lang/Object;, "TC;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
