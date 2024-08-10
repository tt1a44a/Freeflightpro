.class public Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;
.super Ljava/lang/Object;
.source "VmAudioPlayer.java"

# interfaces
.implements Lcom/muvee/dsg/mmas/api/advancevideomixer/VmPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;,
        Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

.field private b:J

.field private c:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

.field private d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;

.field private e:Ljava/lang/String;

.field private f:Landroid/media/MediaExtractor;

.field private g:Landroid/media/MediaFormat;

.field private h:Landroid/media/MediaCodec;

.field private i:Landroid/media/AudioTrack;

.field private j:J

.field private k:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    invoke-direct {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    .line 308
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->k:F

    return-void
.end method

.method private a(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;
    .locals 5

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    .line 290
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 291
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 292
    const-string v3, "mime"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 295
    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->g:Landroid/media/MediaFormat;

    .line 299
    :goto_1
    return-object v0

    .line 290
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->d()V

    return-void
.end method

.method private a([BI)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 314
    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->k:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 331
    :cond_0
    return-void

    .line 316
    :cond_1
    iget v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->k:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    move v1, v0

    .line 317
    :goto_0
    if-ge v1, p2, :cond_0

    .line 318
    aput-byte v0, p1, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    :cond_2
    :goto_1
    if-ge v0, p2, :cond_0

    .line 324
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    .line 326
    int-to-float v1, v1

    iget v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->k:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    .line 328
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 329
    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 323
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method static synthetic b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmAudioPlayer.OUTPUT_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmAudioPlayer.INPUT_THREAD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    .line 124
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmAudioPlayer"

    const-string v1, "::initDecoder:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    .line 128
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a(Landroid/media/MediaExtractor;)Landroid/media/MediaFormat;

    .line 131
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->g:Landroid/media/MediaFormat;

    const-string v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    .line 134
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->g:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 135
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 138
    const v0, 0xac44

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 139
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const v2, 0xac44

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->i:Landroid/media/AudioTrack;

    .line 140
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->e()V

    return-void
.end method

.method static synthetic e(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmAudioPlayer"

    const-string v1, "::closeDecoder:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 241
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 243
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 244
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->i:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 246
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 248
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->quit(Ljava/lang/String;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 151
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmAudioPlayer"

    const-string v2, "::pullFrames:"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/16 v0, 0x2000

    new-array v3, v0, [B

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    move-result-object v0

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->STOPED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    if-eq v0, v2, :cond_7

    .line 156
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 157
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v4, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 158
    if-ltz v5, :cond_0

    .line 162
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    move-result-object v0

    sget-object v6, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PAUSED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v6, :cond_1

    .line 165
    :try_start_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 176
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmAudioPlayer"

    const-string v2, "::pullFrames: info.size = %d"

    new-array v7, v12, [Ljava/lang/Object;

    iget v8, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 177
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    array-length v2, v3

    if-le v0, v2, :cond_4

    .line 187
    array-length v2, v3

    .line 188
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    array-length v7, v3

    sub-int/2addr v0, v7

    .line 194
    :goto_1
    if-lez v2, :cond_6

    .line 195
    aget-object v7, v6, v5

    invoke-virtual {v7, v3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 197
    invoke-direct {p0, v3, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a([BI)V

    .line 198
    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;

    if-eqz v7, :cond_2

    .line 199
    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;

    invoke-interface {v7, v3, v1, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;->onAudioDataAvaiable([BII)V

    .line 202
    :cond_2
    const-string v7, "com.muvee.dsg.mmas.api.advancevideomixer.VmAudioPlayer"

    const-string v8, "::pullFrames: audioTime=%d"

    new-array v9, v12, [Ljava/lang/Object;

    iget-wide v10, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-wide v8, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->b:J

    .line 204
    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

    if-eqz v7, :cond_3

    .line 205
    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

    iget-wide v8, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->b:J

    invoke-interface {v7, p0, v8, v9}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;->onCurrentTimeUpdate(Ljava/lang/Object;J)V

    .line 208
    :cond_3
    iget-object v7, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->i:Landroid/media/AudioTrack;

    invoke-virtual {v7, v3, v1, v2}, Landroid/media/AudioTrack;->write([BII)I

    .line 210
    array-length v2, v3

    if-le v0, v2, :cond_5

    .line 211
    array-length v2, v3

    .line 212
    array-length v7, v3

    sub-int/2addr v0, v7

    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 168
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 190
    :cond_4
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    move v2, v0

    move v0, v1

    .line 191
    goto :goto_1

    :cond_5
    move v2, v0

    move v0, v1

    .line 215
    goto :goto_1

    .line 221
    :cond_6
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0, v5, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 224
    iget v0, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 225
    const-string v0, "com.muvee.dsg.mmas.api.advancevideomixer.VmAudioPlayer"

    const-string v1, "::pullFrames:done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_7
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 232
    return-void
.end method

.method protected a(Z)V
    .locals 12

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 254
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 256
    iget-object v2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    iget-wide v4, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->j:J

    invoke-virtual {v2, v4, v5, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move-wide v8, v0

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    move-result-object v0

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->STOPED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    if-eq v0, v1, :cond_2

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 263
    if-ltz v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    .line 265
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    aget-object v2, v7, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 266
    if-lez v3, :cond_1

    .line 267
    add-long v4, v8, v10

    .line 268
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 274
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->advance()Z

    .line 275
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    if-gez v0, :cond_0

    .line 276
    add-long/2addr v8, v10

    .line 277
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->f:Landroid/media/MediaExtractor;

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    move-wide v0, v8

    move-wide v8, v0

    .line 283
    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->h:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_2
    :goto_1
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getCurrentTimeUs()J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->b:J

    return-wide v0
.end method

.method public getOnCurrentTimeUpdateListener()Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->e:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public isPlay()Z
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    move-result-object v0

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play(ZZJ)V
    .locals 7

    .prologue
    .line 366
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->prepare(ZZJLcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V

    .line 368
    return-void
.end method

.method public prepare(ZZJLcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V
    .locals 3

    .prologue
    .line 85
    iput-wide p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->j:J

    .line 86
    invoke-direct {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;

    invoke-direct {v1, p0, p5, p2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;Z)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

.method public seek(J)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 372
    const/4 v6, 0x0

    move-object v1, p0

    move v3, v2

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->prepare(ZZJLcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V

    .line 373
    return-void
.end method

.method public setCurrentTimeUs(J)V
    .locals 1

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->b:J

    .line 353
    return-void
.end method

.method public setOnAudioDataAvaiableListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->d:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$OnAudioDataAvaiableListener;

    .line 305
    return-void
.end method

.method public setOnCurrentTimeUpdateListener(Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnCurrentTimeUpdateListener;

    .line 362
    return-void
.end method

.method public setPlay(Z)V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    monitor-enter v1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    .line 56
    :goto_0
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 60
    :cond_0
    monitor-exit v1

    .line 61
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PAUSED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVolumeLevel(F)V
    .locals 0

    .prologue
    .line 338
    iput p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->k:F

    .line 339
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 342
    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    sget-object v2, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->STOPED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    invoke-static {v0, v2}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    .line 344
    monitor-exit v1

    .line 345
    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmMediaPlayer$OnCompleListener;)V
    .locals 0

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->stop()V

    .line 378
    return-void
.end method
