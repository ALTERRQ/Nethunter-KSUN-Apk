.class public Landroidx/databinding/adapters/ImageViewBindingAdapter;
.super Ljava/lang/Object;
.source "ImageViewBindingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method

.method public static setImageUri(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 0
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 47
    return-void
.end method

.method public static setImageUri(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "imageUri"    # Ljava/lang/String;

    .line 37
    if-nez p1, :cond_0

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 42
    :goto_0
    return-void
.end method
