.class Lj$/sun/nio/cs/CharsetMapping$1;
.super Ljava/lang/Object;
.source "CharsetMapping.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/sun/nio/cs/CharsetMapping;->get(Ljava/io/InputStream;)Lj$/sun/nio/cs/CharsetMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lj$/sun/nio/cs/CharsetMapping;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lj$/sun/nio/cs/CharsetMapping$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lj$/sun/nio/cs/CharsetMapping;
    .locals 2

    .line 140
    new-instance v0, Lj$/sun/nio/cs/CharsetMapping;

    invoke-direct {v0}, Lj$/sun/nio/cs/CharsetMapping;-><init>()V

    iget-object v1, p0, Lj$/sun/nio/cs/CharsetMapping$1;->val$is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lj$/sun/nio/cs/CharsetMapping;->load(Ljava/io/InputStream;)Lj$/sun/nio/cs/CharsetMapping;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lj$/sun/nio/cs/CharsetMapping$1;->run()Lj$/sun/nio/cs/CharsetMapping;

    move-result-object v0

    return-object v0
.end method
