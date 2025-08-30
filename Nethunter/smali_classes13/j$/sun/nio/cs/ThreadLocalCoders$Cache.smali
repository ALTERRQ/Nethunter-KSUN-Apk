.class abstract Lj$/sun/nio/cs/ThreadLocalCoders$Cache;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/ThreadLocalCoders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Cache"
.end annotation


# instance fields
.field private cache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    .line 47
    iput p1, p0, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->size:I

    .line 48
    return-void
.end method

.method private moveToFront([Ljava/lang/Object;I)V
    .locals 3
    .param p1, "oa"    # [Ljava/lang/Object;
    .param p2, "i"    # I

    .line 53
    aget-object v0, p1, p2

    .line 54
    .local v0, "ob":Ljava/lang/Object;
    move v1, p2

    .local v1, "j":I
    :goto_0
    if-lez v1, :cond_0

    .line 55
    add-int/lit8 v2, v1, -0x1

    aget-object v2, p1, v2

    aput-object v2, p1, v1

    .line 54
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 56
    .end local v1    # "j":I
    :cond_0
    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 57
    return-void
.end method


# virtual methods
.method abstract create(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method forName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 63
    .local v0, "oa":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 64
    iget v1, p0, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->size:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->cache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_2

    .line 67
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 68
    aget-object v2, v0, v1

    .line 69
    .local v2, "ob":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p0, v2, p1}, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->hasName(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    if-lez v1, :cond_2

    .line 73
    invoke-direct {p0, v0, v1}, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    .line 74
    :cond_2
    return-object v2

    .line 67
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "ob":Ljava/lang/Object;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aput-object v1, v0, v2

    .line 82
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v2}, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->moveToFront([Ljava/lang/Object;I)V

    .line 83
    return-object v1
.end method

.method abstract hasName(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method
