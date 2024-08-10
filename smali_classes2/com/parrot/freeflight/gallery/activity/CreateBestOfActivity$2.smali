.class Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;
.super Ljava/lang/Object;
.source "CreateBestOfActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gallery/adapter/GalleryMediaAdapter$OnClickMediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

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
    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/freeflight/gallery/data/GalleryMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$100(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V

    .line 102
    return-void
.end method

.method public isMediaSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onMediaClicked(Lcom/parrot/freeflight/gallery/data/GalleryMedia;)V
    .locals 0
    .param p1, "mediaInfos"    # Lcom/parrot/freeflight/gallery/data/GalleryMedia;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    return-void
.end method

.method public removeSelection(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$000(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity$2;->this$0:Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;->access$100(Lcom/parrot/freeflight/gallery/activity/CreateBestOfActivity;)V

    .line 108
    return-void
.end method
