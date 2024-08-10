.class Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;
.super Landroid/media/MediaCodec$Callback;
.source "MediaCodecAysnTextureDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 215
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v1, "::onInputBufferAvailable: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Landroid/media/MediaExtractor;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 218
    if-lez v3, :cond_0

    .line 219
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 225
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->i(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v1, p2

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v3, "::onOutputBufferAvailable: +++ %d %d %d %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v5}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v5}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v5}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->c(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    monitor-enter v3

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->c(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    move-result-object v4

    .line 100
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v6, v7}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;J)J

    .line 101
    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v9, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v5, v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;Z)Z

    .line 102
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$2;->a:[I

    invoke-virtual {v4}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_1
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v3, "::onOutputBufferAvailable: --- %d %d %d %s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v2}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v8

    iget-object v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v1}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->c(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    move-result-object v1

    aput-object v1, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    :cond_0
    move v0, v2

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 107
    :pswitch_0
    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 108
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    monitor-enter v3

    .line 110
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;Z)Z

    .line 111
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    invoke-virtual {p0, p1, p2, p3}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_1

    .line 113
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 116
    :cond_1
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    .line 120
    :pswitch_1
    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    .line 121
    invoke-static {}, Lcom/muvee/util/TimeLogger;->start()V

    .line 122
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 124
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->d(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    .line 126
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    .line 127
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v3}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->e(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 146
    :goto_3
    monitor-enter v3

    .line 147
    :try_start_5
    iget-object v4, v0, Lcom/muvee/studio/view/MmsaGLSurfaceView;->mSurfaceFrameCount:[J

    iget-object v5, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v5}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->e(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)I

    move-result v5

    aget-wide v4, v4, v5

    .line 148
    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v6}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->f(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 150
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    :goto_4
    :try_start_7
    monitor-exit v3

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 153
    :cond_2
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 158
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v0, v4, v5}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;J)J

    .line 159
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    monitor-enter v3

    .line 160
    :try_start_9
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 161
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 163
    const-string v0, "GOT FRAME--"

    invoke-static {v0}, Lcom/muvee/util/TimeLogger;->logTime(Ljava/lang/String;)V

    .line 165
    :goto_5
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    monitor-enter v3

    .line 166
    :try_start_a
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->f(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    .line 167
    monitor-exit v3

    goto/16 :goto_1

    .line 175
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 161
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    .line 170
    :cond_3
    :try_start_c
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 175
    :goto_6
    :try_start_d
    monitor-exit v3

    goto :goto_5

    .line 171
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_6

    .line 179
    :cond_4
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_1

    .line 185
    :pswitch_2
    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    .line 186
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    monitor-enter v3

    .line 188
    :try_start_e
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v4, "::onOutputBufferAvailable: %s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "+"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v7}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->c(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-static {v0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->c(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    move-result-object v0

    sget-object v4, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->c:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    if-ne v0, v4, :cond_5

    .line 190
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v4, "::onOutputBufferAvailable: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "++"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 192
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v4, "::onOutputBufferAvailable: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "--"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_5
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v4, "::onOutputBufferAvailable: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "-"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 196
    :goto_7
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 197
    invoke-virtual {p0, p1, p2, p3}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;->onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1

    .line 196
    :catchall_5
    move-exception v0

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    throw v0

    .line 199
    :cond_6
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_1

    .line 151
    :catch_1
    move-exception v4

    goto/16 :goto_4

    .line 195
    :catch_2
    move-exception v0

    goto :goto_7

    .line 112
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 5

    .prologue
    .line 88
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v1, "::onOutputFormatChanged: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
