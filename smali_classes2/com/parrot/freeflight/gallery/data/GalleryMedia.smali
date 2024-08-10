.class public Lcom/parrot/freeflight/gallery/data/GalleryMedia;
.super Lcom/parrot/freeflight/gallery/data/GalleryElement;
.source "GalleryMedia.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDuration:J

.field private final mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPreview:Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/parrot/freeflight/gallery/data/GalleryMedia$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/gallery/data/GalleryMedia$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/data/GalleryElement;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mType:I

    .line 22
    const-class v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mDuration:J

    .line 24
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mPreview:Landroid/graphics/Bitmap;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/parrot/freeflight/gallery/data/GalleryMedia$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/parrot/freeflight/gallery/data/GalleryMedia$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/parrot/freeflight/core/academy/MediaInfos;J)V
    .locals 2
    .param p1, "infos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "durationMs"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/data/GalleryElement;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mPreview:Landroid/graphics/Bitmap;

    .line 31
    iget-object v0, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->image:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->image:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mPreview:Landroid/graphics/Bitmap;

    .line 37
    :cond_0
    :goto_0
    iput-wide p2, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mDuration:J

    .line 38
    return-void

    .line 33
    :cond_1
    iget-object v0, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->thumbnail:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mPreview:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mDuration:J

    return-wide v0
.end method

.method public getMediaInfo()Lcom/parrot/freeflight/core/academy/MediaInfos;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget v0, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->size:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public isBestOfSupported()Z
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-object v0, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->isVideoDroneTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    iget-boolean v0, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    iget v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mMediaInfo:Lcom/parrot/freeflight/core/academy/MediaInfos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-wide v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 84
    return-void
.end method
