.class public Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;
.super Ljava/lang/Object;
.source "TextureVideoRecorder.java"


# instance fields
.field private a:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

.field private b:Landroid/media/MediaCodec;

.field private c:Landroid/media/MediaMuxer;

.field private d:I

.field private e:I

.field private f:J

.field private g:Landroid/view/Surface;

.field private h:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

.field private i:Ljava/lang/String;

.field private j:Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;

.field private k:Z

.field private l:Landroid/media/MediaCodec;

.field private m:[Ljava/nio/ByteBuffer;

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d:I

    .line 41
    iput v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e:I

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->f:J

    .line 50
    iput-boolean v2, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->k:Z

    .line 55
    iput-boolean v2, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->g:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->g:Landroid/view/Surface;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->i:Ljava/lang/String;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmVideoRecorder.GL_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 79
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    const-string/jumbo v0, "video/avc"

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 85
    const-string v1, "bitrate"

    const v2, 0x5b8d80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 87
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 88
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 89
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 91
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->g:Landroid/view/Surface;

    .line 92
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$1;-><init>(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 103
    const-string v0, "VmVideoRecorder.OUTPUT_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$2;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$2;-><init>(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 108
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    .line 155
    .line 156
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-wide v2, v4

    .line 158
    :cond_0
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 159
    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 160
    if-lez v6, :cond_4

    .line 162
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 192
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 193
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d:I

    .line 196
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e()V

    .line 198
    return-void

    .line 166
    :cond_1
    iget v7, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d:I

    if-gez v7, :cond_2

    .line 167
    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    iget-object v8, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d:I

    .line 168
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d()V

    .line 171
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_3

    .line 172
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 175
    :cond_3
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 176
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 177
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 178
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v8, v2

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 179
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 183
    iget v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d:I

    aget-object v8, v0, v6

    invoke-direct {p0, v1, v8, v7}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 185
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 188
    :cond_4
    const/4 v1, -0x3

    if-ne v6, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c()V

    return-void
.end method

.method static synthetic d(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Lcom/muvee/dsg/mmas/api/image2video/OutputParam;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->n:Z

    if-eqz v0, :cond_1

    .line 203
    iget v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e:I

    if-ltz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 205
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit v1

    .line 223
    :goto_0
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->n:Z

    if-eqz v0, :cond_2

    .line 227
    iget v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d:I

    if-gez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 229
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 230
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 232
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iput-object v2, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    .line 237
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;->onComplete()V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 232
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 241
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 243
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 247
    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 251
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 252
    iput-object v2, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    .line 257
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;->onComplete()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b()V

    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 295
    const-wide/16 v2, 0x0

    .line 296
    const v1, 0x46b567e9

    .line 297
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 299
    :cond_0
    :goto_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 300
    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 301
    if-ltz v5, :cond_4

    .line 302
    iget v6, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e:I

    if-gez v6, :cond_1

    .line 303
    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->c:Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    iput v6, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e:I

    .line 304
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->d()V

    .line 308
    :cond_1
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 332
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 333
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 334
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e:I

    .line 335
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e()V

    .line 337
    return-void

    .line 312
    :cond_2
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-nez v6, :cond_3

    .line 314
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 315
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 316
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 317
    iput-wide v2, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 318
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 319
    aget-object v7, v0, v5

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    iget v4, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->e:I

    aget-object v7, v0, v5

    invoke-direct {p0, v4, v7, v6}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 324
    long-to-float v2, v2

    add-float/2addr v2, v1

    float-to-long v2, v2

    .line 326
    :cond_3
    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 327
    :cond_4
    const/4 v4, -0x3

    if-ne v5, v4, :cond_0

    .line 328
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->g()V

    return-void
.end method

.method static synthetic g(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->b:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->k:Z

    .line 360
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 361
    const-string v1, "mime"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "aac-profile"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 363
    const-string/jumbo v1, "sample-rate"

    const v2, 0xac44

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 364
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 365
    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 366
    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 369
    :try_start_0
    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    .line 370
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 371
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 372
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->m:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->n:Z

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "VmVideoRecorder.AUDIO_ENCODER_OUTPUT_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$6;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$6;-><init>(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 384
    :cond_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->n:Z

    return v0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->f()V

    return-void
.end method


# virtual methods
.method public addAudioFrame([BII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->k:Z

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 346
    if-eqz p1, :cond_1

    .line 347
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->m:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->m:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 349
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v3, p3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->k:Z

    .line 352
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->l:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0
.end method

.method public afterDrawFrame()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->g:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;->swapBuffers(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public beforeDrawFrame(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 279
    iput-wide p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->f:J

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->g:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;->makeCurrent(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    iget v0, v0, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/image2video/OutputParam;->height:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 284
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    iget-wide v2, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->f:J

    sub-long v2, p1, v2

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->g:Landroid/view/Surface;

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;->setPresentationTime(JLjava/lang/Object;)V

    .line 285
    return-void
.end method

.method public init(Lcom/muvee/dsg/mmas/api/image2video/OutputParam;Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/image2video/OutputParam;

    .line 59
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/image2video/OnProgressUpdateListener;

    .line 60
    return-void
.end method

.method public setEglSetup(Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/texture/util/EGLSetup;

    .line 72
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->i:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public startRecording()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "VmVideoRecorder.INPUT_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$3;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$3;-><init>(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 127
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->n:Z

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "VmVideoRecorder.AUDIO_ENCODER_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$4;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$4;-><init>(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 135
    :cond_0
    return-void
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder$5;-><init>(Lcom/muvee/dsg/mmas/api/texture/videorecorder/TextureVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
