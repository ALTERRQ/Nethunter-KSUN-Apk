.class Lj$/sun/nio/cs/StandardCharsets$1;
.super Ljava/lang/Object;
.source "StandardCharsets.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/sun/nio/cs/StandardCharsets;->charsets()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# instance fields
.field i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lj$/sun/nio/cs/StandardCharsets;

.field final synthetic val$charsetNames:Ljava/util/Set;


# direct methods
.method constructor <init>(Lj$/sun/nio/cs/StandardCharsets;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lj$/sun/nio/cs/StandardCharsets;

    .line 1354
    iput-object p1, p0, Lj$/sun/nio/cs/StandardCharsets$1;->this$0:Lj$/sun/nio/cs/StandardCharsets;

    iput-object p2, p0, Lj$/sun/nio/cs/StandardCharsets$1;->val$charsetNames:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    iget-object p2, p0, Lj$/sun/nio/cs/StandardCharsets$1;->val$charsetNames:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    iput-object p2, p0, Lj$/sun/nio/cs/StandardCharsets$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1359
    iget-object v0, p0, Lj$/sun/nio/cs/StandardCharsets$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1354
    invoke-virtual {p0}, Lj$/sun/nio/cs/StandardCharsets$1;->next()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/charset/Charset;
    .locals 2

    .line 1363
    iget-object v0, p0, Lj$/sun/nio/cs/StandardCharsets$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1364
    .local v0, "csn":Ljava/lang/String;
    iget-object v1, p0, Lj$/sun/nio/cs/StandardCharsets$1;->this$0:Lj$/sun/nio/cs/StandardCharsets;

    invoke-static {v1, v0}, Lj$/sun/nio/cs/StandardCharsets;->-$$Nest$mlookup(Lj$/sun/nio/cs/StandardCharsets;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .locals 1

    .line 1368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
