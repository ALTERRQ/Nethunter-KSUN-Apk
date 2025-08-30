.class Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter;->setValidator(Landroid/widget/AutoCompleteTextView;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fixText:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;

.field final synthetic val$isValid:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$isValid:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;

    iput-object p2, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$fixText:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "invalidText"    # Ljava/lang/CharSequence;

    .line 58
    iget-object v0, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$fixText:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$fixText:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;

    invoke-interface {v0, p1}, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    return-object p1
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 49
    iget-object v0, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$isValid:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$isValid:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;

    invoke-interface {v0, p1}, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
