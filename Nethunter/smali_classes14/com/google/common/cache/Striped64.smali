.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field private static final BASE_OFFSET:J

.field private static final BUSY_OFFSET:J

.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    .line 137
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    .line 140
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 279
    :try_start_0
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 280
    const-class v0, Lcom/google/common/cache/Striped64;

    .line 281
    .local v0, "sk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "base"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/common/cache/Striped64;->BASE_OFFSET:J

    .line 282
    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "busy"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/common/cache/Striped64;->BUSY_OFFSET:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "sk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 286
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .line 30
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .line 296
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 300
    :try_start_1
    new-instance v0, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 313
    :catch_1
    move-exception v0

    .line 314
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 8
    .param p1, "cmp"    # J
    .param p3, "val"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cmp",
            "val"
        }
    .end annotation

    .line 159
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->BASE_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 6

    .line 164
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->BUSY_OFFSET:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentValue",
            "newValue"
        }
    .end annotation
.end method

.method final internalReset(J)V
    .locals 4
    .param p1, "initialValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialValue"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 262
    .local v0, "as":[Lcom/google/common/cache/Striped64$Cell;
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    .line 263
    if-eqz v0, :cond_1

    .line 264
    array-length v1, v0

    .line 265
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 266
    aget-object v3, v0, v2

    .line 267
    .local v3, "a":Lcom/google/common/cache/Striped64$Cell;
    if-eqz v3, :cond_0

    iput-wide p1, v3, Lcom/google/common/cache/Striped64$Cell;->value:J

    .line 265
    .end local v3    # "a":Lcom/google/common/cache/Striped64$Cell;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method final retryUpdate(J[IZ)V
    .locals 17
    .param p1, "x"    # J
    .param p3, "hc"    # [I
    .param p4, "wasUncontended"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "hc",
            "wasUncontended"
        }
    .end annotation

    .line 188
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v4, 0x0

    if-nez p3, :cond_1

    .line 189
    sget-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    const/4 v5, 0x1

    new-array v6, v5, [I

    move-object v7, v6

    .end local p3    # "hc":[I
    .local v7, "hc":[I
    invoke-virtual {v0, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 191
    .local v0, "r":I
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    aput v5, v7, v4

    move v0, v5

    .line 192
    .local v0, "h":I
    goto :goto_1

    .end local v0    # "h":I
    .end local v7    # "hc":[I
    .restart local p3    # "hc":[I
    :cond_1
    aget v0, p3, v4

    move-object/from16 v7, p3

    .line 193
    .end local p3    # "hc":[I
    .restart local v0    # "h":I
    .restart local v7    # "hc":[I
    :goto_1
    const/4 v5, 0x0

    move v6, v0

    move v8, v5

    move/from16 v5, p4

    .line 199
    .end local v0    # "h":I
    .end local p4    # "wasUncontended":Z
    .local v5, "wasUncontended":Z
    .local v6, "h":I
    .local v8, "collide":Z
    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v9, v0

    .local v9, "as":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_f

    array-length v0, v9

    move v10, v0

    .local v10, "n":I
    if-lez v0, :cond_e

    .line 200
    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v6

    aget-object v0, v9, v0

    move-object v11, v0

    .local v11, "a":Lcom/google/common/cache/Striped64$Cell;
    if-nez v0, :cond_5

    .line 201
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_4

    .line 202
    new-instance v0, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v0, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    move-object v12, v0

    .line 203
    .local v12, "r":Lcom/google/common/cache/Striped64$Cell;
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    const/4 v13, 0x0

    .line 208
    .local v13, "created":Z
    :try_start_0
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v14, v0

    .local v14, "rs":[Lcom/google/common/cache/Striped64$Cell;
    if-eqz v0, :cond_3

    array-length v0, v14

    move v15, v0

    .local v15, "m":I
    if-lez v0, :cond_3

    add-int/lit8 v0, v15, -0x1

    and-int/2addr v0, v6

    move/from16 v16, v0

    .local v16, "j":I
    aget-object v0, v14, v0

    if-nez v0, :cond_3

    .line 209
    aput-object v12, v14, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    const/4 v13, 0x1

    .line 213
    .end local v14    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    .end local v15    # "m":I
    .end local v16    # "j":I
    :cond_3
    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 214
    nop

    .line 215
    if-eqz v13, :cond_2

    move/from16 p3, v5

    goto/16 :goto_7

    .line 213
    :catchall_0
    move-exception v0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 214
    throw v0

    .line 219
    .end local v12    # "r":Lcom/google/common/cache/Striped64$Cell;
    .end local v13    # "created":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    .line 220
    :cond_5
    if-nez v5, :cond_6

    .line 221
    const/4 v5, 0x1

    goto :goto_5

    .line 222
    :cond_6
    iget-wide v12, v11, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide v14, v12

    move/from16 p3, v5

    .end local v5    # "wasUncontended":Z
    .local v14, "v":J
    .local p3, "wasUncontended":Z
    invoke-virtual {v1, v14, v15, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v4

    invoke-virtual {v11, v12, v13, v4, v5}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_7

    .line 223
    :cond_7
    sget v0, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v10, v0, :cond_d

    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v0, v9, :cond_8

    goto :goto_4

    .line 224
    :cond_8
    if-nez v8, :cond_9

    const/4 v8, 0x1

    move/from16 v5, p3

    goto :goto_5

    .line 225
    :cond_9
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 227
    :try_start_1
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_b

    .line 228
    shl-int/lit8 v0, v10, 0x1

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    .line 229
    .local v0, "rs":[Lcom/google/common/cache/Striped64$Cell;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v10, :cond_a

    aget-object v5, v9, v4

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 230
    .end local v4    # "i":I
    :cond_a
    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    .end local v0    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_b
    const/4 v4, 0x0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 234
    nop

    .line 235
    const/4 v8, 0x0

    .line 236
    move/from16 v5, p3

    goto/16 :goto_2

    .line 233
    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 234
    throw v0

    .line 238
    .end local v14    # "v":J
    :cond_c
    move/from16 v5, p3

    goto :goto_5

    .line 223
    .restart local v14    # "v":J
    :cond_d
    :goto_4
    const/4 v8, 0x0

    move/from16 v5, p3

    .line 238
    .end local v14    # "v":J
    .end local p3    # "wasUncontended":Z
    .restart local v5    # "wasUncontended":Z
    :goto_5
    shl-int/lit8 v0, v6, 0xd

    xor-int/2addr v0, v6

    .line 239
    .end local v6    # "h":I
    .local v0, "h":I
    ushr-int/lit8 v4, v0, 0x11

    xor-int/2addr v0, v4

    .line 240
    shl-int/lit8 v4, v0, 0x5

    xor-int/2addr v0, v4

    .line 241
    const/4 v4, 0x0

    aput v0, v7, v4

    move v6, v0

    move v0, v5

    const/4 v5, 0x0

    goto :goto_9

    .line 199
    .end local v0    # "h":I
    .end local v11    # "a":Lcom/google/common/cache/Striped64$Cell;
    .restart local v6    # "h":I
    :cond_e
    move/from16 p3, v5

    .end local v5    # "wasUncontended":Z
    .restart local p3    # "wasUncontended":Z
    goto :goto_6

    .end local v10    # "n":I
    .end local p3    # "wasUncontended":Z
    .restart local v5    # "wasUncontended":Z
    :cond_f
    move/from16 p3, v5

    .line 242
    .end local v5    # "wasUncontended":Z
    .restart local p3    # "wasUncontended":Z
    :goto_6
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 243
    const/4 v4, 0x0

    .line 245
    .local v4, "init":Z
    :try_start_2
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_10

    .line 246
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    .line 247
    .local v0, "rs":[Lcom/google/common/cache/Striped64$Cell;
    and-int/lit8 v5, v6, 0x1

    new-instance v10, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v10, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v10, v0, v5

    .line 248
    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 249
    const/4 v4, 0x1

    .line 252
    .end local v0    # "rs":[Lcom/google/common/cache/Striped64$Cell;
    :cond_10
    const/4 v5, 0x0

    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 253
    nop

    .line 254
    if-eqz v4, :cond_11

    goto :goto_7

    .line 255
    .end local v4    # "init":Z
    :cond_11
    const/4 v5, 0x0

    goto :goto_8

    .line 252
    .restart local v4    # "init":Z
    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    .line 253
    throw v0

    .line 242
    .end local v4    # "init":Z
    :cond_12
    const/4 v5, 0x0

    .line 255
    iget-wide v10, v1, Lcom/google/common/cache/Striped64;->base:J

    move-wide v12, v10

    .local v12, "v":J
    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 257
    .end local v9    # "as":[Lcom/google/common/cache/Striped64$Cell;
    .end local v12    # "v":J
    :goto_7
    return-void

    .line 256
    :cond_13
    :goto_8
    move/from16 v0, p3

    .end local p3    # "wasUncontended":Z
    .local v0, "wasUncontended":Z
    :goto_9
    move v5, v0

    const/4 v4, 0x0

    goto/16 :goto_2
.end method
