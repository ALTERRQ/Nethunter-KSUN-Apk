.class public Landroidx/databinding/ObservableBoolean;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableBoolean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableBoolean;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Landroidx/databinding/ObservableBoolean$1;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean$1;-><init>()V

    sput-object v0, Landroidx/databinding/ObservableBoolean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 52
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    .line 53
    iput-boolean p1, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    .line 54
    return-void
.end method

.method public varargs constructor <init>([Landroidx/databinding/Observable;)V
    .locals 0
    .param p1, "dependencies"    # [Landroidx/databinding/Observable;

    .line 70
    invoke-direct {p0, p1}, Landroidx/databinding/BaseObservableField;-><init>([Landroidx/databinding/Observable;)V

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public get()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    return v0
.end method

.method public set(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 85
    iget-boolean v0, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    if-eq p1, v0, :cond_0

    .line 86
    iput-boolean p1, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    .line 87
    invoke-virtual {p0}, Landroidx/databinding/ObservableBoolean;->notifyChange()V

    .line 89
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-boolean v0, p0, Landroidx/databinding/ObservableBoolean;->mValue:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
