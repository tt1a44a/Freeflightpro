.class public Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;
.super Lcom/muvee/dsg/mmapcodec/Codec;
.source "MediaCodecAysnTextureDecoder.java"

# interfaces
.implements Lcom/muvee/dsg/mmapcodec/CodecConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

.field private b:Landroid/media/MediaExtractor;

.field private c:Landroid/media/MediaFormat;

.field private d:Ljava/lang/String;

.field private e:Landroid/media/MediaCodec;

.field private f:I

.field private g:J

.field private h:J

.field private i:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

.field private j:J

.field private k:J

.field private l:J

.field private m:Z

.field private n:J

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Lcom/muvee/dsg/mmapcodec/Codec;-><init>()V

    .line 45
    iput-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->j:J

    .line 46
    iput-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->k:J

    .line 47
    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->l:J

    .line 49
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->m:Z

    .line 50
    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->n:J

    .line 52
    iput-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    return-wide v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;J)J
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h:J

    return-wide v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;J)J
    .locals 1

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->l:J

    return-wide p1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->o:Z

    return p1
.end method

.method static synthetic c(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->i:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J
    .locals 4

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->k:J

    return-wide v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->f:I

    return v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->k:J

    return-wide v0
.end method

.method static synthetic g(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->j:J

    return-wide v0
.end method

.method static synthetic h(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Landroid/media/MediaExtractor;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b:Landroid/media/MediaExtractor;

    return-object v0
.end method

.method static synthetic i(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)Landroid/media/MediaCodec;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->e:Landroid/media/MediaCodec;

    return-object v0
.end method


# virtual methods
.method public closeCodec()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 327
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v1, "::closeCodec: 00 %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 330
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    iget v1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->f:I

    invoke-virtual {v0, v1}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->onCloseDecoder(I)V

    .line 332
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 333
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ASYN_DECODER_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 335
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v1, "::closeCodec: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    .line 330
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getNextFrame(Lcom/muvee/dsg/mmapcodec/CodecFrameParams;)Lcom/muvee/dsg/mmapcodec/CodecFrameParams;
    .locals 8

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 266
    const-string v2, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v3, "::getNextFrame: +++ %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :try_start_1
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->b:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->i:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    .line 270
    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    .line 271
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->getInstance()Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget-wide v4, v3, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mSourceId:J

    long-to-int v3, v4

    iget-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    iget-object v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    iget v6, v6, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->getIntervalAt(IJI)J

    move-result-wide v2

    .line 272
    iget-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h:J

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 275
    iget-boolean v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->m:Z

    if-eqz v2, :cond_0

    .line 276
    const/4 v0, 0x1

    iput v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    .line 277
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_EOF:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 278
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 322
    :goto_0
    monitor-exit p0

    return-object p1

    .line 280
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    :try_start_3
    const-string v2, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v3, "::getNextFrame: ++- %d %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_1
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    :try_start_4
    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->l:J

    iget-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 287
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 305
    :try_start_5
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v2

    .line 306
    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->f:I

    invoke-virtual {v2, v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    .line 307
    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 308
    iget v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->f:I

    invoke-virtual {v2, v3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getTextureId(I)I

    move-result v2

    iput v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTextureId:I

    .line 309
    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mDecodeStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 310
    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->l:J

    iput-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mOutTimeStamp:J

    .line 313
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 314
    :try_start_6
    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->j:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->j:J

    .line 315
    sget-object v2, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->c:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    iput-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->i:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 317
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 319
    const/4 v2, 0x0

    :try_start_7
    iput v2, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mLastFrame:I

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 321
    const-string v2, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v3, "::getNextFrame: TimeTaken = %d %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-wide v6, p1, Lcom/muvee/dsg/mmapcodec/CodecFrameParams;->mInTimeStamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 280
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 290
    :cond_1
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 295
    :goto_2
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 302
    :try_start_c
    const-string v2, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v3, "::getNextFrame: ++-+ %d %d %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->l:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 291
    :catch_0
    move-exception v2

    .line 293
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 295
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 317
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
.end method

.method public init(Lcom/muvee/dsg/mmapcodec/CodecInitParams;)Lcom/muvee/dsg/mmapcodec/CodecInitParams;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 56
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v2, "::init: %s %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "+"

    aput-object v4, v3, v1

    iget v4, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :try_start_0
    iput-object p1, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->a:Lcom/muvee/dsg/mmapcodec/CodecInitParams;

    .line 60
    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mStartSeek:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    .line 61
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->getInstance()Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;

    move-result-object v0

    iget-wide v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mSourceId:J

    long-to-int v2, v2

    iget-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    iget v3, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFrameRate:I

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->getIntervalAt(IJI)J

    move-result-wide v2

    .line 62
    iget-wide v4, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->h:J

    .line 63
    sget-object v0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;->a:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->i:Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$a;

    .line 67
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b:Landroid/media/MediaExtractor;

    .line 68
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b:Landroid/media/MediaExtractor;

    iget-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    move v0, v1

    .line 71
    :goto_0
    if-ge v0, v2, :cond_0

    .line 72
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->c:Landroid/media/MediaFormat;

    .line 73
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->c:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->d:Ljava/lang/String;

    .line 74
    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->d:Ljava/lang/String;

    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->b:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->g:J

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 82
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getNextIndex()I

    move-result v0

    iput v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->f:I

    .line 83
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->e:Landroid/media/MediaCodec;

    .line 84
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->e:Landroid/media/MediaCodec;

    new-instance v2, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;

    invoke-direct {v2, p0}, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder$1;-><init>(Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ASYN_DECODER_THREAD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 231
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v3

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 234
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getMmsaGLSurfaceView()Lcom/muvee/studio/view/MmsaGLSurfaceView;

    move-result-object v0

    iget v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->f:I

    invoke-virtual {v0, v2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getSurface(I)Landroid/view/Surface;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->e:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->c:Landroid/media/MediaFormat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 236
    iget-object v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->e:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 247
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :try_start_1
    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/muvee/dsg/mmapcodec/MediaCodecAysnTextureDecoder;->o:Z

    if-eqz v0, :cond_3

    .line 249
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    sget-object v0, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_OK:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v0, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 259
    :goto_2
    const-string v0, "com.muvee.dsg.mmapcodec.MediaCodecAysnTextureDecoder"

    const-string v2, "::init: %s"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "-"

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-object p1

    .line 71
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 251
    :cond_3
    :try_start_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    sget-object v2, Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;->MV_CS_FAIL:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    iput-object v2, p1, Lcom/muvee/dsg/mmapcodec/CodecInitParams;->mCodecStatus:Lcom/muvee/dsg/mmapcodec/CodecConstants$EMvCodecStatus;

    .line 256
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
