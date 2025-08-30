.class public Landroidx/databinding/ObservableByte;
.super Landroidx/databinding/BaseObservableField;
.source "ObservableByte.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/databinding/ObservableByte;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroidx/databinding/ObservableByte$1;

    invoke-direct {v0}, Landroidx/databinding/ObservableByte$1;-><init>()V

    sput-object v0, Landroidx/databinding/ObservableByte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    .line 53
    invoke-direct {p0}, Landroidx/databinding/BaseObservableField;-><init>()V

    .line 54
    iput-byte p1, p0, Landroidx/databinding/ObservableByte;->mValue:B

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

.method public get()B
    .locals 1

    .line 78
    iget-byte v0, p0, Landroidx/databinding/ObservableByte;->mValue:B

    return v0
.end method

.method public set(B)V
    .locals 1
    .param p1, "value"    # B

    .line 87
    iget-byte v0, p0, Landroidx/databinding/ObservableByte;->mValue:B

    if-eq p1, v0, :cond_0

    .line 88
    iput-byte p1, p0, Landroidx/databinding/ObservableByte;->mValue:B

    .line 89
    invoke-virtual {p0}, Landroidx/databinding/ObservableByte;->notifyChange()V

    .line 91
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget-byte v0, p0, Landroidx/databinding/ObservableByte;->mValue:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    return-void
.end method
