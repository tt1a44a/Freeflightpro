.class Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;
.super Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
.source "CreateBestOfActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->updateMedias()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;
    .param p2, "ref"    # Ljava/lang/Object;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

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
    .line 272
    const-string v0, "CreateBestOfActivity"

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

    .line 273
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$400(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 251
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-virtual {v4}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 252
    if-eqz p1, :cond_2

    move-object v1, p1

    .line 253
    check-cast v1, Ljava/util/ArrayList;

    .line 255
    .local v1, "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$300(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 257
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 258
    .local v0, "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    iget-boolean v5, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/muvee/mvdronecomposer/MVDroneComposer;->isVideoDroneTypeSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 259
    iget-object v5, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v5, v0}, Lcom/parrot/freeflight/gallery/MediaHelper;->getMediaDuration(Landroid/content/Context;Lcom/parrot/freeflight/core/academy/MediaInfos;)J

    move-result-wide v2

    .line 260
    .local v2, "timeInMillisec":J
    iget-object v5, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v5}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$300(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    invoke-direct {v6, v0, v2, v3}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;-><init>(Lcom/parrot/freeflight/core/academy/MediaInfos;J)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    .end local v2    # "timeInMillisec":J
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$400(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v4, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$200(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$6;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v5}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$300(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter;->setItems(Ljava/util/List;)V

    .line 268
    .end local v1    # "medias":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/freeflight/core/academy/MediaInfos;>;"
    :cond_2
    return-void
.end method
