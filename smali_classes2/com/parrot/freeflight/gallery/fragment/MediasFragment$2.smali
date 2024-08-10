.class Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;
.super Ljava/lang/Object;
.source "MediasFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/fragment/MediasFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSelection(Lcom/parrot/freeflight/gallery/data/GalleryMedia;)V
    .locals 3
    .param p1, "media"    # Lcom/parrot/freeflight/gallery/data/GalleryMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$000(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v2}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$000(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;->onSelectionChanged(Ljava/util/ArrayList;)V

    .line 90
    :cond_0
    return-void
.end method

.method public isMediaSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$000(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onMediaClicked(Lcom/parrot/freeflight/gallery/data/GalleryMedia;)V
    .locals 3
    .param p1, "media"    # Lcom/parrot/freeflight/gallery/data/GalleryMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getMediaInfo()Lcom/parrot/freeflight/core/academy/MediaInfos;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/freeflight/core/academy/MediaInfos;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public removeSelection(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$000(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->mMediaFragmentListener:Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$2;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v2}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$000(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment$MediasFragmentListener;->onSelectionChanged(Ljava/util/ArrayList;)V

    .line 98
    :cond_0
    return-void
.end method
