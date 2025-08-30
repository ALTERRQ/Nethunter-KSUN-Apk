.class public Landroidx/databinding/adapters/TableLayoutBindingAdapter;
.super Ljava/lang/Object;
.source "TableLayoutBindingAdapter.java"


# static fields
.field private static final MAX_COLUMNS:I = 0x14

.field private static sColumnPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->sColumnPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;
    .locals 7
    .param p0, "sequence"    # Ljava/lang/CharSequence;

    .line 83
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 84
    .local v0, "columns":Landroid/util/SparseBooleanArray;
    if-nez p0, :cond_0

    .line 85
    return-object v0

    .line 87
    :cond_0
    sget-object v1, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->sColumnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "columnDefs":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 91
    .local v4, "columnIdentifier":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "columnIndex":I
    if-ltz v5, :cond_1

    .line 96
    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v5    # "columnIndex":I
    :cond_1
    goto :goto_1

    .line 98
    :catch_0
    move-exception v5

    .line 89
    .end local v4    # "columnIdentifier":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_2
    return-object v0
.end method

.method public static setCollapseColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TableLayout;
    .param p1, "columnsStr"    # Ljava/lang/CharSequence;

    .line 37
    invoke-static {p1}, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 38
    .local v0, "columns":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    .line 40
    .local v2, "isCollapsed":Z
    invoke-virtual {p0, v1}, Landroid/widget/TableLayout;->isColumnCollapsed(I)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 41
    invoke-virtual {p0, v1, v2}, Landroid/widget/TableLayout;->setColumnCollapsed(IZ)V

    .line 38
    .end local v2    # "isCollapsed":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static setShrinkColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "view"    # Landroid/widget/TableLayout;
    .param p1, "columnsStr"    # Ljava/lang/CharSequence;

    .line 48
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 52
    invoke-static {p1}, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 53
    .local v0, "columns":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 54
    .local v1, "columnCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 55
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 56
    .local v3, "column":I
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 57
    .local v4, "shrinkable":Z
    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {p0, v3, v4}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    .line 54
    .end local v3    # "column":I
    .end local v4    # "shrinkable":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "columns":Landroid/util/SparseBooleanArray;
    .end local v1    # "columnCount":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public static setStretchColumns(Landroid/widget/TableLayout;Ljava/lang/CharSequence;)V
    .locals 5
    .param p0, "view"    # Landroid/widget/TableLayout;
    .param p1, "columnsStr"    # Ljava/lang/CharSequence;

    .line 66
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 70
    invoke-static {p1}, Landroidx/databinding/adapters/TableLayoutBindingAdapter;->parseColumns(Ljava/lang/CharSequence;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 71
    .local v0, "columns":Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 72
    .local v1, "columnCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 73
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 74
    .local v3, "column":I
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 75
    .local v4, "stretchable":Z
    if-eqz v4, :cond_1

    .line 76
    invoke-virtual {p0, v3, v4}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 72
    .end local v3    # "column":I
    .end local v4    # "stretchable":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "columns":Landroid/util/SparseBooleanArray;
    .end local v1    # "columnCount":I
    .end local v2    # "i":I
    :cond_2
    :goto_1
    return-void
.end method
