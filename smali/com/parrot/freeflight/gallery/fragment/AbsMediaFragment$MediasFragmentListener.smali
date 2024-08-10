.class public interface abstract Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;
.super Ljava/lang/Object;
.source "AbsMediaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediasFragmentListener"
.end annotation


# virtual methods
.method public abstract onSelectionChanged(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/freeflight/gallery/data/GalleryMedia;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSelectionModeChanged(I)V
    .param p1    # I
        .annotation build Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$SelectionMode;
        .end annotation
    .end param
.end method
