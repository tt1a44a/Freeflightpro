.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$100(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$000(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/core/academy/MediaInfos;

    .line 102
    .local v0, "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$3;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    const v2, 0x7f110457

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareVideo(Landroid/content/Context;ILjava/io/File;)V

    .line 106
    .end local v0    # "infos":Lcom/parrot/freeflight/core/academy/MediaInfos;
    :cond_0
    return-void
.end method
