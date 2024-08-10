.class Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;
.super Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
.source "MediasFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->updateMedias()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/fragment/MediasFragment;
    .param p2, "ref"    # Ljava/lang/Object;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;)V
    .locals 3
    .param p1, "error"    # Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 281
    const-string v0, "MediasFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 258
    if-eqz p1, :cond_1

    move-object v1, p1

    .line 259
    check-cast v1, Ljava/util/ArrayList;

    .line 261
    .local v1, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$202(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 262
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$302(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;Ljava/util/List;)Ljava/util/List;

    .line 264
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 265
    .local v0, "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    iget-boolean v5, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v5, :cond_0

    .line 266
    iget-object v5, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-virtual {v5}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/parrot/freeflight/gallery/MediaHelper;->getMediaDuration(Landroid/content/Context;Lcom/parrot/freeflight/core/academy/MediaInfos;)J

    move-result-wide v2

    .line 267
    .local v2, "timeInMillisec":J
    iget-object v5, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$200(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    invoke-direct {v6, v0, v2, v3}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;-><init>(Lcom/parrot/freeflight/core/academy/MediaInfos;J)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    .end local v2    # "timeInMillisec":J
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v5}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$300(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    const-wide/16 v8, 0x0

    invoke-direct {v6, v0, v8, v9}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;-><init>(Lcom/parrot/freeflight/core/academy/MediaInfos;J)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    .end local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v1    # "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$400(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/fragment/MediasFragment$4;->this$0:Lcom/parrot/freeflight/gallery/fragment/MediasFragment;

    invoke-static {v4}, Lcom/parrot/freeflight/gallery/fragment/MediasFragment;->access$500(Lcom/parrot/freeflight/gallery/fragment/MediasFragment;)V

    .line 277
    :cond_2
    return-void
.end method
