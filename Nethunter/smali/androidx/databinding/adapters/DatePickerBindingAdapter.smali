.class public Landroidx/databinding/adapters/DatePickerBindingAdapter;
.super Ljava/lang/Object;
.source "DatePickerBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListeners(Landroid/widget/DatePicker;IIILandroid/widget/DatePicker$OnDateChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V
    .locals 3
    .param p0, "view"    # Landroid/widget/DatePicker;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "listener"    # Landroid/widget/DatePicker$OnDateChangedListener;
    .param p5, "yearChanged"    # Landroidx/databinding/InverseBindingListener;
    .param p6, "monthChanged"    # Landroidx/databinding/InverseBindingListener;
    .param p7, "dayChanged"    # Landroidx/databinding/InverseBindingListener;

    .line 43
    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getYear()I

    move-result p1

    .line 46
    :cond_0
    if-nez p3, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p3

    .line 49
    :cond_1
    if-nez p5, :cond_2

    if-nez p6, :cond_2

    if-nez p7, :cond_2

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    goto :goto_0

    .line 52
    :cond_2
    sget v0, Landroidx/databinding/library/baseAdapters/R$id;->onDateChanged:I

    invoke-static {p0, v0}, Landroidx/databinding/adapters/ListenerUtil;->getListener(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;

    .line 53
    .local v0, "oldListener":Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;
    if-nez v0, :cond_3

    .line 54
    new-instance v1, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;-><init>(Landroidx/databinding/adapters/DatePickerBindingAdapter$1;)V

    move-object v0, v1

    .line 55
    sget v1, Landroidx/databinding/library/baseAdapters/R$id;->onDateChanged:I

    invoke-static {p0, v0, v1}, Landroidx/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    .line 57
    :cond_3
    invoke-virtual {v0, p4, p5, p6, p7}, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->setListeners(Landroid/widget/DatePicker$OnDateChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V

    .line 58
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 60
    .end local v0    # "oldListener":Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;
    :goto_0
    return-void
.end method
