.class public interface abstract Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;
.super Ljava/lang/Object;
.source "GalleryMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClickMediaListener"
.end annotation


# virtual methods
.method public abstract addSelection(Lcom/parrot/freeflight/gallery/data/GalleryMedia;)V
    .param p1    # Lcom/parrot/freeflight/gallery/data/GalleryMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isMediaSelected(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onMediaClicked(Lcom/parrot/freeflight/gallery/data/GalleryMedia;)V
    .param p1    # Lcom/parrot/freeflight/gallery/data/GalleryMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract removeSelection(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
