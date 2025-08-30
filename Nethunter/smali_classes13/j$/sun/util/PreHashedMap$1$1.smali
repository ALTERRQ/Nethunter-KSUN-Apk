.class Lj$/sun/util/PreHashedMap$1$1;
.super Ljava/lang/Object;
.source "PreHashedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/sun/util/PreHashedMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field cur:Ljava/lang/String;

.field private i:I

.field final synthetic this$1:Lj$/sun/util/PreHashedMap$1;


# direct methods
.method constructor <init>(Lj$/sun/util/PreHashedMap$1;)V
    .locals 1
    .param p1, "this$1"    # Lj$/sun/util/PreHashedMap$1;

    .line 175
    .local p0, "this":Lj$/sun/util/PreHashedMap$1$1;, "Lsun/util/PreHashedMap$1$1;"
    iput-object p1, p0, Lj$/sun/util/PreHashedMap$1$1;->this$1:Lj$/sun/util/PreHashedMap$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, -0x1

    iput v0, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    .line 178
    iput-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    return-void
.end method

.method private findNext()Z
    .locals 5

    .line 181
    .local p0, "this":Lj$/sun/util/PreHashedMap$1$1;, "Lsun/util/PreHashedMap$1$1;"
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 183
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    .line 185
    return v2

    .line 187
    :cond_0
    iget v0, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    .line 188
    iput-object v1, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    .line 190
    :cond_1
    iput-object v1, p0, Lj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    .line 191
    iget v0, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    iget-object v1, p0, Lj$/sun/util/PreHashedMap$1$1;->this$1:Lj$/sun/util/PreHashedMap$1;

    iget-object v1, v1, Lj$/sun/util/PreHashedMap$1;->this$0:Lj$/sun/util/PreHashedMap;

    invoke-static {v1}, Lj$/sun/util/PreHashedMap;->-$$Nest$fgetrows(Lj$/sun/util/PreHashedMap;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 192
    return v3

    .line 193
    :cond_2
    iget v0, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->this$1:Lj$/sun/util/PreHashedMap$1;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$1;->this$0:Lj$/sun/util/PreHashedMap;

    invoke-static {v0}, Lj$/sun/util/PreHashedMap;->-$$Nest$fgetht(Lj$/sun/util/PreHashedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    .line 195
    :cond_3
    iget v0, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    iget-object v1, p0, Lj$/sun/util/PreHashedMap$1$1;->this$1:Lj$/sun/util/PreHashedMap$1;

    iget-object v1, v1, Lj$/sun/util/PreHashedMap$1;->this$0:Lj$/sun/util/PreHashedMap;

    invoke-static {v1}, Lj$/sun/util/PreHashedMap;->-$$Nest$fgetrows(Lj$/sun/util/PreHashedMap;)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 196
    return v3

    .line 197
    :cond_4
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->this$1:Lj$/sun/util/PreHashedMap$1;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$1;->this$0:Lj$/sun/util/PreHashedMap;

    invoke-static {v0}, Lj$/sun/util/PreHashedMap;->-$$Nest$fgetht(Lj$/sun/util/PreHashedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 199
    :cond_5
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->this$1:Lj$/sun/util/PreHashedMap$1;

    iget-object v0, v0, Lj$/sun/util/PreHashedMap$1;->this$0:Lj$/sun/util/PreHashedMap;

    invoke-static {v0}, Lj$/sun/util/PreHashedMap;->-$$Nest$fgetht(Lj$/sun/util/PreHashedMap;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lj$/sun/util/PreHashedMap$1$1;->i:I

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->a:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    .line 201
    return v2
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 205
    .local p0, "this":Lj$/sun/util/PreHashedMap$1$1;, "Lsun/util/PreHashedMap$1$1;"
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    return v0

    .line 207
    :cond_0
    invoke-direct {p0}, Lj$/sun/util/PreHashedMap$1$1;->findNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 175
    .local p0, "this":Lj$/sun/util/PreHashedMap$1$1;, "Lsun/util/PreHashedMap$1$1;"
    invoke-virtual {p0}, Lj$/sun/util/PreHashedMap$1$1;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 2

    .line 211
    .local p0, "this":Lj$/sun/util/PreHashedMap$1$1;, "Lsun/util/PreHashedMap$1$1;"
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 212
    invoke-direct {p0}, Lj$/sun/util/PreHashedMap$1$1;->findNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 215
    :cond_1
    :goto_0
    iget-object v0, p0, Lj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    .line 216
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lj$/sun/util/PreHashedMap$1$1;->cur:Ljava/lang/String;

    .line 217
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 221
    .local p0, "this":Lj$/sun/util/PreHashedMap$1$1;, "Lsun/util/PreHashedMap$1$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
