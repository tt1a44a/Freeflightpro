.class public Lcom/parrot/freeflight/whatsnew/model/Feature;
.super Ljava/lang/Object;
.source "Feature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/whatsnew/model/Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public imageRes:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field public textRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field public titleRes:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/parrot/freeflight/whatsnew/model/Feature$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/whatsnew/model/Feature$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/whatsnew/model/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/whatsnew/model/Feature;->titleRes:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/whatsnew/model/Feature;->textRes:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/whatsnew/model/Feature;->imageRes:I

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 28
    iget v0, p0, Lcom/parrot/freeflight/whatsnew/model/Feature;->titleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget v0, p0, Lcom/parrot/freeflight/whatsnew/model/Feature;->textRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v0, p0, Lcom/parrot/freeflight/whatsnew/model/Feature;->imageRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void
.end method
