.class public Landroidx/databinding/ObservableInt;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableInt.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableInt;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroidx/databinding/ObservableInt$1;

    invoke-direct {v0}, Landroidx/databinding/ObservableInt$1;-><init>()V

    sput-object v0, Landroidx/databinding/ObservableInt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 53
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    .line 54
    iput p1, p0, Landroidx/databinding/ObservableInt;->mValue:I

    .line 55
    return-void
.end method

.method public varargs constructor <init>([Landroidx/databinding/Observable;)V
    .locals 0
    .param p1, "dependencies"    # [Landroidx/databinding/Observable;

    .line 71
    invoke-direct {p0, p1}, Landroidx/databinding/BaseObservableField;-><init>([Landroidx/databinding/Observable;)V

    .line 72
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public get()I
    .locals 1

    .line 78
    iget v0, p0, Landroidx/databinding/ObservableInt;->mValue:I

    return v0
.end method

.method public set(I)V
    .locals 1
    .param p1, "value"    # I

    .line 87
    iget v0, p0, Landroidx/databinding/ObservableInt;->mValue:I

    if-eq p1, v0, :cond_0

    .line 88
    iput p1, p0, Landroidx/databinding/ObservableInt;->mValue:I

    .line 89
    invoke-virtual {p0}, Landroidx/databinding/ObservableInt;->notifyChange()V

    .line 91
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget v0, p0, Landroidx/databinding/ObservableInt;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
