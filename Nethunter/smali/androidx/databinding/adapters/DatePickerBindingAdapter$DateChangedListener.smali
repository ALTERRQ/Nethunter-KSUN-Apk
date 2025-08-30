.class Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;
.super Ljava/lang/Object;
.source "DatePickerBindingAdapter.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/adapters/DatePickerBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateChangedListener"
.end annotation


# instance fields
.field mDayChanged:Landroidx/databinding/InverseBindingListener;

.field mListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field mMonthChanged:Landroidx/databinding/InverseBindingListener;

.field mYearChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/databinding/adapters/DatePickerBindingAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/databinding/adapters/DatePickerBindingAdapter$1;

    .line 62
    invoke-direct {p0}, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .line 78
    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mListener:Landroid/widget/DatePicker$OnDateChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 81
    :cond_0
    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mYearChanged:Landroidx/databinding/InverseBindingListener;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mYearChanged:Landroidx/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroidx/databinding/InverseBindingListener;->onChange()V

    .line 84
    :cond_1
    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mMonthChanged:Landroidx/databinding/InverseBindingListener;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mMonthChanged:Landroidx/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroidx/databinding/InverseBindingListener;->onChange()V

    .line 87
    :cond_2
    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mDayChanged:Landroidx/databinding/InverseBindingListener;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mDayChanged:Landroidx/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroidx/databinding/InverseBindingListener;->onChange()V

    .line 90
    :cond_3
    return-void
.end method

.method public setListeners(Landroid/widget/DatePicker$OnDateChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/DatePicker$OnDateChangedListener;
    .param p2, "yearChanged"    # Landroidx/databinding/InverseBindingListener;
    .param p3, "monthChanged"    # Landroidx/databinding/InverseBindingListener;
    .param p4, "dayChanged"    # Landroidx/databinding/InverseBindingListener;

    .line 70
    iput-object p1, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 71
    iput-object p2, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mYearChanged:Landroidx/databinding/InverseBindingListener;

    .line 72
    iput-object p3, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mMonthChanged:Landroidx/databinding/InverseBindingListener;

    .line 73
    iput-object p4, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$DateChangedListener;->mDayChanged:Landroidx/databinding/InverseBindingListener;

    .line 74
    return-void
.end method
