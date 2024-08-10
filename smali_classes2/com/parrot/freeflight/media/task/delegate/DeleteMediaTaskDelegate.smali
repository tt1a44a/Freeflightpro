.class public Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;
.super Ljava/lang/Object;
.source "DeleteMediaTaskDelegate.java"

# interfaces
.implements Lcom/parrot/freeflight/media/task/delegate/MediaTaskDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
    }
.end annotation


# instance fields
.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/parrot/arsdk/armedia/ARMediaObject;Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;)V
    .locals 1
    .param p1, "objects"    # [Lcom/parrot/arsdk/armedia/ARMediaObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "l"    # Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method


# virtual methods
.method public execute(Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    .locals 12
    .param p1, "task"    # Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "downloader"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 31
    sget-object v5, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 32
    .local v5, "result":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    iget-object v8, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mMediaObjects:[Lcom/parrot/arsdk/armedia/ARMediaObject;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v2, v8, v6

    .line 33
    .local v2, "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    invoke-interface {p1}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 56
    .end local v2    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_0
    return-object v5

    .line 36
    .restart local v2    # "mediaObject":Lcom/parrot/arsdk/armedia/ARMediaObject;
    :cond_1
    const/4 v3, 0x0

    .line 37
    .local v3, "progress":F
    iget-object v10, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    invoke-virtual {p2, v10}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->deleteMedia(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    move-result-object v1

    .line 38
    .local v1, "error":Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
    sget-object v10, Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;->ARDATATRANSFER_OK:Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    if-ne v1, v10, :cond_2

    .line 39
    const/high16 v3, 0x42c80000    # 100.0f

    .line 46
    :cond_2
    iget-object v10, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->mediaType:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    sget-object v11, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->MEDIA_TYPE_PHOTO:Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;

    invoke-virtual {v10, v11}, Lcom/parrot/arsdk/armedia/MEDIA_TYPE_ENUM;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 47
    new-instance v0, Lcom/parrot/freeflight/media/model/DngDataTransferMedia;

    iget-object v10, v2, Lcom/parrot/arsdk/armedia/ARMediaObject;->media:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;

    invoke-direct {v0, v10}, Lcom/parrot/freeflight/media/model/DngDataTransferMedia;-><init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)V

    .line 49
    .local v0, "dngMedia":Lcom/parrot/freeflight/media/model/DngDataTransferMedia;
    invoke-virtual {p2, v0}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->deleteMedia(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMedia;)Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;

    .line 51
    .end local v0    # "dngMedia":Lcom/parrot/freeflight/media/model/DngDataTransferMedia;
    :cond_3
    new-instance v4, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    invoke-direct {v4, v2, v3}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;-><init>(Lcom/parrot/arsdk/armedia/ARMediaObject;F)V

    .line 52
    .local v4, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    invoke-virtual {v4, v1}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setError(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;)V

    .line 53
    sget-object v10, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;->FINISHED:Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;

    invoke-virtual {v4, v10}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->setState(Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult$State;)V

    .line 54
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    aput-object v4, v10, v7

    invoke-interface {p1, v10}, Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;->publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V

    .line 32
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public postResult(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V
    .locals 2
    .param p1, "result"    # Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canceled"    # Z

    .prologue
    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;

    .line 71
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;->onRequestCompleted(Lcom/parrot/arsdk/ardatatransfer/ARDATATRANSFER_ERROR_ENUM;Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public varargs postUpdate([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
    .locals 4
    .param p1, "results"    # [Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;

    .prologue
    .line 61
    iget-object v2, p0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;

    .line 62
    .local v0, "listener":Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 63
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 64
    .local v1, "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    invoke-virtual {v1}, Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;->getMediaObject()Lcom/parrot/arsdk/armedia/ARMediaObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parrot/freeflight/media/task/delegate/DeleteMediaTaskDelegate$Listener;->onMediaObjectDeleted(Lcom/parrot/arsdk/armedia/ARMediaObject;)V

    .line 66
    .end local v1    # "progressResult":Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;
    :cond_0
    return-void
.end method
