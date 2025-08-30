.class public final Lcom/jetradarmobile/snowfall/SnowfallView;
.super Landroid/view/View;
.source "SnowfallView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;,
        Lcom/jetradarmobile/snowfall/SnowfallView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnowfallView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnowfallView.kt\ncom/jetradarmobile/snowfall/SnowfallView\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,197:1\n13506#2,2:198\n3755#2:200\n4270#2,2:201\n13506#2,2:205\n13506#2,2:207\n1819#3,2:203\n*E\n*S KotlinDebug\n*F\n+ 1 SnowfallView.kt\ncom/jetradarmobile/snowfall/SnowfallView\n*L\n89#1,2:198\n118#1:200\n118#1,2:201\n129#1,2:205\n133#1,2:207\n120#1,2:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u0000 02\u00020\u0001:\u000201B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u0008H\u0002J\u0008\u0010\u001f\u001a\u00020 H\u0014J\u0008\u0010!\u001a\u00020 H\u0014J\u0010\u0010\"\u001a\u00020 2\u0006\u0010#\u001a\u00020$H\u0014J(\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0008H\u0014J\u0018\u0010*\u001a\u00020 2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u0008H\u0014J\u0006\u0010-\u001a\u00020 J\u0006\u0010.\u001a\u00020 J\u0008\u0010/\u001a\u00020 H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/jetradarmobile/snowfall/SnowfallView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "snowflakeAlphaMax",
        "",
        "snowflakeAlphaMin",
        "snowflakeAngleMax",
        "snowflakeImage",
        "Landroid/graphics/Bitmap;",
        "snowflakeSizeMaxInPx",
        "snowflakeSizeMinInPx",
        "snowflakeSpeedMax",
        "snowflakeSpeedMin",
        "snowflakes",
        "",
        "Lcom/jetradarmobile/snowfall/Snowflake;",
        "[Lcom/jetradarmobile/snowfall/Snowflake;",
        "snowflakesAlreadyFalling",
        "",
        "snowflakesFadingEnabled",
        "snowflakesNum",
        "updateSnowflakesThread",
        "Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;",
        "createSnowflakes",
        "()[Lcom/jetradarmobile/snowfall/Snowflake;",
        "dpToPx",
        "dp",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onVisibilityChanged",
        "changedView",
        "visibility",
        "restartFalling",
        "stopFalling",
        "updateSnowflakes",
        "Companion",
        "UpdateSnowflakesThread",
        "snowfall_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/jetradarmobile/snowfall/SnowfallView$Companion;

.field private static final DEFAULT_SNOWFLAKES_ALREADY_FALLING:Z = false

.field private static final DEFAULT_SNOWFLAKES_FADING_ENABLED:Z = false

.field private static final DEFAULT_SNOWFLAKES_NUM:I = 0xc8

.field private static final DEFAULT_SNOWFLAKE_ALPHA_MAX:I = 0xfa

.field private static final DEFAULT_SNOWFLAKE_ALPHA_MIN:I = 0x96

.field private static final DEFAULT_SNOWFLAKE_ANGLE_MAX:I = 0xa

.field private static final DEFAULT_SNOWFLAKE_SIZE_MAX_IN_DP:I = 0x8

.field private static final DEFAULT_SNOWFLAKE_SIZE_MIN_IN_DP:I = 0x2

.field private static final DEFAULT_SNOWFLAKE_SPEED_MAX:I = 0x8

.field private static final DEFAULT_SNOWFLAKE_SPEED_MIN:I = 0x2


# instance fields
.field private final snowflakeAlphaMax:I

.field private final snowflakeAlphaMin:I

.field private final snowflakeAngleMax:I

.field private final snowflakeImage:Landroid/graphics/Bitmap;

.field private final snowflakeSizeMaxInPx:I

.field private final snowflakeSizeMinInPx:I

.field private final snowflakeSpeedMax:I

.field private final snowflakeSpeedMin:I

.field private snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

.field private final snowflakesAlreadyFalling:Z

