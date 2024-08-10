.class Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 165
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/view/CheckableImageButton;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/parrot/freeflight/view/CheckableImageButton;->setChecked(Z)V

    .line 166
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$100(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->getSelection()Ljava/util/Collection;

    move-result-object v1

    .line 168
    .local v1, "medias":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parrot/freeflight/gallery/data/GalleryMedia;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gallery/data/GalleryMedia;

    .line 169
    .local v0, "media":Lcom/parrot/freeflight/gallery/data/GalleryMedia;
    iget-object v3, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$300(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/academy/MediaManager;->removeLocalMedia(Ljava/io/File;)Z

    goto :goto_0

    .line 172
    .end local v0    # "media":Lcom/parrot/freeflight/gallery/data/GalleryMedia;
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$100(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->setSelectionMode(I)V

    .line 173
    iget-object v2, p0, Lcom/parrot/freeflight/gallery/activity/GalleryActivity$7;->this$0:Lcom/parrot/freeflight/gallery/activity/GalleryActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gallery/activity/GalleryActivity;->access$100(Lcom/parrot/freeflight/gallery/activity/GalleryActivity;)Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gallery/fragment/AbsMediaFragment;->updateMedias()V

    .line 174
    return-void
.end method
