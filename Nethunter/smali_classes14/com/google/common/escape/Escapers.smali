.class public final Lcom/google/common/escape/Escapers;
.super Ljava/lang/Object;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/Escapers$Builder;
    }
.end annotation


# static fields
.field private static final NULL_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/google/common/escape/Escapers$1;

    invoke-direct {v0}, Lcom/google/common/escape/Escapers$1;-><init>()V

    sput-object v0, Lcom/google/common/escape/Escapers;->NULL_ESCAPER:Lcom/google/common/escape/Escaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/escape/Escapers$Builder;
    .locals 2

    .line 77
    new-instance v0, Lcom/google/common/escape/Escapers$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/escape/Escapers$Builder;-><init>(Lcom/google/common/escape/Escapers$1;)V

    return-object v0
.end method

.method public static computeReplacement(Lcom/google/common/escape/CharEscaper;C)Ljava/lang/String;
    .locals 1
    .param p0, "escaper"    # Lcom/google/common/escape/CharEscaper;
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "escaper",
            "c"
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lcom/google/common/escape/CharEscaper;->escape(C)[C

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/escape/Escapers;->stringOrNull([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeReplacement(Lcom/google/common/escape/UnicodeEscaper;I)Ljava/lang/String;
    .locals 1
    .param p0, "escaper"    # Lcom/google/common/escape/UnicodeEscaper;
    .param p1, "cp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "escaper",
            "cp"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/escape/Escapers;->stringOrNull([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/common/escape/Escapers;->NULL_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method

.method private static stringOrNull([C)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 189
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    :goto_0
    return-object v0
.end method
