.class public Lcom/parrot/freeflight/gallery/MediaHelper;
.super Ljava/lang/Object;
.source "MediaHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaDuration(Landroid/content/Context;Lcom/parrot/freeflight/core/academy/MediaInfos;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaInfos"    # Lcom/parrot/freeflight/core/academy/MediaInfos;

    .prologue
    .line 13
    const-wide/16 v4, -0x1

    .line 14
    .local v4, "timeInMillisec":J
    iget-boolean v3, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->isAVideo:Z

    if-eqz v3, :cond_0

    .line 15
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 16
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    const/4 v2, 0x0

    .line 18
    .local v2, "time":Ljava/lang/String;
    :try_start_0
    iget-object v3, p1, Lcom/parrot/freeflight/core/academy/MediaInfos;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 19
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 23
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 29
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .end local v2    # "time":Ljava/lang/String;
    :cond_0
    return-wide v4

    .line 20
    .restart local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "time":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
