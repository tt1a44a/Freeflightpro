.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;
.super Ljava/lang/Object;
.source "VmVideoRecorder.java"


# instance fields
.field private a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

.field private b:Landroid/media/MediaCodec;

.field private c:Landroid/media/MediaMuxer;

.field private d:I

.field private e:I

.field private f:J

.field private g:Landroid/view/Surface;

.field private h:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

.field private i:Ljava/lang/String;

.field private j:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

.field private k:Z

.field private l:Landroid/media/MediaCodec;

.field private m:[Ljava/nio/ByteBuffer;

.field private n:Z

.field private o:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d:I

    .line 38
    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e:I

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->f:J

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->k:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->n:Z

    .line 292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->o:J

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Landroid/media/MediaMuxer;)Landroid/media/MediaMuxer;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->g:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->g:Landroid/view/Surface;

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->i:Ljava/lang/String;

    .line 63
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
    .locals 6

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d:I

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->o:J

    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 296
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->o:J

    .line 297
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->o:J

    invoke-interface {v0, v1, v2, v3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;->onProgressUpdate(IJ)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[ZI)V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    aput-boolean v0, p2, p3

    .line 143
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->n:Z

    if-eqz v0, :cond_1

    .line 144
    const/4 v0, 0x0

    aget-boolean v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-boolean v0, p2, v0

    if-eqz v0, :cond_0

    .line 145
    if-eqz p1, :cond_0

    .line 146
    invoke-interface {p1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;->onPrepared(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    aget-boolean v0, p2, v0

    if-eqz v0, :cond_0

    .line 151
    if-eqz p1, :cond_0

    .line 152
    invoke-interface {p1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;->onPrepared(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[ZI)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[ZI)V

    return-void
.end method

.method static synthetic b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    const-string/jumbo v0, "video/avc"

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->width:I

    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget v2, v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->height:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 82
    const-string v1, "bitrate"

    const v2, 0x5b8d80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    const-string v1, "frame-rate"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 84
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 85
    const-string v1, "i-frame-interval"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 88
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->g:Landroid/view/Surface;

    .line 90
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 96
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 98
    const-string v0, "VmVideoRecorder.OUTPUT_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$2;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$2;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 109
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private c()V
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    .line 174
    .line 175
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    move-wide v2, v4

    .line 177
    :cond_0
    :goto_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 178
    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v6, v1, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v6

    .line 179
    if-lez v6, :cond_4

    .line 181
    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 211
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 212
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d:I

    .line 215
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e()V

    .line 217
    return-void

    .line 185
    :cond_1
    iget v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d:I

    if-gez v7, :cond_2

    .line 186
    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    iget-object v8, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    iput v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d:I

    .line 187
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d()V

    .line 190
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_3

    .line 191
    iget-wide v2, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 194
    :cond_3
    new-instance v7, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v7}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 195
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 196
    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v8, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 197
    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v8, v2

    iput-wide v8, v7, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 198
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v1, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 202
    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d:I

    aget-object v8, v0, v6

    invoke-direct {p0, v1, v8, v7}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 204
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 207
    :cond_4
    const/4 v1, -0x3

    if-ne v6, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c()V

    return-void
.end method

.method static synthetic d(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->n:Z

    if-eqz v0, :cond_1

    .line 222
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e:I

    if-ltz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 224
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 226
    monitor-exit v1

    .line 242
    :goto_0
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 231
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
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

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->n:Z

    if-eqz v0, :cond_2

    .line 246
    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d:I

    if-gez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 248
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 249
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 251
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iput-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    .line 256
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;->onComplete()V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 262
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
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

    .line 263
    :catch_0
    move-exception v0

    .line 264
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 270
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 271
    iput-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    .line 276
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    invoke-interface {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;->onComplete()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b()V

    return-void
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 321
    const-wide/16 v2, 0x0

    .line 322
    const v1, 0x46b567e9

    .line 323
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 325
    :cond_0
    :goto_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 326
    iget-object v5, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 327
    if-ltz v5, :cond_4

    .line 328
    iget v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e:I

    if-gez v6, :cond_1

    .line 329
    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->c:Landroid/media/MediaMuxer;

    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v6

    iput v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e:I

    .line 330
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->d()V

    .line 334
    :cond_1
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 358
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 359
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 360
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e:I

    .line 361
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e()V

    .line 363
    return-void

    .line 338
    :cond_2
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    if-nez v6, :cond_3

    .line 340
    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 341
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 342
    iput v8, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 343
    iput-wide v2, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 344
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v7, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 345
    aget-object v7, v0, v5

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    iget v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->e:I

    aget-object v7, v0, v5

    invoke-direct {p0, v4, v7, v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 350
    long-to-float v2, v2

    add-float/2addr v2, v1

    float-to-long v2, v2

    .line 352
    :cond_3
    iget-object v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    .line 353
    :cond_4
    const/4 v4, -0x3

    if-ne v5, v4, :cond_0

    .line 354
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->g()V

    return-void
.end method

.method static synthetic g(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->b:Landroid/media/MediaCodec;

    return-object v0
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 385
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->k:Z

    .line 387
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 388
    const-string v1, "mime"

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "aac-profile"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 390
    const-string/jumbo v1, "sample-rate"

    const v2, 0xac44

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 391
    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 392
    const-string v1, "bitrate"

    const v2, 0x1f400

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 393
    const-string v1, "max-input-size"

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 396
    :try_start_0
    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    .line 397
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 398
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 399
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->m:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    const-string v0, "VmVideoRecorder.AUDIO_ENCODER_OUTPUT_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$6;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$6;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 410
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->f()V

    return-void
.end method


# virtual methods
.method public addAudioFrame([BII)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->k:Z

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->n:Z

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 372
    if-eqz p1, :cond_2

    .line 373
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->m:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 374
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->m:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 375
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move v3, p3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 377
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->k:Z

    .line 378
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->l:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0
.end method

.method public afterDrawFrame()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->g:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->swapBuffers(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method public beforeDrawFrame(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 304
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 305
    iput-wide p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->f:J

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->g:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->makeCurrent(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget v0, v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->width:I

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    iget v1, v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;->height:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 310
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    iget-wide v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->f:J

    sub-long v2, p1, v2

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->g:Landroid/view/Surface;

    invoke-virtual {v0, v2, v3, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;->setPresentationTime(JLjava/lang/Object;)V

    .line 311
    return-void
.end method

.method public init(Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OutputParam;

    .line 56
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->j:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnProgressUpdateListener;

    .line 57
    return-void
.end method

.method public setEglSetup(Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->h:Lcom/muvee/dsg/mmas/api/advancevideomixer/EGLSetup;

    .line 69
    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->i:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setScopeEnableAudio(Z)V
    .locals 0

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->n:Z

    .line 414
    return-void
.end method

.method public startRecording(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    .line 116
    const-string v1, "VmVideoRecorder.INPUT_THREAD"

    new-instance v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$3;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[Z)V

    invoke-static {v1, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 131
    iget-boolean v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->n:Z

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "VmVideoRecorder.AUDIO_ENCODER_THREAD"

    new-instance v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$4;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;[Z)V

    invoke-static {v1, v2}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void

    .line 114
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder$5;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmVideoRecorder;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method
