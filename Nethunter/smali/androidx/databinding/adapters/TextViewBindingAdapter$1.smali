.class Landroidx/databinding/adapters/TextViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

.field final synthetic val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

.field final synthetic val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

.field final synthetic val$textAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    iput-object p2, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    iput-object p3, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroidx/databinding/InverseBindingListener;

    iput-object p4, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .line 379
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    invoke-interface {v0, p1}, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;->afterTextChanged(Landroid/text/Editable;)V

    .line 382
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 362
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 365
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 369
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 372
    :cond_0
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroidx/databinding/InverseBindingListener;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroidx/databinding/InverseBindingListener;

    invoke-interface {v0}, Landroidx/databinding/InverseBindingListener;->onChange()V

    .line 375
    :cond_1
    return-void
.end method
