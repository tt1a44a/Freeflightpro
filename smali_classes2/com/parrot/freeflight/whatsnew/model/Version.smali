.class public Lcom/parrot/freeflight/whatsnew/model/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/whatsnew/model/Version;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public features:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/whatsnew/model/Feature;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/parrot/freeflight/whatsnew/model/Version$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/whatsnew/model/Version$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/whatsnew/model/Version;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/parrot/freeflight/whatsnew/model/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/whatsnew/model/Version;->features:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/whatsnew/model/Feature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/whatsnew/model/Feature;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/parrot/freeflight/whatsnew/model/Version;->features:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/model/Version;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/whatsnew/model/Version;->features:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 34
    return-void
.end method
