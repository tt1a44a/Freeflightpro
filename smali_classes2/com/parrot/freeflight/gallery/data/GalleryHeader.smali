.class public Lcom/parrot/freeflight/gallery/data/GalleryHeader;
.super Lcom/parrot/freeflight/gallery/data/GalleryElement;
.source "GalleryHeader.java"


# instance fields
.field private mCount:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/parrot/freeflight/gallery/data/GalleryElement;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/data/GalleryHeader;->mTitle:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/parrot/freeflight/gallery/data/GalleryHeader;->mCount:I

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryHeader;->mType:I

    .line 11
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryHeader;->mCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/data/GalleryHeader;->mTitle:Ljava/lang/String;

    return-object v0
.end method