.field private final snowflakesFadingEnabled:Z

.field private final snowflakesNum:I

.field private updateSnowflakesThread:Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jetradarmobile/snowfall/SnowfallView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jetradarmobile/snowfall/SnowfallView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/jetradarmobile/snowfall/SnowfallView;->Companion:Lcom/jetradarmobile/snowfall/SnowfallView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    nop

    .line 46
    sget-object v0, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026R.styleable.SnowfallView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    nop

    .line 48
    :try_start_0
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakesNum:I

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesNum:I

    .line 49
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeImage:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/jetradarmobile/snowfall/DrawablesKt;->toBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeImage:Landroid/graphics/Bitmap;

    .line 50
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeAlphaMin:I

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAlphaMin:I

    .line 51
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeAlphaMax:I

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAlphaMax:I

    .line 52
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeAngleMax:I

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAngleMax:I

    .line 53
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeSizeMin:I

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/jetradarmobile/snowfall/SnowfallView;->dpToPx(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSizeMinInPx:I

    .line 54
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeSizeMax:I

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/jetradarmobile/snowfall/SnowfallView;->dpToPx(I)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSizeMaxInPx:I

    .line 55
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeSpeedMin:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSpeedMin:I

    .line 56
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakeSpeedMax:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSpeedMax:I

    .line 57
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakesFadingEnabled:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesFadingEnabled:Z

    .line 58
    sget v1, Lcom/jetradarmobile/snowfall/R$styleable;->SnowfallView_snowflakesAlreadyFalling:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesAlreadyFalling:Z

    .line 60
    invoke-virtual {p0, v3, v2}, Lcom/jetradarmobile/snowfall/SnowfallView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    nop

    .end local v0    # "a":Landroid/content/res/TypedArray;
    nop

    .line 65
    return-void

    .line 64
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method public static final synthetic access$getSnowflakes$p(Lcom/jetradarmobile/snowfall/SnowfallView;)[Lcom/jetradarmobile/snowfall/Snowflake;
    .locals 1
    .param p0, "$this"    # Lcom/jetradarmobile/snowfall/SnowfallView;

    .line 27
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    return-object v0
.end method

.method public static final synthetic access$setSnowflakes$p(Lcom/jetradarmobile/snowfall/SnowfallView;[Lcom/jetradarmobile/snowfall/Snowflake;)V
    .locals 0
    .param p0, "$this"    # Lcom/jetradarmobile/snowfall/SnowfallView;
    .param p1, "<set-?>"    # [Lcom/jetradarmobile/snowfall/Snowflake;

    .line 27
    iput-object p1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    return-void
.end method

.method private final createSnowflakes()[Lcom/jetradarmobile/snowfall/Snowflake;
    .locals 15

    .line 137
    new-instance v0, Lcom/jetradarmobile/snowfall/Randomizer;

    invoke-direct {v0}, Lcom/jetradarmobile/snowfall/Randomizer;-><init>()V

    .line 139
    .local v0, "randomizer":Lcom/jetradarmobile/snowfall/Randomizer;
    new-instance v14, Lcom/jetradarmobile/snowfall/Snowflake$Params;

    .line 140
    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->getWidth()I

    move-result v2

    .line 141
    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->getHeight()I

    move-result v3

    .line 142
    iget-object v4, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeImage:Landroid/graphics/Bitmap;

    .line 143
    iget v5, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAlphaMin:I

    .line 144
    iget v6, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAlphaMax:I

    .line 145
    iget v7, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeAngleMax:I

    .line 146
    iget v8, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSizeMinInPx:I

    .line 147
    iget v9, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSizeMaxInPx:I

    .line 148
    iget v10, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSpeedMin:I

    .line 149
    iget v11, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakeSpeedMax:I

    .line 150
    iget-boolean v12, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesFadingEnabled:Z

    .line 151
    iget-boolean v13, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesAlreadyFalling:Z

    .line 139
    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lcom/jetradarmobile/snowfall/Snowflake$Params;-><init>(IILandroid/graphics/Bitmap;IIIIIIIZZ)V

    .line 153
    .local v1, "snowflakeParams":Lcom/jetradarmobile/snowfall/Snowflake$Params;
    iget v2, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakesNum:I

    new-array v3, v2, [Lcom/jetradarmobile/snowfall/Snowflake;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    move v5, v4

    .local v5, "it":I
    const/4 v6, 0x0

    .local v6, "$i$a$-<init>-SnowfallView$createSnowflakes$1":I
    new-instance v7, Lcom/jetradarmobile/snowfall/Snowflake;

    invoke-direct {v7, v0, v1}, Lcom/jetradarmobile/snowfall/Snowflake;-><init>(Lcom/jetradarmobile/snowfall/Randomizer;Lcom/jetradarmobile/snowfall/Snowflake$Params;)V

    .end local v5    # "it":I
    .end local v6    # "$i$a$-<init>-SnowfallView$createSnowflakes$1":I
    aput-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private final dpToPx(I)I
    .locals 3
    .param p1, "dp"    # I

    .line 78
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private final updateSnowflakes()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakesThread:Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;

    if-nez v0, :cond_0

    const-string v1, "updateSnowflakesThread"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jetradarmobile/snowfall/SnowfallView$updateSnowflakes$1;

    invoke-direct {v1, p0}, Lcom/jetradarmobile/snowfall/SnowfallView$updateSnowflakes$1;-><init>(Lcom/jetradarmobile/snowfall/SnowfallView;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 68
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 69
    new-instance v0, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;

    invoke-direct {v0}, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;-><init>()V

    iput-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakesThread:Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;

    .line 70
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakesThread:Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;

    if-nez v0, :cond_0

    const-string v1, "updateSnowflakesThread"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/jetradarmobile/snowfall/SnowfallView$UpdateSnowflakesThread;->quit()Z

    .line 74
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 75
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "haveAtLeastOneVisibleSnowflake":Z
    iget-object v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    .line 103
    .local v1, "localSnowflakes":[Lcom/jetradarmobile/snowfall/Snowflake;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 104
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 105
    .local v5, "snowflake":Lcom/jetradarmobile/snowfall/Snowflake;
    invoke-virtual {v5}, Lcom/jetradarmobile/snowfall/Snowflake;->isStillFalling()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    const/4 v0, 0x1

    .line 107
    invoke-virtual {v5, p1}, Lcom/jetradarmobile/snowfall/Snowflake;->draw(Landroid/graphics/Canvas;)V

    .line 104
    :cond_1
    nop

    .end local v5    # "snowflake":Lcom/jetradarmobile/snowfall/Snowflake;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_2
    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 113
    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakes()V

    goto :goto_1

    .line 115
    :cond_3
    invoke-virtual {p0, v3}, Lcom/jetradarmobile/snowfall/SnowfallView;->setVisibility(I)V

    .line 116
    :goto_1
    nop

    .line 118
    iget-object v4, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    if-eqz v4, :cond_6

    .local v4, "$this$filter$iv":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 200
    .local v5, "$i$f$filter":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$filterTo$iv$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 201
    .local v8, "$i$f$filterTo":I
    array-length v9, v7

    :goto_2
    if-ge v2, v9, :cond_5

    aget-object v10, v7, v2

    .local v10, "element$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    .local v11, "it":Lcom/jetradarmobile/snowfall/Snowflake;
    const/4 v12, 0x0

    .line 118
    .local v12, "$i$a$-filter-SnowfallView$onDraw$fallingSnowflakes$1":I
    invoke-virtual {v11}, Lcom/jetradarmobile/snowfall/Snowflake;->isStillFalling()Z

    move-result v11

    .end local v11    # "it":Lcom/jetradarmobile/snowfall/Snowflake;
    .end local v12    # "$i$a$-filter-SnowfallView$onDraw$fallingSnowflakes$1":I
    if-eqz v11, :cond_4

    invoke-interface {v6, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v10    # "element$iv$iv":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 202
    :cond_5
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$filterTo$iv$iv":[Ljava/lang/Object;
    .end local v8    # "$i$f$filterTo":I
    move-object v2, v6

    check-cast v2, Ljava/util/List;

    .line 200
    .end local v4    # "$this$filter$iv":[Ljava/lang/Object;
    .end local v5    # "$i$f$filter":I
    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    .line 118
    :goto_3
    nop

    .line 119
    .local v2, "fallingSnowflakes":Ljava/util/List;
    if-eqz v2, :cond_8

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    .line 120
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 203
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/jetradarmobile/snowfall/Snowflake;

    .local v7, "it":Lcom/jetradarmobile/snowfall/Snowflake;
    const/4 v8, 0x0

    .line 120
    .local v8, "$i$a$-forEach-SnowfallView$onDraw$1":I
    invoke-virtual {v7, p1}, Lcom/jetradarmobile/snowfall/Snowflake;->draw(Landroid/graphics/Canvas;)V

    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "it":Lcom/jetradarmobile/snowfall/Snowflake;
    .end local v8    # "$i$a$-forEach-SnowfallView$onDraw$1":I
    goto :goto_4

    .line 204
    :cond_7
    nop

    .line 121
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakes()V

    goto :goto_5

    .line 124
    :cond_8
    invoke-virtual {p0, v3}, Lcom/jetradarmobile/snowfall/SnowfallView;->setVisibility(I)V

    .line 125
    :goto_5
    nop

    .line 126
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 83
    invoke-direct {p0}, Lcom/jetradarmobile/snowfall/SnowfallView;->createSnowflakes()[Lcom/jetradarmobile/snowfall/Snowflake;

    move-result-object v0

    iput-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    .line 84
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 9
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 88
    move-object v0, p0

    check-cast v0, Lcom/jetradarmobile/snowfall/SnowfallView;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    if-eqz v0, :cond_0

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 198
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Lcom/jetradarmobile/snowfall/Snowflake;
    const/4 v6, 0x0

    .line 89
    .local v6, "$i$a$-forEach-SnowfallView$onVisibilityChanged$1":I
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v7, v8, v7}, Lcom/jetradarmobile/snowfall/Snowflake;->reset$snowfall_release$default(Lcom/jetradarmobile/snowfall/Snowflake;Ljava/lang/Double;ILjava/lang/Object;)V

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lcom/jetradarmobile/snowfall/Snowflake;
    .end local v6    # "$i$a$-forEach-SnowfallView$onVisibilityChanged$1":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    :cond_0
    nop

    .line 91
    :cond_1
    return-void
.end method

.method public final restartFalling()V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    if-eqz v0, :cond_0

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 207
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Lcom/jetradarmobile/snowfall/Snowflake;
    const/4 v6, 0x0

    .line 133
    .local v6, "$i$a$-forEach-SnowfallView$restartFalling$1":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/jetradarmobile/snowfall/Snowflake;->setShouldRecycleFalling(Z)V

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lcom/jetradarmobile/snowfall/Snowflake;
    .end local v6    # "$i$a$-forEach-SnowfallView$restartFalling$1":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    :cond_0
    nop

    .line 134
    return-void
.end method

.method public final stopFalling()V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/jetradarmobile/snowfall/SnowfallView;->snowflakes:[Lcom/jetradarmobile/snowfall/Snowflake;

    if-eqz v0, :cond_0

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 205
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Lcom/jetradarmobile/snowfall/Snowflake;
    const/4 v7, 0x0

    .line 129
    .local v7, "$i$a$-forEach-SnowfallView$stopFalling$1":I
    invoke-virtual {v6, v3}, Lcom/jetradarmobile/snowfall/Snowflake;->setShouldRecycleFalling(Z)V

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "it":Lcom/jetradarmobile/snowfall/Snowflake;
    .end local v7    # "$i$a$-forEach-SnowfallView$stopFalling$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    :cond_0
    nop

    .line 130
    return-void
.end method
