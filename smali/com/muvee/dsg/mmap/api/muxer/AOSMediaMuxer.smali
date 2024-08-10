.class public Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;
.super Ljava/lang/Object;
.source "AOSMediaMuxer.java"


# static fields
.field public static final MUX_MODE_AUDIO:I = 0x2

.field public static final MUX_MODE_VIDEO:I = 0x1


# instance fields
.field private a:I

.field private b:Landroid/media/MediaMuxer;

.field private c:I

.field private d:I

.field private e:Ljava/io/File;

.field private f:J

.field private g:J

.field private h:F

.field private i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a:I

    .line 33
    iput v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    .line 34
    iput v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->f:J

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->g:J

    .line 39
    const v0, 0x46b567e9

    iput v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->h:F

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->j:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->k:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::startMediaMuxer: %d,%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::startMediaMuxer: %d,%d,%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a:I

    packed-switch v0, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    if-ltz v0, :cond_1

    .line 238
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 239
    :try_start_0
    const-string v0, "AOSMediaMuxer"

    const-string v2, "::startMediaMuxer: start++"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 246
    :try_start_2
    const-string v0, "AOSMediaMuxer"

    const-string v2, "::startMediaMuxer: start--"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 248
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 249
    :try_start_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 250
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_4
    const-string v2, "AOSMediaMuxer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::startMediaMuxer: ex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    monitor-exit v1

    goto :goto_0

    .line 247
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 252
    :cond_1
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::startMediaMuxer++ %d,%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 255
    :try_start_5
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 259
    :goto_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 260
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::startMediaMuxer--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 259
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 264
    :pswitch_1
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    if-ltz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto/16 :goto_0

    .line 269
    :pswitch_2
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    if-ltz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto/16 :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/media/MediaFormat;)V
    .locals 4

    .prologue
    .line 168
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "AOSMediaMuxer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::addVideoTrack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :try_start_1
    const-string v0, "AOSMediaMuxer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addVideoTrack mediaFormat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    .line 176
    const-string v0, "AOSMediaMuxer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addVideoTrack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a()V

    .line 178
    monitor-exit v1

    .line 186
    :cond_1
    :goto_1
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    const-string v1, "AOSMediaMuxer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addVideoTrack IllegalArgumentException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :catch_1
    move-exception v0

    .line 183
    const-string v1, "AOSMediaMuxer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addVideoTrack IllegalStateException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 58
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::initMediaMuxer++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->e:Ljava/io/File;

    .line 61
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    .line 63
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::initMediaMuxer--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::stopMediaMuxer: %d,%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a:I

    packed-switch v0, :pswitch_data_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 371
    :pswitch_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    if-gez v0, :cond_1

    .line 373
    :try_start_0
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::stopMediaMuxer: stop++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 375
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::stopMediaMuxer: stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 381
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::stopMediaMuxer: release--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 387
    :try_start_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 388
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    :goto_3
    iput-object v5, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    .line 393
    const-string v0, "MEDIA_MUXER_THREAD"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    invoke-interface {v0}, Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;->onCompleted()V

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 382
    :catch_1
    move-exception v0

    .line 383
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 388
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 389
    :catch_2
    move-exception v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 398
    :cond_1
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    monitor-enter v1

    .line 400
    :try_start_6
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 404
    :goto_4
    :try_start_7
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 401
    :catch_3
    move-exception v0

    .line 402
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 411
    :pswitch_1
    :try_start_9
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 412
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::stopMediaMuxer: video stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 417
    :goto_5
    :try_start_a
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 418
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::stopMediaMuxer: video release--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 422
    :goto_6
    iput-object v5, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    .line 423
    const-string v0, "MEDIA_MUXER_THREAD"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    invoke-interface {v0}, Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;->onCompleted()V

    goto/16 :goto_0

    .line 413
    :catch_4
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 419
    :catch_5
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 433
    :pswitch_2
    :try_start_b
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 434
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::stopMediaMuxer: audio stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 439
    :goto_7
    :try_start_c
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 440
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::stopMediaMuxer: audio release--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 444
    :goto_8
    iput-object v5, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    .line 445
    const-string v0, "MEDIA_MUXER_THREAD"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    invoke-interface {v0}, Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;->onCompleted()V

    goto/16 :goto_0

    .line 435
    :catch_6
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 441
    :catch_7
    move-exception v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/media/MediaFormat;)V
    .locals 4

    .prologue
    .line 189
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    if-nez v0, :cond_0

    .line 190
    const-string v0, "AOSMediaMuxer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::addAudioTrack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :try_start_1
    const-string v0, "AOSMediaMuxer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addAudioTrack mediaFormat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    .line 197
    const-string v0, "AOSMediaMuxer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addAudioTrack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b:Landroid/media/MediaMuxer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a()V

    .line 199
    monitor-exit v1

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "AOSMediaMuxer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addAudioTrack IllegalArgumentException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b()V

    goto :goto_1

    .line 204
    :catch_1
    move-exception v0

    .line 205
    const-string v1, "AOSMediaMuxer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addAudioTrack IllegalStateException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b()V

    goto :goto_1
