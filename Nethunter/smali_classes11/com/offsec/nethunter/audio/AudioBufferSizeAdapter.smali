.class Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioBufferSizeAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final format:Ljava/text/DecimalFormat;

.field private final presets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p2, "presets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->format:Ljava/text/DecimalFormat;

    .line 21
    iput-object p1, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->presets:Ljava/util/List;

    .line 23
    return-void
.end method

.method private formatBufferLength(J)Ljava/lang/String;
    .locals 6
    .param p1, "usec"    # J

    .line 57
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->context:Landroid/content/Context;

    const v1, 0x7f1300bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->context:Landroid/content/Context;

    const v1, 0x7f1300be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->format:Ljava/text/DecimalFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 64
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->format:Ljava/text/DecimalFormat;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->format:Ljava/text/DecimalFormat;

    long-to-double v2, p1

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->presets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Long;
    .locals 1
    .param p1, "position"    # I

    .line 32
    iget-object v0, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->presets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(J)I
    .locals 4
    .param p1, "size"    # J

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->presets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->presets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    .line 71
    return v0

    .line 69
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 43
    if-nez p2, :cond_0

    .line 44
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    const v1, 0x7f0d00dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_0

    .line 47
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 50
    .restart local v0    # "view":Landroid/view/View;
    :goto_0
    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 51
    .local v1, "contentText":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 52
    .local v2, "item":J
    invoke-direct {p0, v2, v3}, Lcom/offsec/nethunter/audio/AudioBufferSizeAdapter;->formatBufferLength(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-object v0
.end method
