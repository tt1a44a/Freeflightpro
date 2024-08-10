.class public abstract Lcom/parrot/freeflight/gallery/data/GalleryElement;
.super Ljava/lang/Object;
.source "GalleryElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gallery/data/GalleryElement$GalleryType;
    }
.end annotation


# static fields
.field public static final TYPE_HEADER:I = 0x1

.field public static final TYPE_MEDIA:I


# instance fields
.field protected mType:I
    .annotation build Lcom/parrot/freeflight/gallery/data/GalleryElement$GalleryType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryElement;->mType:I

    return v0
.end method
