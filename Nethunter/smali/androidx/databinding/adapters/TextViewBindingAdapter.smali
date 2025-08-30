.class public Landroidx/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;,
        Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;,
        Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    }
.end annotation


# static fields
.field public static final DECIMAL:I = 0x5

.field public static final INTEGER:I = 0x1

.field public static final SIGNED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TextViewBindingAdapters"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextString(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 333
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_2

    .line 334
    return v1

    .line 335
    :cond_2
    if-nez p0, :cond_3

    .line 336
    return v0

    .line 338
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 339
    .local v2, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 340
    return v1

    .line 342
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 343
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_5

    .line 344
    return v1

    .line 342
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 347
    .end local v3    # "i":I
    :cond_6
    return v0
.end method

.method public static setAutoText(Landroid/widget/TextView;Z)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "autoText"    # Z

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 92
    .local v0, "listener":Landroid/text/method/KeyListener;
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 94
    .local v1, "capitalize":Landroid/text/method/TextKeyListener$Capitalize;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 95
    .local v2, "inputType":I
    :goto_0
    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_1

    .line 96
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    .line 97
    :cond_1
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_2

    .line 98
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    goto :goto_1

    .line 99
    :cond_2
    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_3

    .line 100
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 102
    :cond_3
    :goto_1
    invoke-static {p1, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 103
    return-void
.end method

.method public static setBufferType(Landroid/widget/TextView;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "bufferType"    # Landroid/widget/TextView$BufferType;

    .line 116
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 117
    return-void
.end method

.method public static setCapitalize(Landroid/widget/TextView;Landroid/text/method/TextKeyListener$Capitalize;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "capitalize"    # Landroid/text/method/TextKeyListener$Capitalize;

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    .line 109
    .local v0, "listener":Landroid/text/method/KeyListener;
    invoke-interface {v0}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v1

    .line 110
    .local v1, "inputType":I
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 111
    .local v2, "autoText":Z
    :goto_0
    invoke-static {v2, p1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 112
    return-void
.end method

.method public static setDigits(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "digits"    # Ljava/lang/CharSequence;

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/DigitsKeyListener;

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 126
    :cond_1
    :goto_0
    return-void
.end method

.method public static setDrawableBottom(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 153
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method

.method public static setDrawableEnd(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 192
    nop

    .line 195
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 199
    .end local v0    # "drawables":[Landroid/graphics/drawable/Drawable;
    return-void
.end method

.method public static setDrawableLeft(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 158
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 160
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public static setDrawableRight(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 166
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 167
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, v2, p1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-void
.end method

.method public static setDrawableStart(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 181
    nop

    .line 184
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 185
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 188
    .end local v0    # "drawables":[Landroid/graphics/drawable/Drawable;
    return-void
.end method

.method public static setDrawableTop(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-static {p1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V

    .line 174
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void
.end method

.method public static setImeActionLabel(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # I

    .line 208
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 209
    return-void
.end method

.method public static setImeActionLabel(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->getImeActionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 204
    return-void
.end method

.method public static setInputMethod(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "inputMethod"    # Ljava/lang/CharSequence;

    .line 215
    const-string v0, "Could not create input method: "

    const-string v1, "TextViewBindingAdapters"

    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 216
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/method/KeyListener;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 219
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 217
    :catch_2
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 224
    :goto_1
    return-void
.end method

.method private static setIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 144
    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    :cond_0
    return-void
.end method

.method public static setLineSpacingExtra(Landroid/widget/TextView;F)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # F

    .line 228
    nop

    .line 229
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 233
    return-void
.end method

.method public static setLineSpacingMultiplier(Landroid/widget/TextView;F)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # F

    .line 237
    nop

    .line 238
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 242
    return-void
.end method

.method public static setMaxLength(Landroid/widget/TextView;I)V
    .locals 8
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "value"    # I

    .line 246
    invoke-virtual {p0}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 247
    .local v0, "filters":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 248
    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    move-object v0, v2

    goto :goto_3

    .line 252
    :cond_0
    const/4 v3, 0x0

    .line 253
    .local v3, "foundMaxLength":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 254
    aget-object v5, v0, v4

    .line 255
    .local v5, "filter":Landroid/text/InputFilter;
    instance-of v6, v5, Landroid/text/InputFilter$LengthFilter;

    if-eqz v6, :cond_2

    .line 256
    const/4 v3, 0x1

    .line 257
    const/4 v6, 0x1

    .line 258
    .local v6, "replace":Z
    nop

    .line 259
    move-object v7, v5

    check-cast v7, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v7}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v7

    if-eq v7, p1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move v6, v7

    .line 261
    if-eqz v6, :cond_3

    .line 262
    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v7, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v0, v4

    goto :goto_2

    .line 253
    .end local v5    # "filter":Landroid/text/InputFilter;
    .end local v6    # "replace":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 267
    .end local v4    # "i":I
    :cond_3
    :goto_2
    if-nez v3, :cond_4

    .line 269
    move-object v4, v0

    .line 270
    .local v4, "oldFilters":[Landroid/text/InputFilter;
    array-length v5, v4

    add-int/2addr v5, v2

    new-array v0, v5, [Landroid/text/InputFilter;

    .line 271
    array-length v5, v4

    invoke-static {v4, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    array-length v1, v0

    sub-int/2addr v1, v2

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 275
    .end local v3    # "foundMaxLength":Z
    .end local v4    # "oldFilters":[Landroid/text/InputFilter;
    :cond_4
    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 276
    return-void
.end method

.method public static setNumeric(Landroid/widget/TextView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "numeric"    # I

    .line 130
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p1, 0x5

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 132
    return-void
.end method

.method public static setPassword(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "password"    # Z

    .line 280
    if-eqz p1, :cond_0

    .line 281
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_1

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 285
    :cond_1
    :goto_0
    return-void
.end method

.method public static setPhoneNumber(Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "phoneNumber"    # Z

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/DialerKeyListener;

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 141
    :cond_1
    :goto_0
    return-void
.end method

.method public static setShadowColor(Landroid/widget/TextView;I)V
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "color"    # I

    .line 289
    nop

    .line 290
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v0

    .line 291
    .local v0, "dx":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 292
    .local v1, "dy":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 293
    .local v2, "r":F
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 295
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "r":F
    return-void
.end method

.method public static setShadowDx(Landroid/widget/TextView;F)V
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "dx"    # F

    .line 299
    nop

    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 301
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    .line 302
    .local v1, "dy":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 303
    .local v2, "r":F
    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 305
    .end local v0    # "color":I
    .end local v1    # "dy":F
    .end local v2    # "r":F
    return-void
.end method

.method public static setShadowDy(Landroid/widget/TextView;F)V
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "dy"    # F

    .line 309
    nop

    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 311
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    .line 312
    .local v1, "dx":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    .line 313
    .local v2, "r":F
    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 315
    .end local v0    # "color":I
    .end local v1    # "dx":F
    .end local v2    # "r":F
    return-void
.end method

.method public static setShadowRadius(Landroid/widget/TextView;F)V
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "r"    # F

    .line 319
    nop

    .line 320
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v0

    .line 321
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    .line 322
    .local v1, "dx":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    .line 323
    .local v2, "dy":F
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 325
    .end local v0    # "color":I
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, "oldText":Ljava/lang/CharSequence;
    if-eq p1, v0, :cond_3

    if-nez p1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    return-void

    .line 77
    :cond_1
    invoke-static {p1, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->haveContentsChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    return-void

    .line 80
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void

    .line 71
    :cond_3
    :goto_0
    return-void
.end method

.method public static setTextSize(Landroid/widget/TextView;F)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "size"    # F

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 330
    return-void
.end method

.method public static setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "before"    # Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;
    .param p2, "on"    # Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;
    .param p3, "after"    # Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;
    .param p4, "textAttrChanged"    # Landroidx/databinding/InverseBindingListener;

    .line 356
    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 357
    const/4 v0, 0x0

    .local v0, "newValue":Landroid/text/TextWatcher;
    goto :goto_0

    .line 359
    .end local v0    # "newValue":Landroid/text/TextWatcher;
    :cond_0
    new-instance v0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;

    invoke-direct {v0, p1, p2, p4, p3}, Landroidx/databinding/adapters/TextViewBindingAdapter$1;-><init>(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V

    .line 385
    .restart local v0    # "newValue":Landroid/text/TextWatcher;
    :goto_0
    sget v1, Landroidx/databinding/library/baseAdapters/R$id;->textWatcher:I

    invoke-static {p0, v0, v1}, Landroidx/databinding/adapters/ListenerUtil;->trackListener(Landroid/view/View;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextWatcher;

    .line 386
    .local v1, "oldValue":Landroid/text/TextWatcher;
    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 389
    :cond_1
    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 392
    :cond_2
    return-void
.end method
