.class Lj$/sun/util/PreHashedMap$1;
.super Ljava/util/AbstractSet;
.source "PreHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/sun/util/PreHashedMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj$/sun/util/PreHashedMap;


# direct methods
.method constructor <init>(Lj$/sun/util/PreHashedMap;)V
    .locals 0
    .param p1, "this$0"    # Lj$/sun/util/PreHashedMap;

    .line 168
    .local p0, "this":Lj$/sun/util/PreHashedMap$1;, "Lsun/util/PreHashedMap$1;"
    iput-object p1, p0, Lj$/sun/util/PreHashedMap$1;->this$0:Lj$/sun/util/PreHashedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lj$/sun/util/PreHashedMap$1;, "Lsun/util/PreHashedMap$1;"
    new-instance v0, Lj$/sun/util/PreHashedMap$1$1;

    invoke-direct {v0, p0}, Lj$/sun/util/PreHashedMap$1$1;-><init>(Lj$/sun/util/PreHashedMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 171
    .local p0, "this":Lj$/sun/util/PreHashedMap$1;, "Lsun/util/PreHashedMap$1;"
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1;->this$0:Lj$/sun/util/PreHashedMap;

    invoke-static {v0}, Lj$/sun/util/PreHashedMap;->-$$Nest$fgetsize(Lj$/sun/util/PreHashedMap;)I

    move-result v0

    return v0
.end method
