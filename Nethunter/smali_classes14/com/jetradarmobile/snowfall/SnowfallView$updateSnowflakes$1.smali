.class final Lcom/jetradarmobile/snowfall/SnowfallView$updateSnowflakes$1;
.super Ljava/lang/Object;
.source "SnowfallView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jetradarmobile/snowfall/SnowfallView;->updateSnowflakes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jetradarmobile/snowfall/SnowfallView;


# direct methods
.method constructor <init>(Lcom/jetradarmobile/snowfall/SnowfallView;)V
    .locals 0

    iput-object p1, p0, Lcom/jetradarmobile/snowfall/SnowfallView$updateSnowflakes$1;->this$0:Lcom/jetradarmobile/snowfall/SnowfallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "haveAtLeastOneVisibleSnowflake":Z
    iget-object v1, p0, Lcom/jetradarmobile/snowfall/SnowfallView$updateSnowflakes$1;->this$0:Lcom/jetradarmobile/snowfall/SnowfallView;

    invoke-static {v1}, Lcom/jetradarmobile/snowfall/SnowfallView;->access$getSnowflakes$p(Lcom/jetradarmobile/snowfall/SnowfallView;)[Lcom/jetradarmobile/snowfall/Snowflake;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 162
    .local v1, "localSnowflakes":[Lcom/jetradarmobile/snowfall/Snowflake;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 163
    .local v4, "snowflake":Lcom/jetradarmobile/snowfall/Snowflake;
    invoke-virtual {v4}, Lcom/jetradarmobile/snowfall/Snowflake;->isStillFalling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 165
    invoke-virtual {v4}, Lcom/jetradarmobile/snowfall/Snowflake;->update()V

    .line 162
    :cond_0
    nop

    .end local v4    # "snowflake":Lcom/jetradarmobile/snowfall/Snowflake;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    :cond_1
    if-eqz v0, :cond_2

    .line 170
    iget-object v2, p0, Lcom/jetradarmobile/snowfall/SnowfallView$updateSnowflakes$1;->this$0:Lcom/jetradarmobile/snowfall/SnowfallView;

    invoke-virtual {v2}, Lcom/jetradarmobile/snowfall/SnowfallView;->postInvalidateOnAnimation()V

    .line 172
    .end local v0    # "haveAtLeastOneVisibleSnowflake":Z
    .end local v1    # "localSnowflakes":[Lcom/jetradarmobile/snowfall/Snowflake;
    :cond_2
    return-void

    .line 160
    .restart local v0    # "haveAtLeastOneVisibleSnowflake":Z
    :cond_3
    return-void
.end method
