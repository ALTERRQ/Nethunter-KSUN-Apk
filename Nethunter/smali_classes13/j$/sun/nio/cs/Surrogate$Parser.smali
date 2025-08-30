.class public Lj$/sun/nio/cs/Surrogate$Parser;
.super Ljava/lang/Object;
.source "Surrogate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/sun/nio/cs/Surrogate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private character:I

.field private error:Ljava/nio/charset/CoderResult;

.field private isPair:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    const-class v0, Lj$/sun/nio/cs/Surrogate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 120
    return-void
.end method


# virtual methods
.method public character()I
    .locals 1

    .line 130
    nop

    .line 131
    iget v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v0
.end method

.method public error()Ljava/nio/charset/CoderResult;
    .locals 1

    .line 157
    nop

    .line 158
    iget-object v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    return-object v0
.end method

.method public increment()I
    .locals 1

    .line 148
    nop

    .line 149
    iget-boolean v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isPair()Z
    .locals 1

    .line 139
    nop

    .line 140
    iget-boolean v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    return v0
.end method

.method public parse(CLjava/nio/CharBuffer;)I
    .locals 5
    .param p1, "c"    # C
    .param p2, "in"    # Ljava/nio/CharBuffer;

    .line 184
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 187
    return v2

    .line 189
    :cond_0
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    .line 190
    .local v0, "d":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    invoke-static {p1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    iput v2, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    .line 192
    iput-boolean v3, p0, Lj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    .line 193
    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 194
    iget v1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v1

    .line 196
    :cond_1
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 197
    return v2

    .line 199
    .end local v0    # "d":C
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 201
    return v2

    .line 203
    :cond_3
    iput p1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    .line 205
    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 206
    iget v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v0
.end method

.method public parse(C[CII)I
    .locals 5
    .param p1, "c"    # C
    .param p2, "ia"    # [C
    .param p3, "ip"    # I
    .param p4, "il"    # I

    .line 225
    nop

    .line 226
    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 227
    sub-int v0, p4, p3

    const/4 v4, 0x2

    if-ge v0, v4, :cond_0

    .line 228
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 229
    return v2

    .line 231
    :cond_0
    add-int/lit8 v0, p3, 0x1

    aget-char v0, p2, v0

    .line 232
    .local v0, "d":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    invoke-static {p1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    iput v2, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    .line 234
    iput-boolean v3, p0, Lj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    .line 235
    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 236
    iget v1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v1

    .line 238
    :cond_1
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v1

    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 239
    return v2

    .line 241
    .end local v0    # "d":C
    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    invoke-static {v3}, Ljava/nio/charset/CoderResult;->malformedForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    iput-object v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 243
    return v2

    .line 245
    :cond_3
    iput p1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    .line 247
    iput-object v1, p0, Lj$/sun/nio/cs/Surrogate$Parser;->error:Ljava/nio/charset/CoderResult;

    .line 248
    iget v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->character:I

    return v0
.end method

.method public unmappableResult()Ljava/nio/charset/CoderResult;
    .locals 1

    .line 166
    nop

    .line 167
    iget-boolean v0, p0, Lj$/sun/nio/cs/Surrogate$Parser;->isPair:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    return-object v0
.end method
