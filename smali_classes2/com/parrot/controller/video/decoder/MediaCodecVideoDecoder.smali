.class public abstract Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;
.super Lcom/parrot/controller/video/decoder/VideoDecoder;
.source "MediaCodecVideoDecoder.java"


# static fields
.field private static final MEDIA_FORMAT_CSD_0:Ljava/lang/String; = "csd-0"

.field private static final MEDIA_FORMAT_CSD_1:Ljava/lang/String; = "csd-1"

.field private static final TAG:Ljava/lang/String; = "debug_stream"

.field public static final VIDEO_HEIGHT:I = 0x170

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field public static final VIDEO_WIDTH:I = 0x280


# instance fields
.field protected mFrameMetadataContainer:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/parrot/controller/stream/FrameMetadata;",
            ">;"
        }
    .end annotation
.end field

.field protected mFrameUserMetadataContainer:Ljava/util/Queue;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/parrot/controller/stream/UserMetadata;",
            ">;"
        }
    .end annotation
.end field

.field protected mInputBuffers:[Ljava/nio/ByteBuffer;

.field protected final mLock:Ljava/lang/Object;

.field protected mMediaCodec:Landroid/media/MediaCodec;

.field protected mMediaFormat:Landroid/media/MediaFormat;

.field protected mOutputBuffers:[Ljava/nio/ByteBuffer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mUseSurface:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/controller/video/decoder/VideoDecoder;-><init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V
    .locals 1
    .param p1, "videoListener"    # Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/parrot/controller/video/decoder/VideoDecoder;-><init>(Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;)V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getMediaCodecInfo()Landroid/media/MediaCodecInfo;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 128
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    .line 129
    iget-object v4, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 143
    :cond_0
    :goto_0
    return-object v1

    .line 131
    :cond_1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    .line 132
    .local v2, "nbMediaCodec":I
    const/4 v0, 0x0

    .local v0, "it":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 133
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 134
    .local v1, "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_2

    aget-object v3, v5, v4

    .line 136
    .local v3, "supportedType":Ljava/lang/String;
    const-string v7, "video/avc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 132
    .end local v3    # "supportedType":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    .end local v1    # "mediaCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initMediaCodec(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "sps"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pps"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    const-string v0, "debug_stream"

    const-string v2, "initMediaCodec()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "video/avc"

    const/16 v2, 0x280

    const/16 v3, 0x170

    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 80
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v2, "csd-0"

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 81
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v2, "csd-1"

    invoke-virtual {v0, v2, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 82
    iget-boolean v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    iget-object v3, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mSurface:Landroid/view/Surface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 90
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mFrameMetadataContainer:Ljava/util/Queue;

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mFrameUserMetadataContainer:Ljava/util/Queue;

    .line 87
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected instantiateMediaCodec()V
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_0
    const-string v1, "debug_stream"

    const-string v3, "instantiateMediaCodec()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v1, "video/avc"

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->createSurfaceTexture()V

    .line 73
    :cond_0
    monitor-exit v2

    .line 74
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected releaseMediaCodec(Z)V
    .locals 6
    .param p1, "releaseSurfaceTexture"    # Z

    .prologue
    .line 95
    iget-object v3, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 97
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    const-string v2, "debug_stream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseMediaCodec() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 101
    :try_start_1
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :goto_0
    :try_start_2
    const-string v2, "debug_stream"

    const-string v4, "releaseMediaCodec"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 108
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mFrameMetadataContainer:Ljava/util/Queue;

    if-eqz v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mFrameMetadataContainer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 110
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mFrameMetadataContainer:Ljava/util/Queue;

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mFrameUserMetadataContainer:Ljava/util/Queue;

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mFrameUserMetadataContainer:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 114
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mFrameUserMetadataContainer:Ljava/util/Queue;

    .line 116
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 117
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 118
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 120
    :cond_2
    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->releaseSurfaceTexture()V

    .line 123
    :cond_3
    monitor-exit v3

    .line 124
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setUseSurface(Z)V
    .locals 1
    .param p1, "useSurface"    # Z

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    if-eq v0, p1, :cond_0

    .line 53
    iput-boolean p1, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mUseSurface:Z

    .line 54
    iget-object v0, p0, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->releaseMediaCodec(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/parrot/controller/video/decoder/MediaCodecVideoDecoder;->instantiateMediaCodec()V

    .line 59
    :cond_0
    return-void
.end method
