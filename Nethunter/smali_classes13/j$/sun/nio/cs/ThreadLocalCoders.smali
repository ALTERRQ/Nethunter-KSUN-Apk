.class public Lj$/sun/nio/cs/ThreadLocalCoders;
.super Ljava/lang/Object;
.source "ThreadLocalCoders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/sun/nio/cs/ThreadLocalCoders$Cache;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x3

.field private static decoderCache:Lj$/sun/nio/cs/ThreadLocalCoders$Cache;

.field private static encoderCache:Lj$/sun/nio/cs/ThreadLocalCoders$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lj$/sun/nio/cs/ThreadLocalCoders$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lj$/sun/nio/cs/ThreadLocalCoders$1;-><init>(I)V

    sput-object v0, Lj$/sun/nio/cs/ThreadLocalCoders;->decoderCache:Lj$/sun/nio/cs/ThreadLocalCoders$Cache;

    .line 112
    new-instance v0, Lj$/sun/nio/cs/ThreadLocalCoders$2;

    invoke-direct {v0, v1}, Lj$/sun/nio/cs/ThreadLocalCoders$2;-><init>(I)V

    sput-object v0, Lj$/sun/nio/cs/ThreadLocalCoders;->encoderCache:Lj$/sun/nio/cs/ThreadLocalCoders$Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetDecoder;
    .locals 1
    .param p0, "name"    # Ljava/lang/Object;

    .line 107
    sget-object v0, Lj$/sun/nio/cs/ThreadLocalCoders;->decoderCache:Lj$/sun/nio/cs/ThreadLocalCoders$Cache;

    invoke-virtual {v0, p0}, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 108
    .local v0, "cd":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 109
    return-object v0
.end method

.method public static encoderFor(Ljava/lang/Object;)Ljava/nio/charset/CharsetEncoder;
    .locals 1
    .param p0, "name"    # Ljava/lang/Object;

    .line 131
    sget-object v0, Lj$/sun/nio/cs/ThreadLocalCoders;->encoderCache:Lj$/sun/nio/cs/ThreadLocalCoders$Cache;

    invoke-virtual {v0, p0}, Lj$/sun/nio/cs/ThreadLocalCoders$Cache;->forName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    .line 132
    .local v0, "ce":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 133
    return-object v0
.end method