.end method

.method private c()V
    .locals 1

    .prologue
    .line 458
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    .line 459
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b()V

    .line 460
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, -0x1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    .line 464
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b()V

    .line 465
    return-void
.end method


# virtual methods
.method public prepare(ILjava/lang/String;Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;)V
    .locals 2

    .prologue
    .line 44
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::prepare++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput p1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a:I

    .line 46
    iput-object p3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    .line 47
    const-string v0, "MEDIA_MUXER_THREAD"

    new-instance v1, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer$1;

    invoke-direct {v1, p0, p2}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer$1;-><init>(Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 54
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::prepare--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public writeAudioSampleData(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    .line 119
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::writeAudioSampleData++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    const-string v0, "AOSMediaMuxer"

    const-string v2, "::writeAudioSampleData: %s ,%s ,%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v0, "AOSMediaMuxer"

    const-string v2, "::writeAudioSampleData: addAudioTrack++"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->b(Landroid/media/MediaFormat;)V

    .line 124
    const-string v0, "AOSMediaMuxer"

    const-string v2, "::writeAudioSampleData: addAudioTrack--"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    if-gez v0, :cond_0

    .line 127
    monitor-exit v1

    .line 165
    :goto_0
    return-void

    .line 130
    :cond_0
    if-nez p3, :cond_1

    .line 131
    monitor-exit v1

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_1
    :try_start_1
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_2

    .line 135
    monitor-exit v1

    goto :goto_0

    .line 138
    :cond_2
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d()V

    .line 140
    monitor-exit v1

    goto :goto_0

    .line 143
    :cond_3
    if-nez p2, :cond_4

    .line 144
    monitor-exit v1

    goto :goto_0

    .line 148
    :cond_4
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 149
    const/4 v2, 0x0

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 150
    const/4 v2, 0x0

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 151
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->g:J

    iput-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 152
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 153
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    iget v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->d:I

    invoke-direct {p0, v2, p2, v0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 156
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->g:J

    long-to-float v2, v2

    iget v3, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->h:F

    add-float/2addr v2, v3

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->g:J

    .line 158
    const-string v2, "AOSMediaMuxer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeAudioSampleData: lastAudioPresentationTimeUs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->g:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    if-eqz v2, :cond_5

    .line 161
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "audio"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;->onProgressUpdate([Ljava/lang/Object;)V

    .line 163
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::writeAudioSampleData--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public writeVideoSampleData(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    .line 72
    const-string v0, "AOSMediaMuxer"

    const-string v1, "::writeVideoSampleData++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    const-string v0, "AOSMediaMuxer"

    const-string v2, "::writeVideoSampleData: %s ,%s ,%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "AOSMediaMuxer"

    const-string v2, "::writeVideoSampleData addVideoTrack++"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a(Landroid/media/MediaFormat;)V

    .line 77
    const-string v0, "AOSMediaMuxer"

    const-string v2, "::writeVideoSampleData addVideoTrack--"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v0, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    if-gez v0, :cond_0

    .line 80
    monitor-exit v1

    .line 115
    :goto_0
    return-void

    .line 83
    :cond_0
    if-nez p3, :cond_1

    .line 84
    monitor-exit v1

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_1
    :try_start_1
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_2

    .line 88
    monitor-exit v1

    goto :goto_0

    .line 91
    :cond_2
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 92
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c()V

    .line 93
    monitor-exit v1

    goto :goto_0

    .line 96
    :cond_3
    if-nez p2, :cond_4

    .line 97
    monitor-exit v1

    goto :goto_0

    .line 100
    :cond_4
    iget-wide v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    .line 101
    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->f:J

    .line 104
    :cond_5
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 105
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 106
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 107
    iget-wide v2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->f:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 108
    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 109
    iget v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->c:I

    invoke-direct {p0, v2, p2, v0}, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 111
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    if-eqz v2, :cond_6

    .line 112
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/muxer/AOSMediaMuxer;->i:Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "video"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v2, v3}, Lcom/muvee/dsg/mmap/api/muxer/MediaMuxerCallBack;->onProgressUpdate([Ljava/lang/Object;)V

    .line 114
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
